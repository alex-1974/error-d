// expected: same error type
module negative_domain_conversion;
import error_d;
enum A { error }
enum B { error }
void main() {
    auto r=Result!(int,A).success(1).andThen((int x)=>Result!(int,B).success(x));
}
