#include "prelude.h"

// Free-list pool initializer for the hardware DMA/IRQ entry pool.
//
// Builds, in place, a downward-linked free list over `self[0 .. num)`:
// `self[num-1].next_free = val` (the terminator, `val` is 0/nullptr at the
// single call site), then each lower slot's `next_free` points at the slot
// above it, down to `self[0]`, which is returned as the free-list head.
//
// Matches the layout of `Unk_hardware_ent_080D6D98` in `src/hardware.cc`
// (`unk_00 = func_080D6D98(unk_04, 0x10, 0);`), see that file's
// `FreeEntry`/`AllocEntry` for the consumer side of this same free list.
// Declared locally rather than sharing that type across translation units,
// consistent with this repo's convention for small opaque-layout helpers.

union Unk_hardware_ent_080D6D98
{
    Unk_hardware_ent_080D6D98 * next_free;

    struct
    {
        u16 unk_00;
        u16 unk_02;
    } params;
};

EC Unk_hardware_ent_080D6D98 * func_080D6D98(Unk_hardware_ent_080D6D98 * self, int num, int val)
{
    Unk_hardware_ent_080D6D98 * ent = self + (num - 1);
    ent->next_free = (Unk_hardware_ent_080D6D98 *)val;

    while (ent != self)
    {
        Unk_hardware_ent_080D6D98 * prev = ent;
        ent -= 1;
        ent->next_free = prev;
    }

    return ent;
}
