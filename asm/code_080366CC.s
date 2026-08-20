    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_080366CC
func_080366CC: @ 0x080366CC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L080366F8 @ =gUnk_080F6DE8
    str r0, [sp]
    ldr r0, .L080366FC @ =0x000008EC
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0x80
    lsls r0, r0, #3
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036700 @ =vtable_unk_080E6C58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080366F8: .4byte gUnk_080F6DE8
.L080366FC: .4byte 0x000008EC
.L08036700: .4byte vtable_unk_080E6C58

