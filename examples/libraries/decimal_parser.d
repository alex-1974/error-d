module decimal_parser;
import error_d;
import std.stdint : uint32_t;
enum ParseCode { empty, invalidDigit, overflow }
struct ParseError { ParseCode code; size_t byteOffset; }
Result!(uint,ParseError) parseDecimal(scope const(char)[] input) @safe pure nothrow @nogc {
    alias R=Result!(uint,ParseError);
    if(input.length==0) return R.failure(ParseError(ParseCode.empty,0));
    uint value;
    foreach(i,c; input) {
        if(c<'0' || c>'9') return R.failure(ParseError(ParseCode.invalidDigit,i));
        uint digit=c-'0';
        if(value>(uint.max-digit)/10) return R.failure(ParseError(ParseCode.overflow,i));
        value=value*10+digit;
    }
    return R.success(value);
}
