// func_08075678 / func_08075690 (0x08075678 / 0x08075690) -- two small
// forwarding wrappers around the unported event/message-queue push helper
// func_08075334 (asm/code_08070A08.s), found as a 56-byte hidden `.byte`
// blob at the tail of asm/code_0807565C.s (scan_hidden_code_blobs.py,
// previously unflagged in DECOMP_ARCHIVE.md -- new find this round).
//
// Both leave the caller's r0/r1/r2 untouched and only supply func_08075334's
// last two arguments (a u32 register arg + a stack arg), sourced two
// different ways:
//   - func_08075678 reads them from offsets +8/+16 of a caller-supplied
//     struct pointer (4th arg).
//   - func_08075690 reads them from a fixed-stride (8 bytes) global table
//     `gUnk_080FC024`, indexed by the caller's 4th arg (an index, not a
//     pointer): entry.f0 -> arg, entry.f4 -> stack arg.
// This exactly mirrors the "two overloads calling the same helper, one by
// pointer, one by table index" shape already seen at func_08011DC4 /
// func_08011ED8 (round 10/w23). func_08075334 itself is a real dynamic-
// array/message-queue push routine (malloc-backed growth, ring buffer at
// self+0x594) referenced identically from 8 other call sites in
// asm/code_08070A08.s -- not ported here, only forward-declared, since
// these two wrappers don't need its body to be bit-exact.
//
// No symbolic or indirect caller found for either wrapper (grep across
// asm/ and src/ for both addresses: negative) -- parameter roles beyond
// "forwarded verbatim" are inferred purely from the callee's known shape,
// not invented; field/table offsets kept as raw pointer arithmetic since
// no named struct/table type is documented anywhere in this repo.
#include "prelude.h"

EC void func_08075334(void *self, u32 a1, u32 a2, u32 a3, u32 a4);

EC void func_08075678(void *self, u32 a1, u32 a2, void *arg_struct)
{
    char *s = (char *)arg_struct;
    func_08075334(self, a1, a2, *(u32 *)(s + 8), *(u32 *)(s + 16));
}

struct TableEntry_080FC024
{
    u32 f0;
    u32 f4;
};

extern TableEntry_080FC024 const gUnk_080FC024[];

EC void func_08075690(void *self, u32 a1, u32 a2, u32 idx)
{
    TableEntry_080FC024 const &e = gUnk_080FC024[idx];
    func_08075334(self, a1, a2, e.f0, e.f4);
}
