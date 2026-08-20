#include "prelude.h"

// Seven previously-uncatalogued accessor functions, found as a 104-byte run
// of raw `.byte` data (no `thumb_func_start`/symbol) sitting right after
// func_0801004C in asm/game_scene.s, immediately before the already-ported
// func_08010158 (which starts exactly where this blob ends, 0x08010158 --
// confirmed via fomt.map). Found by the same systematic asm/*.s scan for
// short unlabeled .byte blobs squeezed between two real functions as the
// func_08010F14 discovery (round 8 / w17).
//
// All seven read the same already-known global `gUnk_0300040C` (declared
// `extern void * gUnk_0300040C;` in src/code_08011FE8.cc, a pointer stored
// in a fixed EWRAM cell -- see fomt.lds `. = 0x00040C; gUnk_0300040C = .;`)
// -- the same global that func_08010158's header comment already documents
// as being cleared by that neighboring destructor, and that
// src/code_08011FE8.cc treats as pointing at an embedded `ScriptEngine` at
// offset +8. That's a strong coherence signal: these are plausibly more
// accessor methods on the very same object `gUnk_0300040C` points at,
// though nothing here confirms the class layout beyond the raw offsets each
// function actually adds, so they are ported as plain free functions
// returning `(char *)gUnk_0300040C + CONST`, not as methods of an invented
// class.
//
// Five are simple "base pointer + constant offset" accessors (offsets
// 0x8, 0x368, 0x36C, 0x378, 0x4DC, 0x524 -- three of the five compile the
// constant as `#imm << 2`, i.e. small values shifted, matched by writing
// them as the plain decimal/hex constant and letting agbcp choose the same
// encoding it already chose originally); one (func_08010148) is a bare
// integer constant getter (`return 25;`, no dereference of the global at
// all). No caller found anywhere in asm/src for any of these seven
// addresses (full tree grep negative) -- same "no symbolic caller found"
// situation as the other hidden-blob discoveries this round; not
// investigated further, out of scope for a port+match round.
extern void * gUnk_0300040C;

EC void * func_080100F0(void)
{
    return (char *)gUnk_0300040C + 0x524;
}

EC void * func_08010104(void)
{
    return (char *)gUnk_0300040C + 0x4DC;
}

EC void * func_08010118(void)
{
    return (char *)gUnk_0300040C + 0x378;
}

EC void * func_08010128(void)
{
    return (char *)gUnk_0300040C + 0x36C;
}

EC void * func_08010138(void)
{
    return (char *)gUnk_0300040C + 0x368;
}

EC u32 func_08010148(void)
{
    return 25;
}

EC void * func_0801014C(void)
{
    return (char *)gUnk_0300040C + 8;
}
