#include "prelude.h"

EC void func_08075C88(void *self, i16 value);

EC void func_08075DB8(void *self, i16 value)
{
    register i32 sentinel asm("r2") = 0xFFFF;
    *(u16 *)((u8 *)self + 6) = sentinel;
    sentinel = -1;
    *(i16 *)((u8 *)self + 0xA) = sentinel;
    func_08075C88(self, value);
}
