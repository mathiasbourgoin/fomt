#include "prelude.h"

// NOTE: four tiny bit-flag accessors on the still-unnamed GameState object
// (see src/code_0800E2E4.cc for the confirmed +0x08/+0x0C/+0x10 layout of
// that same object, and asm/code_08010F54.s for func_08010F54, the day-
// rollover -- these four setters are all direct callees of func_08010F54,
// invoked from inside its per-upgrade jump table with `this` = r6, the
// same GameState pointer as the rollover itself). Not enough is known
// about the object's real class/vtable to port these as C++ methods
// (no vtable, no `this`-typed struct decompiled yet for this object), so
// they stay as plain C taking a raw pointer, matching the style already
// used for the sibling fields in src/code_0800E2E4.cc.
//
// func_08010F24 sets bit 0x01 of byte 0 (called from the script-VM side,
// asm/code_0803EE94.s, on a GameState pointer read from ctx+0x354 -- see
// docs/ENGINE.md "sous-systeme" note in the franglais patch repo, same
// offset family). func_08010F30/3C/48 set bits 0x02/0x04/0x08 of byte 0
// and are only ever called from within func_08010F54's upgrade dispatch
// (FarmHouse/Coop/Barn upgrade-already-happened-today flags, one bit per
// building kind). Bits 0x01 and 0x10 of the same byte are cleared at the
// very start of func_08010F54 (`ldrb/bic #0x11/strb`), consistent with
// these being once-per-day flags.

// GameState bit-field getter on byte 3 of the same object (see the note
// above for the byte-0 flag setters). Placed first in this file so the
// compiled object's .text order matches its address (0x08010F1C, right
// before func_08010F24 at 0x08010F24 -- the two happen to be exactly
// contiguous, so no separate object/lds entry is needed for this one).
// Disassembly is a double-shift with NO `ands`/literal pool (`ldrb
// [self+3]`, `lsls #25`, `lsrs #26`), which pins the extracted field to
// exactly bits [1:6] (6 bits wide, value range 0-63) of that byte:
// solving `S1 = 32-(P+N)`, `S2 = 32-N` for `S1=25`, `S2=26` gives `N=6`,
// `P=1`. Bits 0 and 7 of this byte are left untouched by this getter, so
// they carry unrelated flags not otherwise characterized yet. Per
// DECOMP_RULES.md anti-pattern #1, written as a literal double-shift
// rather than `(byte >> 1) & 0x3F` to match the no-mask-instruction shape
// of the original.
EC u32 func_08010F1C(void * self)
{
    return (u32)(*((u8 *)self + 3)) << 25 >> 26;
}

EC void func_08010F24(void * self)
{
    *(u8 *)self |= 0x01;
}

EC void func_08010F30(void * self)
{
    *(u8 *)self |= 0x02;
}

EC void func_08010F3C(void * self)
{
    *(u8 *)self |= 0x04;
}

EC void func_08010F48(void * self)
{
    *(u8 *)self |= 0x08;
}
