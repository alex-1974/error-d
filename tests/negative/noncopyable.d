// expected: @disable
module negative_noncopyable;
import error_d;
struct Resource {
    @disable this(this);
    ~this() @safe nothrow {}
}
void main() {
    auto r=Result!(Resource,int).success(Resource());
    auto copy=r;
}
