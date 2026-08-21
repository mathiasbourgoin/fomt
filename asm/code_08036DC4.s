    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036DC4
func_08036DC4: @ 0x08036DC4
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08036DF0 @ =gUnk_080F6B10
    str r0, [sp]
    ldr r0, .L08036DF4 @ =0x000008D8
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08036DF8 @ =0x000003FE
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036DFC @ =vtable_unk_080E6958
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08036DF0: .4byte gUnk_080F6B10
.L08036DF4: .4byte 0x000008D8
.L08036DF8: .4byte 0x000003FE
.L08036DFC: .4byte vtable_unk_080E6958
