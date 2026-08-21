#include "prelude.h"

// 3 hidden leaf getters surfaced by the fixed .byte-blob scanner, packed
// back-to-back in the 24-byte gap between func_0801FD3C and func_0801FD60
// (asm/code_0801DE3C.s). Same idiom as the sibling wrappers immediately
// around them (dereference self+4, then read a field of the pointee) --
// but these read fields directly instead of forwarding to another
// function. An identical 24-byte trio exists again at 0x080ADB84
// (asm/code_080A3774.s), between func_080ADB78/func_080ADB9C -- same
// byte content, same neighbouring callees (func_080A5A9C/func_080A59BC),
// a genuine duplicate accessor table rather than a scanner artifact.
//
// The two i16 fields (offsets 0xA/0xE) match the shape of the still-
// undecompiled "Location"-like object flagged in DECOMP_ARCHIVE.md
// (.L08037CDC, blocked pending a real `Location` class in include/*.hh)
// -- kept as raw pointer arithmetic rather than inventing that class
// here.
EC i16 func_0801FD48(void *self)
{
    void *p = *(void **)((u8 *)self + 4);
    return *(i16 *)((u8 *)p + 0xE);
}

EC i16 func_0801FD50(void *self)
{
    void *p = *(void **)((u8 *)self + 4);
    return *(i16 *)((u8 *)p + 0xA);
}

EC u32 func_0801FD58(void *self)
{
    void *p = *(void **)((u8 *)self + 4);
    return *(u32 *)p;
}
