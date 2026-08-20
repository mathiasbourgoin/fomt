// func_080512D8: constructor -- sets vtable_unk_080E78E0, zeroes 2 leading
// pointer fields, copies 2 plain u32 fields, then packs a 14-bit field plus
// 2 single-bit fields into a shared 16-bit storage unit at self+0x14.
// Sibling of the vtable_unk_080E7878/080E78A8/080E78C0 constructor family
// used together in asm/code_0804E9C8.s (still unported); role of the
// concrete class is not established yet, kept generic per DECOMP_RULES
// vanilla-naming rule.
//
// Same near-miss class and same fix as func_08050EE4 (src/code_08050EE4.cc)
// -- see that file's header comment for the full root-cause: the packed
// bitfields must be modelled as a real C bitfield struct (agbcp picks the
// smallest access width covering each field, including collapsing 2
// adjacent 1-bit fields sharing one byte into a single load/mask-pair/
// store), and the constructor returns `self` (ARM/CFront convention),
// which is what selects `pop {r1}; bx r1` over a plain `pop {r0}; bx r0`
// in the epilogue.
//
// One additional wrinkle here, not present in func_08050EE4: the last
// value argument arrives on the stack via a byte-sized load (`add r4, sp,
// #12; ldrb r5, [r4, #0]`), not a word load -- DECOMP_RULES.md rule 13
// (stack-overflow scalar "flag" arguments must be typed `bool`, not
// `char`/`u32`, to reproduce the byte-address-computed load/store).
#include "prelude.h"

extern void *vtable_unk_080E78E0;

struct Bits080512D8
{
    void *unk_0;
    void *unk_4;
    void *vtable;
    u32 field_c;
    u32 field_10;
    u32 field_14_0 : 14;
    u32 field_14_14 : 1;
    u32 field_14_15 : 1;
    u32 unk_16 : 16;
};

EC void *func_080512D8(void *self_, u32 a1, u32 a2, u32 a3, bool a4)
{
    Bits080512D8 *self = (Bits080512D8 *)self_;
    self->unk_0 = 0;
    self->unk_4 = 0;
    self->vtable = &vtable_unk_080E78E0;
    self->field_c = a1;
    self->field_10 = a2;
    self->field_14_0 = a3;
    self->field_14_14 = 0;
    self->field_14_15 = a4;
    return self_;
}
