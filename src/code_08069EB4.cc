#include "prelude.h"
#include "barn.hh"
#include "coop.hh"

// 3 hidden wrapper functions surfaced by the fixed .byte-blob scanner,
// packed back-to-back in the 96-byte gap between func_08069E98 and
// func_08069F14 (asm/code_08069E98.s). All three read a pointer field at
// self+0x120 (some as-yet-undecompiled container), then reach into the
// embedded Barn/Coop sub-object at a fixed offset from that pointer and
// forward to an already-ported counting method, returning whether the
// count is nonzero. The +0x120 pointer target is NOT the `Farm` struct
// itself: the offsets used here (Barn +0x5F0, Coop +0x410) are each
// exactly 0x14 bytes past Farm's own Coop/Barn member offsets
// (include/farm.hh: coop +0x3FC, barn +0x5DC), so it points to some
// enclosing object with Farm inlined 0x14 bytes in -- that object is not
// decompiled anywhere in this repo yet, hence the raw u8* arithmetic
// instead of a named type.
EC bool func_08069EB4(void *self)
{
    Barn *barn = (Barn *)(*(u8 **)((u8 *)self + 0x120) + 0x5F0);
    return barn->CountSheeps() != 0;
}

EC bool func_08069ED4(void *self)
{
    Barn *barn = (Barn *)(*(u8 **)((u8 *)self + 0x120) + 0x5F0);
    return barn->CountCows() != 0;
}

EC bool func_08069EF4(void *self)
{
    Coop *coop = (Coop *)(*(u8 **)((u8 *)self + 0x120) + 0x410);
    return coop->CountChickens() != 0;
}
