// func_08050EE4: constructor -- sets vtable_unk_080E7878, zeroes 2 leading
// pointer fields, then packs 4 caller-supplied bitfields (widths 5/10/4/4)
// into a shared 32-bit storage unit at self+0xc. Sibling of the
// vtable_unk_080E78A8/080E78C0/080E78E0 constructor family used together in
// asm/code_0804E9C8.s (still unported); role of the concrete class is not
// established yet, kept generic per DECOMP_RULES vanilla-naming rule.
//
// This resolves a near-miss documented across several prior rounds
// (SESSION_NOTES.md, rounds w39/w41/w44): the target builds each bitfield's
// clear-mask via runtime negation of a small immediate (`movs r,#N; negs
// r,r`) instead of folding a `& ~mask` expression to a direct 8-bit
// immediate. That negation-based mask construction is agbcp's OWN codegen
// for a real C bitfield-struct member assignment (compiler picks the
// smallest access width -- byte/half/word -- that fully covers the field
// being written), not something reachable by hand-rolled `v & ~mask`
// arithmetic on a plain integer local. Modelling the packed word as an
// actual bitfield struct reproduces the exact access-width choice per
// field. The remaining register-restore mismatch (`pop {r1}; bx r1` vs a
// plain `pop {r0}; bx r0`) is explained by the constructor returning
// `self` (the usual ARM/CFront convention for constructors, cf.
// DECOMP_RULES.md rule 9 on SmartPtr-style return-value construction):
// once r0 holds the live return value, agbcp restores the saved link
// register into r1 instead.
#include "prelude.h"

extern void *vtable_unk_080E7878;

struct Bits08050EE4
{
    void *unk_0;
    void *unk_4;
    void *vtable;
    u32 field_0 : 5;
    u32 field_5 : 10;
    u32 field_15 : 4;
    u32 field_19 : 4;
    u32 unk_23 : 9;
};

EC void *func_08050EE4(void *self_, u32 a1, u32 a2, u32 a3, u32 a4)
{
    Bits08050EE4 *self = (Bits08050EE4 *)self_;
    self->unk_0 = 0;
    self->unk_4 = 0;
    self->vtable = &vtable_unk_080E7878;
    self->field_0 = a1;
    self->field_5 = a2;
    self->field_15 = a3;
    self->field_19 = a4;
    return self_;
}
