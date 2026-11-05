// expected: escaping
module negative_escape;
import error_d;
Result!(int*,int) leak() @safe {
    int local;
    return Result!(int*,int).success(&local);
}
void main() @safe { auto r=leak(); }
