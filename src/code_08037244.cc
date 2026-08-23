#include "prelude.h"

EC void func_08037244(u8 *self, u32 *value)
{
    u32 second = value[1];
    u32 first = value[0];
    *(u32 *)(self + 0x34) = first;
    *(u32 *)(self + 0x38) = second;
}
