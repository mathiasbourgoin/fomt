    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036390
func_08036390: @ 0x08036390
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L080363BC @ =gUnk_080F3FD8
    str r0, [sp]
    ldr r0, .L080363C0 @ =0x000006C5
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L080363C4 @ =0x000003F1
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L080363C8 @ =vtable_unk_080E6D58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080363BC: .4byte gUnk_080F3FD8
.L080363C0: .4byte 0x000006C5
.L080363C4: .4byte 0x000003F1
.L080363C8: .4byte vtable_unk_080E6D58

