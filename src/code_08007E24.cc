#include "prelude.h"

struct Unk_hardware_ent_03000408_e24
{
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
};

struct Unk_hardware_sub_03000408_e24
{
    u32 unk_00;
    Unk_hardware_ent_03000408_e24 entries[0x100];
};

struct Unk_hardware_03000408_e24
{
    bool inl_pred_0(unsigned int idx) const { return idx < 0x100 && (bitmask[idx / 0x20u] & (1 << (idx % 0x20u))) != 0; }
    u32 bitmask[8];
    Unk_hardware_sub_03000408_e24 sub;
};

extern Unk_hardware_03000408_e24 *gUnk_03000408;

EC int func_08007E24(void *, u32 value)
{
    Unk_hardware_03000408_e24 *h = gUnk_03000408;
    if (value != 0) {
        u32 copy = value;
        unsigned int index = *(u8 *)&copy;
        if (h->inl_pred_0(index)) {
            Unk_hardware_sub_03000408_e24 *sub = &h->sub;
            Unk_hardware_ent_03000408_e24 &entry = sub->entries[index];
            u32 matching = 0;
            if (((value << 8) >> 16) == entry.unk_04)
                matching = 1;
            if (matching != 0)
                return entry.unk_02;
        }
    }
    return 0;
}
