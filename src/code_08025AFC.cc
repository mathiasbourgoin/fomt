#include "prelude.h"

EC u32 func_08025AFC(u8 *self)
{
    int value = *(u16 *)(self + 4);
    if (value <= 8)
        return 1;
    return 0;
}
