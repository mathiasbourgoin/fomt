// func_08032A00 (0x08032A00) -- "entity factory" sub-variant: unlike the
// 39 already-matched func_080324BC call sites (which allocate a fresh
// 0x8c-byte object themselves before delegating), here `self` is already
// allocated by the CALLER and passed in directly (r0). The block delegates
// initialization to the still-opaque func_080324BC (kind=6, subkind=0x20,
// a=1, b=0, c=0, d=false), then stamps its OWN vtable
// (vtable_unk_080E6864) at self+4 -- presumably a derived-class identity
// layered on top of whatever func_080324BC already set up at self+0.
// Documented as an open target in DECOMP_ARCHIVE.md ("Autres cibles
// ouvertes", sous-variante "self déjà alloué + stamp vtable propre après
// délégation"), sibling of func_080222A8 (asm/code_entities.s, harder:
// uses r8 + 2 extra helper calls to build its first 2 stack args).
#include "prelude.h"

extern u32 vtable_unk_080E6864[];

EC void *func_080324BC(void *self, void *ctx, int kind, int subkind, int a, int b, int c, bool d);

EC void *func_08032A00(void *self, void *ctx)
{
    func_080324BC(self, ctx, 6, 0x20, 1, 0, 0, false);
    *(void **)((char *)self + 4) = vtable_unk_080E6864;
    return self;
}
