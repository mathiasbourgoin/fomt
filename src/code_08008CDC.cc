#include "prelude.h"

// 8 uncatalogued functions found as a single contiguous 96-byte
// `.byte` run between func_08008CD0 and func_08008D3C in the former
// asm/code_08008AE0.s, sitting right next to a still-unported "sound
// API" wrapper family (m4aMPlay*/gSongTable/gMusicPlayerTable, see
// src/code_08008BEC.cc, src/code_08008C08.cc, src/code_08008D5C.cc for
// the siblings found in the same sweep). Found by
// tools/scripts/scan_hidden_code_blobs_v2.py once its `block_pure_bytes`
// parsing bug was fixed this round (see src/code_08008AE8.cc).
EC void *func_08008B54(void *out, u8 idx);

// NOTE: a would-be 6th/7th function of this family, func_08008D10 and
// its neighbours func_08008D2C/func_08008D34 sit in the NEXT gap (this
// run only goes up to func_08008CFC before hitting func_08008D10, which
// is committed separately -- see asm/code_08008D10.s and
// src/code_08008D2C.cc).

// 4 tiny field accessors on the object pointed to by `*self` (one level
// of indirection through `self`, same shape as the m4aMPlay* wrappers).
// Kept as raw offset casts rather than `struct MusicPlayer *`: the
// offset+8/+9/+12 reads line up with MusicPlayer::track_count/priority/
// clock, but the offset+4 read is a 16-bit `ldrh`, narrower than
// MusicPlayer::status (documented `u32` in include/m4a.h) -- a genuine
// `u16` struct field would compile to `ldrh` directly, but truncating a
// wider `u32` field with a C cast would not (the load stays a
// full-width `ldr`, only the return value is conceptually narrowed).
// Since the two don't reconcile without deeper investigation of the
// real field width at +4, sticking to raw pointer casts here avoids
// asserting a struct layout claim not yet confirmed.
EC u16 func_08008CDC(void *self)
{
    return *(u16 *)((u8 *)*(void **)self + 4);
}

EC u8 func_08008CE4(void *self)
{
    return *(u8 *)((u8 *)*(void **)self + 8);
}

EC u8 func_08008CEC(void *self)
{
    return *(u8 *)((u8 *)*(void **)self + 9);
}

EC void *func_08008CF4(void *self)
{
    return *(void **)((u8 *)*(void **)self + 12);
}

// Both forward to func_08008B54(&tmp, idx) (still unported asm --
// stores func_08008B24(idx)'s result through an out-pointer and also
// returns that same out-pointer, but neither caller here uses the
// returned out-pointer, only the value written through it) with a fixed
// literal index, then return the value written into the local.
EC void *func_08008CFC(void)
{
    void *tmp;
    func_08008B54(&tmp, 0);
    return tmp;
}

