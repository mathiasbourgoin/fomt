    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_080367F8
func_080367F8: @ 0x080367F8
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08036824 @ =gUnk_080F42F0
    str r0, [sp]
    ldr r0, .L08036828 @ =0x000007B2
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L0803682C @ =0x000003F2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036830 @ =vtable_unk_080E6BD8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08036824: .4byte gUnk_080F42F0
.L08036828: .4byte 0x000007B2
.L0803682C: .4byte 0x000003F2
.L08036830: .4byte vtable_unk_080E6BD8

