    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08035F74
func_08035F74: @ 0x08035F74
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08035FA0 @ =gUnk_080F49C0
    str r0, [sp]
    ldr r0, .L08035FA4 @ =0x0000080B
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08035FA8 @ =0x000003F5
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08035FAC @ =vtable_unk_080E6F58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08035FA0: .4byte gUnk_080F49C0
.L08035FA4: .4byte 0x0000080B
.L08035FA8: .4byte 0x000003F5
.L08035FAC: .4byte vtable_unk_080E6F58

