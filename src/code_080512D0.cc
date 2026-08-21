// func_080512D0: byte-identical to func_080512C8 just before it -- same
// table-getter shape, presumably a sibling accessor for a parallel array
// (round w41).
#include "prelude.h"

EC u32 func_080512D0(u32 *base, u32 idx)
{
    return *(u32 *)((u8 *)base + idx * 4 + 8);
}
