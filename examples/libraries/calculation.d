module calculation;
import error_d;
enum CalculationError { zeroDenominator }
Result!(double, CalculationError) divide(double numerator, double denominator) @safe pure nothrow @nogc {
    alias R=Result!(double,CalculationError);
    if(denominator==0) return R.failure(CalculationError.zeroDenominator);
    return R.success(numerator/denominator);
}
