#include "prelude.h"

EC u32 func_0800912C();
EC void func_08009154(void *);

EC u16 *func_08009140(u16 *) __attribute__((section(".text.func_08009140")));
EC u16 *func_08009140(u16 *self)
{
    self[0] = func_0800912C();
    return self;
}

EC u32 func_08009158(u16 *out)
{
    u32 value = func_0800912C();
    *out = value;
    return value;
}

EC u16 *func_08009168(u16 *self)
{
    func_08009140(self);
    self[2] = self[0];
    return self;
}

EC u16 *func_0800917C(u16 *self)
{
    func_08009154(self);
    self[2] = self[0];
    return self;
}

EC u32 func_08009190(u16 *self)
{
    u32 previous = self[0];
    u32 value = func_08009158(self);
    value &= ~previous;
    self[2] = value;
    return value;
}
