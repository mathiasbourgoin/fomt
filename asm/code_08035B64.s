    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08035B64
func_08035B64: @ 0x08035B64
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08035B90 @ =ScheduleInfo_Unk_080F1A80
    str r0, [sp]
    ldr r0, .L08035B94 @ =0x00000213
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xf8
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08035B98 @ =vtable_unk_080E7158
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08035B90: .4byte ScheduleInfo_Unk_080F1A80
.L08035B94: .4byte 0x00000213
.L08035B98: .4byte vtable_unk_080E7158

