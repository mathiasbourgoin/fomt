    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    .align 2, 0

    thumb_func_start func_08035D70
func_08035D70: @ 0x08035D70
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08035D9C @ =gUnk_080F81BC
    str r0, [sp]
    ldr r0, .L08035DA0 @ =0x000009E7
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08035DA4 @ =0x00000405
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08035DA8 @ =vtable_unk_080E7098
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08035D9C: .4byte gUnk_080F81BC
.L08035DA0: .4byte 0x000009E7
.L08035DA4: .4byte 0x00000405
.L08035DA8: .4byte vtable_unk_080E7098

