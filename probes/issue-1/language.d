// Language probes only: not an implementation of Result.
import core.attribute : mustuse;

struct ExplicitOnly
{
    @disable this();
    int value;
    this(int value) { this.value = value; }
}
static assert(!__traits(compiles, { ExplicitOnly x; }));
static assert(__traits(compiles, { auto x = ExplicitOnly.init; }));

@mustuse struct Marked { int value; }
Marked makeMarked() { return Marked(1); }

version (Discard)
{
    void main() { makeMarked(); }
}
else
{
    void main()
    {
        auto x = ExplicitOnly.init;
        if (x.value != 0) throw new Exception("unexpected .init");
        auto used = makeMarked();
        if (used.value != 1) throw new Exception("unexpected value");
        cast(void) makeMarked(); // Intentional discard remains possible.
    }
}
