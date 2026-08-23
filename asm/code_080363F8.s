    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036430
func_08036430: @ 0x08036430
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r7, .L08036474 @ =0x00000691
    ldr r0, .L08036478 @ =0x00000695
    mov r8, r0
    ldr r5, [r4, #0x34]
    ldr r1, .L0803647C @ =0x00001CD4
    adds r6, r5, r1
    adds r0, r6, #0
    bl func_080A0490
    cmp r0, #0x13
    bne .L080364C0
    ldrh r0, [r4, #4]
    cmp r0, #0x1d
    bne .L080364C0
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803646E
    ldr r2, .L08036480 @ =0x0000216C
    adds r0, r5, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne .L08036488
.L0803646E:
    ldr r7, .L08036484 @ =0x000006A1
    b .L080364C0
    .align 2, 0
.L08036474: .4byte 0x00000691
.L08036478: .4byte 0x00000695
.L0803647C: .4byte 0x00001CD4
.L08036480: .4byte 0x0000216C
.L08036484: .4byte 0x000006A1
.L08036488:
    adds r0, r6, #0
    bl func_080A0384
    cmp r0, #0
    beq .L080364C0
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi .L080364C0
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    adds r1, r0, #0
    adds r1, #0xa
    adds r0, r5, #0
    bl func_08034C64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080364C0
    ldr r7, .L080364DC @ =0x000006AD
    ldr r0, .L080364E0 @ =0x000006B1
    mov r8, r0
.L080364C0:
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_08035908
    adds r0, r4, #0
    mov r1, r8
    bl func_08035940
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080364DC: .4byte 0x000006AD
.L080364E0: .4byte 0x000006B1

    thumb_func_start func_080364E4
func_080364E4: @ 0x080364E4
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble .L080364F8
    adds r0, r5, #0
    bl func_08036430
.L080364F8:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
