#include "prelude.h"

#include "franglais_poc.hh"
#include "unknown_types.hh" // for GameDate and Time

#if 0

char const gUnk_080F04EE[4][7] = { "Spring", "Summer", "Fall  ", "Winter" };
char const gUnk_080F050C[] = "\x96\xB3";
char const gUnk_080F050F[7][5] = { "Sun.", "Mon.", "Tue.", "Wed.", "Thu.", "Fri.", "Sat." };

#else

extern char const gUnk_080F04EE[][7];
extern char const gUnk_080F050C[];
extern char const gUnk_080F050F[][5];

#endif

EC char const * func_0800E2E4(Season season)
{
    if (season < NUM_SEASONS)
    {
        return gUnk_080F04EE[season];
    }

    return gUnk_080F050C;
}

EC char const * func_0800E304(unsigned int week_day)
{
    if (week_day < 7)
    {
        return gUnk_080F050F[week_day];
    }

    return gUnk_080F050C;
}

// NOTE: embedded at offset 0x10 of the (still undecompiled) GameState
// object -- see func_08010F54 in asm/game_state.s. That function is the
// day-rollover: it reads GameState+0x11 (this struct's `date` byte) to
// detect the 30-day season wraparound, so its `this` (r6) is confirmed to
// be the same object type that carries this date block, at that offset.
struct Unk_0800E324
{
    u8 unk_00; /* year? */
    GameDate date;
    GameTime time;
};

// NOTE: two fields of the same (unnamed) GameState struct, found while
// reading func_08010F54 (asm/game_state.s) for the day-rollover logic --
// not yet decompiled to .cc. CONFIRMED IN AN EMULATOR, not merely inferred:
// writing 0..4 to GameState+0x08 changes the weather icon the vanilla HUD
// draws (sun, cloud, snowman, then two storms), so the offset and the value
// range are both established. Confidence: high for the offsets, medium for
// the names of values 3 and 4.
//
//   GameState+0x08  today's weather    (u32, values seen: 0..4)
//   GameState+0x0C  tomorrow's weather (u32, same range -- the forecast)
//   GameState+0x10  Unk_0800E324 date block, see above
//
// func_08010F54 opens with:
//   ldr r0, [r6, #0xc]   ; forecast computed on the PREVIOUS rollover
//   str r0, [r6, #8]     ; ... becomes today's weather
// and, after using GameState+0x11 (the date byte, season/day) to pick a
// per-season probability table, rolls a fresh forecast into +0xC with
// `bl rand` and stores it back at [r6, #0xc]. It then calls:
//   ldr r1, [r6, #8]     ; today's weather
//   mov r0, sl            ; Farm* (a sibling field, not GameState itself)
//   ldr r2, [sp, #0x18]   ; GameDate const&
//   bl DayUpdate__4FarmiRC8GameDate
// matching Farm::DayUpdate(int weather, GameDate const & date) in
// src/farm.cc, which forwards straight to FieldPlot::DayUpdate: weather==0
// dries a watered plot, weather!=0 waters an unwatered one. The values 0..4
// line up with FieldPlot::DayUpdate's own switch (case 3 -> gUnk_080E8D04,
// case 4 -> gUnk_080E8D0C), i.e. something like
// { Sunny, Cloudy, Rainy, Typhoon, Snow } -- names are a guess, the
// ordinal values are not.
//
// Runtime access from outside this codebase (the franglais patch reads
// this live, not from ROM): capture a pointer to the embedded date block
// the way `franglais_season_of` already does (it hooks func_0800E324's
// call site and keeps `arg_0`'s address); today's/tomorrow's weather are
// then that captured pointer minus 0x08 / minus 0x04 respectively. That is
// exactly how it was verified, and how the patch reads it today.

// Vanilla body is exactly 0x30 (48) bytes: disassembling baserom.gba at
// 0x0800E324 shows `push {lr}` ... `pop {r1}` / `bx r1` ending at
// 0x0800E352, with the next (still-unmatched, raw asm blob) function
// starting at 0x0800E354. NOTE: this is NOT `func_0800E4E0 - func_0800E324`
// (0x1BC) -- that next *symbolized* function is not adjacent in the
// linked layout; there is an unsymbolized raw-asm span of 396 bytes
// between the two that is unaffected by this hook and must not be
// padded over. Using the wrong (0x1BC) size here was tried first and
// measured directly: it shifted everything after this point by +396
// bytes instead of landing the delta at zero, confirming the real
// gap and prompting this baserom-verified 0x30 figure instead. Tail-call
// trampoline into the real (franglais) implementation in
// .franglais_payload, padded with NOPs to match that exact size -- see
// FRANGLAIS_TRAMPOLINE in franglais_poc.hh for why this must stay
// fixed-size (raw-address tables elsewhere in the ROM reference
// downstream functions by absolute address).
EC u32 func_0800E324(Unk_0800E324 const & arg_0)
{
    FRANGLAIS_TRAMPOLINE("0x08801945", "17");
}
