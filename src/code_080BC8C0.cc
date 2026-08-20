// func_080BC8C0 (0x080BC8C0) -- another member of the "~23 richer
// destructors" family (DECOMP_RULES.md / SESSION_NOTES.md round 4-5),
// identical shape to func_080C7ED0 (this round): vtable stamp, one
// conditional virtual-call teardown of the MI-shaped child at self+4
// (vtable at pointee offset +4), then tail-call to the shared base
// AScene::~AScene() (func_080007EC), forwarding self/in_chrg unchanged.
#include "prelude.h"

struct ChildBase1
{
    void *unk_00;
};

struct ChildOffset4 : ChildBase1
{
    virtual void Unregister(int category) = 0;
};

extern u32 vtable_unk_080E8528[];

EC void func_080007EC(void *self, int in_chrg);

struct SelfFields
{
    void *vt;
    ChildOffset4 *unk_04;
};

EC void func_080BC8C0(void *self_v, int in_chrg)
{
    SelfFields *self = (SelfFields *)self_v;
    self->vt = vtable_unk_080E8528;

    if (self->unk_04 != nullptr) {
        self->unk_04->Unregister(3);
    }

    func_080007EC(self_v, in_chrg);
}
