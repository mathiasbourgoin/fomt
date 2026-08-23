#include "prelude.h"

extern u32 vtable_unk_080E7C5C[];
EC void func_080C7F58(void *self);

EC void *func_0807EEA0(void *self)
{
    func_080C7F58(self);
    *(void **)((u8 *)self + 4) = vtable_unk_080E7C5C;
    *(u32 *)((u8 *)self + 0x6A4) = 0;
    *(u8 *)((u8 *)self + 0x6A8) = 0;
    *(u32 *)((u8 *)self + 0x6AC) = 0;
    return self;
}
