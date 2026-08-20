#include "prelude.h"

// GameState bit-flag getter, sibling of the 4 setters in src/game_state.cc
// (same unnamed GameState object -- see that file's header comment and
// src/code_0800E2E4.cc for the confirmed +0x08/+0x0C/+0x10 layout). Reads
// bit 0x10 of byte 0 (the same byte the 4 setters OR bits 0x01/0x02/0x04/
// 0x08 into, and that func_08010F54's day-rollover clears at the top via
// `bic #0x11`). Isolated as a single-bit extract (`ldrb` + `lsls #27` +
// `lsrs #31`, no `ands`/literal pool) rather than `(byte >> 4) & 1`, per
// DECOMP_RULES.md anti-pattern #1 (literal double-shift beats a masked
// AND that needs to materialize the mask in a register on this Thumb-1
// target).
EC u32 func_08010F04(void * self)
{
    return (u32)(*(u8 *)self) << 27 >> 31;
}
