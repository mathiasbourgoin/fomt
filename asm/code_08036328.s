    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036328
func_08036328: @ 0x08036328
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08036354 @ =gUnk_080F3408
    str r0, [sp]
    ldr r0, .L08036358 @ =0x00000689
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L0803635C @ =0x000003EF
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036360 @ =vtable_unk_080E6D98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08036354: .4byte gUnk_080F3408
.L08036358: .4byte 0x00000689
.L0803635C: .4byte 0x000003EF
.L08036360: .4byte vtable_unk_080E6D98

