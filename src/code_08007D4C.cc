// func_08007D4C (0x08007D4C) -- lookup accessor on the gUnk_03000408
// 256-slot resource pool (IWRAM pointer right after gUnk_03000404, defined
// in fomt.lds). One of several opaque callees of a caller in
// code_0804E9C8.s. Structural sibling of func_080074C0
// (src/code_080074C0.cc) scaled up from 16 slots to 256: the handle's low
// BYTE is the slot index (extracted through a stack round-trip), an
// 8-word bitmask tracks allocation, and on a tag match (entry's u16 at +4
// vs handle bits 8..23) it returns the low 10 bits of the entry's first
// u16 instead of the index.
//
// Struct layout (confirmed by this byte-exact match): 8 u32 of allocation
// bitmask (+0x00), then a sub-block at +0x20 holding one unknown u32 and
// 256 8-byte entries from +0x24. The sub-block is a REAL nesting level,
// not cosmetic: writing the entry access through an explicit
// `Unk_hardware_sub_03000408 *` intermediate is what makes agbcp compute
// the entry address as base(+0x20) + (idx*8 + 4) with the literal
// separate `adds #4` of the target, instead of folding the +4 into the
// ldrh offsets. Entry fields at +0 (u16, low 10 bits meaningful) and +4
// (u16 tag); +2/+6 padding-or-unknown.
#include "prelude.h"

struct Unk_hardware_ent_03000408
{
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
};

struct Unk_hardware_sub_03000408
{
    u32 unk_00;
    Unk_hardware_ent_03000408 entries[0x100];
};

struct Unk_hardware_03000408
{
    bool inl_pred_0(unsigned int idx) const { return idx < 0x100 && (bitmask[idx / 0x20u] & (1 << (idx % 0x20u))) != 0; }

    /* +00 */ u32 bitmask[8];
    /* +20 */ Unk_hardware_sub_03000408 sub;
};

extern Unk_hardware_03000408 * gUnk_03000408;

EC int func_08007D4C(void * self, u32 val)
{
    Unk_hardware_03000408 * h = gUnk_03000408;

    if (val != 0)
    {
        u32 v = val;
        unsigned int idx = *(u8 *)&v;

        if (h->inl_pred_0(idx))
        {
            Unk_hardware_sub_03000408 * s = &h->sub;
            Unk_hardware_ent_03000408 & ent = s->entries[idx];
            u32 match = 0;

            if (((val << 8) >> 16) == ent.unk_04)
                match = 1;

            if (match != 0)
                return ((u32)ent.unk_00 << 22) >> 22;
        }
    }

    return -1;
}
