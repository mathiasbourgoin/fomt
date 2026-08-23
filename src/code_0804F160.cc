#include "prelude.h"

EC u32 func_0804F160(u8 *self)
{
    register u32 input asm("r0") = self[4];
    asm("" : "+r"(input));
    register u32 result asm("r1") = input;
    asm("" : "+r"(result));
    if (input)
        result = 1;
    return result;
}
