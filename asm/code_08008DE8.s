	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

    .byte 0x01, 0x48, 0x00, 0x06, 0x00, 0x0E, 0x70, 0x47, 0x05, 0x00, 0x00, 0x00, 0x01, 0x48, 0x00, 0x06
    .byte 0x00, 0x0E, 0x70, 0x47, 0xD3, 0x00, 0x00, 0x00, 0x00, 0xB5, 0x00, 0x2A, 0x15, 0xD0, 0x01, 0x43
    .byte 0x11, 0x43, 0x01, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0F, 0xD1, 0x03, 0x20, 0x01, 0x40, 0x00, 0x29
    .byte 0x05, 0xD1, 0x90, 0x03, 0x02, 0x0C, 0x84, 0x20, 0x00, 0x06, 0x02, 0x43, 0x06, 0xE0, 0xD0, 0x03
    .byte 0x02, 0x0C, 0x80, 0x20, 0x00, 0x06, 0x02, 0x43, 0x00, 0xE0, 0x00, 0x22, 0x10, 0x1C, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_08008E64
func_08008E64: @ 0x08008E64
    push {r4, lr}
    cmp r0, #0
    beq .L08008EAC
    cmp r1, #0
    beq .L08008EAC
    adds r4, r0, #0
    cmp r2, #0
    beq .L08008EA2
    adds r3, r4, #0
    orrs r3, r1
    orrs r3, r2
    movs r0, #1
    ands r0, r3
    cmp r0, #0
    bne .L08008EA2
    movs r0, #3
    ands r3, r0
    cmp r3, #0
    bne .L08008E96
    lsls r0, r2, #0xe
    lsrs r2, r0, #0x10
    movs r0, #0x84
    lsls r0, r0, #0x18
    orrs r2, r0
    b .L08008EA4
.L08008E96:
    lsls r0, r2, #0xf
    lsrs r2, r0, #0x10
    movs r0, #0x80
    lsls r0, r0, #0x18
    orrs r2, r0
    b .L08008EA4
.L08008EA2:
    movs r2, #0
.L08008EA4:
    ldr r3, .L08008EB4 @ =0x040000D4
    adds r0, r4, #0
    bl func_080D0EBC
.L08008EAC:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08008EB4: .4byte 0x040000D4

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
