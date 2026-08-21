// func_08008980 (0x08008980) -- root object constructor, callee of
// func_08004C68 (New Game Run(), DECOMP_ARCHIVE.md) and of AgbMain
// (asm/main.s) -- characterized round 9/w21 as a "pression de registres"
// case (r4-r7 + r8/sb/ip all live simultaneously across the whole body),
// first real porting attempt round w61.
//
// Allocates a single 0x6c-byte object holding 6 sub-objects, stamped in
// order at +0x00 (vtable_unk_080E5B70), +0x0c (vtable_unk_080E5BB4, then
// re-stamped vtable_unk_080E5B90), +0x1c (vtable_unk_080E5BD8), +0x28
// (vtable_unk_080E5B60), +0x34 (vtable_unk_080E5BB4, then re-stamped
// vtable_unk_080E5B90) and +0x44 (vtable_unk_080E5BD8) -- the sub-objects
// at +0x0c/+0x34 and +0x1c/+0x44 share the exact same pair of vtables,
// consistent with two instances of the same pair of small helper classes
// (a 4-word "list head"-shaped type at +0x0c/+0x34, each linking to a
// 3-word "list node"-shaped type at +0x1c/+0x44 via a raw next/prev
// pointer pair -- roles not otherwise characterized, ported as pure
// pointer arithmetic per the "don't invent an unverified type" rule).
//
// The sub-object at +0x34 is additionally the primary base of a larger
// composite spanning through +0x68 (mirrors the fields already touched
// by func_08008A68, src/code_08008A68.cc, this function's teardown
// counterpart): after the opaque helper func_080D78F8 finishes
// initializing it, this constructor re-stamps its two vtable pointers
// (at +0x30 and +8 relative to +0x34, i.e. self+0x64 and self+0x3c) to
// vtable_unk_080E5B0C/vtable_unk_080E5B18 -- the exact same pair stamped
// by the (already matched, unrelated caller) sibling ctor
// func_080D79CC/func_080D7AD4 (src/code_080D79CC.cc) on what is
// structurally the same sub-object type used by a different enclosing
// class. This is the "double-stamp" noted as an open question in
// DECOMP_ARCHIVE.md: it is simply the standard -fvtable-thunks
// multiple-inheritance pattern (each constructor level along the
// inheritance chain re-stamps the vtable pointers of its base
// sub-objects after they finish constructing), not a bug or a shared
// call path -- no direct call relationship exists between this function
// and func_080D79CC/func_080D7AD4, they just restamp the same target
// vtables independently for their own respective enclosing objects.
//
// Returns the very same `out` pointer passed in (matches the established
// "constructeur de placement" pattern, cf. func_08007078,
// src/code_08007078.cc), after storing the freshly allocated object at
// `*out`.
#include "prelude.h"

extern u32 vtable_unk_080E5B70[];
extern u32 vtable_unk_080E5BB4[];
extern u32 vtable_unk_080E5BD8[];
extern u32 vtable_unk_080E5B90[];
extern u32 vtable_unk_080E5B60[];
extern u32 vtable_unk_080E5B0C[];
extern u32 vtable_unk_080E5B18[];

EC void func_080D78F8(void *arg0, void **ref);
EC u32 func_08008D9C(void);
EC void func_08008D84(void);
EC void func_080095C0(void *self, void *arg);

EC void *func_08008980(void *out)
{
    void *obj = operator new(0x6c);

    *(u32 *)obj = 0;
    *(u32 *)((char *)obj + 4) = 0;
    *(void **)((char *)obj + 8) = vtable_unk_080E5B70;

    void *b = (char *)obj + 0xc;
    *(u32 *)((char *)obj + 0xc) = 0;
    *(u32 *)((char *)b + 4) = 0;
    void *v_bb4 = vtable_unk_080E5BB4;
    *(void **)((char *)b + 8) = v_bb4;

    void *c = (char *)obj + 0x1c;
    *(void **)((char *)b + 0xc) = c;
    *(u32 *)((char *)obj + 0x1c) = 0;
    *(u32 *)((char *)c + 4) = 0;
    void *v_bd8 = vtable_unk_080E5BD8;
    *(void **)((char *)c + 8) = v_bd8;

    *(void **)((char *)b + 0x10) = (char *)obj + 0x18;
    *(void **)((char *)b + 0x14) = c;
    void *v_b90 = vtable_unk_080E5B90;
    *(void **)((char *)b + 8) = v_b90;

    void *d = (char *)obj + 0x28;
    *(u32 *)((char *)obj + 0x28) = 0;
    *(u32 *)((char *)d + 4) = 0;
    *(void **)((char *)d + 8) = vtable_unk_080E5B60;

    void *e = (char *)obj + 0x34;
    *(u32 *)((char *)obj + 0x34) = 0;
    *(u32 *)((char *)e + 4) = 0;
    *(void **)((char *)e + 8) = v_bb4;

    void *f = (char *)obj + 0x44;
    *(void **)((char *)e + 0xc) = f;
    *(u32 *)((char *)obj + 0x44) = 0;
    *(u32 *)((char *)f + 4) = 0;
    *(void **)((char *)f + 8) = v_bd8;

    *(void **)((char *)e + 0x10) = (char *)obj + 0x40;
    *(void **)((char *)e + 0x14) = f;
    *(void **)((char *)e + 8) = v_b90;

    void *sub_composite = (char *)obj + 0x50;
    void *tmp = e;
    func_080D78F8(sub_composite, &tmp);

    *(void **)((char *)e + 0x30) = vtable_unk_080E5B0C;
    *(void **)((char *)e + 8) = vtable_unk_080E5B18;

    void *flag = (char *)obj + 0x68;
    u32 flagval = func_08008D9C() ^ 1;
    *(u8 *)flag = flagval;
    if ((u8)flagval != 0)
    {
        func_08008D84();
    }

    func_080095C0(e, obj);
    func_080095C0(e, b);
    func_080095C0(e, d);

    *(void **)out = obj;
    return out;
}
