#include "prelude.h"

EC void func_08035908(void *self, u32 value);
EC void func_08035940(void *self, u32 value);

EC void func_08036768(void *self)
{
    register u32 first asm("r1") = 0x27B;
    register u8 state asm("r5") = 2;
    void *object = *(void **)((u8 *)self + 0x34);
    register u32 offset asm("r2") = 0x2181;
    register u32 kind asm("r0") = *(u8 *)((u8 *)object + offset);
    kind <<= 30;
    kind >>= 30;

    if (kind == 1) {
        first += 0x18;
        state = 1;
    }

    func_08035908(self, first);
    register void *second_self asm("r0");
    second_self = self;
    register u32 second asm("r1");
    second = 0x27F;
    func_08035940(second_self, second);
    *((u8 *)self + 0x21) = state;
}
