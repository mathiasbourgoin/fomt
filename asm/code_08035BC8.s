    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08035C04
func_08035C04: @ 0x08035C04
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r7, .L08035C48 @ =0x0000022F
    ldr r0, .L08035C4C @ =0x00000233
    mov r8, r0
    ldr r5, [r4, #0x34]
    ldr r1, .L08035C50 @ =0x00001CD4
    adds r6, r5, r1
    adds r0, r6, #0
    bl func_080A0490
    cmp r0, #3
    bne .L08035C94
    ldrh r0, [r4, #4]
    cmp r0, #0x1d
    bne .L08035C94
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08035C42
    ldr r2, .L08035C54 @ =0x0000216B
    adds r0, r5, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne .L08035C5C
.L08035C42:
    ldr r7, .L08035C58 @ =0x0000023F
    b .L08035C94
    .align 2, 0
.L08035C48: .4byte 0x0000022F
.L08035C4C: .4byte 0x00000233
.L08035C50: .4byte 0x00001CD4
.L08035C54: .4byte 0x0000216B
.L08035C58: .4byte 0x0000023F
.L08035C5C:
    adds r0, r6, #0
    bl func_080A0384
    cmp r0, #0
    beq .L08035C94
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi .L08035C94
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
    beq .L08035C94
    ldr r7, .L08035CB0 @ =0x00000247
    ldr r0, .L08035CB4 @ =0x0000024B
    mov r8, r0
.L08035C94:
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
.L08035CB0: .4byte 0x00000247
.L08035CB4: .4byte 0x0000024B

    thumb_func_start func_08035CB8
func_08035CB8: @ 0x08035CB8
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble .L08035CCC
    adds r0, r5, #0
    bl func_08035C04
.L08035CCC:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
