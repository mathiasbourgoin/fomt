// func_080512C8: getter over a table indexed by `idx`, 4-byte stride,
// reading a word at +8 from the computed slot address. Byte-identical to
// func_080512D0 immediately following it in the ROM (round w41).
#include "prelude.h"

EC u32 func_080512C8(u32 *base, u32 idx)
{
    return *(u32 *)((u8 *)base + idx * 4 + 8);
}
