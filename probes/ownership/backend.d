import std.sumtype;
import core.lifetime : move;
import core.stdc.stdlib : abort;
void check(bool ok) { if (!ok) abort(); }
struct Empty {}
struct Ok(T) { T value; }
struct Bad(E) { E value; }
struct Resource {
    int* live;
    @disable this(this);
    this(int* p) { live=p; ++*live; }
    ~this() nothrow { if(live) --*live; }
}
struct Throws {
    int n;
    this(this) { if(n==1) throw new Exception("copy"); }
}
void main() {
    alias Storage = SumType!(Empty, Ok!Resource, Bad!int);
    Storage empty;
    check(empty.match!((ref x) => is(typeof(x)==Empty)));
    int live;
    {
        auto resource = Resource(&live);
        auto storage = Storage(Ok!Resource(move(resource)));
        auto moved = move(storage);
        check(storage.match!((ref x) => is(typeof(x)==Empty)));
        auto extracted = moved.match!((ref x) {
            static if (is(typeof(x)==Ok!Resource)) return move(x.value);
            else { abort(); return Resource.init; }
        });
        check(live==1);
    }
    check(live==0);
    alias ThrowStorage = SumType!(Empty, Ok!Throws, Bad!int);
    auto source = ThrowStorage(Ok!Throws(Throws(1)));
    bool threw;
    try { auto copy = source; } catch(Exception e) { threw=true; }
    check(threw);
    check(source.match!((ref x) {
        static if(is(typeof(x)==Ok!Throws)) return x.value.n==1;
        else return false;
    }));
    // Custom tagged union needs explicit lifetime operations for the same payload.
    union Raw { Resource resource; int error; }
    static assert(__traits(compiles, { Raw a; auto b=a; })); // Raw union does not enforce resource copying rules.
    alias Numbers = SumType!(Empty, Ok!int, Bad!int);
    enum ctfe = Numbers(Ok!int(7)).match!((x) {
        static if(is(typeof(x)==Ok!int)) return x.value;
        else return -1;
    });
    static assert(ctfe==7);
}
