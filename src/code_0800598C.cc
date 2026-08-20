// func_0800598C (0x0800598C) -- constructor of the "confirm screen"
// widget class whose destructor is func_080059D0 (already matched) --
// SESSION_NOTES.md round 6 "confirm-screen family"
// (func_0800598C/func_08005A00/func_08005A3C/func_080059D0), used by
// func_08004C68's New Game naming sequence to display the final
// player/farm/dog name confirmation. Same placement-constructor shape as
// func_08007078/func_0806E9D8: vtable stamp, alloc 0x1A78 bytes, opaque
// init call (func_08004EFC, still unported, 5 args -- the 5th passed on
// the stack), store at self+4, return self.
#include "prelude.h"

extern u32 vtable_unk_080E5AA4[];

EC void *func_08004EFC(void *self, void *a1, void *a2, void *a3, void *a4);

EC void *func_0800598C(void *self, void *a1, void *a2, void *a3, void *a4)
{
    *(void **)self = vtable_unk_080E5AA4;
    void *obj = operator new(0x1A78);
    obj = func_08004EFC(obj, a1, a2, a3, a4);
    *(void **)((char *)self + 4) = obj;
    return self;
}
