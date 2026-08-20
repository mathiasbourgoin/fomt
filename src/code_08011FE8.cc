// func_08011FE8 (0x08011FE8) -- third member of the "richer" derived-
// scene-destructor family sampled this round (see src/code_08004BDC.cc
// for the family writeup). This one demonstrates that the inner child
// object's own vtable offset is per-concrete-child-class, not fixed:
// its paired constructor (func_08011DC4, asm/game_state.s) allocates a
// 0xF8-byte child object and stamps a SEPARATE vtable
// (vtable_unk_080E5C08) at the child's offset +0xF4 (not +4, as seen in
// func_08004BDC/func_0800371C's smaller child type) -- confirmed by
// reading the constructor's disassembly directly (`adds r1, r7, #0;
// adds r1, #0xf4; ldr r0, =vtable_unk_080E5C08; str r0, [r1]`,
// immediately after `bl __builtin_new` with size 0xf8), not guessed.
//
// This function also has an extra step absent from its two siblings:
// before the conditional child teardown, it clears a `ScriptEngine`'s
// `unk_354` field via a *real, already-ported* method,
// `ScriptEngine::ClearUnk()` (src/script_engine.cc) -- the ScriptEngine
// object lives embedded at offset +8 inside whatever `gUnk_0300040C`
// (a raw, not-yet-typed global pointer) points to. Calling the real
// semantic method (rather than a raw `bl`-to-address stand-in) matches
// this repo's rule of referencing already-ported functions by name;
// verified to still compile to the exact mangled symbol
// (`ClearUnk__12ScriptEngine`) the original calls.
#include "prelude.h"
#include "script_engine.hh"

extern u32 vtable_unk_080E5E64[];
extern void *gUnk_0300040C;

struct AUnk_child_iface
{
    void (*unused0)();
    void (*unused1)();
    void (*Method2)(void *self, int arg);
};

EC void func_080007EC(void *self, int in_chrg);

EC void func_08011FE8(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E5E64;
    ((ScriptEngine *)((char *)gUnk_0300040C + 8))->ClearUnk();
    void *child = *(void **)((char *)self + 4);
    if (child)
    {
        AUnk_child_iface *vt = *(AUnk_child_iface **)((char *)child + 0xf4);
        vt->Method2(child, 3);
    }
    func_080007EC(self, in_chrg);
}
