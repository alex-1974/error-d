// expected: @nogc
module negative_allocating_callback;
import error_d;
void main() @nogc {
    auto r=Result!(int,int).success(1).map((int n) => new int[n]);
}
