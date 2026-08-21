#include "prelude.h"

// 3 previously-uncatalogued functions, found as a 24-byte run of raw
// `.byte` data sitting between func_08008920 and func_08008940 at the end
// of asm/hardware.s. Missed by `tools/scripts/scan_hidden_code_blobs_v2.py`
// itself (not by an over-narrow blind spot in gap detection, but in its
// `block_pure_bytes()` helper): the naive line-by-line parser attributes
// the trailing `thumb_func_start func_08008940` line to the TAIL of the
// preceding `.byte`-only block rather than treating it purely as the
// header of the next real function -- exactly the parsing trap already
// documented in DECOMP_RULES.md ("thumb_func_start NAME apparaît
// textuellement comme fin du bloc PRECEDENT"), just hitting a different
// code path (byte-purity check) than the one the doc warned about
// (function-boundary detection, which the v2 script does handle).
// Confirmed by direct disassembly (`arm-none-eabi-objdump -D -bbinary
// -marmv4t -Mforce-thumb --adjust-vma=0x08008928`) and no symbolic caller
// found anywhere in asm/*.s (grep negative), consistent with the run of
// unnamed getters right before it.
//
// Body: each function is byte-for-byte IDENTICAL to one of the three
// already-`thumb_func_start`-named getters immediately preceding this run
// (func_08008910 / func_08008918 / func_08008920, all still
// asm-only, same "deref self then add a fixed offset" shape) -- just
// re-emitted at a different address with no symbol, presumably a second
// non-deduplicated instantiation of the same trivial accessor for a
// different caller/class.
EC void *func_08008928(void *self)
{
    return (u8 *)*(void **)self + 0x24;
}

EC void *func_08008930(void *self)
{
    return (u8 *)*(void **)self + 0x34;
}

EC void *func_08008938(void *self)
{
    return (u8 *)*(void **)self + 0x8c;
}
