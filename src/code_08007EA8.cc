#include "prelude.h"

EC void func_080D6EEC(void *self);

EC void func_08007EA8(u8 *self)
{
    func_080D6EEC(self + 4);
    func_080D6EEC(self + 0x80);
    register u32 zero asm("r1") = 0;
    register u32 one asm("r0") = 1;
    self[0] = one;
    self[1] = zero;
}
