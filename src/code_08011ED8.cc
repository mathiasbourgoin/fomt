// func_08011ED8 (0x08011ED8) -- second constructor overload of the same
// class built by func_08011DC4 (asm/game_state.s -- still unported, but
// its destructor counterpart is already ported, see src/code_08011FE8.cc
// for the "richer scene-destructor family" writeup and the confirmed
// vtable/offset layout this shares: outer vtable vtable_unk_080E5E64,
// child object of size 0xF8 with its own vtable vtable_unk_080E5C08 at
// offset +0xF4, two nested vtable-stamped sub-objects at +0x6c/+0x7c
// (vtable_unk_080E5BB4 / vtable_unk_080E5BD8), a "Location"-shaped
// 12-byte value copied to +0x90, and the same ScriptEngine::SetUnk(self)
// call at the end via the global gUnk_0300040C).
//
// Discovered as a hidden 272-byte Thumb blob encoded as raw `.byte` bytes
// at the EOF of asm/code_08010F54.s (round 9's
// tools/scripts/scan_hidden_code_blobs.py flagged this as a "larger, not
// auto-verified" candidate; this round hand-disassembled and confirmed
// it -- see SESSION_NOTES.md). Unlike func_08011DC4 (which takes a
// pointer to an already-built 12-byte Location value, copied via `ldm`),
// this overload builds a placeholder Location value locally: only the
// first word is set (to 2), the other two are read straight off the
// stack uninitialized. Reproducing that exactly required a 20-byte local
// (not just the 12 bytes actually read) -- the extra 8 bytes are never
// written or read by this function, but agbcc's stack frame allocator
// still reserves them, so the true source's local aggregate is
// apparently wider than what this constructor actually populates/copies
// (kept as an oversized local + truncated copy rather than guessing the
// missing 2 fields' meaning).
//
// This constructor takes only (self, arg1) -- one fewer parameter than
// func_08011DC4 -- and uses only r4-r7 in the compiled original (no
// r8/sb/sl/ip), confirming it is NOT part of the "pression de registres"
// difficulty class documented in DECOMP_RULES.md, despite living in the
// same file as an unrelated large register-pressure function.
#include "prelude.h"
#include "script_engine.hh"
#include "gbaio.h"

extern u32 vtable_unk_080E5E64[];
extern u32 vtable_unk_080E5C08[];
extern u32 vtable_unk_080E5BB4[];
extern u32 vtable_unk_080E5BD8[];
extern void *gUnk_0300040C;

EC void *__builtin_new(u32 size);
EC void func_080096B0(void *self);
EC void *func_08008980(void *out);
EC void func_08008B54(void *self, int index);

EC void *func_08011ED8(void *self, void *arg1)
{
    *(void **)self = vtable_unk_080E5E64;

    char *obj = (char *)__builtin_new(0xF8);

    struct Loc3
    {
        u32 a, b, c;
    };

    // Real local aggregate is wider than the 12 bytes actually copied --
    // see header comment above.
    struct Loc5
    {
        u32 a, b, c, d, e;
    };

    Loc5 loc;
    loc.a = 2;

    *(void **)(obj + 0xf4) = vtable_unk_080E5C08;

    *(void **)(obj + 0) = 0;
    *(void **)(obj + 4) = 0;

    char *sub = obj + 8;
    *(u32 *)(sub + 4) = 0;
    func_080096B0(sub + 8);

    func_08008980(obj + 0x68);

    void **child0 = (void **)(obj + 0x6c);
    child0[0] = 0;
    child0[1] = 0;
    child0[2] = vtable_unk_080E5BB4;

    void **child1 = (void **)(obj + 0x7c);
    child0[3] = child1;
    child1[0] = 0;
    child1[1] = 0;
    child1[2] = vtable_unk_080E5BD8;

    child0[4] = obj + 0x78;
    child0[5] = child1;

    *(void **)(obj + 0x88) = self;
    *(void **)(obj + 0x8c) = arg1;

    *(Loc3 *)(obj + 0x90) = *(Loc3 *)&loc;

    *(u32 *)(obj + 0xa0) = 0;
    *(u32 *)(obj + 0xa4) = 0;
    *(u32 *)(obj + 0xa8) = 0;
    *(u32 *)(obj + 0xac) = 0;
    *(u32 *)(obj + 0xb0) = 0;
    *(u32 *)(obj + 0xb4) = 0;
    *(u32 *)(obj + 0xb8) = 0;

    func_08008B54(obj + 0xbc, 0);
    func_08008B54(obj + 0xc0, 1);
    func_08008B54(obj + 0xc4, 2);
    func_08008B54(obj + 0xc8, 3);
    func_08008B54(obj + 0xcc, 4);

    char *p = obj + 0xd0;
    *(u32 *)p = 0;
    *(u32 *)(p + 4) = 0;
    p += 8;
    *(u32 *)(p + 4) = 0;
    p += 0x10;
    *(u8 *)p = 0;
    p += 2;
    *(u8 *)p = 0;
    p += 6;
    *(u32 *)p = 0;

    u16 flags = *(u16 *)(obj + 0x14);
    flags |= 8;
    *(u16 *)(obj + 0x14) = flags;
    REG_DISPSTAT = flags;

    *(void **)((char *)self + 4) = obj;

    ((ScriptEngine *)((char *)gUnk_0300040C + 8))->SetUnk(self);

    return self;
}
