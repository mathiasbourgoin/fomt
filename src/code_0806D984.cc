#include "prelude.h"

EC void *func_0806D984(void *destination, const void *source)
{
    register const u8 *object asm("r1") = *(const u8 *const *)((const u8 *)source + 4);
    register u32 high asm("r2") = *(const u32 *)(object + 0x18);
    register u32 low asm("r1") = *(const u32 *)(object + 0x14);
    *(u32 *)destination = low;
    *(u32 *)((u8 *)destination + 4) = high;
    return destination;
}
