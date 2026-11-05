#include "decimal.h"
int main(void) {
    error_d_decimal_result_v1 r = error_d_parse_decimal_v1("42", 2);
    if (r.status != 0 || r.value != 42) return 1;
    r = error_d_parse_decimal_v1("4x", 2);
    if (r.status != 2 || r.byte_offset != 1) return 2;
    r = error_d_parse_decimal_v1(NULL, 1);
    if (r.status != 4) return 3;
    return 0;
}
