// func_0807D070 (0x0807D070) -- constructor sibling of the "richer" 2-child
// AScene-derived destructor family (DECOMP_RULES.md) with an EXTENDED
// field layout not previously catalogued (DECOMP_ARCHIVE.md, "Les
// constructeurs de placement" only documents self+4/self+8): after the
// usual vtable stamp / operator new / opaque init call (stored at self+4,
// the MI child) and move-in of the plain child at self+8, this variant
// ALSO stores two more caller-supplied arguments verbatim (not moved,
// not allocated) at self+0xc (a3) and self+0x10 (a2). Found round 11/w33
// via the round-10/w24 sister method; a second instance of this exact
// extended layout is func_08088168 (src/code_08088168.cc), confirming
// this is a real recurring sub-variant, not a one-off.
#include "prelude.h"

extern u32 vtable_unk_080E7BF8[];

EC void *func_0807B0F0(void *self, void *a2, void *a3);

EC void *func_0807D070(void *self, void **a1, void *a2, void *a3)
{
    *(void **)self = vtable_unk_080E7BF8;
    void *obj = operator new(0x231C);
    obj = func_0807B0F0(obj, a2, a3);
    *(void **)((char *)self + 4) = obj;
    void *stolen = *a1;
    *a1 = nullptr;
    *(void **)((char *)self + 8) = stolen;
    *(void **)((char *)self + 0xc) = a3;
    *(void **)((char *)self + 0x10) = a2;
    return self;
}
