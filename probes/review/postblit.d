module review_postblit;
import error_d;
import std.stdio : writeln;
struct Hook {
    int* live;
    void delegate() @safe nothrow callback;
    this(int* p, void delegate() @safe nothrow fn) @safe nothrow { live=p; callback=fn; ++*live; }
    this(this) @safe nothrow { if(live) ++*live; if(callback !is null) callback(); }
    ~this() scope @safe nothrow { if(live) --*live; }
}
void main() @safe {
    alias R=Result!(Hook,int);
    R owner;
    int* live=new int;
    bool armed;
    owner=R.success(Hook(live, () @safe nothrow {
        if(armed) { armed=false; owner=R.failure(9); }
    }));
    armed=true;
    {
        auto copied=owner;
        writeln("copy-success=",copied.hasValue," live=",*live," source-error=",owner.error());
    }
    writeln("after-copy-live=",*live);
}
