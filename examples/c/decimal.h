#ifndef ERROR_D_DECIMAL_H
#define ERROR_D_DECIMAL_H
#include <stddef.h>
#include <stdint.h>
/* Stable adapter status values; no generic D Result layout crosses this ABI.
 * Input is borrowed only for the call. No allocation or release is needed. */
typedef struct {
    int32_t status; /* 0 success, 1 empty, 2 invalid digit, 3 overflow,
                      4 null buffer with nonzero length, 5 internal empty result */
    uint32_t value; /* valid only when status == 0 */
    size_t byte_offset; /* meaningful for parse failures */
} error_d_decimal_result_v1;
error_d_decimal_result_v1 error_d_parse_decimal_v1(const char *input, size_t length);
#endif
