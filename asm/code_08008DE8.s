	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

    thumb_func_start func_08008EB8
func_08008EB8: @ 0x08008EB8
    push {lr}
    sub sp, #4
    str r0, [sp]
    cmp r1, #0
    beq .L08008F02
    cmp r2, #0
    beq .L08008EF2
    adds r3, r1, #0
    orrs r3, r2
    movs r0, #1
    ands r0, r3
    cmp r0, #0
    bne .L08008EF2
    movs r0, #3
    ands r3, r0
    cmp r3, #0
    bne .L08008EE6
    lsls r0, r2, #0xe
    lsrs r2, r0, #0x10
    movs r0, #0x84
    lsls r0, r0, #0x18
    orrs r2, r0
    b .L08008EF4
.L08008EE6:
    lsls r0, r2, #0xf
    lsrs r2, r0, #0x10
    movs r0, #0x80
    lsls r0, r0, #0x18
    orrs r2, r0
    b .L08008EF4
.L08008EF2:
    movs r2, #0
.L08008EF4:
    movs r0, #0x80
    lsls r0, r0, #0x11
    orrs r2, r0
    ldr r3, .L08008F08 @ =0x040000D4
    mov r0, sp
    bl func_080D0EBC
.L08008F02:
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L08008F08: .4byte 0x040000D4
