#include "prelude.h"

// Four previously-uncatalogued functions, found as a 92-byte run of raw
// `.byte` data (no `thumb_func_start`/symbol) sitting right after
// func_080099D4 in asm/hardware.s, immediately before the already-ported
// Farm::Farm(char const *) constructor (which starts exactly where this
// blob ends, 0x08009A48 -- confirmed via fomt.map). Found by the same
// systematic asm/*.s scan for short unlabeled .byte blobs squeezed between
// two real functions as the func_08010F14 discovery (round 8 / w17).
//
// All three literal-pool constants inside this blob resolve to
// `vtable_unk_080E5BB4`/`vtable_unk_080E5BD8`/`vtable_unk_080E5BE8`
// (asm/vtables.s) -- already-known, heavily-referenced vtable symbols (dozens
// of call sites across asm/hardware.s, asm/code_08010F54.s,
// asm/code_0803A8A4.s, asm/code_0804E9C8.s use the same triple), which
// confirms this is genuine code for an established (but not yet
// characterized/ported anywhere else) class, not a coincidental byte
// pattern. Not enough is known yet about that class's real C++ shape (no
// site referencing these vtables is ported yet either) to model it as a
// proper class -- ported as raw pointer arithmetic instead, same discipline
// already used for the "family riche" destructors (see
// src/code_0800371C.cc): explicit byte offsets, no invented class/member
// names beyond what the bytes actually show.
//
// func_08009A04 constructs a small object at `self` (>= 0x1C bytes):
// self+0x00/0x04 zeroed, self+0x08 stamped with vtable_unk_080E5BB4,
// self+0x0C set to point at self+0x10 (an embedded second sub-object right
// after), that sub-object's own self+0x14 zeroed then immediately
// OVERWRITTEN (dead store in the disassembly, reproduced literally per
// DECOMP_RULES.md rule 5) to point back at self+0x10, self+0x18 stamped
// with vtable_unk_080E5BD8, and self+0x10 set to point at self+0x0C --
// self+0x0C and self+0x10 end up pointing at each other, the classic
// "empty" state of an intrusive circular sentinel pair. func_080099EC is
// exactly the matching predicate: true iff self+0x0C still points at
// self+0x10 (i.e. "is this sentinel pair still in its constructed/empty
// state"). func_08009A38 stamps a third, separate small object (self+0x08
// = vtable_unk_080E5BE8, self+0x00/0x04 zeroed) -- likely another
// constructor for a related but distinct class sharing the same
// translation unit, given how tightly it's packed against the other three
// in the same 92-byte run. func_08009A2C is an unrelated leaf utility
// (branchless "is self's first word non-zero" predicate, `(neg(x) | x) >>
// 31`, DECOMP_RULES.md-documented GCC/agbcp idiom for a boolean coercion
// without a conditional branch).
//
// No caller found anywhere in asm/src for any of these four addresses
// (full tree grep negative) -- same "no symbolic caller found" situation as
// func_08010F14 and func_0800057C/func_08000580/func_08000584/
// func_08000590 (see src/code_0800057C.cc); not investigated further, out
// of scope for a port+match round.
extern u32 vtable_unk_080E5BB4[];
extern u32 vtable_unk_080E5BD8[];
extern u32 vtable_unk_080E5BE8[];

EC u32 func_080099EC(void * self)
{
    return *(void **)((char *)self + 0xC) == (char *)self + 0x10;
}

EC void * func_08009A04(void * self)
{
    char * base = (char *)self;
    *(u32 *)(base + 0x00) = 0;
    *(u32 *)(base + 0x04) = 0;
    *(void **)(base + 0x08) = vtable_unk_080E5BB4;
    char * r2 = base + 0x10;
    *(void **)(base + 0x0C) = r2;
    *(u32 *)(r2 + 0x04) = 0;
    *(void **)(r2 + 0x08) = vtable_unk_080E5BD8;
    char * r1 = base + 0x0C;
    *(void **)(base + 0x10) = r1;
    *(void **)(base + 0x14) = r2;
    return self;
}

EC u32 func_08009A2C(void * self)
{
    u32 x = *(u32 *)self;
    return ((u32)(-(int)x) | x) >> 31;
}

EC void * func_08009A38(void * self)
{
    *(void **)((char *)self + 8) = vtable_unk_080E5BE8;
    *(u32 *)self = 0;
    *(u32 *)((char *)self + 4) = 0;
    return self;
}
