// func_08050868: 8-direction facing resolver. Called once, from
// func_0804F7A4 (asm/code_0804E9C8.s), just before the transition-tick
// code already ported: `entity->field_0x158 = func_08050868(
// entity->field_0x15c, entity->field_0x158, packed_dpad_bits)`. Combines
// the newly-requested facing direction (0..7, presumably N/NE/E/.../NW)
// with the previous stored facing and the currently-held D-pad bits into
// a new facing/blend code (1..6), used to smooth diagonal-to-cardinal
// facing changes when the player releases one of two held direction
// keys. Purely combinatorial: no loop, no persisted state beyond the
// return value.
//
// The packed D-pad byte is modelled as a bitfield struct rather than
// tested with plain `& mask` arithmetic, for the same reason as
// func_08050EE4/func_080512D8 (see those files): a real C bitfield
// member access is what makes agbcp preserve the source register across
// a later use of the same value via an explicit copy (`adds r0, r2, #0`
// then `ands r0, r1`) instead of folding the mask straight into the
// destination register -- exactly the shape the target binary uses for
// every `left`/`right` test that is followed by a further test of the
// same byte. The one 2-bit-combined test (`!keys.left && !keys.right`,
// case 0/5's entry guard) also needed the `&&` form specifically --
// `|`/`||` on the same two fields folds differently and clobbers the
// bitfield parameter's register instead of preserving it.
//
// Verified via round w102/w103's prediction: the outer switch's bounds
// check (`bls`/`bhi` polarity) and several inner two-way dispatches
// (state==N ? A : B) only resolve to the target's exact branch
// direction once the FULL function body is compiled (encoding depends
// on physical distance to the shared `return N;` blocks at the tail),
// not in an isolated fragment -- see SESSION_NOTES.md round w102 and
// the round that landed this file.
#include "prelude.h"

struct DirBits
{
    u32 pad : 4;
    u32 axis2 : 2;
    u32 right : 1;
    u32 left : 1;
};

EC i32 func_08050868(i32 new_dir, i32 old_state, struct DirBits keys)
{
    i32 result;
    i32 state = old_state;

    switch (new_dir) {
    case 0:
    case 5:
        if (!keys.left && !keys.right)
            goto ec_common;
    aa_common:
        if (state == 1)
            goto ret2;
        goto ret1;

    case 1:
        if (keys.left) {
            if (state == 2)
                goto ret3;
            if (state <= 2)
                goto aa_common;
            goto ret1;
        }
        if (!keys.right)
            goto ec_common;
        if (state == 2)
            goto ret1;
        if (state > 2)
            goto e4_common;
    dc_common:
        if (state == 1)
            goto ret3;
        goto ret1;
    e4_common:
        if (state != 3)
            goto ret1;
        goto ret2;

    ec_common:
        if (!keys.axis2)
            goto ret1;
        result = state;
        goto end;

    case 6:
        if (!keys.left)
            goto case6_test40;
    case6_body:
        if (state == 2)
            goto ret1;
        if (state <= 2)
            goto aa_common;
        goto e4_common;
    case6_test40:
        if (keys.right)
            goto case6_body;
        if (!keys.axis2)
            goto ret1;
        if (state == 2)
            goto ret3;
        if (state <= 2)
            goto dc_common;
        goto ret1;

    case 2:
    case 7:
        if (!keys.left)
            goto case27_test40;
    case27_body:
        if (state == 2)
            goto ret1;
        if (state <= 2)
            goto aa_common;
        if (state == 3)
            goto ret4;
        if (state != 4)
            goto ret1;
        goto ret3;
    case27_test40:
        if (keys.right)
            goto case27_body;
        if (!keys.axis2)
            goto ret1;
        if (state == 2)
            goto ret4;
        if (state <= 2)
            goto dc_common;
        if (state == 3)
            goto ret1;
        if (state != 4)
            goto ret1;
        goto ret2;

    case 3:
        if (keys.left) {
            switch (state - 1) {
            case 0: goto ret2;
            case 1: goto ret3;
            case 2: goto ret1;
            case 3: goto ret5;
            case 4: goto ret4;
            default: goto ret1;
            }
        }
        if (keys.right) {
            switch (state - 1) {
            case 0: goto ret3;
            case 1: goto ret1;
            case 2: goto ret2;
            case 3: goto ret5;
            case 4: goto ret4;
            default: goto ret1;
            }
        }
        if (!keys.axis2)
            goto ret1;
        switch (state - 1) {
        case 0: goto ret4;
        case 1: goto ret5;
        case 2: goto ret5;
        case 3: goto ret1;
        case 4: goto ret2;
        default: goto ret1;
        }

    case 4:
        if (keys.left) {
            switch (state - 1) {
            case 0: goto ret2;
            case 1: goto ret3;
            case 2: goto ret1;
            case 3: goto ret5;
            case 4: goto ret6;
            case 5: goto ret4;
            default: goto ret1;
            }
        }
        if (keys.right) {
            switch (state - 1) {
            case 0: goto ret3;
            case 1: goto ret1;
            case 2: goto ret2;
            case 3: goto ret6;
            case 4: goto ret4;
            case 5: goto ret5;
            default: goto ret1;
            }
        }
        if (!keys.axis2)
            goto ret1;
        switch (state - 1) {
        case 0: goto ret4;
        case 1: goto ret5;
        case 2: goto ret6;
        case 3: goto ret1;
        case 4: goto ret2;
        case 5: goto ret3;
        default: goto ret1;
        }

    default:
        goto ret1;
    }

ret4:
    result = 4;
    goto end;
ret5:
    result = 5;
    goto end;
ret6:
    result = 6;
    goto end;
ret2:
    result = 2;
    goto end;
ret3:
    result = 3;
    goto end;
ret1:
    result = 1;
end:
    return result;
}
