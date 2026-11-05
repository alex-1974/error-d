module review_reentrancy;
import error_d;
import std.stdio : writeln;
struct Trigger {
    int* live;
    void delegate() @safe nothrow callback;
    @disable this(this);
    this(int* count, void delegate() @safe nothrow fn) @safe nothrow {
        live=count; callback=fn; ++*live;
    }
    ~this() scope @safe nothrow {
        if(live) { --*live; if(callback !is null) callback(); }
    }
}
void main() @safe {
    alias R=Result!(Trigger,int);
    R owner;
    int* live = new int;
    bool armed;
    owner=R.success(Trigger(live, () @safe nothrow {
        if(armed) { armed=false; owner=R.failure(9); }
    }));
    armed=true;
    owner=R.failure(1);
    writeln("live=", *live, " error=", owner.error());
}
