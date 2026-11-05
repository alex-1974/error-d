// expected: nothrow
module negative_throwing_callback;
import error_d;
int throwing(int n) { throw new Exception("callback"); }
void main() nothrow { auto r=Result!(int,int).success(1).map(&throwing); }
