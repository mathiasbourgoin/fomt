#include "prelude.h"

EC void func_08008E64(void *source, void *destination, u32 count);

EC u32 func_080E0D50(u8 *self)
{
    func_08008E64(*(void **)(self + 0xC), *(void **)(self + 0x10),
                  *(u32 *)(self + 0x14));
    return 0;
}
