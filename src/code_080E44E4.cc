// func_080E44E4 -- entity factory wrapper: allocates a 0x8c-byte object
// and delegates initialization to the still-opaque func_080324BC
// (kind/subkind dispatch, cf. SESSION_NOTES.md, worktree w40 round: found
// by a fresh double-criterion scan variant -- `bl __builtin_new` blocks
// with NO vtable_unk_ADDR literal at all, a shape earlier placement-
// constructor scans skipped because they required a vtable stamp in the
// SAME block). func_080324BC itself is treated as a black box, exactly
// like the New Game widget triplet callees. Found round w42, one of the
// 3 remaining func_080324BC call sites logged in DECOMP_ARCHIVE.md after
// worktree w40 (this one is a genuine instance of the exact 38-site
// shape; the other 2 sites in this same round's scan turned out to be a
// different shape -- self already allocated by the caller, own vtable
// stamped after the delegated call -- and were left uncatalogued).
#include "prelude.h"

EC void *func_080324BC(void *self, void *ctx, int kind, int subkind, int a, int b, int c, bool d);

EC void *func_080E44E4(void *ctx)
{
    void *obj = operator new(0x8c);
    return func_080324BC(obj, ctx, 5, 27, 1, 0, 0, false);
}
