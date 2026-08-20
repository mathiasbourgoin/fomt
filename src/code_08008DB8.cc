// func_08008DB8 (0x08008DB8) -- one of func_08004C68's 12 callees (New
// Game naming sequence, SESSION_NOTES.md round 6): thin wrapper around
// the m4a sound-engine's m4aSongNumStartOrChange, truncating its
// argument to 16 bits (matches the u16 parameter of the real m4a API,
// include/m4a.h). Sibling of func_08008DA8 (m4aSongNumStart wrapper,
// still asm) immediately preceding it in asm/hardware.s.
#include "prelude.h"
#include "m4a.h"

EC void func_08008DB8(u16 song)
{
    m4aSongNumStartOrChange(song);
}
