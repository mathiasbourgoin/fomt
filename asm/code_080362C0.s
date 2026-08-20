    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    .align 2, 0

    thumb_func_start func_080362C0
func_080362C0: @ 0x080362C0
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L080362EC @ =gUnk_080F61FC
    str r0, [sp]
    ldr r0, .L080362F0 @ =0x000008B8
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L080362F4 @ =0x000003FB
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L080362F8 @ =vtable_unk_080E6DD8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080362EC: .4byte gUnk_080F61FC
.L080362F0: .4byte 0x000008B8
.L080362F4: .4byte 0x000003FB
.L080362F8: .4byte vtable_unk_080E6DD8

