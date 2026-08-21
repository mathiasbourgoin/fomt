#include "prelude.h"

// 2 hidden functions surfaced by the fixed .byte-blob scanner, packed
// back-to-back in the 44-byte gap between func_080AAF3C and
// func_080AAFC8 (asm/code_080A3774.s). Flagged w70 as a "register
// pressure" candidate by surface resemblance to the neighbouring
// function (which does use r8/sb), but neither function here touches
// r8/sb/sl/ip at all -- both are small leaf-ish helpers.
//
// func_080AAF9C forwards to the already-known validating DMA wrapper
// func_08008E64 (see src/code_08075E00.cc for its recovered prototype),
// gated on a non-null pointer argument and a discriminant field at
// self+0 equal to 2.
//
// func_080AAFB8 reads an index at self+4 and forwards it to the
// already-ported GetMapData(u32) (still asm-only, name already present
// in asm/*.s), then reads a byte at offset 0x24 of the returned row.
EC void *GetMapData(u32 idx);
EC void func_08008E64(void *p0, void *p1, u32 count);

EC void func_080AAF9C(void *self, void *ptr)
{
    if (ptr != nullptr && *(u32 *)self == 2)
    {
        func_08008E64(*(void **)((u8 *)self + 0x2C), ptr, 0xB000);
    }
}

EC u8 func_080AAFB8(void *self)
{
    u32 idx = *(u32 *)((u8 *)self + 4);
    u8 *m = (u8 *)GetMapData(idx);
    return m[0x24];
}
