module benchmark_verify;
import kernels;
import core.stdc.stdlib : abort;
void require(bool value) @safe nothrow @nogc {if(!value)abort();}
void main() @safe {
    uint x=123456789;
    foreach(threshold;[0U,3U,128U,256U]) foreach(i;0..2048) {
        x^=x<<13;x^=x>>17;x^=x<<5;
        auto small=result_small(x,threshold);
        ulong value1,value2;DomainError error1,error2;
        auto first=status_out_small(x,threshold,value1,error1);
        auto second=status_ref_small(x,threshold,value2,error2);
        require(first==second && first==small.hasValue);
        if(first)require(value1==value2 && value1==small.value());
        else require(error1==error2 && error1==small.error());
        auto large=result_large(x,threshold);
        Block block1,block2;
        first=status_out_large(x,threshold,block1,error1);
        second=status_ref_large(x,threshold,block2,error2);
        require(first==second && first==large.hasValue);
        if(first) {
            auto payload=large.value();
            require(block1.words==block2.words && block1.words==payload.words);
        } else require(error1==error2 && error1==large.error());
        auto pipeline=pipeline_result(x,threshold);
        first=pipeline_status(x,threshold,value1,error1);
        require(first==pipeline.hasValue);
        if(first)require(value1==pipeline.value());
        else require(error1==pipeline.error());
    }
}
