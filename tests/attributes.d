module test_attributes;
import error_d;
import core.stdc.stdlib : abort;

int compute() @safe pure nothrow @nogc {
    auto r=Result!(int,int).success(3);
    r=Result!(int,int).failure(5);
    auto n=r.takeError();
    auto next=Result!(int,int).success(n).map((int x)=>x+1);
    return next.match((int x)=>x,(int e)=>-e,()=>0);
}
struct NoDefault {
    @disable this();
    int value;
    this(int n) @safe pure nothrow @nogc { value=n; }
}
void main() @safe {
    if(compute()!=6) abort();
    auto r=Result!(NoDefault,int).success(NoDefault(3));
    if(r.value().value!=3) abort();
    immutable i=Result!(int,int).success(8);
    if(i.value()!=8 || !i.hasValue) abort();
    auto qualified=Result!(const(int),immutable(int)).success(4);
    if(qualified.takeValue()!=4 || !qualified.isEmpty) abort();
    auto empty=Result!(NoDefault,int).init;
    if(!empty.isEmpty) abort();
}
