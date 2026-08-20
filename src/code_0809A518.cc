// func_0809A518 (0x0809A518) -- derived scene-record destructor, part of
// the "~23 richer destructors" family flagged in DECOMP_RULES.md /
// SESSION_NOTES.md round 4-5 (vtable stamp + up-to-two conditional
// virtual-call teardowns of child objects read from self+4/self+8, then
// tail-call to the shared base AScene::~AScene() (func_080007EC),
// forwarding self/in_chrg unchanged -- same idiom as func_08004C54).
//
// The two child fields have DIFFERENT layouts, read directly off this
// disassembly (not guessed):
//   - self->unk_08: plain polymorphic pointer, vtable at offset +0.
//   - self->unk_04: vtable at offset +4 of the pointee -- i.e. the
//     pointee has one non-virtual 4-byte member ahead of its own vtable
//     pointer, exactly the multiple-inheritance layout already seen in
//     this repo for AEntity (include/entity.hh, vtable placed at +0x14
//     after its data members). Modeled locally here as a 2-base MI class
//     (ChildBase1 provides the leading word, ChildOffset4 provides the
//     vtable) rather than guessing a shared named class, since neither
//     child's full identity is characterized yet (see SESSION_NOTES.md
//     round 4's open item: "characterize the child-object field layout
//     for the ~23 richer destructors before attempting them").
//
// Both children are torn down via a call through vtable slot #2 (the
// third virtual: dtor, one placeholder, then this one) with a literal
// argument of 3 -- the same `_call_via_r2`/category-3 shape documented
// independently in the franglais-patch repo's docs/CHARACTER_SELECT.md
// round 10-11 as a generic actor-list-management primitive reused all
// over the engine, not something specific to this destructor family.
#include "prelude.h"
#include "scene.hh"

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

extern u32 vtable_unk_080E824C[];

EC void func_080007EC(void *self, int in_chrg);

struct SelfFields
{
    void *vt;
    ChildOffset4 *unk_04;
    ChildPlain *unk_08;
};

EC void func_0809A518(void *self_v, int in_chrg)
{
    SelfFields *self = (SelfFields *)self_v;
    self->vt = vtable_unk_080E824C;

    if (self->unk_08 != nullptr) {
        self->unk_08->Unregister(3);
    }
    if (self->unk_04 != nullptr) {
        self->unk_04->Unregister(3);
    }

    func_080007EC(self_v, in_chrg);
}
