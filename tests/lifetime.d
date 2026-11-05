module test_lifetime;
import error_d;
import core.lifetime : move;
import core.stdc.stdlib : abort;
void check(bool ok) { if(!ok) abort(); }
struct Owner {
    int* live;
    @disable this(this);
    this(int* p) @safe nothrow @nogc { live=p; ++*live; }
    ~this() @safe nothrow @nogc { if(live) --*live; }
}
struct ThrowCopy {
    int* live;
    bool fails;
    this(int* p) @safe { live=p; ++*live; }
    this(this) @safe { if(fails) throw new Exception("copy"); if(live) ++*live; }
    ~this() @safe nothrow { if(live) --*live; }
    void opAssign(ThrowCopy rhs) { abort(); } // Result must never call this.
}
void main() {
    int live;
    {
        alias R=Result!(Owner,int);
        R empty;
        check(live==0);
        auto r=R.success(Owner(&live));
        check(live==1);
        static assert(!__traits(compiles, { auto copy=r; }));
        static assert(!__traits(compiles, r.value()));
        auto o=r.takeValue();
        check(r.isEmpty && live==1);
        auto r2=R.success(move(o));
        r=move(r2);
        check(live==1);
        r=R.failure(2);
        check(live==0 && r.hasError);
    }
    check(live==0);
    {
        alias R=Result!(ThrowCopy,int);
        auto source=R.success(ThrowCopy(&live));
        auto copy=source;
        check(live==2);
        copy=copy;
        check(live==2);
        auto destination=R.failure(9);
        auto payload=source.takeValue();
        payload.fails=true;
        source=R.success(move(payload));
        bool threw;
        try { destination=source; } catch(Exception e) { threw=true; }
        check(threw && destination.error()==9 && source.hasValue && live==2);
    }
    check(live==0);
    int[] buffer=[1,2];
    auto s=Result!(int[],int).success(buffer);
    auto aliasing=s.value();
    aliasing[0]=4;
    check(buffer[0]==4);
    const c=s;
    static assert(is(typeof(c.value())==const(int[])));
    static assert(!__traits(compiles, { int[] mutableAlias=c.value(); }));
    check(c.value()[0]==4);
    check(c.match((const(int[]) x)=>cast(int)x[0],(int e)=>e,()=>0)==4);
}
