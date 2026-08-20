    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08035E40
func_08035E40: @ 0x08035E40
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08035E6C @ =gUnk_080F7294
    str r0, [sp]
    ldr r0, .L08035E70 @ =0x00000989
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08035E74 @ =0x00000402
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08035E78 @ =vtable_unk_080E7018
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08035E6C: .4byte gUnk_080F7294
.L08035E70: .4byte 0x00000989
.L08035E74: .4byte 0x00000402
.L08035E78: .4byte vtable_unk_080E7018

