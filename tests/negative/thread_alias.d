// expected: alias
module negative_thread_alias;
import error_d;
import std.concurrency : send, thisTid;
void main() {
    auto r=Result!(int[],int).success(new int[1]);
    send(thisTid,r);
}
