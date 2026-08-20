// func_0806D8C8 (0x0806D8C8) -- placement constructor counterpart to the
// already-matched destructor func_0806D918 (src/code_0806D918.cc, "~37
// richer destructors" family): stamps the same vtable_unk_080E7AB4,
// allocates a 0x4178-byte child at self+4 via the still-opaque helper
// func_08069F14. Same "composite constructor with dispatch-virtual
// destructor at end of body" sub-variant of the placement-constructor
// family as src/code_08004B94.cc (deferred candidates left at the end of
// round 11/w33) -- a 4th argument (`a1`) is a caller out-parameter whose
// old value is stolen (move-in convention, passed through to
// func_08069F14's own out-param convention) then, after the new child is
// built, conditionally destroyed via a direct vtable-slot-2 call if the
// re-read of `*a1` (not the already-stolen local, see
// src/code_08004B94.cc for why agbcp does not eliminate this
// provably-dead-at-runtime re-read) is non-null.
//
// Register-allocation note (src/code_08004B58.cc/src/code_08004B94.cc):
// assigning the stolen read straight into the address-taken local made
// agbcp spill it to the stack ahead of the zero-store to `*a1`, in the
// wrong register -- routing it through a non-address-taken temporary
// (`raw`) first reproduces the original's zero-then-spill order and its
// r1 register choice.
#include "prelude.h"

extern u32 vtable_unk_080E7AB4[];

struct AUnk_child_iface
{
    void (*unused0)();
    void (*unused1)();
    void (*Method2)(void *self, int arg);
};

EC void *func_08069F14(void *self, void **a1, void *a2, void *a3);

EC void *func_0806D8C8(void *self, void **a1, void *a2, void *a3)
{
    *(void **)self = vtable_unk_080E7AB4;
    void *raw = *a1;
    *a1 = nullptr;
    void *stolen = raw;
    void *obj = operator new(0x4178);
    obj = func_08069F14(obj, &stolen, a2, a3);
    *(void **)((char *)self + 4) = obj;
    void *check = *a1;
    if (check)
    {
        AUnk_child_iface *vt = *(AUnk_child_iface **)check;
        vt->Method2(check, 3);
    }
    return self;
}
