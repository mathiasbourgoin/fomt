#include "prelude.h"

EC u32 func_080AE4D8(void *);

EC u32 func_080B3C78(u8 *self)
{
    return func_080AE4D8(*(void **)(self + 4));
}

EC u32 func_080B3C84(u8 *self)
{
    return *(u32 *)(*(u8 **)(self + 4) + 0x910);
}
