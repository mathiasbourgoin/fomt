#include "prelude.h"

// GameState bit-field getter, previously uncatalogued: these 8 bytes sat as
// raw `.byte` data (no `thumb_func_start`/symbol) right after func_08010F0C
// in asm/code_08010F0C.s -- confirmed to decode as valid Thumb code by hand
// (`ldrh [r0,#2]`, `lsls #23`, `lsrs #25`, `bx lr`), verified byte-exact via
// the quick compiler+assembler harness before porting. Same object as
// func_08010F0C (see asm/code_08010F0C.s, self+0 of that same GameState-
// family pointer -- see src/game_state.cc for the sibling byte-0/byte-3
// accessors and src/code_08010F04.cc for func_08010F04). func_08010F0C
// reads the full 32-bit word at self+0 and extracts a 5-bit field at bit 13
// (`lsls #0xe`/`lsrs #0x1b` -> S1=14,S2=27,N=5,P=13); this getter reads only
// the upper halfword of that SAME word (self+2) and extracts a 7-bit field
// at bit 2 of that halfword (`lsls #23`/`lsrs #25` -> S1=23,S2=25,N=7,P=2),
// which is bits [18:25) of the full word -- i.e. immediately adjacent to
// func_08010F0C's [13:18) field, consistent with both being sub-fields of
// one packed bitfield word. Role of either field not otherwise
// characterized yet (no confirmed name from the patch repo docs). Written
// as a literal double-shift, not `(halfword >> 2) & 0x7F`, per
// DECOMP_RULES.md anti-pattern #1 / rule 1bis.
EC u32 func_08010F14(void * self)
{
    return (u32)(*(u16 *)((u8 *)self + 2)) << 23 >> 25;
}
