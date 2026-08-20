#ifndef FRANGLAIS_POC_HH
#define FRANGLAIS_POC_HH

#include "prelude.h"

#define FRANGLAIS_THUMB_PTR(name) ((name##_fn)(FRANGLAIS_##name | 1u))

// Fixed-size hook trampoline: a tail jump to a payload function in
// .franglais_payload, padded with NOPs so the whole thing compiles to
// EXACTLY the byte size of the vanilla body it replaces. This is
// required because raw-address tables elsewhere in the ROM (asm/vtables.s,
// data tables not yet symbolized) reference downstream functions by
// absolute address, not by symbol -- any hook that isn't size-preserving
// shifts every function after it and silently corrupts those tables
// (see DECOMP_RULES.md, "Discipline non negociable", and the boot-crash
// root-caused for func_0800912C / commit f718114).
//
// `addr_hex_plus_one` must already carry the Thumb bit (payload address
// with `| 1`), given as a plain hex string (no `0x...u` suffix -- GNU as
// expressions don't understand the `u` integer suffix). The literal is
// loaded through an explicit local label (`1: .word ...`), never the
// `ldr r3, =value` pool pseudo-op: agbcp/as only auto-flush that implicit
// pool at the end of the whole translation unit, which is far more than
// the +/-1020 byte PC-relative reach of a Thumb `ldr` once the hook sits
// inside a large multi-function file like item.cc -- confirmed by trial
// (assembler error "invalid offset, value too big" using `=value` here).
// The explicit label keeps the literal right where we put it, always in
// range.
//
// `nop_count` is the number of NOP instructions needed so the total
// function size matches the vanilla body being replaced, INCLUDING two
// pieces of overhead the C compiler always inserts around our inline asm
// that aren't visible in the C source itself:
//   - agbcp appends its own `bx lr` after this asm block, because the
//     function has a non-void return type but this asm never falls
//     through to an actual `return` -- unavoidable via plain C, budgeted
//     into `nop_count` instead of fought.
//   - two separate 4-byte alignment paddings can appear: one before our
//     own literal word (so it lands on a word boundary) and one after
//     agbcp's `bx lr` (so the function's total size, `.Lfe1 - start`,
//     stays a multiple of 4).
// `nop_count` is derived empirically per call site (compile, measure
// `.text` size, adjust) rather than by a closed-form guess, because the
// two alignment paddings above are parity-dependent; see SESSION_NOTES.md
// for the per-function derivation actually used.
//
// r3 is used as scratch for the jump target: it is never live on entry
// to any of the hooked methods here (all take only `this` in r0), so
// clobbering it is safe -- same convention as the existing
// func_0800912C / scene-text trampolines.
#define FRANGLAIS_TRAMPOLINE(addr_hex_plus_one, nop_count)  \
    asm volatile(                                           \
        "ldr r3, 1f\n"                                      \
        "bx r3\n"                                           \
        ".rept " nop_count "\n"                              \
        "nop\n"                                              \
        ".endr\n"                                            \
        ".align 2\n"                                         \
        "1: .word " addr_hex_plus_one "\n"                   \
    )

#define FRANGLAIS_franglais_article_desc 0x08801A58u
#define FRANGLAIS_franglais_article_name 0x08801A2Cu
#define FRANGLAIS_franglais_farmer_stamina 0x08801074u
#define FRANGLAIS_franglais_food_desc 0x088019FCu
#define FRANGLAIS_franglais_food_name 0x088019D0u
#define FRANGLAIS_franglais_get_string 0x08800000u
#define FRANGLAIS_franglais_read_keys 0x08801870u
#define FRANGLAIS_franglais_scene_name 0x08801C28u
#define FRANGLAIS_franglais_scene_text 0x08801B7Cu
#define FRANGLAIS_franglais_scene_text_mode 0x08801BB4u
#define FRANGLAIS_franglais_scene_text_mode_arg 0x08801BECu
#define FRANGLAIS_franglais_scene_text_plain 0x08801B44u
#define FRANGLAIS_franglais_season_of 0x08801944u
#define FRANGLAIS_franglais_tool_desc 0x088019A0u
#define FRANGLAIS_franglais_tool_name 0x08801974u

#endif // FRANGLAIS_POC_HH
