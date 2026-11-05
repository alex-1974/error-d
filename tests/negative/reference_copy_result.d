// expected: @system
module negative_reference_copy_result;
import error_d;
struct RefCopy {
    int number;
    this(ref return scope RefCopy source) @safe nothrow {number=source.number;}
}
void main() @safe {
    auto r=Result!(RefCopy,int).success(RefCopy.init);
    auto copied=r;
}
