module review_destruction_move;
import core.lifetime : move;
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
        if(armed) { armed=false; auto stolen=move(owner); }
    }));
    armed=true;
    destroy(owner);
    writeln("live=", *live);
}
