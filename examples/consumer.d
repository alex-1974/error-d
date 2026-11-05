module consumer;
import error_d;
import calculation;
import decimal_parser;
import std.sumtype : SumType, match;
import core.stdc.stdlib : abort;

alias ImportError=SumType!(ParseError,CalculationError);
alias ImportResult=Result!(double,ImportError);
ImportResult calculate(scope const(char)[] text, double denominator) @safe pure nothrow @nogc {
    return parseDecimal(text)
        .mapError((ParseError e)=>ImportError(e))
        .andThen((uint n)=>divide(n,denominator)
            .mapError((CalculationError e)=>ImportError(e)));
}
void check(bool ok) { if(!ok) abort(); }
void main() {
    check(calculate("84",2).value()==42);
    auto malformed=calculate("8x",2);
    check(malformed.hasError);
    auto sourceError=malformed.error();
    check(sourceError.match!((ParseError e)=>e.code==ParseCode.invalidDigit && e.byteOffset==1,
                            (CalculationError e)=>false)());
    check(parseDecimal("4294967295").value()==uint.max);
    check(parseDecimal("4294967296").error().code==ParseCode.overflow);
    check(parseDecimal("").error().code==ParseCode.empty);
    auto division=calculate("8",0);
    auto domainError=division.error();
    check(domainError.match!((ParseError e)=>false,
                             (CalculationError e)=>e==CalculationError.zeroDenominator)());
}
