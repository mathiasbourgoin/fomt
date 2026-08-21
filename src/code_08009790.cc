#include "prelude.h"
#include "gbasvc.h"

// Hidden function surfaced by the fixed .byte-blob scanner (round w73),
// sandwiched between func_0800977C and func_080097A4 in
// asm/code_08008DE8.s (the "sound API neighbourhood" family already
// explored in round w70). Unlike func_0800977C (which goes through the
// validating wrapper func_08008E64 before eventually reaching the BIOS
// call), this sibling calls CpuFastSet directly: it copies 0x100 words
// (1024 bytes -- exactly the size of GBA OAM) from a shadow buffer at
// self+4 to the real OAM region (0x07000000). No known caller (never
// referenced via `bl` anywhere in asm/*.s) -- likely dead code or a
// caller that itself hasn't been decompiled/found yet.
EC void func_08009790(void *self)
{
    CpuFastSet((u8 *)self + 4, (void *)0x07000000, 0x100);
}
