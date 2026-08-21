// func_080362FC -- entity factory wrapper: allocates a 0x8c-byte object
// and delegates initialization to the still-opaque func_080324BC
// (kind/subkind dispatch, cf. SESSION_NOTES.md, worktree w40 round: found
// by a fresh double-criterion scan variant -- `bl __builtin_new` blocks
// with NO vtable_unk_ADDR literal at all, a shape earlier placement-
// constructor scans skipped because they required a vtable stamp in the
// SAME block). func_080324BC itself is treated as a black box, exactly
// like the New Game widget triplet callees.
#include "prelude.h"

EC void *func_080324BC(void *self, void *ctx, int kind, int subkind, int a, int b, int c, bool d);

EC void *func_080362FC(void *ctx)
{
    void *obj = operator new(0x8c);
    return func_080324BC(obj, ctx, 4, 27, 1, 1, 0, false);
}
