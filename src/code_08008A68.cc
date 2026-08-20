// func_08008A68 (0x08008A68) -- teardown counterpart of func_08008980
// (asm/hardware.s, not yet ported -- big placement-constructor building
// a 0x6c-byte root object with sub-objects at self+0x00/+0x0c/+0x1c/
// +0x28/+0x34/+0x44, called from AgbMain and from scene ctor
// func_0801004C). `field` is the address of the slot holding the heap
// pointer written by func_08008980 (mirrors that function's own `self`
// parameter, a field address, not the object itself).
//
// Only the object's sub-fields at +0x68 (a flag byte), +0x50, +0x34,
// +0x28, +0x0c and +0x00 are touched here (mirrors the offsets stamped
// by func_08008980), then the object itself is deleted. `flags & 1`
// additionally deletes the field slot itself when set (matches the
// call sites in AgbMain/func_0801004C which pass 2, i.e. bit0 clear --
// the slot there is stack-allocated, not heap-allocated).
//
// Layout/roles of the two vtables re-stamped at +0x30/+0x08 of the
// sub-object at +0x34, and of the callees below, are NOT characterized
// -- ported as raw pointer arithmetic only, no class invented, per the
// "don't guess a type/prototype without checking the compiled body"
// discipline (DECOMP_RULES.md).
#include "prelude.h"

extern u32 vtable_unk_080E5B0C[];
extern u32 vtable_unk_080E5B18[];

EC void func_08008D90(void);
EC void func_080D7944(void *self, int arg);
EC void func_0800959C(void *self, int arg);
EC void func_080098AC(void *self, int arg);

EC void func_08008A68(void *field, unsigned int flags)
{
    void *obj = *(void **)field;
    if (obj != nullptr)
    {
        if (*(unsigned char *)((char *)obj + 0x68) != 0)
        {
            func_08008D90();
        }

        void *sub = (char *)obj + 0x34;
        *(void **)((char *)sub + 0x30) = vtable_unk_080E5B0C;
        *(void **)((char *)sub + 8) = vtable_unk_080E5B18;

        func_080D7944((char *)obj + 0x50, 0);
        func_0800959C(sub, 2);
        func_080098AC((char *)obj + 0x28, 2);
        func_0800959C((char *)obj + 0xc, 2);
        func_080098AC(obj, 2);

        operator delete(obj);
    }

    if (flags & 1)
    {
        operator delete(field);
    }
}
