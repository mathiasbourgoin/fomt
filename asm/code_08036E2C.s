	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED
    thumb_func_start func_08036E70
func_08036E70: @ 0x08036E70
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    ldr r1, .L08036EA0 @ =0x00001CD4
    adds r0, r0, r1
    bl func_080A0384
    adds r6, r0, #0
    cmp r0, #0
    beq .L08036EE0
    ldr r5, .L08036EA4 @ =0x00000267
    ldr r7, .L08036EA8 @ =0x0000026F
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi .L08036EAC
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08036ED0
    movs r5, #0xc
    b .L08036ED0
    .align 2, 0
.L08036EA0: .4byte 0x00001CD4
.L08036EA4: .4byte 0x00000267
.L08036EA8: .4byte 0x0000026F
.L08036EAC:
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08036EC0
    ldr r5, .L08036EBC @ =0x00000277
    b .L08036ED0
    .align 2, 0
.L08036EBC: .4byte 0x00000277
.L08036EC0:
    adds r0, r6, #0
    bl func_0809EAE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08036ED0
    ldr r5, .L08036EE8 @ =0x0000026B
    ldr r7, .L08036EEC @ =0x00000273
.L08036ED0:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08035908
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_08035940
.L08036EE0:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08036EE8: .4byte 0x0000026B
.L08036EEC: .4byte 0x00000273
.L08036EF0:
    .byte 0x30, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0xFE, 0xF7, 0x03, 0xF8, 0x01, 0x2C, 0x02, 0xDD, 0x28, 0x1C
    .byte 0xFF, 0xF7, 0xB6, 0xFF, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x84, 0xB0
    .byte 0x05, 0x1C, 0x68, 0x6B, 0x10, 0x49, 0x40, 0x18, 0x69, 0xF0, 0x34, 0xFA, 0x04, 0x1C, 0x00, 0x2C
    .byte 0x1C, 0xD0, 0x28, 0x1C, 0xFF, 0xF7, 0xA4, 0xFF, 0x20, 0x1C, 0x67, 0xF0, 0xD9, 0xFD, 0x00, 0x06
    .byte 0x01, 0x24, 0x00, 0x28, 0x00, 0xD0, 0x04, 0x24, 0x8C, 0x20, 0xC9, 0xF7, 0x4B, 0xFB, 0x00, 0x22
    .byte 0x00, 0x92, 0x01, 0x94, 0x02, 0x92, 0x03, 0xA9, 0x0A, 0x70, 0x29, 0x1C, 0x04, 0x22, 0x1B, 0x23
    .byte 0xFB, 0xF7, 0xB4, 0xFA, 0x03, 0xE0, 0x00, 0x00, 0xD4, 0x1C, 0x00, 0x00, 0x00, 0x20, 0x04, 0xB0
    .byte 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x84, 0xB0, 0x04, 0x1C, 0x0E, 0x1C
    .byte 0x20, 0x69, 0x00, 0x28, 0x3D, 0xD0, 0x60, 0x6B, 0x0B, 0x49, 0x40, 0x18, 0x69, 0xF0, 0x02, 0xFA
    .byte 0x00, 0x28, 0x36, 0xD0, 0x67, 0xF0, 0xA8, 0xFD, 0x3B, 0x28, 0x32, 0xD8, 0x20, 0x1C, 0xFE, 0xF7
    .byte 0xA7, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x2C, 0xD0, 0x20, 0x1C, 0x48, 0x30, 0x01, 0x88, 0x05, 0x1C
    .byte 0x00, 0x29, 0x03, 0xD0, 0x48, 0x1E, 0x23, 0xE0, 0xD4, 0x1C, 0x00, 0x00, 0x69, 0x46, 0x06, 0x48
    .byte 0x8C, 0xC8, 0x8C, 0xC1, 0x00, 0x68, 0x08, 0x60, 0x9A, 0xF0, 0x14, 0xF9, 0x64, 0x21, 0x99, 0xF0
    .byte 0x87, 0xFF, 0x00, 0x23, 0x6A, 0x46, 0x04, 0xE0, 0x14, 0x15, 0x0F, 0x08, 0x40, 0x1A, 0x04, 0x32
    .byte 0x01, 0x33, 0x03, 0x2B, 0x06, 0xD8, 0x11, 0x78, 0x88, 0x42, 0xF7, 0xD2, 0x51, 0x88, 0x20, 0x1C
    .byte 0xFE, 0xF7, 0x92, 0xFC, 0x9A, 0xF0, 0xFE, 0xF8, 0x78, 0x21, 0x99, 0xF0, 0x71, 0xFF, 0x78, 0x30
    .byte 0x28, 0x80, 0x20, 0x1C, 0x31, 0x1C, 0xFD, 0xF7, 0x5D, 0xFF, 0x04, 0xB0, 0xF0, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00, 0x40, 0x6B, 0x70, 0x47

    @ 36ef0:       b530            push    {r4, r5, lr}
    @ 36ef2:       1c05            adds    r5, r0, #0
    @ 36ef4:       1c0c            adds    r4, r1, #0
    @ 36ef6:       f7fe f803       bl      func_08034F00
    @ 36efa:       2c01            cmp     r4, #1
    @ 36efc:       dd02            ble.n   0x36f04
    @ 36efe:       1c28            adds    r0, r5, #0
    @ 36f00:       f7ff ffb6       bl      func_08036E70
    @ 36f04:       bc30            pop     {r4, r5}
    @ 36f06:       bc01            pop     {r0}
    @ 36f08:       4700            bx      r0
    @ 36f0a:       0000            movs    r0, r0
    @ 36f0c:       b530            push    {r4, r5, lr}
    @ 36f0e:       b084            sub     sp, #16
    @ 36f10:       1c05            adds    r5, r0, #0
    @ 36f12:       6b68            ldr     r0, [r5, #52]   @ 0x34
    @ 36f14:       4910            ldr     r1, [pc, #64]   @ (0x36f58)
    @ 36f16:       1840            adds    r0, r0, r1
    @ 36f18:       f069 fa34       bl      func_080A0384
    @ 36f1c:       1c04            adds    r4, r0, #0
    @ 36f1e:       2c00            cmp     r4, #0
    @ 36f20:       d01c            beq.n   0x36f5c
    @ 36f22:       1c28            adds    r0, r5, #0
    @ 36f24:       f7ff ffa4       bl      func_08036E70
    @ 36f28:       1c20            adds    r0, r4, #0
    @ 36f2a:       f067 fdd9       bl      func_0809EAE0
    @ 36f2e:       0600            lsls    r0, r0, #24
    @ 36f30:       2401            movs    r4, #1
    @ 36f32:       2800            cmp     r0, #0
    @ 36f34:       d000            beq.n   0x36f38
    @ 36f36:       2404            movs    r4, #4
    @ 36f38:       208c            movs    r0, #140        @ 0x8c
    @ 36f3a:       f7c9 fb4b       bl      __builtin_new
    @ 36f3e:       2200            movs    r2, #0
    @ 36f40:       9200            str     r2, [sp, #0]
    @ 36f42:       9401            str     r4, [sp, #4]
    @ 36f44:       9202            str     r2, [sp, #8]
    @ 36f46:       a903            add     r1, sp, #12
    @ 36f48:       700a            strb    r2, [r1, #0]
    @ 36f4a:       1c29            adds    r1, r5, #0
    @ 36f4c:       2204            movs    r2, #4
    @ 36f4e:       231b            movs    r3, #27
    @ 36f50:       f7fb fab4       bl      func_080324BC
    @ 36f54:       e003            b.n     0x36f5e
    @ 36f56:       0000            movs    r0, r0
    @ 36f58:       1cd4            adds    r4, r2, #3
    @ 36f5a:       0000            movs    r0, r0
    @ 36f5c:       2000            movs    r0, #0
    @ 36f5e:       b004            add     sp, #16
    @ 36f60:       bc30            pop     {r4, r5}
    @ 36f62:       bc02            pop     {r1}
    @ 36f64:       4708            bx      r1
    @ 36f66:       0000            movs    r0, r0
    @ 36f68:       b5f0            push    {r4, r5, r6, r7, lr}
    @ 36f6a:       b084            sub     sp, #16
    @ 36f6c:       1c04            adds    r4, r0, #0
    @ 36f6e:       1c0e            adds    r6, r1, #0
    @ 36f70:       6920            ldr     r0, [r4, #16]
    @ 36f72:       2800            cmp     r0, #0
    @ 36f74:       d03d            beq.n   0x36ff2
    @ 36f76:       6b60            ldr     r0, [r4, #52]   @ 0x34
    @ 36f78:       490b            ldr     r1, [pc, #44]   @ (0x36fa8)
    @ 36f7a:       1840            adds    r0, r0, r1
    @ 36f7c:       f069 fa02       bl      func_080A0384
    @ 36f80:       2800            cmp     r0, #0
    @ 36f82:       d036            beq.n   0x36ff2
    @ 36f84:       f067 fda8       bl      func_0809EAD8
    @ 36f88:       283b            cmp     r0, #59 @ 0x3b
    @ 36f8a:       d832            bhi.n   0x36ff2
    @ 36f8c:       1c20            adds    r0, r4, #0
    @ 36f8e:       f7fe fda7       bl      func_08035AE0
    @ 36f92:       0600            lsls    r0, r0, #24
    @ 36f94:       2800            cmp     r0, #0
    @ 36f96:       d02c            beq.n   0x36ff2
    @ 36f98:       1c20            adds    r0, r4, #0
    @ 36f9a:       3048            adds    r0, #72 @ 0x48
    @ 36f9c:       8801            ldrh    r1, [r0, #0]
    @ 36f9e:       1c05            adds    r5, r0, #0
    @ 36fa0:       2900            cmp     r1, #0
    @ 36fa2:       d003            beq.n   0x36fac
    @ 36fa4:       1e48            subs    r0, r1, #1
    @ 36fa6:       e023            b.n     0x36ff0
    @ 36fa8:       1cd4            adds    r4, r2, #3
    @ 36faa:       0000            movs    r0, r0
    @ 36fac:       4669            mov     r1, sp
    @ 36fae:       4806            ldr     r0, [pc, #24]   @ (0x36fc8)
    @ 36fb0:       c88c            ldmia   r0!, {r2, r3, r7}
    @ 36fb2:       c18c            stmia   r1!, {r2, r3, r7}
    @ 36fb4:       6800            ldr     r0, [r0, #0]
    @ 36fb6:       6008            str     r0, [r1, #0]
    @ 36fb8:       f09a f914       bl      0xd11e4
    @ 36fbc:       2164            movs    r1, #100        @ 0x64
    @ 36fbe:       f099 ff87       bl      0xd0ed0
    @ 36fc2:       2300            movs    r3, #0
    @ 36fc4:       466a            mov     r2, sp
    @ 36fc6:       e004            b.n     0x36fd2
    @ 36fc8:       1514            asrs    r4, r2, #20
    @ 36fca:       080f            lsrs    r7, r1, #32
    @ 36fcc:       1a40            subs    r0, r0, r1
    @ 36fce:       3204            adds    r2, #4
    @ 36fd0:       3301            adds    r3, #1
    @ 36fd2:       2b03            cmp     r3, #3
    @ 36fd4:       d806            bhi.n   0x36fe4
    @ 36fd6:       7811            ldrb    r1, [r2, #0]
    @ 36fd8:       4288            cmp     r0, r1
    @ 36fda:       d2f7            bcs.n   0x36fcc
    @ 36fdc:       8851            ldrh    r1, [r2, #2]
    @ 36fde:       1c20            adds    r0, r4, #0
    @ 36fe0:       f7fe fc92       bl      0x35908
    @ 36fe4:       f09a f8fe       bl      0xd11e4
    @ 36fe8:       2178            movs    r1, #120        @ 0x78
    @ 36fea:       f099 ff71       bl      0xd0ed0
    @ 36fee:       3078            adds    r0, #120        @ 0x78
    @ 36ff0:       8028            strh    r0, [r5, #0]
    @ 36ff2:       1c20            adds    r0, r4, #0
    @ 36ff4:       1c31            adds    r1, r6, #0
    @ 36ff6:       f7fd ff5d       bl      0x34eb4
    @ 36ffa:       b004            add     sp, #16
    @ 36ffc:       bcf0            pop     {r4, r5, r6, r7}
    @ 36ffe:       bc01            pop     {r0}
    @ 37000:       4700            bx      r0
    @ 37002:       0000            movs    r0, r0
    @ 37004:       6b40            ldr     r0, [r0, #52]   @ 0x34
    @ 37006:       4770            bx      lr

    thumb_func_start func_08037008
func_08037008: @ 0x08037008
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r2, #0
    ldr r6, [sp, #0x14]
    str r3, [sp]
    movs r3, #2
    bl __12AActorEntityP10GameObjectRC13ActorLocationUiUi
    ldr r0, .L08037044 @ =vtable_unk_080E7328
    str r0, [r4, #0x14]
    str r5, [r4, #0x30]
    adds r1, r4, #0
    adds r1, #0x34
    movs r0, #0
    strh r0, [r4, #0x34]
    strh r0, [r1, #2]
    strh r0, [r1, #4]
    strh r0, [r1, #6]
    strh r6, [r4, #0x3c]
    strh r0, [r4, #0x3e]
    adds r1, #0xc
    movs r0, #1
    strb r0, [r1]
    adds r0, r4, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08037044: .4byte vtable_unk_080E7328

    thumb_func_start func_08037048
func_08037048: @ 0x08037048
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, .L08037090 @ =vtable_unk_080E7328
    str r0, [r5, #0x14]
    ldr r4, [r5, #0x30]
    mov r0, sp
    adds r1, r5, #0
    bl GetLocation__C12AActorEntity
    mov r0, sp
    ldm r0!, {r1, r2}
    stm r4!, {r1, r2}
    ldr r0, .L08037094 @ =__vt_7AEntity
    str r0, [r5, #0x14]
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq .L0803707A
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0803707A:
    movs r0, #1
    ands r0, r6
    cmp r0, #0
    beq .L08037088
    adds r0, r5, #0
    bl __builtin_delete
.L08037088:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08037090: .4byte vtable_unk_080E7328
.L08037094: .4byte __vt_7AEntity

    thumb_func_start func_08037098
func_08037098: @ 0x08037098
    push {r4, r5, lr}
    adds r3, r0, #0
    movs r4, #0
    movs r5, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r2, r0, #0
    cmp r0, #1
    beq .L080370C2
    cmp r0, #1
    bgt .L080370B4
    cmp r0, #0
    beq .L080370BE
    b .L080370CC
.L080370B4:
    cmp r2, #2
    beq .L080370C6
    cmp r2, #3
    beq .L080370CA
    b .L080370CC
.L080370BE:
    adds r5, r1, #0
    b .L080370CC
.L080370C2:
    rsbs r5, r1, #0
    b .L080370CC
.L080370C6:
    rsbs r4, r1, #0
    b .L080370CC
.L080370CA:
    adds r4, r1, #0
.L080370CC:
    str r4, [r3, #0x18]
    str r5, [r3, #0x1c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080370D8:
    .byte 0x10, 0xB5, 0x00, 0x69, 0x00, 0x28, 0x16, 0xD0
    .byte 0x00, 0x24, 0x02, 0x1C, 0x30, 0x32, 0x00, 0x21, 0xD0, 0x89, 0x00, 0x28, 0x04, 0xD0, 0x10, 0x20
    .byte 0x11, 0x5E, 0x48, 0x42, 0x08, 0x43, 0xC1, 0x0F, 0x00, 0x29, 0x05, 0xD0, 0x10, 0x1C, 0x27, 0xF0
    .byte 0xC9, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD0, 0x01, 0x24, 0x20, 0x1C, 0x00, 0xE0, 0x01, 0x20
    .byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_08037118
func_08037118: @ 0x08037118
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r7, r0, #0
    adds r4, r1, #0
    ldr r1, [r7, #8]
    ldr r2, [r7, #0xc]
    ldr r0, [r7, #0x18]
    adds r0, r0, r1
    mov sb, r0
    ldr r0, [r7, #0x1c]
    adds r0, r0, r2
    mov r8, r0
    asrs r1, r1, #0x10
    str r1, [sp]
    asrs r6, r2, #0x10
    asrs r0, r0, #0x10
    subs r5, r0, r6
    mov r1, sb
    asrs r0, r1, #0x10
    ldr r1, [sp]
    subs r1, r0, r1
    mov sl, r1
    cmp r5, #0
    ble .L08037182
    ldr r1, [r4]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble .L08037162
    adds r0, r4, #0
    bl func_080AB85C
    ldr r0, [r4]
    b .L08037164
.L08037162:
    adds r0, r1, #0
.L08037164:
    cmp r5, r0
    ble .L08037182
    ldr r1, [r4]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble .L0803717A
    adds r0, r4, #0
    bl func_080AB85C
    ldr r0, [r4]
    b .L0803717C
.L0803717A:
    adds r0, r1, #0
.L0803717C:
    adds r0, r6, r0
    lsls r0, r0, #0x10
    mov r8, r0
.L08037182:
    cmp r5, #0
    bge .L080371B8
    ldr r1, [r4, #4]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge .L08037198
    adds r0, r4, #0
    bl func_080AB8D0
    ldr r0, [r4, #4]
    b .L0803719A
.L08037198:
    adds r0, r1, #0
.L0803719A:
    cmp r5, r0
    bge .L080371B8
    ldr r1, [r4, #4]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge .L080371B0
    adds r0, r4, #0
    bl func_080AB8D0
    ldr r0, [r4, #4]
    b .L080371B2
.L080371B0:
    adds r0, r1, #0
.L080371B2:
    adds r0, r6, r0
    lsls r0, r0, #0x10
    mov r8, r0
.L080371B8:
    mov r0, sl
    cmp r0, #0
    bge .L080371F2
    ldr r1, [r4, #8]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge .L080371D0
    adds r0, r4, #0
    bl func_080AB948
    ldr r0, [r4, #8]
    b .L080371D2
.L080371D0:
    adds r0, r1, #0
.L080371D2:
    cmp sl, r0
    bge .L080371F2
    ldr r1, [r4, #8]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge .L080371E8
    adds r0, r4, #0
    bl func_080AB948
    ldr r0, [r4, #8]
    b .L080371EA
.L080371E8:
    adds r0, r1, #0
.L080371EA:
    ldr r1, [sp]
    adds r0, r1, r0
    lsls r0, r0, #0x10
    mov sb, r0
.L080371F2:
    mov r0, sl
    cmp r0, #0
    ble .L0803722C
    ldr r1, [r4, #0xc]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble .L0803720A
    adds r0, r4, #0
    bl func_080AB9C4
    ldr r0, [r4, #0xc]
    b .L0803720C
.L0803720A:
    adds r0, r1, #0
.L0803720C:
    cmp sl, r0
    ble .L0803722C
    ldr r1, [r4, #0xc]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble .L08037222
    adds r0, r4, #0
    bl func_080AB9C4
    ldr r0, [r4, #0xc]
    b .L08037224
.L08037222:
    adds r0, r1, #0
.L08037224:
    ldr r1, [sp]
    adds r0, r1, r0
    lsls r0, r0, #0x10
    mov sb, r0
.L0803722C:
    mov r0, sb
    str r0, [r7, #8]
    mov r1, r8
    str r1, [r7, #0xc]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    .section .text.tail08037250, "ax", %progbits
.L08037250:
    .byte 0x82, 0xB0, 0x6B, 0x46, 0x00, 0x21, 0x6A, 0x46, 0x11, 0x80, 0x59, 0x80, 0x99, 0x80, 0xD9, 0x80
    .byte 0x00, 0x99, 0x01, 0x9A, 0x41, 0x63, 0x82, 0x63, 0x02, 0xB0, 0x70, 0x47

    thumb_func_start func_0803726C
func_0803726C: @ 0x0803726C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x60
    adds r7, r0, #0
    ldr r4, [r7]
    ldrh r0, [r7, #4]
    mov r8, r0
    ldr r0, [r4]
    ldr r1, [r0, #0x14]
    adds r0, r4, #0
    bl _call_via_r1
    cmp r0, r8
    beq .L0803728E
    b .L08037402
.L0803728E:
    ldr r1, [r4]
    mov r0, sp
    ldr r3, [r1, #0x34]
    adds r1, r4, #0
    mov r2, r8
    bl _call_via_r3
    ldr r1, [r7, #0x14]
    add r0, sp, #0x40
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    ldr r1, [sp, #0x40]
    ldr r2, [sp, #0x44]
    str r1, [sp, #0x58]
    str r2, [sp, #0x5c]
    add r4, sp, #0xc
    movs r2, #0x20
    mov sb, r2
    movs r5, #0
    movs r1, #0x21
    str r1, [sp, #0xc]
    movs r0, #0x21
    rsbs r0, r0, #0
    str r0, [r4, #4]
    str r0, [r4, #8]
    str r1, [r4, #0xc]
    add r1, sp, #0x20
    mov r0, sp
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldr r0, [sp, #0x58]
    ldr r1, [sp, #0x5c]
    str r0, [sp, #0x2c]
    str r1, [sp, #0x30]
    mov r1, sb
    str r1, [r4, #0x28]
    str r5, [r4, #0x2c]
    str r5, [r4, #0x30]
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    adds r3, r0, #0
    mov sb, r4
    cmp r3, #0
    beq .L08037310
    ldrh r0, [r3, #4]
    cmp r0, r8
    bne .L08037310
    ldr r1, [r3, #0x14]
    add r4, sp, #0x48
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    mov r0, sb
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
.L08037310:
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4a
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    beq .L08037340
    ldrh r0, [r3, #4]
    cmp r0, r8
    bne .L08037340
    ldr r1, [r3, #0x14]
    add r4, sp, #0x50
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    mov r0, sb
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
.L08037340:
    adds r2, r7, #0
    adds r2, #0x34
    movs r3, #4
    ldrsh r0, [r2, r3]
    movs r6, #0x34
    ldrsh r1, [r7, r6]
    subs r0, r0, r1
    cmp r0, #0
    ble .L0803736A
    movs r1, #6
    ldrsh r0, [r2, r1]
    movs r3, #2
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    cmp r0, #0
    ble .L0803736A
    mov r0, sb
    adds r1, r2, #0
    movs r2, #0
    bl func_080ABA90
.L0803736A:
    ldrh r4, [r7, #0x3e]
    cmp r4, #0
    beq .L080373EC
    ldr r5, [r7, #0x18]
    ldr r6, [r7, #0x1c]
    cmp r5, #0
    bge .L08037390
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x34]
    cmn r1, r0
    bge .L0803738A
    add r0, sp, #0xc
    bl func_080AB948
    ldr r0, [sp, #0x14]
    b .L0803738C
.L0803738A:
    adds r0, r1, #0
.L0803738C:
    cmp r0, #0
    bge .L080373E4
.L08037390:
    cmp r5, #0
    ble .L080373AC
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x34]
    cmp r1, r0
    ble .L080373A6
    add r0, sp, #0xc
    bl func_080AB9C4
    ldr r0, [sp, #0x18]
    b .L080373A8
.L080373A6:
    adds r0, r1, #0
.L080373A8:
    cmp r0, #0
    ble .L080373E4
.L080373AC:
    cmp r6, #0
    bge .L080373C8
    ldr r1, [sp, #0x10]
    ldr r0, [sp, #0x34]
    cmn r1, r0
    bge .L080373C2
    add r0, sp, #0xc
    bl func_080AB8D0
    ldr r0, [sp, #0x10]
    b .L080373C4
.L080373C2:
    adds r0, r1, #0
.L080373C4:
    cmp r0, #0
    bge .L080373E4
.L080373C8:
    cmp r6, #0
    ble .L080373E8
    ldr r1, [sp, #0xc]
    ldr r0, [sp, #0x34]
    cmp r1, r0
    ble .L080373DE
    add r0, sp, #0xc
    bl func_080AB85C
    ldr r0, [sp, #0xc]
    b .L080373E0
.L080373DE:
    adds r0, r1, #0
.L080373E0:
    cmp r0, #0
    bgt .L080373E8
.L080373E4:
    movs r4, #0
    b .L080373F8
.L080373E8:
    subs r4, #1
    b .L080373F8
.L080373EC:
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x40]
    adds r0, r7, #0
    bl _call_via_r1
    adds r4, r0, #0
.L080373F8:
    strh r4, [r7, #0x3e]
    adds r0, r7, #0
    mov r1, sb
    bl func_08037118
.L08037402:
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    beq .L0803740C
    subs r0, #1
    b .L0803740E
.L0803740C:
    ldrh r0, [r7, #0x26]
.L0803740E:
    strh r0, [r7, #0x24]
    ldr r2, [r7, #0x10]
    cmp r2, #0
    beq .L08037420
    ldr r0, [r2, #4]
    ldr r1, [r0, #0xc]
    adds r0, r2, #0
    bl _call_via_r1
.L08037420:
    add sp, #0x60
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    .section .text.tail08037434, "ax", %progbits
    thumb_func_start func_08037434
func_08037434: @ 0x08037434
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x40
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0803744A
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x3c]
    adds r0, r4, #0
    bl _call_via_r1
.L0803744A:
    movs r0, #0
    strh r0, [r4, #0x3e]
    adds r0, r4, #0
    bl vfunc_10__7AEntity
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

	.if 0
	thumb_func_start func_0803745C
func_0803745C: @ 0x0803745C
    push {r4, lr}
    adds r4, r0, #0
    bl vfunc_14__7AEntity
    adds r4, #0x40
    movs r0, #0
    strb r0, [r4]
    pop {r4}
	pop {r0}
	bx r0
	.endif

	.section .text.tail08037470, "ax", %progbits

	thumb_func_start func_08037470
func_08037470: @ 0x08037470
    push {r4, lr}
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r4, #0xe
    ldrsh r3, [r1, r4]
    subs r1, r2, #7
    strh r1, [r0]
    adds r1, r3, #0
    subs r1, #9
    strh r1, [r0, #2]
    adds r2, #7
    strh r2, [r0, #4]
    adds r3, #5
    strh r3, [r0, #6]
    pop {r4}
    pop {r2}
    bx r2
    .align 2, 0

    thumb_func_start func_08037494
func_08037494: @ 0x08037494
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    movs r1, #0
    subs r0, #6
    cmp r0, #0xe
    bls .L080374B8
    movs r1, #1
.L080374B8:
    lsls r4, r1, #2
    adds r4, r4, r1
    lsls r4, r4, #2
    ldr r0, .L08037538 @ =gUnk_080F1538
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #5
    bl func_080AB82C
    lsls r1, r0, #2
    adds r4, r4, r1
    adds r7, r0, #0
    movs r5, #0x3c
    ldrb r0, [r4, #2]
    muls r0, r5, r0
    bl func_080AB788
    ldrb r1, [r4, #1]
    muls r1, r5, r1
    adds r5, r1, r0
    movs r0, #4
    bl func_080AB788
    adds r1, r0, #0
    cmp r1, #0
    beq .L08037508
    cmp r1, #3
    beq .L08037508
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r0, [r4]
    bl func_080AB7A4
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq .L08037508
    adds r0, r6, #0
    bl SetAnimFacing__12AActorEntityUi
.L08037508:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08037628
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08037098
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08037618
    adds r1, r0, #0
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq .L0803752E
    adds r0, r6, #0
    bl SetAnim__12AActorEntityUi
.L0803752E:
    adds r0, r5, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08037538: .4byte gUnk_080F1538
