    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08035F10
func_08035F10: @ 0x08035F10
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08035F3C @ =gUnk_080F66C4
    str r0, [sp]
    movs r0, #0x8d
    lsls r0, r0, #4
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08035F40 @ =0x000003FD
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08035F44 @ =vtable_unk_080E6F98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08035F3C: .4byte gUnk_080F66C4
.L08035F40: .4byte 0x000003FD
.L08035F44: .4byte vtable_unk_080E6F98

