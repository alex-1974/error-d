module benchmark_metrics;
import error_d;
import kernels : Block,DomainError;
import std.stdio : writeln;
import std.json : JSONValue;
struct StatusCarrier(T,E) { bool ok; T value; E error; }
struct Counted {
    ulong[32] words;
    int* copies;
    this(int* count) @safe {copies=count;}
    this(this) @safe {if(copies)++*copies;}
    ~this() scope @safe nothrow {}
}
void sizeRow(T,E)(string name) {
    JSONValue row;
    row["kind"]="size";row["payload"]=name;
    static if(is(T==void)) row["value_bytes"]=0;
    else row["value_bytes"]=T.sizeof;
    row["error_bytes"]=E.sizeof;
    row["result_bytes"]=Result!(T,E).sizeof;
    static if(!is(T==void))row["status_carrier_bytes"]=StatusCarrier!(T,E).sizeof;
    writeln(row.toString());
}
void copies(string operation,int count) {
    JSONValue row;row["kind"]="copies";row["operation"]=operation;row["copies"]=count;
    writeln(row.toString());
}
bool output(ref Counted input,out Counted result) {result=input;return true;}
void main() {
    sizeRow!(ulong,DomainError)("ulong");
    sizeRow!(Block,DomainError)("block256");
    sizeRow!(void,DomainError)("void");
    sizeRow!(Counted,DomainError)("instrumented_counted");
    alias R=Result!(Counted,DomainError);
    int n;
    auto r=R.success(Counted(&n));copies("factory_temporary",n);
    n=0;auto copy=r;copies("result_copy",n);
    n=0;auto value=r.value();copies("value",n);
    n=0;auto mapped=r.map((Counted x)=>x.words[0]);copies("map",n);
    n=0;auto matched=r.match((Counted x)=>x.words[0],(DomainError e)=>0UL,()=>0UL);copies("match",n);
    n=0;copy=r;copies("assignment",n);
    n=0;auto taken=r.takeValue();copies("take",n);
    n=0;auto fromLvalue=R.success(taken);copies("factory_lvalue",n);
    n=0;Counted outValue;auto ok=output(taken,outValue);copies("status_out_assignment",n);
}
