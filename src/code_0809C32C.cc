#include "prelude.h"

EC u32 func_0809C32C(const u8 *values)
{
    register const u8 *data asm("r2") = values;
    register u32 result asm("r3") = 0;
    register int first asm("r1") = -(int)data[7];
    register int second asm("r0") = -(int)data[1];
    second |= first;
    if (second >= 0)
        return result;

    first = -(int)data[6];
    second = -(int)data[0];
    second |= first;
    if (second >= 0)
        return result;

    first = -(int)data[8];
    second = -(int)data[2];
    second |= first;
    if (second >= 0)
        return result;

    first = -(int)data[9];
    second = -(int)data[3];
    second |= first;
    if (second >= 0)
        return result;

    first = -(int)data[10];
    second = -(int)data[4];
    second |= first;
    if (second >= 0)
        return result;

    first = -(int)data[11];
    second = -(int)data[5];
    second |= first;
    result = (u32)second >> 31;
    return result;
}
