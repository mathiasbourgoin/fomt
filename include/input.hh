#pragma once

#include "prelude.h"

/*
 * Small input sample used by the engine's per-frame input helpers.
 *
 * `held` is the active-high GBA key mask. `pressed` is produced by comparing
 * a fresh sample with the previous one. The middle halfword is not written by
 * the recovered helpers and remains intentionally unnamed.
 */
struct InputState
{
    /* +00 */ u16 held;
    /* +02 */ u16 unk_02;
    /* +04 */ u16 pressed;
};

/*
 * InputState plus the generic repeat state used by menu and field consumers.
 *
 * The counters are stored from the highest key bit down to the lowest key bit
 * in memory.  The helpers below keep that original layout so they can remain
 * byte-identical without implying that any particular caller is player input.
 */
struct InputRepeatState : InputState
{
    /* +08 */ u16 repeated;
    /* +0A */ u16 initial_delay;
    /* +0C */ u16 repeat_interval;
    /* +0E */ i16 held_frames[10];
};

/* Hardware boundary: returns REG_KEYINPUT inverted and masked to ten keys. */
EC u32 func_0800912C();

/* Bit-exact address aliases for the recovered input sampling ABI. */
EC InputState *func_08009140(InputState *self);
EC u32 func_08009158(InputState *out);
EC InputState *func_08009168(InputState *self);
EC InputState *func_0800917C(InputState *self);
EC u32 func_08009190(InputState *self);

EC u16 func_08009268(InputRepeatState *self);
EC void func_080092C8(InputRepeatState *self, u16 initial_delay);
