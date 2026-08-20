// func_08004B94 (0x08004B94) -- sibling of func_08004B58
// (src/code_08004B58.cc), the "dispatch virtual destructor at end of
// body" sub-variant of the placement-constructor family left as a
// deferred candidate at the end of round 11 (w33). Same overall shape:
// stamps vtable_unk_080E5A68, allocates and initializes a 0x1a0-byte
// child at self+4 via func_080041DC -- but this time the value handed to
// func_080041DC's 3rd argument is stolen from a caller out-parameter
// (`a2`), same move-in convention as the plain-child field of the
// move-in placement constructors (src/code_0807EE14.cc), not a fresh
// allocation.
//
// After the child is built, the disassembly re-reads `*a2` (which this
// same function already zeroed a few instructions earlier) and only
// destroys it via a direct virtual call (vtable slot 2, `_call_via_r2`)
// if that re-read is non-null -- i.e. the branch is provably dead at
// runtime given this function's own control flow, but agbcp keeps the
// check because the original C source genuinely reads `*a2` a second
// time rather than reusing the already-stolen local value (agbcp does
// no such CSE/value-numbering -- see DECOMP_RULES.md anti-pattern #2).
// Reproduced literally below (a second `*a2` read, not the `stolen`
// local) to match this exact reload.
//
// Register-allocation note (same family of pitfall as
// src/code_08004B58.cc): assigning `*a2` straight into the address-taken
// local `stolen` made agbcp spill it to its stack slot immediately,
// ahead of the zero-store to `*a2` -- the original disassembly zeroes
// `*a2` (`movs r0,#0; str r0,[r4]`) BEFORE spilling the stolen value to
// the stack (`str r1,[sp]`), and keeps the read in r1 (not r0). Routing
// the read through a non-address-taken temporary (`raw`) before aliasing
// it to `stolen` reproduces both the exact register (r1) and the exact
// instruction order.
#include "prelude.h"

extern u32 vtable_unk_080E5A68[];

struct AUnk_child_iface
{
    void (*unused0)();
    void (*unused1)();
    void (*Method2)(void *self, int arg);
};

EC void *func_080041DC(void *self, int a1, void **a2);

EC void *func_08004B94(void *self, int a1, void **a2)
{
    *(void **)self = vtable_unk_080E5A68;
    void *raw = *a2;
    *a2 = nullptr;
    void *stolen = raw;
    void *obj = operator new(0x1a0);
    obj = func_080041DC(obj, a1, &stolen);
    *(void **)((char *)self + 4) = obj;
    void *check = *a2;
    if (check)
    {
        AUnk_child_iface *vt = *(AUnk_child_iface **)check;
        vt->Method2(check, 3);
    }
    return self;
}
