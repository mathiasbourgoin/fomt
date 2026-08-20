// func_0800371C (0x0800371C) -- derived-scene destructor with a child-object
// teardown, part of the ~37-strong family sharing the pattern first seen
// off `func_08004C54`'s `AScene`-derived, empty-body sibling (round 4/5):
// stamp own vtable, then, if a field at `self+4` is non-null, call a
// function pointer read from that field's OWN "+4, slot 2" table with the
// literal argument 3, then tail-call the base destructor `func_080007EC`
// (`AScene::~AScene`, src/scene.cc) forwarding self/in_chrg unchanged.
//
// The field at `self+4` is NOT modeled as a real C++ object/vtable here:
// its own dispatch pointer sits at offset +4 of itself (not +0, where a
// standard single-inheritance vtable pointer would live) -- confirmed by
// reading the matching constructor `func_080041DC` (asm/new_game.s), which
// stamps `vtable_unk_080E5A5C` at `[r7, #4]` of the freshly `__builtin_new`'d
// child object, after first calling `func_08008574` on the same object
// (consistent with a 4-byte non-polymorphic base subobject occupying
// offset 0, with the polymorphic part's vtable starting at offset +4).
// That leading base's real type/role is not characterized here, so rather
// than guess a C++ class shape for it, this is ported as plain, honest
// pointer arithmetic (per DECOMP_RULES.md's "C vs C++ must follow the
// binary's real structure" rule) -- confirmed bit-exact via a direct
// compile+disassemble quicktest against the original before the full
// `make compare` split/rebuild.
#include "prelude.h"

extern u32 vtable_unk_080E5A18[];

EC void func_080007EC(void *self, int in_chrg);

EC void func_0800371C(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E5A18;
    void *child = *(void **)((char *)self + 4);
    if (child != nullptr)
    {
        void **vt = *(void ***)((char *)child + 4);
        void (*fn)(void *, int) = (void (*)(void *, int))vt[2];
        fn(child, 3);
    }
    func_080007EC(self, in_chrg);
}
