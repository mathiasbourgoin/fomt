    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036184
func_08036184: @ 0x08036184
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L080361B0 @ =gUnk_080F59CC
    str r0, [sp]
    ldr r0, .L080361B4 @ =0x0000085F
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L080361B8 @ =0x000003F9
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L080361BC @ =vtable_unk_080E6E98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080361B0: .4byte gUnk_080F59CC
.L080361B4: .4byte 0x0000085F
.L080361B8: .4byte 0x000003F9
.L080361BC: .4byte vtable_unk_080E6E98

