// func_0808ED08 (0x0808ED08) -- another member of the "~37 richer
// destructors" family (DECOMP_RULES.md), same 2-child shape as
// func_0809A518: vtable stamp, then up-to-two conditional virtual-call
// teardowns of child objects read from self+8 (plain, vtable at pointee
// offset +0) and self+4 (MI-shaped, vtable at pointee offset +4, see
// ChildOffset4 in src/code_0809A518.cc for the general shape), then
// tail-call to the shared base AScene::~AScene() (func_080007EC),
// forwarding self/in_chrg unchanged.
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

extern u32 vtable_unk_080E7D90[];

EC void func_080007EC(void *self, int in_chrg);

struct SelfFields
{
    void *vt;
    ChildOffset4 *unk_04;
    ChildPlain *unk_08;
};

EC void func_0808ED08(void *self_v, int in_chrg)
{
    SelfFields *self = (SelfFields *)self_v;
    self->vt = vtable_unk_080E7D90;

    if (self->unk_08 != nullptr) {
        self->unk_08->Unregister(3);
    }
    if (self->unk_04 != nullptr) {
        self->unk_04->Unregister(3);
    }

    func_080007EC(self_v, in_chrg);
}
