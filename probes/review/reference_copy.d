module review_reference_copy;
import error_d;
import std.stdio : writeln;
struct RefCopy {
    int[] data;
    void delegate() @safe nothrow callback;
    this(int[] input, void delegate() @safe nothrow fn) @safe nothrow { data=input; callback=fn; }
    this(ref return scope RefCopy source) @safe nothrow {
        auto fn=source.callback;
        if(fn !is null) fn();
        data=source.data;
        callback=source.callback;
    }
}
void main() @safe {
    alias R=Result!(RefCopy,int);
    R owner;
    bool armed;
    owner=R.success(RefCopy(new int[1], () @safe nothrow {
        if(armed) { armed=false; owner=R.failure(9); }
    }));
    armed=true;
    auto copied=owner.value();
    writeln("length=",copied.data.length," null=",copied.data.ptr is null);
}
