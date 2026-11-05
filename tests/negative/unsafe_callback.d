// expected: @system
module negative_unsafe_callback;
import error_d;
int unsafeFunction(int n) @system { return n; }
void main() @safe { auto r=Result!(int,int).success(1).map(&unsafeFunction); }
