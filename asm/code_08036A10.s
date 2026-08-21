    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036A10
func_08036A10: @ 0x08036A10
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08036A3C @ =gUnk_080F6FF8
    str r0, [sp]
    ldr r0, .L08036A40 @ =0x00000902
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08036A44 @ =0x00000401
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036A48 @ =vtable_unk_080E6B18
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08036A3C: .4byte gUnk_080F6FF8
.L08036A40: .4byte 0x00000902
.L08036A44: .4byte 0x00000401
.L08036A48: .4byte vtable_unk_080E6B18

