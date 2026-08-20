// func_0807EE14 (0x0807EE14) -- placement constructor counterpart to the
// already-matched func_0807EE44 destructor (src/code_0807EE44.cc), one of
// the "~37 richer AScene-derived destructors" family documented in
// DECOMP_RULES.md ("La famille 'riche' des ~37 destructeurs..."): stamps
// the very same vtable_unk_080E7C4C stamped by that destructor, allocates
// and initializes the MI child stored at self+4 (0x710 bytes, opaque init
// call func_0807E4D4 -- still unported, treated as a black box exactly
// like func_08005A58/func_08004EFC for the New Game widget triplet
// constructors), and moves-in the plain child stored at self+8 from an
// out-parameter (reads the caller's pointer, zeroes the caller's slot,
// stores the old value here) -- same overall placement-constructor shape
// as func_08007078/func_0800598C/func_0806E9D8 (vtable stamp, alloc,
// opaque init, store at self+4, return self), generalized to a second
// child field populated by a move rather than a second allocation.
#include "prelude.h"

extern u32 vtable_unk_080E7C4C[];

EC void *func_0807E4D4(void *self, void *a2);

EC void *func_0807EE14(void *self, void **a1, void *a2)
{
    *(void **)self = vtable_unk_080E7C4C;
    void *obj = operator new(0x710);
    obj = func_0807E4D4(obj, a2);
    *(void **)((char *)self + 4) = obj;
    void *stolen = *a1;
    *a1 = nullptr;
    *(void **)((char *)self + 8) = stolen;
    return self;
}
