// func_0806E9D8 (0x0806E9D8) -- constructor of the "selector widget" class
// (SESSION_NOTES.md round 6: the `func_0806E9D8`/`func_0806EA30`/
// `func_0806EA6C`/`func_0806EA00` family, called between the player-name
// and farm-name captures of func_08004C68's New Game naming sequence --
// candidate for the gender selector, not fully confirmed). Same
// placement-constructor shape as func_08007078/func_0800598C: vtable
// stamp, alloc 0x454 bytes, opaque init call (func_0806D990, still
// unported), store at self+4, return self.
#include "prelude.h"

extern u32 vtable_unk_080E7AD0[];

EC void *func_0806D990(void *self, void *a1);

EC void *func_0806E9D8(void *self, void *a1)
{
    *(void **)self = vtable_unk_080E7AD0;
    void *obj = operator new(0x454);
    obj = func_0806D990(obj, a1);
    *(void **)((char *)self + 4) = obj;
    return self;
}
