#include "prelude.h"

EC u32 func_0809C38C(const u8 *values)
{
    register const u8 *data asm("r1") = values;
    register u32 result asm("r2") = 0;
    if (data[7] == 0)
        return result;
    if (data[6] == 0)
        return result;
    if (data[8] == 0)
        return result;
    if (data[9] == 0)
        return result;
    if (data[10] == 0)
        return result;
    register int last asm("r0") = -(int)data[11];
    result = (u32)last >> 31;
    return result;
}
