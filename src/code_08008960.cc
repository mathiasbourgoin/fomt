#include "prelude.h"

// 2 previously-uncatalogued functions, found as a 32-byte run of raw
// `.byte` data sitting right after func_0800894C at the (former) end of
// asm/hardware.s, immediately before the already-ported func_08008980
// (0x08008928 + 32 + 2 bytes of `.align 2, 0` padding == 0x08008980,
// confirmed via fomt.map). Flagged by
// `tools/scripts/scan_hidden_code_blobs_v2.py` as `.L08008960` ("not
// plausible") back in round w65, but never actually dug into at the time
// (weak heuristic signal, see SESSION_NOTES.md round w65) -- this round
// disassembles and ports it for real.
//
// Body: both functions are byte-for-byte IDENTICAL to the two named
// functions immediately preceding this run, just re-emitted at a
// different address with no symbol:
//   - func_08008960 duplicates func_08008940's body exactly (deref self,
//     add the SAME literal offset 0x494, no call) -- same non-deduplicated
//     accessor situation as the func_08008928/30/38 trio found in the same
//     file this round (see src/code_08008928.cc).
//   - func_0800896C duplicates func_0800894C's body exactly (deref self,
//     add 0x490, tail-call the opaque helper func_08008AE0 which itself
//     adds a further +0xc -- see asm/code_08008AE0.s, not yet ported).
EC void *func_08008AE0(void *self);

EC void *func_08008960(void *self)
{
    return (u8 *)*(void **)self + 0x494;
}

EC void *func_0800896C(void *self)
{
    return func_08008AE0((u8 *)*(void **)self + 0x490);
}
