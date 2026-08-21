// func_08036E00 -- entity factory wrapper, exact sibling of
// func_08035B38 (src/code_08035B38.cc / DECOMP_RULES.md pattern): same
// 0x8c allocation, same kind/subkind (4, 27), same trailing argument
// literals (1, 0, 0, false). Flagged w70 as "constructor complexity, not
// attempted" but turned out to be a plain duplicate of the already-known
// shape rather than a real placement-constructor case.
#include "prelude.h"

EC void *func_080324BC(void *self, void *ctx, int kind, int subkind, int a, int b, int c, bool d);

EC void *func_08036E00(void *ctx)
{
    void *obj = operator new(0x8c);
    return func_080324BC(obj, ctx, 4, 27, 1, 0, 0, false);
}
