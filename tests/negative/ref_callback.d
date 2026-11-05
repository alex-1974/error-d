// expected: must not return ref
module negative_ref_callback;
import error_d;
int global;
ref int reference(int n) { return global; }
void main() { auto r=Result!(int,int).success(1).map(&reference); }
