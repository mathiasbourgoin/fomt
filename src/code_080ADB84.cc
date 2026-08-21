#include "prelude.h"

// Duplicate of the 3-getter trio at 0x0801FD48 (src/code_0801FD48.cc) --
// identical bytes, same neighbouring wrapper callees (func_080A5A9C/
// func_080A59BC just before, in this same file), a genuine second copy
// of the accessor table rather than a scanner/merge artifact. See
// src/code_0801FD48.cc for the full rationale (Location-like i16 fields
// at offsets 0xA/0xE of the self+4 pointee, kept as raw pointer
// arithmetic pending a real `Location` class in include/*.hh).
EC i16 func_080ADB84(void *self)
{
    void *p = *(void **)((u8 *)self + 4);
    return *(i16 *)((u8 *)p + 0xE);
}

EC i16 func_080ADB8C(void *self)
{
    void *p = *(void **)((u8 *)self + 4);
    return *(i16 *)((u8 *)p + 0xA);
}

EC u32 func_080ADB94(void *self)
{
    void *p = *(void **)((u8 *)self + 4);
    return *(u32 *)p;
}
