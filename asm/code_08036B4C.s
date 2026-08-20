    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036B4C
func_08036B4C: @ 0x08036B4C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08036B78 @ =gUnk_080F2DC0
    str r0, [sp]
    movs r0, #0xc6
    lsls r0, r0, #2
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    adds r0, #0xc9
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036B7C @ =vtable_unk_080E6A98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08036B78: .4byte gUnk_080F2DC0
.L08036B7C: .4byte vtable_unk_080E6A98

