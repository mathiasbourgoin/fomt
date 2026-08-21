// func_08008F0C (0x08008F0C) -- DMA descriptor builder, one of several
// opaque callees of a caller in code_0804E9C8.s (the function right
// before it in the original asm ends on a literal 0x040000D4 = DMA3SAD;
// this family is the VRAM DMA mechanism of that caller).
//
// Fills a 4-word descriptor {0, src, dest, control} from (desc, src,
// dest, count). The control word encodes the transfer the way the
// DMA3CNT register expects it: if everything is 4-byte aligned,
// count/4 units | 0x84000000 (enable + 32-bit); if only 2-byte aligned,
// count/2 units | 0x80000000 (enable + 16-bit); if src, dest or count is
// null or odd (bit 0 set), control = 0 (descriptor disabled). The unit
// counts are written as literal double-shifts ((count << 14) >> 16 and
// (count << 15) >> 16, rule 1) exactly like the target.
//
// Matching notes: resolves a systematic extra `adds r1, rX, #0` before
// the first orrs. Two source-shape details, no semantic change:
//   1. `combined` is declared and initialized from src as the FIRST
//      statement of the function (block 0): cse then links its init to
//      hard r1 (src's incoming arg register), the allocator honors that
//      preference, and the init move `mov r1, rX` dies as a no-op since
//      r1 still holds src -- the or-chain then starts directly with
//      `orrs r1, r2` on the stale argument register, zero copies, which
//      no formulation placing the OR inside the guarded block achieves
//      (there combined loses its r1 preference and evicts dest from r2
//      instead, costing an extra push);
//   2. the &1 test must go through a NAMED flag variable (`low`):
//      written inline, fold-const rewrites (x & 1) == 0 into
//      ((x ^ 1) & 1) != 0 and emits a spurious eors.
// The guard-clause structure (three cmp/beq + bne falling to a single
// shared `count = 0` before the store block, both aligned branches
// jumping over it) mirrors the target's layout with `goto store`, same
// pattern as the shared -1 tail of func_080074C0.
#include "prelude.h"

struct Unk_dma_words
{
    /* +00 */ u32 unk_00;
    /* +04 */ void * unk_04;
    /* +08 */ void * unk_08;
    /* +0C */ u32 unk_0C;
};

EC Unk_dma_words * func_08008F0C(Unk_dma_words * desc, void * src, void * dest, u32 count)
{
    u32 combined = (u32)src;

    if (src != nullptr && dest != nullptr && count != 0)
    {
        u32 low;

        combined |= (u32)dest;
        combined |= count;

        low = combined & 1;

        if (low == 0)
        {
            if ((combined & 3) == 0)
                count = ((count << 14) >> 16) | 0x84000000;
            else
                count = ((count << 15) >> 16) | 0x80000000;

            goto store;
        }
    }

    count = 0;

store:
    desc->unk_00 = 0;
    desc->unk_04 = src;
    desc->unk_08 = dest;
    desc->unk_0C = count;

    return desc;
}
