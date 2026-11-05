module test_core;
import error_d;
import core.stdc.stdlib : abort;
void check(bool condition) @safe nothrow @nogc { if(!condition) abort(); }
void main() {
    alias R=Result!(int,int);
    R empty;
    check(empty.isEmpty);
    auto r=R.success(7);
    check(r.hasValue && r.value()==7);
    auto e=R.failure(3);
    check(e.hasError && e.error()==3);
    auto matched=r.match((int n)=>n+1,(int e)=>-e,()=>0);
    check(matched==8);
    const c=R.success(9);
    check(c.value()==9);
    r=e;
    check(r.hasError);
    r=r;
    check(r.error()==3);
    check(r.takeError()==3 && r.isEmpty);
    auto v=Result!(void,int).success();
    v.value();
    v.takeValue();
    check(v.isEmpty);
}
