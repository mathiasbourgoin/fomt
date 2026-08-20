#include "prelude.h"

// Previously-uncatalogued function, found as a 12-byte run of raw `.byte`
// data (no `thumb_func_start`/symbol) sitting right after func_08007110's
// own literal pool (.L08007118) at the end of asm/code_080070D4.s,
// immediately before the already-ported func_08007128 (which starts
// exactly where this blob ends, 0x08007128 -- confirmed via
// src/hardware.cc / fomt.map). Found by the same systematic asm/*.s scan
// for short unlabeled .byte blobs squeezed between two real functions as
// the func_08010F14 discovery (round 8 / w17).
//
// Body is a simple pointer-arithmetic accessor: `return (char*)self +
// 0x461C;` -- notably the SAME constant (0x461C) that func_08007110 (the
// function right before it) adds after first dereferencing `self+4`
// (`return *(void**)(self+4) + 0x461C;`, see asm/code_080070D4.s). Plausibly
// a sibling accessor on the same object returning the address of a
// different embedded field/buffer, but nothing here confirms that beyond
// the shared constant, so kept as a plain free function rather than an
// invented class method. No caller found anywhere in asm/src for this
// address (full tree grep negative) -- same "no symbolic caller found"
// situation as the other hidden-blob discoveries this round; not
// investigated further, out of scope for a port+match round.
EC void * func_0800711C(void * self)
{
    return (u8 *)self + 0x461C;
}
