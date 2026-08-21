#include "prelude.h"

// 8 hidden leaf accessor functions surfaced by the fixed .byte-blob
// scanner (round w73), packed back-to-back (no thumb_func_start
// separators between them in the vanilla asm -- only 4-byte alignment
// padding here and there) inside the 108-byte gap between func_080D0C2C
// and func_080D0CD4 in asm/code_080CAD10.s.
//
// All operate on a raw 4-byte struct {u8 f0,f1,f2,f3}, used as two
// little-endian u16-like pairs: (f0,f1) and (f2,f3). No known caller
// (never referenced via `bl` anywhere in asm/*.s) -- likely reached
// only through a not-yet-found function pointer table, or simply dead
// code. Left as plain `void*`/byte-offset accessors rather than a named
// struct: no vtable, no `this`-like usage pattern visible, nothing in
// this neighbourhood (IWRAM globals gUnk_0300041C/gUnk_03000420 used by
// the immediately preceding func_080D0C2C) establishes a real type yet.

EC void func_080D0C68(void *self, u8 a, u16 b)
{
    ((u8 *)self)[0] = a;
    ((u8 *)self)[1] = 0;
    ((u8 *)self)[2] = (u8)b;
    ((u8 *)self)[3] = (u8)(b >> 8);
}

EC void func_080D0C78(void *self, u8 a, u8 b, const u8 *src)
{
    ((u8 *)self)[0] = a;
    ((u8 *)self)[1] = b;
    ((u8 *)self)[2] = src[0];
    ((u8 *)self)[3] = src[1];
}

EC u8 func_080D0C88(const void *self)
{
    return ((const u8 *)self)[0];
}

EC u16 func_080D0C8C(const void *self)
{
    const u8 *p = (const u8 *)self;
    return p[2] | (p[3] << 8);
}

EC u8 func_080D0C98(const void *self)
{
    return ((const u8 *)self)[1];
}

EC void func_080D0C9C(const void *self, u8 *dst)
{
    dst[0] = ((const u8 *)self)[2];
    dst[1] = ((const u8 *)self)[3];
}

EC u16 func_080D0CA8(const void *self)
{
    const u8 *p = (const u8 *)self;
    return p[0] | (p[1] << 8);
}

EC bool func_080D0CB4(const void *a, const void *b)
{
    const u8 *pa = (const u8 *)a;
    const u8 *pb = (const u8 *)b;
    bool result = false;
    if (pb[0] == pa[2]) {
        if (pb[1] == pa[3]) {
            result = true;
        }
    }
    return result;
}
