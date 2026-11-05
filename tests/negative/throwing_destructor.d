// expected: storable
module negative_throwing_destructor;
import error_d;
struct ThrowingDestructor { ~this() @safe { throw new Exception("destructor"); } }
void main() { auto r=Result!(ThrowingDestructor,int).init; }
