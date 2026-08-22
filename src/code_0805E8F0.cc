#include "prelude.h"
#include "unknown_types.hh"

// func_0805E8F0: SpriteAnimator frame-advance tick (see SESSION_NOTES.md
// rounds w93/w101 for the full characterization). Layout of the animator
// blob (offsets from self): +0x04 frame table pointer (AnimFrame[]),
// +0x08 frame count (u16), +0x0C current frame index (u16), +0x0E frame
// timer (u16, counts down), +0x10 signed playback speed (i16, per-tick
// decrement, sign = direction), +0x12 "restarted" flag (u8). Returns a
// bitmask: 1 = frame stepped, 2 = displayed frame id changed (or animator
// was restarted), 4 = wrapped past either end of the table. A frame whose
// duration is 0 parks the timer at 0 (animation holds on that frame).
//
// Matching notes (round w105): this leaf function's coloring
// (self=r4, flags=r7, delta=ip, timer=r3, index=r2, table=r6,
// count=r5, wrap_flag=r8, saved_id=r9) falls out of global.c's priority
// sort plus the two-pass find_reg (pass 1 only considers regs already
// used, which is how delta reaches ip in a leaf function). The shapes
// that matter, all verified against the allocator's own -dg dump:
// - the loop MUST be goto-built: a real do/while would emit
//   NOTE_INSN_LOOP notes and flow.c's loop-depth weighting of REG_N_REFS
//   would push flags' priority above everything (it worked the other way
//   around for func_080ADD78, which needs a real while);
// - `count` doubles as the +0x04 field address before it holds the count
//   value (two disjoint sub-ranges of one variable) -- merging them is
//   what gives the pseudo enough references to be colored r5 ahead of
//   table/flags, and the address range is what blocks r5 for
//   flags/table/delta;
// - the early-exit path writes the timer and returns inline (its store
//   and return-copy are merged back into the shared epilogue by jump2's
//   cross-jumping, hence the lone `bgt` into the final strh pair), and
//   the head's delta==0/timer==0 exit jumps to a SECOND, textually
//   duplicated `return flags;` -- both exist to give `flags` the
//   reference count that ranks it above `delta` (r7 vs ip); the
//   duplicate return costs zero bytes (cross-jumped into the first);
// - `off`/`addr`/`tmp` are explicit so the index*4 shift is emitted
//   before the table load and the count value is joined into its
//   register through a single copy, exactly as the target orders them.
struct AnimFrame
{
    u16 id;
    u16 duration;
};

EC u32 func_0805E8F0(SpriteAnimator *sprite_animator)
{
    u8 *self = (u8 *)sprite_animator;
    u32 flags = 0;
    i32 delta, timer, abs_delta;
    u32 index, count, tmp, off, addr;
    AnimFrame *table;
    u16 saved_id, duration;
    u32 wrap_flag;

    if (*(u8 *)(self + 0x12)) {
        flags = 2;
        *(u8 *)(self + 0x12) = 0;
    }

    delta = *(i16 *)(self + 0x10);
    timer = *(u16 *)(self + 0xe);
    if (delta == 0 || timer == 0)
        goto ret2;

    abs_delta = delta >= 0 ? delta : -delta;
    timer -= abs_delta;
    if (timer > 0) {
        *(u16 *)(self + 0xe) = timer;
        return flags;
    }

    index = *(u16 *)(self + 0xc);
    count = (u32)(self + 4);
    off = index * 4;
    saved_id = *(u16 *)(*(u32 *)(self + 4) + off);
    flags |= 1;
    tmp = 0;
    table = *(AnimFrame **)(self + 4);
    if (table)
        tmp = *(u16 *)(count + 4);
    count = tmp;
    wrap_flag = 4;

loop_top:
    if (delta > 0) {
        index += 1;
        if (index >= count) {
            index = 0;
            flags |= wrap_flag;
        }
    } else {
        if (index == 0) {
            index = count;
            flags |= wrap_flag;
        }
        index -= 1;
    }
    addr = index * 4;
    duration = *(u16 *)((u32)table + addr + 2);
    if (duration == 0)
        goto zero_timer;
    timer += duration << 8;
    if (timer > 0)
        goto after_loop;
    goto loop_top;

zero_timer:
    timer = 0;
after_loop:
    if (*(u16 *)((u32)table + addr) != saved_id)
        flags |= 2;
    *(u16 *)(self + 0xc) = index;
    *(u16 *)(self + 0xe) = timer;
    return flags;
ret2:
    return flags;
}
