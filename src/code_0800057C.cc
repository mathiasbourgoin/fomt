#include "prelude.h"
#include <new>

// Four previously-uncatalogued tiny functions, found as a 32-byte run of raw
// `.byte` data (no `thumb_func_start`/symbol) sitting right after
// func_08000568 in asm/interrupt.s, immediately before the already-ported
// src/new.cc's own compiled code (which starts right where this blob ends,
// 0x0800059C -- confirmed via fomt.map). Hand-decoded and confirmed to be
// four back-to-back valid Thumb functions (systematic asm/*.s scan for
// short unlabeled .byte blobs squeezed between two real functions, same
// method as the func_08010F14 discovery, round 8 / w17).
//
// Bodies match, byte-for-byte, two already-known compiler-generated idioms
// also visible (with different addresses) inside src/new.cc's own compiled
// object (see `nm build/src/new.o`):
//  - func_0800057C/func_08000580: identical bodies ("ignore first arg,
//    return second") match the *inline* placement-new bodies declared in
//    tools/libagbc++/new ("default placement versions of operator new":
//    `operator new(size_t, void*)` / `operator new[](size_t, void*)`, both
//    `{ return place; }`) -- agbcp does not fold/dedupe identical inline
//    function bodies across translation units, so two distinct TUs each
//    using placement new/new[] each get their own copy; this looks like
//    exactly that, from a TU not otherwise ported here.
//  - func_08000584/func_08000590: pure forwarding thunks calling the
//    already-ported global `operator new`/`operator delete` (linked here as
//    `__builtin_new`/`__builtin_delete`, see `nm build/src/new.o`) --
//    byte-identical in shape (`push {lr}; bl X; pop {rN}; bx rN`) to
//    `__builtin_vec_new`/`__builtin_vec_delete` already compiled inside
//    src/new.cc itself (offsets 0x48/0x78 of that object): almost certainly
//    another TU's own `operator new[](size_t)`/`operator delete[](void*)`,
//    each TU getting its own private copy of these compiler-emitted
//    forwarders (same reasoning as above).
// No caller found anywhere in asm/src for any of these four addresses (full
// tree grep negative) -- same "no symbolic caller found" situation as
// func_08010F14; not investigated further, out of scope for a port+match
// round.
EC void * func_0800057C(std::size_t, void * place)
{
    return place;
}

EC void * func_08000580(std::size_t, void * place)
{
    return place;
}

EC void * func_08000584(std::size_t size)
{
    return operator new(size);
}

EC void func_08000590(void * ptr)
{
    operator delete(ptr);
}
