// expected: storable
module negative_unsafe_destructor;
import error_d;
struct UnsafeDestructor { ~this() @system nothrow {} }
void main() { auto r=Result!(UnsafeDestructor,int).init; }
