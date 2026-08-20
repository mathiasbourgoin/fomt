    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036D68
func_08036D68: @ 0x08036D68
    push {r4, r5, lr}
    sub sp, #0x10
    adds r5, r0, #0
    movs r4, #0
    str r4, [sp]
    ldr r0, .L08036D90 @ =0x000007FE
    str r0, [sp, #4]
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    adds r0, r5, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036D94 @ =vtable_unk_080E6998
    str r0, [r5, #0x14]
    adds r0, r5, #0
    add sp, #0x10
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08036D90: .4byte 0x000007FE
.L08036D94: .4byte vtable_unk_080E6998

