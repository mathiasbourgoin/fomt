// func_08007078 (0x08007078) -- constructor of the text-capture widget
// class whose destructor is func_080070A4 (src/code_080070A4.cc, already
// matched) -- SESSION_NOTES.md round 6/7 "text-capture widget triplet"
// (func_08007078/func_080070D4/func_08007110/func_080070A4), one of the
// three bounded-12-char-name captures used by func_08004C68's New Game
// naming sequence. Stamps vtable_unk_080E5AC0 (matching func_080070A4's
// destructor stamp), allocates a 0x4640-byte sub-object, initializes it
// via func_08005A58 (still opaque asm, called as a black box), and
// stores the result at self+4 -- returns self, the standard
// placement-constructor pattern already established in this repo (cf.
// func_0800598C, the sibling confirm-screen constructor, same shape).
#include "prelude.h"

extern u32 vtable_unk_080E5AC0[];

EC void *func_08005A58(void *self, void *a1, void *a2);

EC void *func_08007078(void *self, void *a1, void *a2)
{
    *(void **)self = vtable_unk_080E5AC0;
    void *obj = operator new(0x4640);
    obj = func_08005A58(obj, a1, a2);
    *(void **)((char *)self + 4) = obj;
    return self;
}
