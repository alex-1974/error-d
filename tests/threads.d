module test_threads;
import error_d;
import std.concurrency : spawn, thisTid, send, receiveOnly, Tid;
import core.stdc.stdlib : abort;
alias R=Result!(int,int);
// Explicit value-only transport. Baseline Variant cannot store @mustuse Result.
struct Message { ResultState state; int payload; }
Message encode(ref R result) @safe pure nothrow @nogc {
    return result.match((int n)=>Message(ResultState.success,n),
                        (int e)=>Message(ResultState.failure,e),
                        ()=>Message(ResultState.empty,0));
}
R decode(Message message) @safe pure nothrow @nogc {
    final switch(message.state) {
        case ResultState.success: return R.success(message.payload);
        case ResultState.failure: return R.failure(message.payload);
        case ResultState.empty: return R.init;
    }
}
void worker(Tid owner, Message input) {
    auto local=decode(input).map((int n)=>n*2);
    send(owner,encode(local));
}
void main() {
    auto local=R.success(21);
    auto workerTid=spawn(&worker,thisTid,encode(local));
    auto result=decode(receiveOnly!Message());
    if(!result.hasValue || result.value()!=42) abort();
}
