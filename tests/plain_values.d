module test_plain_values;
import error_d;
import core.stdc.stdlib : abort;
void check(bool ok) @safe nothrow @nogc { if(!ok)abort(); }
enum Code : uint {bad=1, overflow=2}
struct Error {Code code; size_t offset;}
struct Record {long[16] numbers; double fraction;}
struct Aliased { int n; alias n this; }
struct CustomAssign {
    int n;
    void opAssign(CustomAssign other) @system {abort();}
}
struct Qualified {immutable int n;}
struct Pointer {int* p;}
struct NestedPointers {Pointer[2] items;}
struct NestedAssignment {CustomAssign item;}
struct WideError {ulong[64] words;}
struct Owner {
    int* live;
    @disable this(this);
    this(int* count) @safe nothrow {live=count;++*live;}
    ~this() scope @safe nothrow {if(live)--*live;}
}
void main() @safe {
    alias R=Result!(Record,Error);
    static assert(__traits(isPOD,R));
    static assert(!__traits(isPOD,Result!(Pointer,int)));
    static assert(!__traits(isPOD,Result!(Aliased,int)));
    static assert(!__traits(isPOD,Result!(CustomAssign,int)));
    static assert(!__traits(isPOD,Result!(Qualified,int)));
    static assert(!__traits(isPOD,Result!(NestedPointers,int)));
    static assert(!__traits(isPOD,Result!(NestedAssignment,int)));
    Record input;input.numbers[7]=123;input.fraction=0.5;
    auto r=R.success(input);
    check(r.value().numbers[7]==123 && r.value().fraction==0.5);
    const c=r;
    auto copied=c;
    check(copied.value().numbers[7]==123);
    auto e=R.failure(Error(Code.overflow,19));
    r=e;check(r.error().offset==19);
    auto error=r.takeError();check(error.code==Code.overflow && r.isEmpty);
    auto success=R.success(input);auto taken=success.takeValue();
    check(success.isEmpty && taken.numbers[7]==123);
    auto aliasResult=Result!(Aliased,int).success(Aliased(7));
    check(aliasResult.value().n==7);
    auto assigned=Result!(CustomAssign,int).success(CustomAssign(8));
    check(assigned.value().n==8);
    auto qualified=Result!(Qualified,int).success(Qualified(9));
    check(qualified.value().n==9);
    auto bytes=Result!(ubyte,Code).success(42);
    check(bytes.value()==42);
    auto floating=Result!(double,Code).success(0.25);
    check(floating.value()==0.25);
    WideError wide;
    foreach(i,ref word;wide.words)word=0x9e3779b97f4a7c15UL*cast(ulong)(i+1);
    auto wideResult=Result!(ubyte,WideError).failure(wide);
    auto wideCopy=wideResult;
    check(wideCopy.error().words==wide.words);
    auto wideTaken=wideCopy.takeError();
    check(wideCopy.isEmpty && wideTaken.words==wide.words);
    auto voidWide=Result!(void,WideError).success();
    check(voidWide.hasValue);
    voidWide.takeValue();check(voidWide.isEmpty);
    int* live=new int;
    {
        auto owned=Result!(uint,Code).success(1).map((uint n)=>Owner(live));
        check(*live==1);
        auto resource=owned.takeValue();
        check(owned.isEmpty && *live==1);
    }
    check(*live==0);
    auto zero=Result!(int[0],Code).success((int[0]).init);
    check(zero.value().length==0);
}
