// func_08004BDC (0x08004BDC) -- derived-scene destructor of the same
// scene-table-record family as func_08004C54/func_080E09B0, but a
// "richer" variant: unlike those two (round 4/5), this one has a real
// conditional child-object teardown before tail-forwarding to the base
// AScene destructor.
//
// Round 6 (this file) characterizes the layout that stumped round 5:
// the field at self+4 is a raw pointer to a heap-allocated "child"
// object (built by the paired constructor func_08004B94, which
// allocates 0x1a0 bytes via func_080041DC). That child object is
// *itself* a composite whose OWN polymorphic vtable pointer does not
// sit at its own offset 0 -- Ghidra's decompilation of func_080041DC
// shows it calls FUN_08008574(this) first (presumably constructing
// some 4-byte, non-polymorphic base/header occupying offset 0..4), THEN
// stamps ITS OWN vtable pointer at offset +4 (`*(undefined4
// *)(param_1 + 4) = DAT_080043b0;`). So `ldr r0, [r1, #4]` in the
// destructor is not a fictitious "SmartPtr with a leading word" -- it's
// the genuine, class-specific location of this particular child type's
// vtable pointer. A sibling family member, func_08011FE8 (game_state.s,
// same round), has its own child's embedded vtable at offset +0xF4
// instead -- confirming the offset is per-concrete-child-class, not a
// fixed universal layout, and must be read off each constructor rather
// than assumed.
//
// The teardown call itself is an ordinary virtual call, method slot 2
// of that inner vtable, with a constant second argument of 3:
// `vtable[2](child, 3)` -- passed via the compiler's standard ARMv4T
// (no register-form BLX) indirect-call helper `_call_via_r2` from
// libgcc.a, not a hand-written trampoline. Plain C++ pointer-chasing
// syntax below reproduces this bit-exact on the first attempt (verified
// via the quicktest harness before splitting/committing).
//
// The inner child type's full class layout is NOT independently known
// (no docs/*.md pointer for it in the franglais-patch repo yet) --
// `AUnk_child_iface` below is intentionally a minimal, honest stand-in
// exposing only the one vtable slot actually observed being called;
// this is NOT a claim about the full shape of the child's vtable.
#include "prelude.h"

extern u32 vtable_unk_080E5A68[];

struct AUnk_child_iface
{
    void (*unused0)();
    void (*unused1)();
    void (*Method2)(void *self, int arg);
};

EC void func_080007EC(void *self, int in_chrg);

EC void func_08004BDC(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E5A68;
    void *child = *(void **)((char *)self + 4);
    if (child)
    {
        AUnk_child_iface *vt = *(AUnk_child_iface **)((char *)child + 4);
        vt->Method2(child, 3);
    }
    func_080007EC(self, in_chrg);
}
