#include "prelude.h"

extern "C" void *memset(void *dest, int value, u32 count);

EC void func_08075DD4(void *self)
{
    u8 *start = *(u8 **)((u8 *)self + 0x18);
    u8 *end = *(u8 **)((u8 *)self + 0x1C);
    memset(start, 0xFF, ((end - start) >> 6) << 6);
}
