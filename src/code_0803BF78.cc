// func_0803BF78 (0x0803BF78) -- simple wrapper/derived-constructor step
// around func_0803BDFC (asm/code_0803A8A4.s), forwarding 4 register args
// plus a literal 0x18 and one caller-stack arg down to it as extra stack
// arguments (func_0803BDFC itself takes 9 arguments total: self + 3
// register + 5 stack -- confirmed by reading its own prologue, which
// pulls 5 words off the stack at [sp+0x34..0x44]). func_0803BDFC is left
// as an opaque black box on purpose: it lives in the "pression de
// registres" difficulty class (r8/sb/sl live across a builtin_new + a
// second multi-arg bl), flagged as out of scope in DECOMP_RULES.md -- this
// function itself does NOT live in that class (no r8/sb/sl in its own
// body), matching the general "wrapper stays portable even when its
// black-box callee doesn't" pattern already seen for func_08004C54-style
// chains.
//
// After the func_0803BDFC call, this re-stamps the derived class's own
// vtable (vtable_unk_080E77A4) at self+4 (overwriting whatever
// func_0803BDFC's own construction left there -- ordinary single-
// inheritance restamp), allocates a 0x41c-byte sub-object, passes it
// through an opaque helper func_080E0A94, and stores the result at
// self+8. Four more one-byte fields are then set: self+0xc from the
// caller-supplied arg, self+0xd fixed to 0, self+0xe/self+0xf fixed to 1.
//
// The 0/1 immediate at self+0xd is written into a named temporary
// declared before the self+0xc store; the disassembly computes
// `movs r0, #0` before the strb of the OTHER field (self+0xc, sourced
// from the already-live register holding the caller's argument) --
// swapping the statement order for these two field writes (matching
// rule #5 elsewhere in this repo) was not enough on its own to reproduce
// the schedule; giving the immediate its own named local ahead of both
// stores is what reproduced the exact instruction order bit-for-bit.
#include "prelude.h"

extern u32 vtable_unk_080E77A4[];

EC void *__builtin_new(u32 size);
extern "C" void *func_0803BDFC(void *self, u32 a2, u32 a3, u32 a4, u32 a5, u32 a6, u32 a7, u32 a8, u32 a9);
extern "C" void *func_080E0A94(void *arg);

EC void *func_0803BF78(void *self, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5)
{
    func_0803BDFC(self, 0, 0x88, 0xf0, 0x18, a1, a2, a3, a4);

    *(u32 **)((char *)self + 4) = vtable_unk_080E77A4;

    *(void **)((char *)self + 8) = func_080E0A94(__builtin_new(0x41c));

    u8 zero = 0;
    *(u8 *)((char *)self + 0xc) = a5;
    *(u8 *)((char *)self + 0xd) = zero;
    *(u8 *)((char *)self + 0xe) = 1;
    *(u8 *)((char *)self + 0xf) = 1;

    return self;
}
