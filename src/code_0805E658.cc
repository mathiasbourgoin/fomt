// func_0805E658 (0x0805E658) -- another member of the "~37 richer
// destructors" family (DECOMP_RULES.md / SESSION_NOTES.md round 4-6):
// vtable stamp, up to two conditional virtual-call teardowns of child
// objects read from self+4 (MI-shaped, vtable at pointee offset +4) and
// self+8 (plain, vtable at pointee offset +0), then tail-call to the
// shared base AScene::~AScene() (func_080007EC), forwarding self/in_chrg
// unchanged -- identical shape to func_0809A518/func_080521BC.
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

extern u32 vtable_unk_080E79B8[];

EC void func_080007EC(void *self, int in_chrg);

struct SelfFields
{
    void *vt;
    ChildOffset4 *unk_04;
    ChildPlain *unk_08;
};

EC void func_0805E658(void *self_v, int in_chrg)
{
    SelfFields *self = (SelfFields *)self_v;
    self->vt = vtable_unk_080E79B8;

    if (self->unk_08 != nullptr) {
        self->unk_08->Unregister(3);
    }
    if (self->unk_04 != nullptr) {
        self->unk_04->Unregister(3);
    }

    func_080007EC(self_v, in_chrg);
}
