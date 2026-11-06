module benchmark_paired;
import before_kernels = kernels_before;
import kernels;
import std.stdio : writeln;
import std.conv : to;
import std.datetime.stopwatch : StopWatch;
import core.memory : GC;
import std.json : JSONValue;
import core.atomic : atomicStore, MemoryOrder;
private shared ulong sink;

ulong loop(uint variant, bool baseline)(scope const(uint)[] input,uint threshold,uint batches) @safe nothrow @nogc {
    static if (baseline)
    {
        alias result_small = before_kernels.result_small;
        alias status_out_small = before_kernels.status_out_small;
        alias status_ref_small = before_kernels.status_ref_small;
        alias result_large = before_kernels.result_large;
        alias status_out_large = before_kernels.status_out_large;
        alias status_ref_large = before_kernels.status_ref_large;
        alias pipeline_result = before_kernels.pipeline_result;
        alias pipeline_status = before_kernels.pipeline_status;
        alias DomainError = before_kernels.DomainError;
        alias Block = before_kernels.Block;
    }
    ulong checksum;
    // Reuse caller-owned buffers across operations: ref must not pay for a
    // fresh zero-initialized Block every iteration. out still initializes it
    // on each call according to D semantics. Invalid branches are never read.
    ulong outputValue;
    Block outputBlock;
    DomainError outputError;
    foreach(batch;0..batches) foreach(original;input) {
        uint x=original ^ (batch * 0x9e3779b9U);
            static if(variant==0) {
                auto r=result_small(x,threshold);
                checksum+=r.hasValue ? r.value() : 0xdeadbeefUL+r.error().code;
            }
            else static if(variant==1 || variant==2) {
                bool ok=variant==1 ? status_out_small(x,threshold,outputValue,outputError) : status_ref_small(x,threshold,outputValue,outputError);
                checksum+=ok ? outputValue : 0xdeadbeefUL+outputError.code;
            }
            else static if(variant==3) {
                auto r=result_large(x,threshold);
                if(r.hasError) checksum+=0xdeadbeefUL+r.error().code;
                else {auto value=r.value();checksum+=value.words[0]^value.words[$-1];}
            }
            else static if(variant==4 || variant==5) {
                bool ok=variant==4 ? status_out_large(x,threshold,outputBlock,outputError) : status_ref_large(x,threshold,outputBlock,outputError);
                checksum+=ok ? outputBlock.words[0]^outputBlock.words[$-1] : 0xdeadbeefUL+outputError.code;
            }
            else static if(variant==6) {
                auto r=pipeline_result(x,threshold);
                checksum+=r.hasValue ? r.value() : 0xdeadbeefUL+r.error().code;
            }
            else static if(variant==7) {
                bool ok=pipeline_status(x,threshold,outputValue,outputError);
                checksum+=ok ? outputValue : 0xdeadbeefUL+outputError.code;
            }
    }
    atomicStore!(MemoryOrder.raw)(sink,checksum);
    return checksum;
}
// One observable atomic store per complete loop keeps timed calls observable.
// Kernels themselves have no counters or barriers. Dispatch is outside the loop.
pragma(inline, false)
ulong measure(uint variant,scope const(uint)[] input,uint threshold,uint batches) @safe nothrow @nogc {
    switch(variant) {
        static foreach(index;0..16) {
            case index: return loop!(index/2, (index%2)==1)(input,threshold,batches);
        }
        default: assert(false);
    }
}

void main(string[] args) {
    uint samples=to!uint(args[1]);
    ulong targetNs=to!ulong(args[2])*1_000_000;
    uint seed=to!uint(args[3]);
    uint count=to!uint(args[4]);
    uint[] input=new uint[count];
    foreach(ref value;input) {seed^=seed<<13;seed^=seed>>17;seed^=seed<<5;value=seed;}
    immutable string[] names=["result_small", "result_small", "status_out_small", "status_out_small", "status_ref_small", "status_ref_small", "result_large", "result_large", "status_out_large", "status_out_large", "status_ref_large", "status_ref_large", "pipeline_result", "pipeline_result", "pipeline_status", "pipeline_status"];
    GC.disable();scope(exit) GC.enable();
    foreach(threshold;[0U,3U,128U,256U]) {
        ulong[][] observations=new ulong[][names.length];
        ulong[] checksums=new ulong[names.length];
        // Calibrate within each comparable family. All variants in that family
        // run identical operation counts, using the slowest warm-up as a bound.
        ulong[3] slowest;
        foreach(variant;0..names.length) {
            StopWatch calibration;calibration.start();
            auto warm=measure(cast(uint)variant,input,threshold,1);
            calibration.stop();
            auto elapsed=cast(ulong)calibration.peek.total!"nsecs";
            size_t group=(variant/2)<3 ? 0 : (variant/2)<6 ? 1 : 2;
            if(elapsed>slowest[group])slowest[group]=elapsed;
        }
        uint[3] batchCounts;
        foreach(group,elapsed;slowest) {
            uint batches=cast(uint)(targetNs/(elapsed ? elapsed : 1));
            if(batches<1)batches=1;if(batches>2000)batches=2000;
            batchCounts[group]=batches;
        }
        foreach(variant;0..names.length) {
            auto group=(variant/2)<3 ? 0 : (variant/2)<6 ? 1 : 2;
            checksums[variant]=measure(cast(uint)variant,input,threshold,batchCounts[group]);
        }
        foreach(repetition;0..samples) {
            foreach(offset;0..names.length) {
                uint variant=cast(uint)((offset+repetition)%names.length);
                StopWatch watch;watch.start();
                auto group=(variant/2)<3 ? 0 : (variant/2)<6 ? 1 : 2;
                auto checksum=measure(variant,input,threshold,batchCounts[group]);
                watch.stop();
                if(checksum!=checksums[variant])throw new Exception("unstable checksum");
                observations[variant]~=cast(ulong)watch.peek.total!"nsecs";
            }
        }
        foreach(variant,name;names) {
            JSONValue row;
            row["kind"]="runtime";row["implementation"]=(variant%2)==0 ? "after" : "before";row["kernel"]=name;row["threshold"]=threshold;
            auto group=(variant/2)<3 ? 0 : (variant/2)<6 ? 1 : 2;
            row["operations"]=cast(ulong)count*batchCounts[group];
            row["samples_ns"]=JSONValue(observations[variant]);
            row["checksum"]=to!string(checksums[variant]);
            writeln(row.toString());
        }
    }
}
