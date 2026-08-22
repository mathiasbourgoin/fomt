#include "prelude.h"
#include <string.h>

// func_080ADD78: dialogue-text control-code interpreter, the low-level
// parser of the text engine (see SESSION_NOTES.md rounds w101-w103 for the
// full characterization). Walks the current text pointer byte by byte and
// dispatches on a 14-entry jump table:
//   0     -- end of string: pop the pending substitution buffer if one is
//            active, otherwise terminate (state 0).
//   5     -- pause request: asks the sink (Sink::ShouldPause) and parks the
//            cursor in state 2 when granted; a later call resumes via
//            Sink::CanResume.
//   10/12/13 -- dynamic-text insertion (three distinct Src methods, e.g.
//            player/item/number names) -- the direct target for the
//            franglais "Langue" pillar.
//   1-4, 6-9, 11 -- not implemented in this game: they share the printable
//            path's table entry and are skipped by its `<= 0x1f` guard.
// Printable bytes (> 0x1f) accumulate into a shifted multi-byte code that
// is offered to Src::TestGlyph, then (on failure, when no substitution is
// already active) to Provider::Substitute, whose by-value result can swap
// the read pointer to the cursor's internal substitution buffer.
//
// Matching notes (round w105): the loop MUST be a real `while` construct,
// not a goto-built loop -- flow.c weights REG_N_REFS by loop depth, and
// that weighting is what puts text/budget ahead of cursor in global.c's
// allocno priority sort (allocno_compare), yielding the target coloring
// text=r5, budget=r6, cursor=r7, src=r8, acc=r9, sink=sl (LO_REGS fill
// first, then the HI_REGS alternate class). The per-case copies of
// `if (budget != 0) budget--;` must be written out four times (cases
// 13/10/12 and the TestGlyph-success path), NOT shared through a label:
// jump2's cross-jumping merges them after reload into the single tail the
// target shows at 0x080ADED6/0x080ADEDC, and the duplicated in-loop refs
// are part of what raises budget's allocno priority. A shared `decrement:`
// label instead makes case 12's call the last insn before a label, which
// makes flow.c insert a `(use (const_int 0))` nop after the call and that
// nop blocks the cross-jump fall-through merge (2 extra instructions).
// The switch is written with `default:` textually first: the case bodies
// are emitted in source order, which is what places the printable/glyph
// path right after the jump table like the target. `SubstResult.text`
// sits at offset 4 (explicit 3-byte padding after `present`).

struct SubstResult
{
    u8 present;
    u8 pad_1[3];
    char text[0x20];
};

// Substitution provider (cursor->provider): maps an accumulated glyph
// code to replacement text, returned by value through the hidden
// return-slot pointer (r0 = &result on the stack).
struct Provider
{
    virtual void Unk00() = 0;
    virtual SubstResult Substitute(u32 acc) = 0;
};

// Read-cursor state. buf is the internal substitution buffer that
// `pending` points into while a Provider substitution is being replayed.
struct Cursor
{
    i32 state;
    u16 field_4;
    u16 field_6;
    u8 *text_a;
    Provider *provider;
    u8 *pending;
    char buf[0x24];
};

// Text source / glyph consumer (arg1). Slots +0xC/+0x10/+0x14/+0x18/+0x1C.
struct Src
{
    virtual void Unk00() = 0;
    virtual bool TestGlyph(u32 acc) = 0;
    virtual void InsertA() = 0; // control code 13
    virtual void InsertB() = 0; // control code 10
    virtual void InsertC() = 0; // control code 12
    virtual bool CanContinue() = 0;
};

// Pacing sink (arg2) -- the concrete instance used from func_080507F8 is
// vtable_unk_080E78F0, whose three dispatched methods are constant stubs
// (see SESSION_NOTES.md round w103 section 2).
struct Sink
{
    virtual void Unk00() = 0;
    virtual bool PreCheck() = 0;
    virtual bool ShouldPause() = 0;
    virtual bool CanResume() = 0;
};

EC i32 func_080ADF40(void *cursor);

EC i32 func_080ADD78(Cursor *cursor, Src *src, Sink *sink)
{
    u8 *text;
    u32 acc;
    i32 budget;
    i32 advanced;
    u8 byte;

    advanced = 0;
    budget = func_080ADF40(cursor);

    if (cursor->state == 2) {
        if (!sink->CanResume()) {
            budget = 0;
        } else {
            cursor->state = 1;
        }
        goto start;
    pause_it:
        cursor->state = 2;
        goto epilogue;
    } else {
        i32 f = 0;
        i32 pre = sink->PreCheck();
        if (cursor->field_4 == 0)
            pre |= 1;
        if (pre != 0)
            f = 1;
        advanced = f;
    }

start:
    text = cursor->pending;
    if (!text)
        text = cursor->text_a;
    acc = 0;

    while (text != 0 && (advanced != 0 || budget != 0) && !src->CanContinue()) {
        byte = *text;
        text++;
        switch (byte) {
        default:
            if (byte <= 0x1f)
                continue;
            acc |= byte;
            if (src->TestGlyph(acc)) {
                acc = 0;
                if (budget != 0)
                    budget--;
                continue;
            }
            {
                Provider *p = cursor->provider;
                if (p != 0 && cursor->pending == 0) {
                    SubstResult r = p->Substitute(acc);
                    if (r.present) {
                        char *b;
                        acc = 0;
                        b = cursor->buf;
                        strcpy(b, r.text);
                        cursor->text_a = text;
                        cursor->pending = (u8 *)b;
                        text = (u8 *)b;
                        continue;
                    }
                    acc <<= 8;
                    continue;
                }
            }
            acc <<= 8;
            continue;

        case 0:
            if (cursor->pending != 0) {
                cursor->pending = 0;
                text = cursor->text_a;
                continue;
            }
            text = 0;
            goto epilogue;

        case 13:
            src->InsertA();
            if (budget != 0)
                budget--;
            continue;

        case 10:
            src->InsertB();
            if (budget != 0)
                budget--;
            continue;

        case 12:
            src->InsertC();
            if (budget != 0)
                budget--;
            continue;

        case 5:
            if (sink->ShouldPause())
                goto pause_it;
            continue;
        }
    }

epilogue:
    if (cursor->pending != 0) {
        cursor->pending = text;
    } else {
        cursor->text_a = text;
        if (text == 0)
            cursor->state = 0;
    }
    return cursor->state;
}
