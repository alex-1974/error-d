// expected: cannot implicitly convert
module negative_const_alias;
import error_d;
void main() @safe {
    const r=Result!(int[],int).success(new int[2]);
    int[] mutableAlias=r.value();
}
