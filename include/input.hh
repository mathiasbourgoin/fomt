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

/* Hardware boundary: returns REG_KEYINPUT inverted and masked to ten keys. */
EC u32 func_0800912C();

/* Bit-exact address aliases for the recovered input sampling ABI. */
EC InputState *func_08009140(InputState *self);
EC u32 func_08009158(InputState *out);
EC InputState *func_08009168(InputState *self);
EC InputState *func_0800917C(InputState *self);
EC u32 func_08009190(InputState *self);

