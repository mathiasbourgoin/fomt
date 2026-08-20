// func_080E41B0 (0x080E41B0) -- a variant of the "~37 richer destructors"
// family (DECOMP_RULES.md): same 2-child teardown shape as func_0809A518
// (child at self+8, plain, vtable at pointee offset +0; child at self+4,
// MI-shaped, vtable at pointee offset +4, see ChildOffset4 in
// src/code_0809A518.cc for the general shape) and the same tail-call to
// the shared base AScene::~AScene() (func_080007EC) forwarding
// self/in_chrg unchanged -- but this one does NOT restamp self's own
// vtable pointer at offset 0 (no `str r0, [r4]` in the disassembly, and
// no `vtable_unk_ADDR` literal is loaded/referenced at all anywhere in
// this function). Not seen elsewhere in the ~14 sites ported this round;
// ported literally as observed rather than guessing why (e.g. this could
// be an intermediate/non-leaf teardown helper that a caller elsewhere
// already stamped for, but that is not characterized here -- see
// SESSION_NOTES.md).
#include "prelude.h"

struct ChildPlain
{
    virtual void Unregister(int category) = 0;
};

struct ChildBase1
{
    void *unk_00;
};

struct ChildOffset4 : ChildBase1
{
    virtual void Unregister(int category) = 0;
};

EC void func_080007EC(void *self, int in_chrg);

struct SelfFields
{
    void *unk_00;
    ChildOffset4 *unk_04;
    ChildPlain *unk_08;
};

EC void func_080E41B0(void *self_v, int in_chrg)
{
    SelfFields *self = (SelfFields *)self_v;

    if (self->unk_08 != nullptr) {
        self->unk_08->Unregister(3);
    }
    if (self->unk_04 != nullptr) {
        self->unk_04->Unregister(3);
    }

    func_080007EC(self_v, in_chrg);
}
