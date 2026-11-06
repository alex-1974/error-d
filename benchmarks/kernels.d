module kernels;
import error_d;
struct DomainError { uint code; uint input; }
struct Block { ulong[32] words; }
alias Small = Result!(ulong, DomainError);
alias Large = Result!(Block, DomainError);

private ulong compute(uint x) @safe pure nothrow @nogc {
    return (cast(ulong)x * 0x9e3779b185ebca87UL) ^ (x >> 7);
}
pragma(inline, false)
extern(C) Small result_small(uint x, uint threshold) @safe pure nothrow @nogc {
    if((x & 255)<threshold) return Small.failure(DomainError(1,x));
    return Small.success(compute(x));
}
pragma(inline, false)
extern(C) bool status_out_small(uint x, uint threshold, out ulong value, out DomainError error) @safe pure nothrow @nogc {
    if((x & 255)<threshold) { error=DomainError(1,x); return false; }
    value=compute(x); return true;
}
pragma(inline, false)
extern(C) bool status_ref_small(uint x, uint threshold, ref ulong value, ref DomainError error) @safe pure nothrow @nogc {
    if((x & 255)<threshold) { error=DomainError(1,x); return false; }
    value=compute(x); return true;
}
private Block block(uint x) @safe pure nothrow @nogc {
    Block value;
    foreach(i, ref word; value.words) word=compute(x+cast(uint)i);
    return value;
}
pragma(inline, false)
extern(C) Large result_large(uint x, uint threshold) @safe pure nothrow @nogc {
    if((x & 255)<threshold) return Large.failure(DomainError(1,x));
    return Large.success(block(x));
}
pragma(inline, false)
extern(C) bool status_out_large(uint x, uint threshold, out Block value, out DomainError error) @safe pure nothrow @nogc {
    if((x & 255)<threshold) { error=DomainError(1,x); return false; }
    value=block(x); return true;
}
pragma(inline, false)
extern(C) bool status_ref_large(uint x, uint threshold, ref Block value, ref DomainError error) @safe pure nothrow @nogc {
    if((x & 255)<threshold) { error=DomainError(1,x); return false; }
    value=block(x); return true;
}
pragma(inline, true)
private Small localResult(uint x,uint threshold) @safe pure nothrow @nogc {
    if((x&255)<threshold) return Small.failure(DomainError(1,x));
    return Small.success(compute(x));
}
pragma(inline, false)
extern(C) Small pipeline_result(uint x,uint threshold) @safe pure nothrow @nogc {
    // The outer producer stays noinline to preserve the API boundary. Its
    // nested callbacks must override that inherited attribute: otherwise the
    // benchmark measures deliberately opaque callbacks against fused code.
    static ulong transform(ulong value) @safe pure nothrow @nogc {
        pragma(inline, true);
        return value ^ 0x123456789abcdef0UL;
    }
    Small next(ulong value) @safe pure nothrow @nogc {
        pragma(inline, true);
        return (value & 15)==0
            ? Small.failure(DomainError(2,x)) : Small.success(value*3);
    }
    return localResult(x,threshold).map(&transform).andThen(&next);
}
pragma(inline, false)
extern(C) bool pipeline_status(uint x,uint threshold, out ulong value, out DomainError error) @safe pure nothrow @nogc {
    if((x&255)<threshold) {error=DomainError(1,x);return false;}
    auto transformed=compute(x) ^ 0x123456789abcdef0UL;
    if((transformed & 15)==0) {error=DomainError(2,x);return false;}
    value=transformed*3;return true;
}
