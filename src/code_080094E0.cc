#include "prelude.h"

// 3 hidden wrapper functions surfaced by the fixed .byte-blob scanner,
// packed back-to-back in the 52-byte gap between func_080094B8 and the
// orphan tail-shared epilogue at 0x08009514 (asm/code_08008DE8.s). All
// three forward to a field embedded at self+0xc (already-ported
// func_080094A4/func_080093A0, a signed-16-bit sound-parameter getter and
// getter+setter pair -- see the "API son" family documented in
// SESSION_NOTES.md round w70).
//
// The 3rd wrapper (func_08009508) does not have its own epilogue: its
// `bl` return address falls straight through into what used to carry the
// separate label `func_08009514` (no known caller anywhere in asm/*.s),
// so that tail is folded into this single function's body -- the shared
// sign-extend-and-return epilogue is simply this function's own return
// path, not a distinct callee.
EC i16 func_080094A4(void *self);
EC i16 func_080093A0(void *self, i16 val);

EC bool func_080094E0(void *self)
{
    i16 v = func_080094A4((u8 *)self + 0xc);
    return v != 0;
}

EC i16 func_080094F8(void *self)
{
    return func_080094A4((u8 *)self + 0xc);
}

EC i16 func_08009508(void *self, i16 val)
{
    return func_080093A0((u8 *)self + 0xc, val);
}
