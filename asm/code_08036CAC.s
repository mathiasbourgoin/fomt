    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036CAC
func_08036CAC: @ 0x08036CAC
    push {r4, r5, lr}
    sub sp, #0x10
    adds r5, r0, #0
    movs r4, #0
    str r4, [sp]
    ldr r0, .L08036CD4 @ =0x00000679
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    adds r0, r5, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036CD8 @ =vtable_unk_080E6A18
    str r0, [r5, #0x14]
    adds r0, r5, #0
    add sp, #0x10
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08036CD4: .4byte 0x00000679
.L08036CD8: .4byte vtable_unk_080E6A18

