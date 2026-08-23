#include "prelude.h"

EC void func_080092C8(void *self, u16 value);
EC void func_080092FC(void *self, u16 value);

EC void *func_080088DC(void **self)
{
    return *self;
}

EC void func_080088E0(void **self, u16 value)
{
    func_080092C8(*self, value);
}

EC void func_080088F0(void **self, u16 value)
{
    func_080092FC(*self, value);
}

EC u16 func_08008900(void **self)
{
    return *(u16 *)((u8 *)*self + 10);
}

EC u16 func_08008908(void **self)
{
    return *(u16 *)((u8 *)*self + 12);
}
