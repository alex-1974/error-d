// expected: @nogc
module negative_allocating_destructor;
import error_d;
int* saved;
struct Payload { ~this() scope @safe nothrow {saved=new int(1);} }
void main() @nogc {auto r=Result!(Payload,int).success(Payload());}
