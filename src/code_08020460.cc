#include "prelude.h"

EC u32 func_08020460(u8 *self)
{
    u32 result = 0;
    u8 *member = *(u8 **)(self + 0x34);
    if (*(u32 *)(member + 0x20) == 5)
        result = 1;
    return result;
}
