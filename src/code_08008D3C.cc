#include "prelude.h"
#include "m4a.h"

EC void *func_08008B54(void *out, u8 idx);

// Look up gSongTable[idx]'s player-table byte, then return the object selected
// by func_08008B54. Keep the split shift/base-load sequence used by the exact
// neighbouring accessors in code_08008D5C.cc.
EC void *func_08008D3C(u16 idx)
{
    void *tmp;
    u32 off = (u32)idx << 16;
    u8 *base = (u8 *)gSongTable;
    off = off >> 13;
    u8 player = base[off + 4];
    func_08008B54(&tmp, player);
    return tmp;
}
