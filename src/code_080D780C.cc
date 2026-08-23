#include "prelude.h"

EC void func_080096F0(void *);
EC void func_08009864(void *);

EC u32 func_080D780C(u8 *self)
{
    func_080096F0(*(void **)(self + 0xc));
    return 0;
}

EC u32 func_080D781C(u8 *self)
{
    func_08009864(*(void **)(self + 0xc));
    return 0;
}
