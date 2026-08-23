#include "prelude.h"

EC void func_0805039C(void *self);

EC void func_080503E4(u8 *self)
{
    func_0805039C(self);
    *(u32 *)(self + 8) = 3;
    self[0xC] = 9;
}

EC void func_080503FC(u8 *self)
{
    if (*(u32 *)(self + 8))
        *(u32 *)(self + 8) = 2;
}
