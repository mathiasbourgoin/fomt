#include "prelude.h"

EC void func_08076BE0(u8 *self, u16 value)
{
    *(u16 *)(*(u8 **)(self + 8) + 0x590) = value;
}

EC i32 func_08076BEC(u8 *self)
{
    return *(i16 *)(*(u8 **)(self + 8) + 0x590);
}
