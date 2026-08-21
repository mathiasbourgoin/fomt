#include "prelude.h"
#include "m4a.h"

// 2 uncatalogued functions found as a `.byte` run between func_08008D3C
// and func_08008D84 in the former asm/code_08008AE0.s. Both read
// gSongTable[idx].song's byte fields at offset 0 / offset 2, using the
// same `(u16)idx << 16 >> 13` (idx*8, matching sizeof(struct SongEnt))
// index scaling idiom already used by func_08008B6C/func_08008B88/
// func_08008BB0 (still unported, raw asm in asm/code_08008AF0.s).
// Found by tools/scripts/scan_hidden_code_blobs_v2.py once its
// `block_pure_bytes` parsing bug was fixed this round (see
// src/code_08008AE8.cc).
//
// Statement order matters here (DECOMP_RULES.md rule 5bis): writing the
// index computation as one combined expression
// `gSongTable + (idx << 16 >> 13)` makes agbcp schedule both shifts back
// to back before loading gSongTable's address; the actual disassembly
// interleaves the literal-pool load of gSongTable BETWEEN the two
// shifts (`lsls`; `ldr`; `lsrs`; `adds`). Splitting the shift into two
// separate statements around an explicit `base` load reproduces this
// exact interleaving.
EC u8 func_08008D5C(u16 idx)
{
    u32 off = (u32)idx << 16;
    u8 *base = (u8 *)gSongTable;
    off = off >> 13;
    return *(u8 *)*(void **)(off + base);
}

EC u8 func_08008D70(u16 idx)
{
    u32 off = (u32)idx << 16;
    u8 *base = (u8 *)gSongTable;
    off = off >> 13;
    return ((u8 *)*(void **)(off + base))[2];
}
