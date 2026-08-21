#include "prelude.h"

// Hidden function surfaced by the fixed .byte-blob scanner, sandwiched
// between func_08075DEC and func_08075E24 in asm/code_080756D0.s.
// Flagged as a candidate since round w70 (SESSION_NOTES.md) but not
// attacked until now. Two conditional calls to the already-known
// validating DMA wrapper func_08008E64 (still asm-only, prototype
// recovered directly from its compiled body: two pointer args + a word
// count, matching the CpuFastSet-style convention already used by
// func_08009790). Reads 6 fields of `self` (+0xC/+0x10/+0x14 for the
// unconditional first call, +0x18/+0x1C/+0x20 for the second, gated on
// the +0x1C pointer field being non-null) and always returns 0. The
// +0x1C field is both the null-test and the literal 2nd argument of the
// 2nd call -- reproduced with a single local so agbcp doesn't reload it.
EC void func_08008E64(void *p0, void *p1, u32 count);

EC u32 func_08075E00(void *self)
{
    u8 *s = (u8 *)self;
    func_08008E64(*(void **)(s + 0xC), *(void **)(s + 0x10), *(u32 *)(s + 0x14));
    void *v = *(void **)(s + 0x1C);
    if (v != nullptr)
    {
        func_08008E64(*(void **)(s + 0x18), v, *(u32 *)(s + 0x20));
    }
    return 0;
}
