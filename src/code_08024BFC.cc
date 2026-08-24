#include "prelude.h"

#include "unknown_types.hh"

struct ActorBoundsVTable
{
    void *slots[16];
    u32 (*UsesCenteredBounds)(void *self);
};

EC Box func_0803240C(void *actor);

EC Box func_08024BFC(u8 *actor)
{
    ActorBoundsVTable *vtable = *(ActorBoundsVTable **)(actor + 0x14);
    if ((u8)vtable->UsesCenteredBounds(actor) != 0)
    {
        i32 x = *(i16 *)(actor + 0x0A);
        i32 y = *(i16 *)(actor + 0x0E);
        Box bounds(x, y - 2, 14, 14);
        return bounds;
    }
    Box bounds = func_0803240C(actor);
    return bounds;
}
