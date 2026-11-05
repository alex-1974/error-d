module calculation;
import error_d;
enum CalculationError { zeroDenominator }
Result!(double, CalculationError) divide(double numerator, double denominator) @safe pure nothrow @nogc {
    alias R=Result!(double,CalculationError);
    if(denominator==0) return R.failure(CalculationError.zeroDenominator);
    return R.success(numerator/denominator);
}

// Ownership fixture: transfer a noncopyable resource across the compiled library.
struct Resource {
    int* live;
    @disable this(this);
    this(return scope int* p) @safe nothrow @nogc { live=p; ++*live; }
    ~this() scope @safe nothrow @nogc { if(live) --*live; }
}
Result!(Resource,CalculationError) acquire(return scope int* live) @safe nothrow @nogc {
    return Result!(Resource,CalculationError).success(Resource(live));
}
