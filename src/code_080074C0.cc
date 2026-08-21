// func_080074C0 (0x080074C0) -- lookup accessor on the gUnk_03000404
// 16-slot hardware-resource pool (layout shared via include/hardware.hh,
// previously local to src/hardware.cc). One of the 13 opaque callees of
// franglais_transition_impl_tick (SESSION_NOTES.md round w90 sect. 0,
// called x7 from that body).
//
// Takes an opaque handle value `val` whose low nibble is a slot index and
// whose bits 4..19 carry a 16-bit tag: returns the slot index if the slot
// is currently allocated (bitmask unk_44) AND the slot's stored tag
// (unk_04[nibble].params.unk_02) matches the handle's tag, else -1.
// I.e. a handle-validation/index-resolution helper: "is this handle still
// pointing at the slot it was issued for?".
//
// Matching notes (round w91 -- resolves the w90 near-miss, cf.
// SESSION_NOTES round w90 sect. 1): the target keeps TWO live copies of
// the nibble (r2 for the middle of the function, r5 for the return path)
// because the original source really does hold the value in two distinct
// variables whose ranges overlap (`nibble` + the function-scope return
// variable `ret` assigned early on the success path). Three source-shape
// details were needed, none changing semantics:
//   1. `Unk_hardware_ent_080D6D98 & ent = h->GetEntry(nibble)` taken
//      BEFORE `match = 0`, so nibble's last use precedes match's birth
//      and match can inherit r2 (rule 5: statement order is emitted
//      order);
//   2. the tag compare written extracted-value-first
//      (`((val << 12) >> 16) == ent.params.unk_02`);
//   3. a single function-scope `int ret` with `ret = result; if (match)
//      return ret;` on the success path and a shared `ret = -1; return
//      ret;` fallthrough tail -- this makes the guard-clause failures
//      jump INTO the -1 assignment and lets the `return ret` branch skip
//      it, reproducing the target's `adds r0,r5 / cmp / bne` tail with no
//      extra `b`.
#include "prelude.h"
#include "hardware.hh"

EC int func_080074C0(void * self, u32 val)
{
    Unk_hardware_03000404 * h = gUnk_03000404;
    int ret;

    if (val != 0)
    {
        unsigned int nibble = (val << 28) >> 28;
        int result = nibble;

        if (h->inl_pred_0(nibble))
        {
            Unk_hardware_ent_080D6D98 & ent = h->GetEntry(nibble);
            u32 match = 0;

            if (((val << 12) >> 16) == ent.params.unk_02)
                match = 1;

            ret = result;

            if (match != 0)
                return ret;
        }
    }

    ret = -1;

    return ret;
}
