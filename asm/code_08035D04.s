    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08035D04
func_08035D04: @ 0x08035D04
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08035D30 @ =gUnk_080F8678
    str r0, [sp]
    ldr r0, .L08035D34 @ =0x000009EF
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08035D38 @ =0x00000406
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08035D3C @ =vtable_unk_080E70D8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08035D30: .4byte gUnk_080F8678
.L08035D34: .4byte 0x000009EF
.L08035D38: .4byte 0x00000406
.L08035D3C: .4byte vtable_unk_080E70D8

