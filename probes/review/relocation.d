module review_relocation;
import error_d;
import std.stdio : writeln;
struct Relative {
    int number;
    int* self;
    int* invalid;
    @disable this(this);
    // A self-pointer needs a trusted constructor, with relocation repaired below.
    this(int n,int* issues) @trusted nothrow { number=n; self=&number; invalid=issues; }
    void opPostMove(scope ref const Relative old) scope @trusted nothrow { self=&number; }
    ~this() scope @safe nothrow { if(number && self !is &number) ++*invalid; }
}
void main() @safe {
    int* invalid=new int;
    auto r=Result!(Relative,int).success(Relative(7,invalid));
    r=Result!(Relative,int).failure(1);
    writeln("invalid-destructions=",*invalid);
}
