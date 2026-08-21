    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036530
func_08036530: @ 0x08036530
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L0803655C @ =gUnk_080F3010
    str r0, [sp]
    movs r0, #0xc8
    lsls r0, r0, #2
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    adds r0, #0xc2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036560 @ =vtable_unk_080E6CD8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0803655C: .4byte gUnk_080F3010
.L08036560: .4byte vtable_unk_080E6CD8

