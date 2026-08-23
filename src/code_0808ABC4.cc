#include "prelude.h"

extern u32 vtable_unk_080E7D68[];
EC void func_080CE19C(void *self);

EC void *func_0808ABC4(void *self)
{
    register u8 *saved asm("r4") = (u8 *)self;
    func_080CE19C(saved);
    *(void **)(saved + 4) = vtable_unk_080E7D68;
    register u8 *field asm("r0") = saved + 0x98;
    register u32 zero asm("r3") = 0;
    *field = zero;
    register u8 *destination asm("r2") = saved + 0xfc;
    register u8 *base asm("r1") = *(u8 **)(saved + 8);
    register u32 offset asm("r5") = 0x1c34;
    register u8 *value asm("r0") = base + offset;
    *(u8 **)destination = value;
    register u32 destination_offset asm("r0") = 0x100;
    destination = saved + destination_offset;
    offset -= 8;
    value = base + offset;
    *(u8 **)destination = value;
    destination_offset = 0x104;
    value = saved + destination_offset;
    offset += 0xc;
    base += offset;
    *(u8 **)value = base;
    destination_offset = 0x108;
    value = saved + destination_offset;
    *(u32 *)value = zero;
    return saved;
}
