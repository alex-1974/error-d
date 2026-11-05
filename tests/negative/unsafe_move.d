// expected: storable
module negative_unsafe_move;
import error_d;
struct UnsafeMove {
    int* p;
    void opPostMove(const ref UnsafeMove old) @system nothrow {}
}
void main() { auto r=Result!(UnsafeMove,int).init; }
