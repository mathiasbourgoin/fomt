    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08004C0C
func_08004C0C: @ 0x08004C0C
    push {r4, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r1, [r1, #4]
    mov r0, sp
    bl func_08004570
    ldr r2, [sp]
    mov r0, sp
    str r0, [sp, #4]
    str r2, [sp, #8]
    adds r1, r0, #0
    movs r0, #0
    str r0, [r1]
    str r2, [r4]
    ldr r1, [sp]
    cmp r1, #0
    beq .L08004C3C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08004C3C:
    adds r0, r4, #0
    add sp, #0xc
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08004C48
func_08004C48: @ 0x08004C48
    ldr r1, .L08004C50 @ =vtable_unk_080E5A88
    str r1, [r0]
    bx lr
    .align 2, 0
.L08004C50: .4byte vtable_unk_080E5A88

