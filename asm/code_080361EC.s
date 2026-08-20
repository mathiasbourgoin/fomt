    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_080361EC
func_080361EC: @ 0x080361EC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08036218 @ =gUnk_080F6B4C
    str r0, [sp]
    ldr r0, .L0803621C @ =0x000008E4
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08036220 @ =0x000003FF
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036224 @ =vtable_unk_080E6E58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08036218: .4byte gUnk_080F6B4C
.L0803621C: .4byte 0x000008E4
.L08036220: .4byte 0x000003FF
.L08036224: .4byte vtable_unk_080E6E58

