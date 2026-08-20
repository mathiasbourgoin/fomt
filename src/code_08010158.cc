// func_08010158 (0x08010158) -- derived destructor of the class whose
// object is constructed by func_080D3EF4 (0x554-byte allocation, stamps
// the same vtable_unk_080E5BF8, embeds a ScriptEngine at offset +8 via
// `__12ScriptEnginePv`). Not yet given a semantic name (no matching entry
// found in the franglais-patch repo's docs/ENGINE.md boot-FSM/scene-table
// research at the time of porting) -- kept as the raw symbol.
//
// Resets its own vtable pointer, clears the global `gUnk_0300040C`,
// tears down a sub-object at self+0x378 via func_080D7E64(self+0x378, 2),
// explicitly (non-virtually -- `AScriptEngine::~AScriptEngine()`, forced
// via the qualified-name destructor call to avoid the virtual-dispatch
// codegen a plain `->~AScriptEngine()` would produce) destroys the
// AScriptEngine member embedded at self+8, conditionally tears down a
// child object read from self+4 via a DIRECT (non-virtual) call to
// func_080D4480(child, 3), then tail-calls the base AScene destructor
// (func_080007EC, src/scene.cc), forwarding self/in_chrg unchanged.
#include "prelude.h"
#include "script_engine.hh"

extern u32 vtable_unk_080E5BF8[];
extern u32 gUnk_0300040C;

EC void func_080007EC(void *self, int in_chrg);
EC void func_080D7E64(void *obj, int mode);
EC void func_080D4480(void *obj, int mode);

EC void func_08010158(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E5BF8;
    gUnk_0300040C = 0;
    func_080D7E64((u8 *)self + 0x378, 2);
    ((AScriptEngine *)((u8 *)self + 8))->AScriptEngine::~AScriptEngine();
    void *child = *(void **)((u8 *)self + 4);
    if (child != 0)
        func_080D4480(child, 3);
    func_080007EC(self, in_chrg);
}
