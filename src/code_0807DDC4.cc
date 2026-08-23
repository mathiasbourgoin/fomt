#include "prelude.h"

extern u32 vtable_unk_080E7C08[];
EC void func_080C7F58(void *self);

EC void *func_0807DDC4(void *self, void *, void *value)
{
    register u8 *saved asm("r4") = (u8 *)self;
    register void *saved_value asm("r5") = value;
    func_080C7F58(saved);
    *(void **)(saved + 4) = vtable_unk_080E7C08;
    register u32 field_offset asm("r1") = 0x6a4;
    register u8 *field asm("r0") = saved + field_offset;
    *(void **)field = saved_value;
    register u32 next_offset asm("r2") = 0xd5;
    next_offset <<= 3;
    field = saved + next_offset;
    register u32 zero asm("r1") = 0;
    *field = zero;
    next_offset += 0x64;
    field = saved + next_offset;
    *(u32 *)field = zero;
    return saved;
}
