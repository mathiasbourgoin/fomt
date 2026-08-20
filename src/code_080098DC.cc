// func_080098DC (0x080098DC) -- constructor-shaped init step for the same
// established (but not yet fully characterized) class documented in
// src/code_080099EC.cc: stamps vtable_unk_080E5BB4 at self+8, then delegates
// the rest of its own init to an opaque helper (func_08009984) and forwards
// to a second opaque helper (func_080098AC) twice -- once on the embedded
// sub-object at self+0x10 with a fixed constant argument (2), once on self
// itself forwarding the caller's own second argument. Found via the same
// "sister method" scan as func_08004C48 (DECOMP_ARCHIVE.md round 10
// methodology, angle 1a): an unmatched thumb_func_start block referencing a
// vtable_unk_ADDR literal already known from a matched src/*.cc file
// (src/code_080099EC.cc), here embedded mid-file rather than adjacent to an
// existing split. func_08009984/func_080098AC remain unported opaque asm
// callees (no return value consumed by this function, none of their own
// vtable/new usage inspected) -- not claiming their shape, only this
// function's own body.
#include "prelude.h"

extern u32 vtable_unk_080E5BB4[];

EC void func_08009984(void *self);
EC void func_080098AC(void *self, int arg);

EC void func_080098DC(void *self, int arg2)
{
    *(void **)((char *)self + 8) = vtable_unk_080E5BB4;
    func_08009984(self);
    func_080098AC((char *)self + 0x10, 2);
    func_080098AC(self, arg2);
}
