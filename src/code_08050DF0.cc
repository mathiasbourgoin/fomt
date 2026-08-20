// TransitionCtlQuery (func_08050DF0, 0x08050DF0) -- vanilla-engine-facing
// name (patch-repo docs refer to this address as
// franglais_transition_ctl_query, DECOMP_ARCHIVE.md "Autres cibles
// ouvertes" -- renamed here to stay patch-jargon-free, see
// DECOMP_RULES.md "point de vue vanilla"). `self` is a handle whose first
// word is a pointer to the real transition-control object; reads its
// discriminant field at +8, and unless it equals 6 (assumed "no
// transition"/idle state, unconfirmed), returns the field at +0x158 of
// that same object. Plain C, no vtable/`this` evidence in the
// disassembly -- kept as free function taking an opaque `self`, not a
// class method, per the "reflect the real binary shape" rule.
#include "prelude.h"

EC u32 TransitionCtlQuery(void *self)
{
    void *inner = *(void **)self;
    u32 field8 = *(u32 *)((char *)inner + 8);

    if (field8 == 6)
        return 0;

    return *(u32 *)((char *)inner + 0x158);
}

// asm/*.s callers still reference this by its address-name symbol (dozens
// of `bl func_08050DF0` sites across code_08005A58.s, code_08085568.s,
// code_0805CF3C.s, etc. -- not worth touching individually) -- keep it as
// an alias onto the real definition above rather than renaming those
// sites.
EC u32 func_08050DF0() ALIAS(TransitionCtlQuery);
