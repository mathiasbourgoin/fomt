// func_080222A8 (0x080222A8) -- "entity factory" sub-variant, sibling of
// func_08032A00 (src/code_08032A00.cc): `self` is already allocated by the
// CALLER (r0), delegation to the still-opaque func_080324BC follows,
// then this function stamps its OWN vtable (vtable_unk_080E64B4) at
// self+4. Harder than func_08032A00: uses r8 to keep `ctx` alive across
// two extra helper calls (func_08022320/func_08022334, both small
// leaf dispatch-by-value helpers, still opaque/boxed here) that compute
// the delegated call's `a`/`b` stack arguments from the 3rd argument `x`
// before the func_080324BC(self, ctx, 5, 13, a, b, 0, false) call.
// Documented as an open target in DECOMP_ARCHIVE.md ("Autres cibles
// ouvertes", sous-variante "self déjà alloué + stamp vtable propre après
// délégation"), matched round w46 right after its simpler sibling.
#include "prelude.h"

extern u32 vtable_unk_080E64B4[];

EC int func_08022320(int x);
EC int func_08022334(int x);
EC void *func_080324BC(void *self, void *ctx, int kind, int subkind, int a, int b, int c, bool d);

EC void *func_080222A8(void *self, void *ctx, int x)
{
    int a = func_08022320(x);
    int b = func_08022334(x);
    func_080324BC(self, ctx, 5, 13, a, b, 0, false);
    *(void **)((char *)self + 4) = vtable_unk_080E64B4;
    return self;
}
