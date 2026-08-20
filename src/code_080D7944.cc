// func_080D7944 (0x080D7944) -- "richer" destructor of the same sibling
// family as func_08008A68 (src/code_08008A68.cc) and the minimal
// destructor twins func_080D7AAC/func_080D7B04 (src/code_080D7AAC.cc,
// src/code_080D7B04.cc): re-stamps its own base vtable
// (vtable_unk_080E5B3C at +0x14), unregisters a callback previously
// registered via func_080D100C (mode 0, handler pointer read back from
// +0x10), re-stamps vtable_unk_080E5B54 at +0xc, unlinks self from the
// intrusive list rooted at gUnk_03000410 (self's own +8 slot holds the
// "next" pointer written back into the list head -- same unlink idiom as
// func_080D7AAC/func_080D7B04, just at a different embedded offset),
// conditionally restores IME via func_080004F4 if a saved flag at +4 is
// non-zero, then conditionally deletes self when bit 0 of `flags` is
// set. Called as an opaque black box from func_08008A68 and from the
// constructor siblings func_080D79CC/func_080D7AD4 (src/code_080D79CC.cc,
// src/code_080D7AD4.cc) well before this file itself was ported.
//
// Found via the "sister method" scan of gUnk_03000410 neighbours
// (SESSION_NOTES.md, round 10/w28). That round left this as a near-miss
// closed 1 instruction short: every straightforward C rendering of
// `flags & 1` compiles the AND into a scratch register (`ands r0, r5`,
// discarding the result), while the original keeps the result in
// `flags`'s own register (`ands r5, r0`) -- see DECOMP_RULES.md
// anti-pattern for the fix: writing the test as the double-negation
// `!!(flags & 1)` (instead of `flags & 1` or an explicit `flags &= 1;`)
// is what makes agbcp normalize the value back into the variable's home
// register instead of eliding the write-back as a dead store. Verified
// bit-exact (all 20 instructions + literal pool) against the harness
// disassembly of the vanilla binary.
#include "prelude.h"

extern u32 vtable_unk_080E5B3C[];
extern u32 vtable_unk_080E5B54[];
extern void *gUnk_03000410;

EC int func_08000528(int x);
EC void *func_080D100C(int mode, void *fn);
EC void func_080004F4(void);

EC void func_080D7944(void *self, unsigned int flags)
{
    *(void **)((char *)self + 0x14) = vtable_unk_080E5B3C;
    func_08000528(1);
    func_080D100C(0, *(void **)((char *)self + 0x10));
    *(void **)((char *)self + 0xc) = vtable_unk_080E5B54;
    gUnk_03000410 = *(void **)((char *)self + 8);

    if (*(u16 *)((char *)self + 4) != 0)
    {
        func_080004F4();
    }

    if (!!(flags & 1))
    {
        operator delete(self);
    }
}
