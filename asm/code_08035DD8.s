    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08035DD8
func_08035DD8: @ 0x08035DD8
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08035E04 @ =gUnk_080F77FC
    str r0, [sp]
    ldr r0, .L08035E08 @ =0x000009A1
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08035E0C @ =0x00000403
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08035E10 @ =vtable_unk_080E7058
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08035E04: .4byte gUnk_080F77FC
.L08035E08: .4byte 0x000009A1
.L08035E0C: .4byte 0x00000403
.L08035E10: .4byte vtable_unk_080E7058

