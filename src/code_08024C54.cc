#include "prelude.h"

EC void func_080323C8(void *);

EC void func_08024C54(u8 *self)
{
    self[6] = 1;
    func_080323C8(self);
}

EC void func_08024C64(u8 *self)
{
    self[6] = 0;
    func_080323C8(self);
}

EC void func_08024C88(u8 *) __attribute__((section(".text.func_08024C88")));
EC void func_08024C88(u8 *self)
{
    self[0x3c] = 8;
    self[0x3d] = 0xff;
}
