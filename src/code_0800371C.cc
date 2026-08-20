// func_0800371C (0x0800371C) -- another member of the "richer" derived-
// scene-destructor family (see src/code_08004BDC.cc for the full
// writeup of round 6's investigation into this family's child-object
// layout). Same shape as func_08004BDC: own vtable stamp
// (vtable_unk_080E5A18), conditional teardown of a child object whose
// own vtable pointer sits at the child's offset +4 (not +0 -- see
// src/code_08004BDC.cc for why), virtual call slot 2 with a constant
// arg of 3, then tail-forward to the base AScene destructor
// (func_080007EC). Matched bit-exact on the first quicktest iteration
// with the same C shape as func_08004BDC.
#include "prelude.h"

extern u32 vtable_unk_080E5A18[];

struct AUnk_child_iface
{
    void (*unused0)();
    void (*unused1)();
    void (*Method2)(void *self, int arg);
};

EC void func_080007EC(void *self, int in_chrg);

EC void func_0800371C(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E5A18;
    void *child = *(void **)((char *)self + 4);
    if (child)
    {
        AUnk_child_iface *vt = *(AUnk_child_iface **)((char *)child + 4);
        vt->Method2(child, 3);
    }
    func_080007EC(self, in_chrg);
}
