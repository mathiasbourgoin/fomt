#include "prelude.h"

EC void func_08008E64(void *p0, void *p1, u32 count);

EC void func_0800977C(void *self)
{
    func_08008E64((u8 *)self + 4, (void *)0x07000000, 0x400);
}
