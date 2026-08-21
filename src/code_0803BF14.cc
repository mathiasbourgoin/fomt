// func_0803BF14 -- constructor, sibling of func_08050EE4 (same struct
// shape: 2 zeroed pointer fields, a vtable pointer, 3 caller-supplied
// scalar fields, then a packed bitfield word). Discovered as a genuine
// hidden-code blob (100 bytes, .L0803BF14 in asm/code_0803A8A4.s) sitting
// between the last asm-only function of that file (func_0803BF08) and the
// already-ported func_0803BF78 -- the exact address range where this
// function belongs (0x0803BF14..0x0803BF78), left as raw .byte data when
// the file was originally split. No symbolic caller found in asm/*.s
// (grep negative), consistent with other functions in this file reached
// only through a vtable/dispatch table not yet symbolised.
//
// Same "widths packed into a shared word via runtime mask negation"
// codegen documented in DECOMP_RULES.md rule #16 for func_08050EE4/
// func_080512D8: modelling self+0x1c as a real bitfield struct member
// (byte/half/word access widths chosen by the compiler per field)
// reproduces the exact `movs #N; negs` clear-mask construction. The
// leading stack-argument field (self+0x18) must be assigned BEFORE the
// zeroed pointer fields/vtable/register-argument fields in source order
// (verified against 2 other orderings that produced a different load/
// store schedule) -- literal ordering rule (DECOMP_RULES.md rule #5).
// Register-restore mismatch handled the same way as func_08050EE4: `pop
// {r1}; bx r1` because the constructor returns `self` (rule #16bis).
#include "prelude.h"

extern void *vtable_unk_080E7758;

struct Bits0803BF14
{
    void *unk_0;
    void *unk_4;
    void *vtable;
    u32 f_0c;
    u32 f_10;
    u32 f_14;
    u32 unk_18;
    u32 field_0 : 5;
    u32 field_5 : 10;
    u32 field_15 : 4;
    u32 unk_19 : 13;
};

EC void *func_0803BF14(void *self_, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5, u32 a6, u32 a7)
{
    Bits0803BF14 *self = (Bits0803BF14 *)self_;
    self->unk_0 = 0;
    self->unk_4 = 0;
    self->vtable = &vtable_unk_080E7758;
    self->f_0c = a1;
    self->f_10 = a2;
    self->f_14 = a3;
    self->unk_18 = a4;
    self->field_0 = a5;
    self->field_5 = a6;
    self->field_15 = a7;
    return self_;
}
