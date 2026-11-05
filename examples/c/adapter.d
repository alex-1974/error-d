module c_adapter;
import decimal_parser;
struct DecimalStatus { int status; uint value; size_t byte_offset; }
// This C entry point is @system: caller promises a valid buffer for length bytes.
// It returns value-only data. No GC memory or D exception crosses the boundary.
extern(C) DecimalStatus error_d_parse_decimal_v1(const(char)* input, size_t length) nothrow @nogc {
    if(input is null && length!=0) return DecimalStatus(4,0,0);
    return parseDecimal(input[0..length]).match(
        (uint n)=>DecimalStatus(0,n,0),
        (ParseError e)=>DecimalStatus(cast(int)e.code+1,0,e.byteOffset),
        ()=>DecimalStatus(5,0,0));
}
