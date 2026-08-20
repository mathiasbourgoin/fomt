    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    .align 2, 0

    thumb_func_start func_08036258
func_08036258: @ 0x08036258
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08036280 @ =gUnk_080F33B8
    str r0, [sp]
    ldr r0, .L08036284 @ =0x00000685
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r0, .L08036288 @ =0x000003EE
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L0803628C @ =vtable_unk_080E6E18
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08036280: .4byte gUnk_080F33B8
.L08036284: .4byte 0x00000685
.L08036288: .4byte 0x000003EE
.L0803628C: .4byte vtable_unk_080E6E18

