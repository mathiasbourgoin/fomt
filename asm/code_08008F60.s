	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

    thumb_func_start func_08008F60
func_08008F60: @ 0x08008F60
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    cmp r2, #0
    beq .L08008FA4
    cmp r3, #0
    beq .L08008F9A
    adds r1, r2, #0
    orrs r1, r3
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L08008F9A
    movs r0, #3
    ands r1, r0
    cmp r1, #0
    bne .L08008F8E
    lsls r0, r3, #0xe
    lsrs r3, r0, #0x10
    movs r0, #0x84
    lsls r0, r0, #0x18
    orrs r3, r0
    b .L08008F9C
.L08008F8E:
    lsls r0, r3, #0xf
    lsrs r3, r0, #0x10
    movs r0, #0x80
    lsls r0, r0, #0x18
    orrs r3, r0
    b .L08008F9C
.L08008F9A:
    movs r3, #0
.L08008F9C:
    movs r1, #0x80
    lsls r1, r1, #0x11
    orrs r1, r3
    b .L08008FA6
.L08008FA4:
    movs r1, #0
.L08008FA6:
    movs r0, #1
    str r0, [r4]
    str r5, [r4, #4]
    str r2, [r4, #8]
    str r1, [r4, #0xc]
    adds r0, r4, #0
    pop {r4, r5}
    pop {r1}
    bx r1
.L08008FB8:
    .byte 0x10, 0xB5, 0x81, 0xB0, 0x02, 0x1C, 0x54, 0x68
    .byte 0x10, 0x68, 0x01, 0x28, 0x01, 0xD1, 0x00, 0x94, 0x6C, 0x46, 0x91, 0x68, 0xD2, 0x68, 0x04, 0x4B
    .byte 0x20, 0x1C, 0xC7, 0xF0, 0x73, 0xFF, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0xD4, 0x00, 0x00, 0x04

    thumb_func_start func_08008FE4
func_08008FE4: @ 0x08008FE4
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r1, #0
    ldr r6, .L08009018 @ =0x040000D4
    adds r4, r0, #0
    cmp r4, r5
    beq .L08009010
.L08008FF2:
    ldr r3, [r4, #4]
    ldr r0, [r4]
    cmp r0, #1
    bne .L08008FFE
    str r3, [sp]
    mov r3, sp
.L08008FFE:
    ldr r1, [r4, #8]
    ldr r2, [r4, #0xc]
    adds r0, r3, #0
    adds r3, r6, #0
    bl func_080D0EBC
    adds r4, #0x10
    cmp r4, r5
    bne .L08008FF2
.L08009010:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08009018: .4byte 0x040000D4
.L0800901C:
    .byte 0xF0, 0xB5, 0x82, 0xB0
    .byte 0x01, 0x1C, 0x4C, 0x68, 0x08, 0x68, 0x01, 0x28, 0x01, 0xD1, 0x00, 0x94, 0x6C, 0x46, 0xCE, 0x68
    .byte 0x8F, 0x68, 0x80, 0x20, 0xC0, 0x04, 0x30, 0x40, 0x00, 0x28, 0x21, 0xD0, 0x0F, 0x4D, 0x35, 0x40
    .byte 0x07, 0x23, 0x2B, 0x40, 0xED, 0x1A, 0x00, 0x2D, 0x01, 0xD1, 0x00, 0x2B, 0x10, 0xD1, 0xF2, 0x1A
    .byte 0x20, 0x1C, 0x39, 0x1C, 0x01, 0x93, 0xCA, 0xF0, 0x79, 0xFB, 0xA9, 0x00, 0x7F, 0x18, 0x80, 0x20
    .byte 0x40, 0x04, 0x30, 0x40, 0x01, 0x9B, 0x00, 0x28, 0x00, 0xD1, 0x64, 0x18, 0x00, 0x2B, 0x0C, 0xD0
    .byte 0x72, 0x1B, 0x20, 0x1C, 0x39, 0x1C, 0xCA, 0xF0, 0x6B, 0xFB, 0x06, 0xE0, 0xFF, 0xFF, 0x00, 0x00
    .byte 0x20, 0x1C, 0x39, 0x1C, 0x32, 0x1C, 0xCA, 0xF0, 0x63, 0xFB, 0x02, 0xB0, 0xF0, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00

    thumb_func_start func_08009094
func_08009094: @ 0x08009094
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #8
    mov sb, r1
    adds r7, r0, #0
    cmp r7, sb
    beq .L0800911C
.L080090A6:
    ldr r4, [r7, #4]
    ldr r0, [r7]
    cmp r0, #1
    bne .L080090B2
    str r4, [sp]
    mov r4, sp
.L080090B2:
    ldr r6, [r7, #0xc]
    ldr r3, [r7, #8]
    movs r0, #0x80
    lsls r0, r0, #0x13
    ands r0, r6
    cmp r0, #0
    beq .L0800910C
    ldr r5, .L08009108 @ =0x0000FFFF
    ands r5, r6
    movs r0, #7
    mov r8, r0
    ands r0, r5
    mov r8, r0
    subs r5, r5, r0
    cmp r5, #0
    bne .L080090D6
    cmp r0, #0
    bne .L080090FC
.L080090D6:
    mov r0, r8
    subs r2, r6, r0
    adds r0, r4, #0
    adds r1, r3, #0
    str r3, [sp, #4]
    bl CpuFastSet
    lsls r1, r5, #2
    ldr r3, [sp, #4]
    adds r3, r3, r1
    movs r0, #0x80
    lsls r0, r0, #0x11
    ands r0, r6
    cmp r0, #0
    bne .L080090F6
    adds r4, r4, r1
.L080090F6:
    mov r0, r8
    cmp r0, #0
    beq .L08009116
.L080090FC:
    subs r2, r6, r5
    adds r0, r4, #0
    adds r1, r3, #0
    bl CpuSet
    b .L08009116
    .align 2, 0
.L08009108: .4byte 0x0000FFFF
.L0800910C:
    adds r0, r4, #0
    adds r1, r3, #0
    adds r2, r6, #0
    bl CpuSet
.L08009116:
    adds r7, #0x10
    cmp r7, sb
    bne .L080090A6
.L0800911C:
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0800912C
func_0800912C: @ 0x0800912C
    ldr r0, .L08009138 @ =0x04000130
    ldrh r1, [r0]
    ldr r0, .L0800913C @ =0x000003FF
    bics r0, r1
    bx lr
    .align 2, 0
.L08009138: .4byte 0x04000130
.L0800913C: .4byte 0x000003FF

    thumb_func_start func_08009140
func_08009140: @ 0x08009140
    push {r4, lr}
    adds r4, r0, #0
    bl func_0800912C
    strh r0, [r4]
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    .section .text.tail08009158, "ax", %progbits
    thumb_func_start func_08009158
func_08009158: @ 0x08009158
    push {r4, lr}
    adds r4, r0, #0
    bl func_0800912C
    strh r0, [r4]
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08009168
func_08009168: @ 0x08009168
    push {r4, lr}
    adds r4, r0, #0
    bl func_08009140
    ldrh r0, [r4]
    strh r0, [r4, #4]
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_0800917C
func_0800917C: @ 0x0800917C
    push {r4, lr}
    adds r4, r0, #0
    bl func_08009154
    ldrh r0, [r4]
    strh r0, [r4, #4]
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08009190
func_08009190: @ 0x08009190
    push {r4, r5, lr}
    adds r4, r0, #0
    ldrh r5, [r4]
    bl func_08009158
    bics r0, r5
    strh r0, [r4, #4]
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_080091A4
func_080091A4: @ 0x080091A4
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    bl func_08009168
    ldrh r0, [r6, #4]
    movs r1, #0
    strh r0, [r6, #8]
    strh r4, [r6, #0xa]
    strh r5, [r6, #0xc]
    str r1, [sp]
    adds r0, r6, #0
    adds r0, #0xe
    adds r1, r6, #0
    adds r1, #0x22
    cmp r0, r1
    beq .L080091DC
    movs r2, #0
.L080091D4:
    strh r2, [r0]
    adds r0, #2
    cmp r0, r1
    bne .L080091D4
.L080091DC:
    adds r0, r6, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080091E8
func_080091E8: @ 0x080091E8
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    bl func_0800917C
    ldrh r0, [r4, #4]
    movs r1, #0
    strh r0, [r4, #8]
    movs r0, #0x1e
    strh r0, [r4, #0xa]
    movs r0, #4
    strh r0, [r4, #0xc]
    str r1, [sp]
    adds r0, r4, #0
    adds r0, #0xe
    adds r1, r4, #0
    adds r1, #0x22
    cmp r0, r1
    beq .L08009218
    movs r2, #0
.L08009210:
    strh r2, [r0]
    adds r0, #2
    cmp r0, r1
    bne .L08009210
.L08009218:
    adds r0, r4, #0
    add sp, #4
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08009224:
    .byte 0x70, 0xB5, 0x81, 0xB0, 0x06, 0x1C, 0x0C, 0x1C, 0x15, 0x1C, 0x19, 0x1C
    .byte 0x24, 0x04, 0x24, 0x0C, 0x2D, 0x04, 0x2D, 0x0C, 0xFF, 0xF7, 0xA0, 0xFF, 0xB0, 0x88, 0x00, 0x21
    .byte 0x30, 0x81, 0x74, 0x81, 0xB5, 0x81, 0x00, 0x91, 0x30, 0x1C, 0x0E, 0x30, 0x31, 0x1C, 0x22, 0x31
    .byte 0x88, 0x42, 0x04, 0xD0, 0x00, 0x22, 0x02, 0x80, 0x02, 0x30, 0x88, 0x42, 0xFB, 0xD1, 0x30, 0x1C
    .byte 0x01, 0xB0, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47

    thumb_func_start func_08009268
func_08009268: @ 0x08009268
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    bl func_08009190
    mov ip, r0
    ldrh r0, [r4]
    mov r8, r0
    ldrh r6, [r4, #0xc]
    ldrh r5, [r4, #0xa]
    movs r3, #0
    movs r2, #0x80
    lsls r2, r2, #2
    adds r1, r4, #0
    adds r1, #0x20
.L08009288:
    mov r0, r8
    ands r0, r2
    cmp r0, #0
    beq .L080092B0
    mov r0, ip
    ands r0, r2
    cmp r0, #0
    bne .L080092AA
    movs r7, #0
    ldrsh r0, [r1, r7]
    cmp r0, r5
    beq .L080092A4
    adds r0, #1
    b .L080092AE
.L080092A4:
    orrs r3, r2
    subs r0, r0, r6
    b .L080092AE
.L080092AA:
    orrs r3, r2
    movs r0, #0
.L080092AE:
    strh r0, [r1]
.L080092B0:
    subs r1, #2
    lsrs r2, r2, #1
    cmp r2, #0
    bne .L08009288
    strh r3, [r4, #8]
    adds r0, r3, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080092C8
func_080092C8: @ 0x080092C8
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    lsls r1, r1, #0x10
    lsrs r6, r1, #0x10
    ldrh r5, [r4]
    movs r3, #0x80
    lsls r3, r3, #2
    adds r2, r4, #0
    adds r2, #0x20
    ldrh r0, [r4, #0xa]
    subs r1, r6, r0
.L080092DE:
    adds r0, r5, #0
    ands r0, r3
    cmp r0, #0
    beq .L080092EC
    ldrh r0, [r2]
    adds r0, r0, r1
    strh r0, [r2]
.L080092EC:
    subs r2, #2
    lsrs r3, r3, #1
    cmp r3, #0
    bne .L080092DE
    strh r6, [r4, #0xa]
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    .section .text.tail08009300, "ax", %progbits
    thumb_func_start func_08009300
func_08009300: @ 0x08009300
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    movs r0, #0x10
    bl __builtin_new
    str r4, [r0]
    movs r2, #0
    movs r1, #0
    strh r1, [r0, #4]
    str r1, [r0, #8]
    strb r2, [r0, #0xc]
    strh r1, [r0, #0xe]
    str r0, [r5]
    adds r0, r5, #0
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_08009324
func_08009324: @ 0x08009324
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r0, [r5]
    bl __builtin_delete
    movs r0, #1
    ands r0, r4
    cmp r0, #0
    beq .L0800933E
    adds r0, r5, #0
    bl __builtin_delete
.L0800933E:
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_08009344
func_08009344: @ 0x08009344
    ldr r2, [r0]
    ldr r0, [r2]
    str r1, [r2]
    bx lr

    thumb_func_start func_0800934C
func_0800934C: @ 0x0800934C
    push {r4, lr}
    adds r4, r2, #0
    ldr r2, [r0]
    lsls r1, r1, #0x10
    asrs r0, r1, #0x10
    cmp r0, #0
    bge .L0800935C
    rsbs r0, r0, #0
.L0800935C:
    rsbs r0, r0, #0
    rsbs r1, r3, #0
    orrs r1, r3
    lsrs r1, r1, #0x1f
    strh r0, [r2, #4]
    str r4, [r2, #8]
    strb r1, [r2, #0xc]
    ldr r0, .L08009374 @ =0x0000FFFF
    strh r0, [r2, #0xe]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08009374: .4byte 0x0000FFFF

    thumb_func_start func_08009378
func_08009378: @ 0x08009378
    push {r4, r5, lr}
    adds r5, r2, #0
    adds r4, r3, #0
    ldr r3, [r0]
    lsls r1, r1, #0x10
    asrs r2, r1, #0x10
    cmp r2, #0
    bge .L0800938A
    rsbs r2, r2, #0
.L0800938A:
    rsbs r0, r4, #0
    orrs r0, r4
    lsrs r0, r0, #0x1f
    movs r1, #0
    strh r2, [r3, #4]
    str r5, [r3, #8]
    strb r0, [r3, #0xc]
    strh r1, [r3, #0xe]
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_080093A0
func_080093A0: @ 0x080093A0
    ldr r2, [r0]
    ldrh r0, [r2, #4]
    strh r1, [r2, #4]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bx lr

    thumb_func_start func_080093AC
func_080093AC: @ 0x080093AC
    push {r4, r5, r6, r7, lr}
    ldr r5, [r0]
    movs r0, #4
    ldrsh r7, [r5, r0]
    cmp r7, #0
    beq .L0800949C
    ldrh r4, [r5, #0xe]
    ldr r0, [r5, #8]
    cmp r0, #0
    beq .L08009422
    movs r6, #0
    cmp r0, #1
    beq .L080093CE
    cmp r0, #2
    bne .L080093D0
    movs r6, #0xc0
    b .L080093D0
.L080093CE:
    movs r6, #0x80
.L080093D0:
    ldr r3, [r5]
    cmp r3, #0
    beq .L080093DC
    adds r2, r3, #0
    adds r2, #0x50
    b .L080093DE
.L080093DC:
    ldr r2, .L080093F4 @ =0x04000050
.L080093DE:
    ldrh r1, [r2]
    ldr r0, .L080093F8 @ =0x0000FF3F
    ands r0, r1
    orrs r0, r6
    strh r0, [r2]
    cmp r3, #0
    beq .L080093FC
    adds r1, r3, #0
    adds r1, #0x54
    b .L080093FE
    .align 2, 0
.L080093F4: .4byte 0x04000050
.L080093F8: .4byte 0x0000FF3F
.L080093FC:
    ldr r1, .L08009408 @ =0x04000054
.L080093FE:
    ldr r0, .L0800940C @ =0x0000FFFE
    cmp r4, r0
    bls .L08009410
    movs r0, #0x10
    b .L08009420
    .align 2, 0
.L08009408: .4byte 0x04000054
.L0800940C: .4byte 0x0000FFFE
.L08009410:
    cmp r4, #0
    bne .L08009418
    movs r0, #0
    b .L08009420
.L08009418:
    lsls r0, r4, #4
    subs r0, r0, r4
    lsrs r0, r0, #0x10
    adds r0, #1
.L08009420:
    strh r0, [r1]
.L08009422:
    ldrb r0, [r5, #0xc]
    cmp r0, #0
    beq .L08009460
    ldr r0, .L08009434 @ =0x0000FFFE
    cmp r4, r0
    bls .L08009438
    movs r1, #0xf
    b .L0800944A
    .align 2, 0
.L08009434: .4byte 0x0000FFFE
.L08009438:
    cmp r4, #0
    bne .L08009440
    movs r1, #0
    b .L0800944A
.L08009440:
    lsls r0, r4, #3
    subs r0, r0, r4
    lsls r0, r0, #1
    lsrs r0, r0, #0x10
    adds r1, r0, #1
.L0800944A:
    lsls r0, r1, #4
    orrs r1, r0
    lsls r0, r1, #8
    orrs r1, r0
    ldr r0, [r5]
    cmp r0, #0
    beq .L0800945C
    adds r0, #0x4c
    b .L0800945E
.L0800945C:
    ldr r0, .L0800946C @ =0x0400004C
.L0800945E:
    strh r1, [r0]
.L08009460:
    cmp r7, #0
    blt .L08009474
    ldr r0, .L08009470 @ =0x0000FFFF
    cmp r4, r0
    beq .L08009478
    b .L0800947E
    .align 2, 0
.L0800946C: .4byte 0x0400004C
.L08009470: .4byte 0x0000FFFF
.L08009474:
    cmp r4, #0
    bne .L0800947E
.L08009478:
    movs r0, #0
    strh r0, [r5, #4]
    b .L0800949E
.L0800947E:
    adds r0, r4, r7
    cmp r0, #0
    bge .L08009488
    movs r0, #0
    b .L08009490
.L08009488:
    ldr r1, .L08009498 @ =0x0000FFFF
    cmp r0, r1
    ble .L08009490
    adds r0, r1, #0
.L08009490:
    strh r0, [r5, #0xe]
    movs r0, #1
    b .L0800949E
    .align 2, 0
.L08009498: .4byte 0x0000FFFF
.L0800949C:
    movs r0, #0
.L0800949E:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_080094A4
func_080094A4: @ 0x080094A4
    ldr r0, [r0]
    movs r1, #4
    ldrsh r0, [r0, r1]
    bx lr

    thumb_func_start func_080094AC
func_080094AC: @ 0x080094AC
    push {lr}
    adds r0, #0xc
    bl func_080093AC
    pop {r1}
    bx r1
