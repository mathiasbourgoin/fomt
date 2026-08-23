    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08010F54
func_08010F54: @ 0x08010F54
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x1c
    adds r6, r0, #0
    ldrb r1, [r6]
    movs r0, #0x11
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r6]
    ldr r0, [r6, #0xc]
    str r0, [r6, #8]
    ldrb r0, [r6, #0x11]
    lsls r1, r0, #0x1e
    movs r3, #3
    lsrs r1, r1, #0x1e
    movs r4, #4
    rsbs r4, r4, #0
    adds r2, r4, #0
    mov r5, sb
    ands r2, r5
    orrs r2, r1
    mov sb, r2
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1b
    adds r0, #1
    adds r5, r0, #1
    cmp r0, #0x1e
    bne .L08010FA2
    lsls r0, r2, #0x1e
    lsrs r0, r0, #0x1e
    adds r0, #1
    ands r0, r3
    ands r2, r4
    orrs r2, r0
    mov sb, r2
    movs r5, #1
.L08010FA2:
    movs r0, #0
    mov r8, r0
    movs r2, #0
    movs r1, #0x14
    adds r1, r1, r6
    mov sl, r1
    adds r0, r6, #0
    adds r0, #0x11
    str r0, [sp, #0x18]
    adds r1, r6, #0
    adds r1, #8
    str r1, [sp, #0x14]
    mov r1, sb
    lsls r0, r1, #0x1e
    lsrs r3, r0, #0x1e
    ldr r4, .L080110EC @ =gUnk_080F0566
.L08010FC2:
    adds r0, r2, r4
    ldrb r1, [r0]
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    cmp r3, r0
    bne .L08010FDA
    lsls r0, r1, #0x19
    lsrs r0, r0, #0x1b
    cmp r5, r0
    bne .L08010FDA
    movs r0, #1
    mov r8, r0
.L08010FDA:
    adds r2, #1
    cmp r2, #0x18
    ble .L08010FC2
    ldr r1, .L080110F0 @ =0x00001CD4
    adds r4, r6, r1
    adds r0, r4, #0
    bl func_080A041C
    cmp r0, #0
    bne .L08011056
    adds r0, r4, #0
    bl func_080A1480
    adds r4, r0, #0
    mov ip, r4
    movs r3, #0xc8
    str r3, [sp, #4]
    ldrb r0, [r6, #0x10]
    lsrs r2, r0, #3
    lsls r1, r2, #3
    subs r1, r1, r2
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    adds r1, r1, r0
    str r1, [sp, #8]
    add r0, sp, #8
    add r2, sp, #4
    cmp r3, r1
    bls .L08011016
    adds r2, r0, #0
.L08011016:
    ldr r7, [r2]
    str r3, [sp, #0xc]
    ldrb r0, [r4]
    lsrs r2, r0, #3
    lsls r1, r2, #3
    subs r1, r1, r2
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    adds r1, r1, r0
    str r1, [sp, #0x10]
    add r2, sp, #0x10
    add r0, sp, #0xc
    cmp r3, r1
    bls .L08011034
    adds r0, r2, #0
.L08011034:
    ldr r0, [r0]
    cmp r7, r0
    bne .L08011056
    mov r0, sb
    lsls r1, r0, #0x1e
    mov r0, ip
    ldrb r2, [r0, #1]
    lsls r0, r2, #0x1e
    cmp r1, r0
    bne .L08011056
    lsls r0, r2, #0x19
    lsrs r0, r0, #0x1b
    adds r0, #1
    cmp r5, r0
    bne .L08011056
    movs r1, #1
    mov r8, r1
.L08011056:
    ldr r5, .L080110F4 @ =0x00001D6C
    adds r4, r6, r5
    adds r0, r4, #0
    bl GetRivalEventCount__C12Bachelorette
    cmp r0, #4
    bne .L08011072
    adds r0, r4, #0
    bl GetDaysSinceRivalEvent__C12Bachelorette
    cmp r0, #5
    bne .L08011072
    movs r0, #1
    mov r8, r0
.L08011072:
    ldr r1, .L080110F8 @ =0x00001E28
    adds r4, r6, r1
    adds r0, r4, #0
    bl GetRivalEventCount__C12Bachelorette
    cmp r0, #4
    bne .L0801108E
    adds r0, r4, #0
    bl GetDaysSinceRivalEvent__C12Bachelorette
    cmp r0, #5
    bne .L0801108E
    movs r5, #1
    mov r8, r5
.L0801108E:
    ldr r0, .L080110FC @ =0x00001EB8
    adds r4, r6, r0
    adds r0, r4, #0
    bl GetRivalEventCount__C12Bachelorette
    cmp r0, #4
    bne .L080110AA
    adds r0, r4, #0
    bl GetDaysSinceRivalEvent__C12Bachelorette
    cmp r0, #5
    bne .L080110AA
    movs r1, #1
    mov r8, r1
.L080110AA:
    ldr r5, .L08011100 @ =0x00001EE4
    adds r4, r6, r5
    adds r0, r4, #0
    bl GetRivalEventCount__C12Bachelorette
    cmp r0, #4
    bne .L080110C6
    adds r0, r4, #0
    bl GetDaysSinceRivalEvent__C12Bachelorette
    cmp r0, #5
    bne .L080110C6
    movs r0, #1
    mov r8, r0
.L080110C6:
    ldr r1, .L08011104 @ =0x00001F38
    adds r4, r6, r1
    adds r0, r4, #0
    bl GetRivalEventCount__C12Bachelorette
    cmp r0, #4
    bne .L080110E2
    adds r0, r4, #0
    bl GetDaysSinceRivalEvent__C12Bachelorette
    cmp r0, #5
    bne .L080110E2
    movs r5, #1
    mov r8, r5
.L080110E2:
    mov r0, r8
    cmp r0, #1
    bne .L08011108
    movs r0, #0
    b .L0801116A
    .align 2, 0
.L080110EC: .4byte gUnk_080F0566
.L080110F0: .4byte 0x00001CD4
.L080110F4: .4byte 0x00001D6C
.L080110F8: .4byte 0x00001E28
.L080110FC: .4byte 0x00001EB8
.L08011100: .4byte 0x00001EE4
.L08011104: .4byte 0x00001F38
.L08011108:
    bl rand
    asrs r2, r0, #2
    movs r0, #0xff
    ands r2, r0
    mov r1, sb
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    beq .L08011138
    cmp r0, #1
    bgt .L08011126
    cmp r0, #0
    beq .L08011130
    b .L0801116C
.L08011126:
    cmp r0, #2
    beq .L0801114A
    cmp r0, #3
    beq .L08011156
    b .L0801116C
.L08011130:
    cmp r2, #0xb3
    bls .L0801116A
    movs r0, #1
    b .L0801116A
.L08011138:
    cmp r2, #0xe5
    bhi .L08011140
    movs r0, #0
    b .L0801116A
.L08011140:
    subs r2, #0xe6
    cmp r2, #0xc
    bls .L0801116A
    movs r0, #3
    b .L0801116A
.L0801114A:
    cmp r2, #0xcd
    bhi .L08011152
    movs r0, #0
    b .L0801116A
.L08011152:
    movs r0, #1
    b .L0801116A
.L08011156:
    cmp r2, #0x7f
    bhi .L0801115E
    movs r0, #0
    b .L0801116A
.L0801115E:
    subs r2, #0x80
    cmp r2, #0x65
    bhi .L08011168
    movs r0, #2
    b .L0801116A
.L08011168:
    movs r0, #4
.L0801116A:
    str r0, [r6, #0xc]
.L0801116C:
    ldr r1, [r6, #8]
    mov r0, sl
    ldr r2, [sp, #0x18]
    bl DayUpdate__4FarmiRC8GameDate
    ldrb r1, [r6, #0x11]
    lsls r0, r1, #0x19
    lsrs r0, r0, #0x1b
    cmp r0, #0
    bne .L080111A0
    lsls r0, r1, #0x1e
    lsrs r7, r0, #0x1e
    ldr r5, .L08011200 @ =0x000009DC
    adds r4, r6, r5
    ldr r1, .L08011204 @ =0x00001AA8
    adds r0, r6, r1
    cmp r4, r0
    bhs .L080111A0
    adds r5, r0, #0
.L08011192:
    adds r0, r4, #0
    adds r1, r7, #0
    bl method_0800AB08__9FieldPlot6Season
    adds r4, #4
    cmp r4, r5
    blo .L08011192
.L080111A0:
    ldr r0, .L08011208 @ =0x00001BD8
    adds r5, r6, r0
    adds r0, r5, #0
    bl func_0800EE60
    ldr r1, .L0801120C @ =0x00001C70
    adds r0, r6, r1
    bl DayUpdate__3Dog
    ldr r1, .L08011210 @ =0x00002C74
    adds r0, r6, r1
    bl func_08011568
    ldr r0, .L08011214 @ =0x00001CD4
    adds r4, r6, r0
    ldr r1, .L08011218 @ =0x0000214C
    adds r2, r6, r1
    mov r0, sl
    str r0, [sp]
    adds r0, r4, #0
    ldr r1, [sp, #0x14]
    adds r3, r5, #0
    bl func_080A0B18
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_0803D7E4
    ldr r1, .L0801121C @ =0x00001F64
    adds r4, r6, r1
    adds r0, r4, #0
    bl func_0809EB70
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080111EA
    b .L08011328
.L080111EA:
    adds r0, r4, #0
    bl func_0809EB68
    cmp r0, #0xd
    bls .L080111F6
    b .L08011318
.L080111F6:
    lsls r0, r0, #2
    ldr r1, .L08011220 @ =.L08011224
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08011200: .4byte 0x000009DC
.L08011204: .4byte 0x00001AA8
.L08011208: .4byte 0x00001BD8
.L0801120C: .4byte 0x00001C70
.L08011210: .4byte 0x00002C74
.L08011214: .4byte 0x00001CD4
.L08011218: .4byte 0x0000214C
.L0801121C: .4byte 0x00001F64
.L08011220: .4byte .L08011224
.L08011224: @ jump table
    .4byte .L08011318 @ case 0
    .4byte .L0801125C @ case 1
    .4byte .L0801127C @ case 2
    .4byte .L08011288 @ case 3
    .4byte .L08011294 @ case 4
    .4byte .L0801129C @ case 5
    .4byte .L080112AA @ case 6
    .4byte .L080112B8 @ case 7
    .4byte .L080112C6 @ case 8
    .4byte .L080112D4 @ case 9
    .4byte .L080112E2 @ case 10
    .4byte .L080112F0 @ case 11
    .4byte .L080112FE @ case 12
    .4byte .L0801130C @ case 13
.L0801125C:
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r4, r6, r5
    adds r0, r4, #0
    bl GetUpgradeLevel__C9FarmHouse
    cmp r0, #1
    bhi .L08011274
    adds r0, r4, #0
    bl UpgradeHouseLevel__9FarmHouse
    b .L08011318
.L08011274:
    adds r0, r4, #0
    bl AddBathroom__9FarmHouse
    b .L08011318
.L0801127C:
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r6, r1
    bl Upgrade__4Coop
    b .L08011318
.L08011288:
    movs r5, #0xbe
    lsls r5, r5, #3
    adds r0, r6, r5
    bl Upgrade__4Barn
    b .L08011318
.L08011294:
    adds r0, r6, #0
    bl func_08010F30
    b .L08011318
.L0801129C:
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r6, r1
    movs r1, #0
    bl SetWindowStyle__9FarmHouseUi
    b .L08011318
.L080112AA:
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r0, r6, r5
    movs r1, #1
    bl SetWindowStyle__9FarmHouseUi
    b .L08011318
.L080112B8:
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r6, r1
    movs r1, #2
    bl SetWindowStyle__9FarmHouseUi
    b .L08011318
.L080112C6:
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r0, r6, r5
    movs r1, #0
    bl SetMailboxStyle__9FarmHouseUi
    b .L08011318
.L080112D4:
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r6, r1
    movs r1, #1
    bl SetMailboxStyle__9FarmHouseUi
    b .L08011318
.L080112E2:
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r0, r6, r5
    movs r1, #2
    bl SetMailboxStyle__9FarmHouseUi
    b .L08011318
.L080112F0:
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r6, r1
    movs r1, #0
    bl SetDoghouseStyle__9FarmHouseUi
    b .L08011318
.L080112FE:
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r0, r6, r5
    movs r1, #1
    bl SetDoghouseStyle__9FarmHouseUi
    b .L08011318
.L0801130C:
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r6, r1
    movs r1, #2
    bl SetDoghouseStyle__9FarmHouseUi
.L08011318:
    ldr r5, .L08011324 @ =0x00001F64
    adds r0, r6, r5
    bl func_0809EBD4
    b .L0801132E
    .align 2, 0
.L08011324: .4byte 0x00001F64
.L08011328:
    adds r0, r4, #0
    bl func_0809EC48
.L0801132E:
    ldr r0, .L08011354 @ =0x00001DAC
    adds r4, r6, r0
    adds r0, r4, #0
    bl func_0809ECE0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080113AA
    adds r0, r4, #0
    bl func_0809ECD8
    cmp r0, #0x24
    beq .L08011378
    cmp r0, #0x24
    bgt .L08011358
    cmp r0, #0x23
    beq .L0801135E
    b .L080113AA
    .align 2, 0
.L08011354: .4byte 0x00001DAC
.L08011358:
    cmp r0, #0x25
    beq .L08011392
    b .L080113AA
.L0801135E:
    movs r1, #0x82
    lsls r1, r1, #3
    adds r4, r6, r1
    adds r0, r4, #0
    bl method_0800C5C4__C4Coop
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080113AA
    adds r0, r4, #0
    bl method_0800C888__4Coop
    b .L080113AA
.L08011378:
    movs r5, #0xbe
    lsls r5, r5, #3
    adds r4, r6, r5
    adds r0, r4, #0
    bl method_0800CF00__C4Barn
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080113AA
    adds r0, r4, #0
    bl method_0800D3A0__4Barn
    b .L080113AA
.L08011392:
    movs r0, #0xbe
    lsls r0, r0, #3
    adds r4, r6, r0
    adds r0, r4, #0
    bl method_0800CF08__C4Barn
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080113AA
    adds r0, r4, #0
    bl method_0800D3B8__4Barn
.L080113AA:
    ldrb r0, [r6, #0x11]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1b
    cmp r0, #0
    bne .L080113C4
    ldr r1, .L080113C0 @ =0x00001AA8
    adds r0, r6, r1
    bl func_0809AE6C
    b .L080113CC
    .align 2, 0
.L080113C0: .4byte 0x00001AA8
.L080113C4:
    ldr r5, .L08011400 @ =0x00001AA8
    adds r0, r6, r5
    bl func_0809ADA8
.L080113CC:
    ldr r1, .L08011404 @ =0x000034C8
    adds r0, r6, r1
    bl func_080A1A4C
    ldr r5, .L08011408 @ =0x000034DC
    adds r0, r6, r5
    bl func_0809C0D4
    ldrb r1, [r6, #3]
    movs r0, #0x7f
    ands r0, r1
    strb r0, [r6, #3]
    ldrb r1, [r6, #4]
    movs r0, #2
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r6, #4]
    add sp, #0x1c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08011400: .4byte 0x00001AA8
.L08011404: .4byte 0x000034C8
.L08011408: .4byte 0x000034DC

    thumb_func_start func_0801140C
func_0801140C: @ 0x0801140C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r7, r4, #0
    adds r7, #0x54
    adds r0, r7, #0
    bl GetValueShipped__C11ShippingBin
    adds r5, r0, #0
    ldr r0, .L08011450 @ =0x00001AA8
    adds r6, r4, r0
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_0809ABD8
    ldr r0, .L08011454 @ =0x000034C5
    adds r4, r4, r0
    ldrb r0, [r4]
    cmp r0, #0
    beq .L0801143E
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_0809ABD8
    movs r0, #0
    strb r0, [r4]
.L0801143E:
    adds r0, r7, #0
    bl ResetValueShipped__11ShippingBin
    rsbs r0, r5, #0
    orrs r0, r5
    lsrs r0, r0, #0x1f
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08011450: .4byte 0x00001AA8
.L08011454: .4byte 0x000034C5

    thumb_func_start func_08011458
func_08011458: @ 0x08011458
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    strb r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08011464
func_08011464: @ 0x08011464
    push {r4, lr}
    adds r4, r0, #0
    adds r2, r1, #0
    cmp r2, #0x63
    bls .L08011470
    movs r2, #0x63
.L08011470:
    ldr r3, [r4]
    lsls r0, r3, #0xe
    lsrs r0, r0, #0x1b
    cmp r0, r2
    blo .L0801147E
    movs r0, #0
    b .L0801148E
.L0801147E:
    movs r1, #0x1f
    ands r1, r2
    lsls r1, r1, #0xd
    ldr r0, .L08011494 @ =0xFFFC1FFF
    ands r0, r3
    orrs r0, r1
    str r0, [r4]
    movs r0, #1
.L0801148E:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08011494: .4byte 0xFFFC1FFF

    thumb_func_start func_08011498
func_08011498: @ 0x08011498
    push {lr}
    adds r3, r0, #0
    cmp r1, #0x63
    bls .L080114A2
    movs r1, #0x63
.L080114A2:
    ldrh r2, [r3, #2]
    lsls r0, r2, #0x17
    lsrs r0, r0, #0x19
    cmp r0, r1
    blo .L080114B0
    movs r0, #0
    b .L080114C0
.L080114B0:
    movs r0, #0x7f
    ands r1, r0
    lsls r1, r1, #2
    ldr r0, .L080114C4 @ =0xFFFFFE03
    ands r0, r2
    orrs r0, r1
    strh r0, [r3, #2]
    movs r0, #1
.L080114C0:
    pop {r1}
    bx r1
    .align 2, 0
.L080114C4: .4byte 0xFFFFFE03

    thumb_func_start func_080114C8
func_080114C8: @ 0x080114C8
    push {lr}
    adds r3, r0, #0
    cmp r1, #0x63
    bls .L080114D2
    movs r1, #0x63
.L080114D2:
    ldrb r2, [r3, #3]
    lsls r0, r2, #0x19
    lsrs r0, r0, #0x1a
    cmp r0, r1
    blo .L080114E0
    movs r0, #0
    b .L080114F2
.L080114E0:
    movs r0, #0x3f
    ands r1, r0
    lsls r1, r1, #1
    movs r0, #0x7f
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3, #3]
    movs r0, #1
.L080114F2:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080114F8
func_080114F8: @ 0x080114F8
    ldrb r2, [r0]
    movs r1, #2
    rsbs r1, r1, #0
    ands r1, r2
    movs r2, #2
    orrs r1, r2
    movs r2, #4
    orrs r1, r2
    movs r2, #8
    orrs r1, r2
    strb r1, [r0]
    bx lr

    thumb_func_start func_08011510
func_08011510: @ 0x08011510
    movs r1, #0x10
    str r1, [r0]
    str r1, [r0, #4]
    movs r1, #0
    strb r1, [r0, #8]
    bx lr

    .section .text.tail08011524, "ax", %progbits
    thumb_func_start func_08011524
func_08011524: @ 0x08011524
    push {lr}
    adds r1, r0, #0
    movs r2, #0
    ldr r0, [r1, #4]
    cmp r0, #0x10
    beq .L08011538
    ldrb r0, [r1, #8]
    cmp r0, #0
    bne .L08011538
    movs r2, #1
.L08011538:
    adds r0, r2, #0
    pop {r1}
    bx r1
    .align 2, 0

    .section .text.tail08011544, "ax", %progbits
    thumb_func_start func_08011544
func_08011544: @ 0x08011544
    ldr r1, [r0]
    str r1, [r0, #4]
    movs r1, #2
    strb r1, [r0, #8]
    bx lr
    .align 2, 0

    thumb_func_start func_08011550
func_08011550: @ 0x08011550
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2, #4]
    ldr r0, [r2]
    cmp r1, r0
    bne .L08011560
    movs r0, #0x10
    str r0, [r2]
.L08011560:
    movs r0, #0x10
    str r0, [r2, #4]
    pop {r0}
    bx r0

    thumb_func_start func_08011568
func_08011568: @ 0x08011568
    push {lr}
    adds r1, r0, #0
    ldr r0, [r1]
    cmp r0, #0x10
    beq .L08011582
    ldr r0, [r1, #4]
    cmp r0, #0x10
    beq .L08011582
    ldrb r0, [r1, #8]
    cmp r0, #0
    beq .L08011582
    subs r0, #1
    strb r0, [r1, #8]
.L08011582:
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08011588
func_08011588: @ 0x08011588
    push {lr}
    movs r3, #0
    cmp r0, #0
    beq .L080115A2
    cmp r1, #0
    beq .L080115A2
    adds r2, r0, #0
.L08011596:
    ldrb r0, [r2]
    adds r3, r3, r0
    adds r2, #1
    subs r1, #1
    cmp r1, #0
    bne .L08011596
.L080115A2:
    adds r0, r3, #0
    pop {r1}
    bx r1
.L080115A8:
    .byte 0x00, 0x48, 0x70, 0x47, 0xFC, 0x34, 0x00, 0x00

    thumb_func_start func_080115B0
func_080115B0: @ 0x080115B0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r7, r0, #0
    adds r5, r1, #0
    adds r4, r2, #0
    mov r8, r4
    ldr r6, .L080115E0 @ =0x000034F4
    str r6, [sp]
    adds r0, r5, #0
    adds r1, r4, #0
    mov r2, sp
    movs r3, #4
    bl func_080006A4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080115E8
    ldr r0, .L080115E4 @ =gUnk_03000400
    ldrh r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #9
    b .L0801163C
    .align 2, 0
.L080115E0: .4byte 0x000034F4
.L080115E4: .4byte gUnk_03000400
.L080115E8:
    adds r4, #4
    adds r0, r5, #0
    adds r1, r4, #0
    adds r2, r7, #0
    adds r3, r6, #0
    bl func_080006A4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0801160C
    ldr r0, .L08011608 @ =gUnk_03000400
    ldrh r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #0xa
    b .L0801163C
    .align 2, 0
.L08011608: .4byte gUnk_03000400
.L0801160C:
    ldr r4, .L08011630 @ =0x000034F8
    add r4, r8
    adds r0, r7, #0
    adds r1, r6, #0
    bl func_08011588
    str r0, [sp, #4]
    add r2, sp, #4
    adds r0, r5, #0
    adds r1, r4, #0
    movs r3, #4
    bl func_080006A4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08011634
    movs r0, #0
    b .L0801163E
    .align 2, 0
.L08011630: .4byte 0x000034F8
.L08011634:
    ldr r0, .L0801164C @ =gUnk_03000400
    ldrh r0, [r0]
    movs r1, #0xc0
    lsls r1, r1, #0xa
.L0801163C:
    orrs r0, r1
.L0801163E:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0801164C: .4byte gUnk_03000400

    thumb_func_start func_08011650
func_08011650: @ 0x08011650
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    adds r7, r0, #0
    str r1, [sp, #0x14]
    mov sl, r2
    adds r6, r3, #0
    adds r1, r7, #0
    adds r1, #8
    movs r0, #0
    mov sb, r0
    str r0, [r7, #8]
    str r0, [r1, #4]
    mov r2, sb
    strb r2, [r1, #8]
    ldrb r2, [r1, #9]
    movs r4, #4
    rsbs r4, r4, #0
    adds r0, r4, #0
    ands r0, r2
    movs r3, #0x7d
    rsbs r3, r3, #0
    mov r8, r3
    ands r0, r3
    strb r0, [r1, #9]
    ldrb r2, [r1, #0xa]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r2
    strb r0, [r1, #0xa]
    ldrh r2, [r1, #0xa]
    ldr r0, .L08011870 @ =0xFFFFF81F
    ands r0, r2
    strh r0, [r1, #0xa]
    adds r0, r7, #0
    adds r0, #0x14
    ldr r5, .L08011874 @ =gUnk_080F058C
    adds r1, r5, #0
    bl __4FarmPCc
    ldr r1, .L08011878 @ =0x00001AA8
    adds r0, r7, r1
    bl func_0809AB8C
    ldr r2, .L0801187C @ =0x00001BD8
    adds r0, r7, r2
    mov r1, sp
    ldrb r1, [r1]
    ands r4, r1
    mov r1, sp
    strb r4, [r1]
    mov r3, r8
    ands r4, r3
    strb r4, [r1]
    adds r1, r5, #0
    mov r2, sp
    bl __6FarmerPCcRC8GameDate
    ldr r1, .L08011880 @ =0x00001C70
    adds r0, r7, r1
    adds r1, r5, #0
    bl __3DogPCc
    movs r2, #0xe5
    lsls r2, r2, #5
    adds r0, r7, r2
    bl func_0800FF8C
    ldr r3, .L08011884 @ =0x00001CCC
    adds r1, r7, r3
    movs r4, #0x8d
    lsls r4, r4, #2
    ldrh r2, [r1]
    ldr r3, .L08011888 @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r2
    orrs r0, r4
    strh r0, [r1]
    movs r5, #0
    ldrb r4, [r1, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r4
    strb r0, [r1, #1]
    ldrh r4, [r1, #2]
    adds r0, r3, #0
    ands r0, r4
    strh r0, [r1, #2]
    ldrb r0, [r1, #3]
    ands r2, r0
    strb r2, [r1, #3]
    ldrh r0, [r1, #4]
    ands r3, r0
    strh r3, [r1, #4]
    ldr r1, .L0801188C @ =0x00001CD4
    adds r0, r7, r1
    bl func_0809EEE8
    ldr r2, .L08011890 @ =0x0000214C
    adds r0, r7, r2
    bl func_0809C6BC
    ldr r3, .L08011894 @ =0x000021CC
    adds r2, r7, r3
    movs r0, #1
    str r0, [r2]
    mov r0, sb
    str r0, [r2, #4]
    ldr r1, .L08011898 @ =0x000021E0
    adds r0, r7, r1
    strb r5, [r0]
    adds r3, #0x24
    adds r0, r7, r3
    strb r5, [r0]
    adds r1, #0x20
    adds r0, r7, r1
    strb r5, [r0]
    mov r3, sb
    str r3, [sp, #4]
    subs r1, #0x2c
    adds r0, r7, r1
    movs r1, #8
    add r5, sp, #8
    add r3, sp, #0xc
    mov sb, r3
    movs r3, #0
.L08011752:
    strb r3, [r0]
    subs r1, #1
    adds r0, #1
    cmp r1, #0
    bgt .L08011752
    movs r0, #0
    str r0, [sp, #8]
    adds r0, r2, #0
    adds r0, #0x10
    movs r1, #4
    ldr r2, .L0801189C @ =0x00002C48
    adds r4, r7, r2
    ldr r3, .L080118A0 @ =0x00002C4A
    adds r3, r3, r7
    mov r8, r3
    ldr r2, [r5]
.L08011772:
    strb r2, [r0]
    subs r1, #1
    adds r0, #1
    cmp r1, #0
    bgt .L08011772
    ldr r1, .L080118A4 @ =0x00002210
    adds r0, r7, r1
    bl func_080114F8
    ldr r2, .L080118A8 @ =0x00002214
    adds r0, r7, r2
    bl func_0809A8AC
    ldr r3, .L080118AC @ =0x00002C1C
    adds r2, r7, r3
    ldrb r0, [r4]
    movs r1, #3
    orrs r0, r1
    strb r0, [r4]
    ldr r0, [r2, #0x2c]
    ldr r1, .L080118B0 @ =0xFFF80003
    ands r0, r1
    str r0, [r2, #0x2c]
    mov r0, r8
    ldrb r1, [r0]
    movs r0, #9
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #0x11
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #0x10
    ands r0, r1
    subs r1, #0x20
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    mov r1, r8
    strb r0, [r1]
    ldr r2, .L080118B4 @ =0x00002C4C
    adds r0, r7, r2
    movs r1, #9
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
.L080117CC:
    strb r2, [r0]
    strh r2, [r0, #2]
    adds r0, #4
    subs r1, #1
    cmp r1, r3
    bne .L080117CC
    ldr r3, .L080118B8 @ =0x00002C74
    adds r0, r7, r3
    bl func_08011510
    movs r1, #0xb2
    lsls r1, r1, #6
    adds r0, r7, r1
    bl func_0809CD78
    ldr r2, .L080118BC @ =0x00002E58
    adds r0, r7, r2
    bl func_0809CE8C
    movs r3, #0xd2
    lsls r3, r3, #6
    adds r0, r7, r3
    bl func_0809C144
    ldr r0, .L080118C0 @ =0x00003494
    adds r2, r7, r0
    movs r3, #2
    movs r5, #0x10
    rsbs r5, r5, #0
    movs r4, #1
    rsbs r4, r4, #0
.L0801180A:
    ldrb r1, [r2]
    adds r0, r5, #0
    ands r0, r1
    strb r0, [r2]
    adds r2, #0x10
    subs r3, #1
    cmp r3, r4
    bne .L0801180A
    ldr r1, .L080118C4 @ =0x000034C8
    adds r0, r7, r1
    bl func_080A1A48
    ldr r2, .L080118C8 @ =0x000034D8
    adds r0, r7, r2
    bl func_0809C4E4
    ldr r3, .L080118CC @ =0x000034DC
    adds r0, r7, r3
    bl func_0809BFE8
    movs r5, #0
    str r5, [r6]
    str r5, [sp, #0xc]
    ldr r0, [sp, #0x14]
    mov r1, sb
    mov r2, sl
    movs r3, #4
    bl func_080006E4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801190E
    ldr r4, [sp, #0xc]
    ldr r0, .L080118D0 @ =0x000034F4
    cmp r4, r0
    bne .L0801190E
    mov r2, sl
    adds r2, #4
    ldr r0, [sp, #0x14]
    adds r1, r7, #0
    adds r3, r4, #0
    bl func_080006E4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080118D8
    ldr r2, .L080118D4 @ =gUnk_03000400
    ldr r0, [r6]
    movs r1, #0x80
    lsls r1, r1, #0xa
    b .L08011916
    .align 2, 0
.L08011870: .4byte 0xFFFFF81F
.L08011874: .4byte gUnk_080F058C
.L08011878: .4byte 0x00001AA8
.L0801187C: .4byte 0x00001BD8
.L08011880: .4byte 0x00001C70
.L08011884: .4byte 0x00001CCC
.L08011888: .4byte 0xFFFFFC00
.L0801188C: .4byte 0x00001CD4
.L08011890: .4byte 0x0000214C
.L08011894: .4byte 0x000021CC
.L08011898: .4byte 0x000021E0
.L0801189C: .4byte 0x00002C48
.L080118A0: .4byte 0x00002C4A
.L080118A4: .4byte 0x00002210
.L080118A8: .4byte 0x00002214
.L080118AC: .4byte 0x00002C1C
.L080118B0: .4byte 0xFFF80003
.L080118B4: .4byte 0x00002C4C
.L080118B8: .4byte 0x00002C74
.L080118BC: .4byte 0x00002E58
.L080118C0: .4byte 0x00003494
.L080118C4: .4byte 0x000034C8
.L080118C8: .4byte 0x000034D8
.L080118CC: .4byte 0x000034DC
.L080118D0: .4byte 0x000034F4
.L080118D4: .4byte gUnk_03000400
.L080118D8:
    ldr r2, .L080118F8 @ =0x000034F8
    add r2, sl
    str r5, [sp, #0x10]
    add r1, sp, #0x10
    ldr r0, [sp, #0x14]
    movs r3, #4
    bl func_080006E4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08011900
    ldr r2, .L080118FC @ =gUnk_03000400
    ldr r0, [r6]
    movs r1, #0xc0
    lsls r1, r1, #0xa
    b .L08011916
    .align 2, 0
.L080118F8: .4byte 0x000034F8
.L080118FC: .4byte gUnk_03000400
.L08011900:
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_08011588
    ldr r1, [sp, #0x10]
    cmp r0, r1
    beq .L0801191E
.L0801190E:
    ldr r2, .L08011930 @ =gUnk_03000400
    ldr r0, [r6]
    movs r1, #0x80
    lsls r1, r1, #9
.L08011916:
    orrs r0, r1
    ldrh r1, [r2]
    orrs r0, r1
    str r0, [r6]
.L0801191E:
    adds r0, r7, #0
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08011930: .4byte gUnk_03000400

    thumb_func_start func_08011934
func_08011934: @ 0x08011934
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x2c
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    mov sb, r2
    ldr r1, .L080119AC @ =gUnk_080F0654
    mov r0, sp
    movs r2, #3
    bl memcpy
    add r0, sp, #4
    ldr r1, .L080119B0 @ =gUnk_080F0658
    movs r2, #2
    bl memcpy
    movs r0, #1
    str r0, [sp, #0x10]
    movs r1, #0
    mov sl, r1
    ldr r0, [sp, #8]
    adds r0, #0x8c
    ldr r0, [r0]
    movs r2, #0x82
    lsls r2, r2, #3
    adds r0, r0, r2
    bl GetCapacity__C4Coop
    str r0, [sp, #0x14]
    movs r0, #0
    str r0, [sp, #0x18]
    ldr r1, [sp, #0x14]
    cmp sl, r1
    bhs .L08011A70
.L0801197E:
    ldr r0, [sp, #8]
    adds r0, #0x8c
    ldr r0, [r0]
    movs r2, #0x82
    lsls r2, r2, #3
    adds r0, r0, r2
    ldr r1, [sp, #0x18]
    bl GetChicken__4CoopUi
    adds r7, r0, #0
    cmp r7, #0
    beq .L08011A64
    bl method_0809B514__C9Livestock
    ldr r1, [sp, #0xc]
    cmp r0, r1
    bne .L08011A64
    ldr r2, [sp, #0x10]
    cmp r2, #0
    beq .L080119B4
    movs r0, #0
    str r0, [sp, #0x10]
    b .L080119EA
    .align 2, 0
.L080119AC: .4byte gUnk_080F0654
.L080119B0: .4byte gUnk_080F0658
.L080119B4:
    ldr r1, .L08011ABC @ =gUnk_080F0654
    mov r8, r1
    mov r0, sb
    bl strlen
    mov r2, sb
    adds r6, r2, r0
    ldr r1, .L08011AC0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq .L080119EA
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L080119D8
    adds r4, r5, #0
.L080119D8:
    adds r0, r6, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r0, r6, r4
    mov r2, sp
    ldrb r2, [r2, #0x10]
    strb r2, [r0]
.L080119EA:
    adds r0, r7, #0
    bl GetName__C6Animal
    adds r7, r0, #0
    adds r4, r7, #0
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r2, .L08011AC0 @ =0x00000383
    subs r5, r2, r0
    cmp r5, #0
    beq .L08011A24
    adds r0, r4, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08011A14
    adds r4, r5, #0
.L08011A14:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
.L08011A24:
    movs r0, #1
    add sl, r0
    mov r1, sl
    cmp r1, #2
    bls .L08011A64
    ldr r7, .L08011AC4 @ =gUnk_080F0658
    mov r0, sb
    bl strlen
    mov r2, sb
    adds r6, r2, r0
    ldr r1, .L08011AC0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq .L08011A60
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08011A50
    adds r4, r5, #0
.L08011A50:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
.L08011A60:
    movs r2, #0
    mov sl, r2
.L08011A64:
    ldr r0, [sp, #0x18]
    adds r0, #1
    str r0, [sp, #0x18]
    ldr r1, [sp, #0x14]
    cmp r0, r1
    blo .L0801197E
.L08011A70:
    ldr r4, [sp, #8]
    adds r4, #0x8c
    ldr r0, [r4]
    movs r2, #0xbe
    lsls r2, r2, #3
    adds r0, r0, r2
    bl GetCapacity__C4Barn
    str r0, [sp, #0x1c]
    movs r0, #0
    str r0, [sp, #0x20]
    str r4, [sp, #0x28]
    ldr r1, [sp, #0x1c]
    cmp r0, r1
    bhs .L08011B84
.L08011A8E:
    ldr r2, [sp, #0x28]
    ldr r0, [r2]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    ldr r1, [sp, #0x20]
    bl GetCow__4BarnUi
    adds r7, r0, #0
    cmp r7, #0
    beq .L08011B78
    bl method_0809B514__C9Livestock
    ldr r2, [sp, #0xc]
    cmp r0, r2
    bne .L08011B78
    ldr r0, [sp, #0x10]
    cmp r0, #0
    beq .L08011AC8
    movs r1, #0
    str r1, [sp, #0x10]
    b .L08011AFE
    .align 2, 0
.L08011ABC: .4byte gUnk_080F0654
.L08011AC0: .4byte 0x00000383
.L08011AC4: .4byte gUnk_080F0658
.L08011AC8:
    ldr r2, .L08011BBC @ =gUnk_080F0654
    mov r8, r2
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r2, .L08011BC0 @ =0x00000383
    subs r5, r2, r0
    cmp r5, #0
    beq .L08011AFE
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08011AEC
    adds r4, r5, #0
.L08011AEC:
    adds r0, r6, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r0, r6, r4
    mov r1, sp
    ldrb r1, [r1, #0x10]
    strb r1, [r0]
.L08011AFE:
    adds r0, r7, #0
    bl GetName__C6Animal
    mov r8, r0
    mov r6, r8
    mov r0, sb
    bl strlen
    mov r2, sb
    adds r7, r2, r0
    ldr r1, .L08011BC0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq .L08011B38
    adds r0, r6, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08011B28
    adds r4, r5, #0
.L08011B28:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L08011B38:
    movs r2, #1
    add sl, r2
    mov r0, sl
    cmp r0, #2
    bls .L08011B78
    ldr r7, .L08011BC4 @ =gUnk_080F0658
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r2, .L08011BC0 @ =0x00000383
    subs r5, r2, r0
    cmp r5, #0
    beq .L08011B74
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08011B64
    adds r4, r5, #0
.L08011B64:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
.L08011B74:
    movs r0, #0
    mov sl, r0
.L08011B78:
    ldr r1, [sp, #0x20]
    adds r1, #1
    str r1, [sp, #0x20]
    ldr r2, [sp, #0x1c]
    cmp r1, r2
    blo .L08011A8E
.L08011B84:
    movs r0, #0
    str r0, [sp, #0x24]
    ldr r1, [sp, #0x1c]
    cmp r0, r1
    bhs .L08011C84
.L08011B8E:
    ldr r2, [sp, #0x28]
    ldr r0, [r2]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    ldr r1, [sp, #0x24]
    bl GetSheep__4BarnUi
    adds r7, r0, #0
    cmp r7, #0
    beq .L08011C78
    bl method_0809B514__C9Livestock
    ldr r2, [sp, #0xc]
    cmp r0, r2
    bne .L08011C78
    ldr r0, [sp, #0x10]
    cmp r0, #0
    beq .L08011BC8
    movs r1, #0
    str r1, [sp, #0x10]
    b .L08011BFE
    .align 2, 0
.L08011BBC: .4byte gUnk_080F0654
.L08011BC0: .4byte 0x00000383
.L08011BC4: .4byte gUnk_080F0658
.L08011BC8:
    ldr r2, .L08011CCC @ =gUnk_080F0654
    mov r8, r2
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r2, .L08011CD0 @ =0x00000383
    subs r5, r2, r0
    cmp r5, #0
    beq .L08011BFE
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08011BEC
    adds r4, r5, #0
.L08011BEC:
    adds r0, r6, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r0, r6, r4
    mov r1, sp
    ldrb r1, [r1, #0x10]
    strb r1, [r0]
.L08011BFE:
    adds r0, r7, #0
    bl GetName__C6Animal
    mov r8, r0
    mov r6, r8
    mov r0, sb
    bl strlen
    mov r2, sb
    adds r7, r2, r0
    ldr r1, .L08011CD0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq .L08011C38
    adds r0, r6, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08011C28
    adds r4, r5, #0
.L08011C28:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L08011C38:
    movs r2, #1
    add sl, r2
    mov r0, sl
    cmp r0, #2
    bls .L08011C78
    ldr r7, .L08011CD4 @ =gUnk_080F0658
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r2, .L08011CD0 @ =0x00000383
    subs r5, r2, r0
    cmp r5, #0
    beq .L08011C74
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08011C64
    adds r4, r5, #0
.L08011C64:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
.L08011C74:
    movs r0, #0
    mov sl, r0
.L08011C78:
    ldr r1, [sp, #0x24]
    adds r1, #1
    str r1, [sp, #0x24]
    ldr r2, [sp, #0x1c]
    cmp r1, r2
    blo .L08011B8E
.L08011C84:
    mov r0, sl
    cmp r0, #0
    beq .L08011CBC
    ldr r7, .L08011CD4 @ =gUnk_080F0658
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r1, .L08011CD0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq .L08011CBC
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08011CAC
    adds r4, r5, #0
.L08011CAC:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
.L08011CBC:
    add sp, #0x2c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08011CCC: .4byte gUnk_080F0654
.L08011CD0: .4byte 0x00000383
.L08011CD4: .4byte gUnk_080F0658

    thumb_func_start func_08011CD8
func_08011CD8: @ 0x08011CD8
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #0x4c
    adds r5, r0, #0
    adds r3, r5, #0
    adds r3, #0x10
    ldr r0, .L08011DAC @ =vtable_unk_080E5BE8
    mov sb, r0
    movs r2, #0
    str r2, [sp]
    str r2, [sp, #4]
    ldr r0, .L08011DB0 @ =vtable_unk_080E5AF0
    str r0, [sp, #8]
    str r3, [sp, #0xc]
    add r0, sp, #0x10
    mov r8, r0
    str r2, [sp, #0x10]
    str r2, [r0, #4]
    ldr r0, .L08011DB4 @ =vtable_unk_080E5AE0
    str r0, [sp, #0x18]
    str r1, [sp, #0x1c]
    add r6, sp, #0x20
    str r2, [sp, #0x20]
    str r2, [r6, #4]
    ldr r0, .L08011DB8 @ =vtable_unk_080E5AD0
    str r0, [sp, #0x28]
    str r5, [sp, #0x2c]
    add r4, sp, #0x30
    str r2, [sp, #0x30]
    str r2, [r4, #4]
    ldr r0, .L08011DBC @ =vtable_unk_080E5BB4
    str r0, [sp, #0x38]
    add r1, sp, #0x40
    str r1, [r4, #0xc]
    mov r0, sb
    str r0, [sp, #0x48]
    str r2, [sp, #0x40]
    str r2, [r1, #4]
    ldr r0, .L08011DC0 @ =vtable_unk_080E5BD8
    str r0, [r1, #8]
    add r0, sp, #0x3c
    str r0, [r4, #0x10]
    str r1, [r4, #0x14]
    adds r1, r5, #0
    adds r1, #0x6c
    adds r0, r4, #0
    bl func_08009940
    adds r0, r4, #0
    mov r1, sp
    bl func_08009940
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_08009940
    adds r0, r4, #0
    mov r1, r8
    bl func_08009940
    adds r5, #0x68
    adds r0, r5, #0
    bl func_08008AE0
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x10]
    adds r1, r4, #0
    bl _call_via_r2
    adds r0, r5, #0
    bl func_08008AF0
    adds r0, r5, #0
    bl func_08008AE0
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x14]
    adds r1, r4, #0
    bl _call_via_r2
    adds r0, r4, #0
    movs r1, #2
    bl func_080098DC
    adds r0, r6, #0
    movs r1, #2
    bl func_080098AC
    mov r0, r8
    movs r1, #2
    bl func_080098AC
    mov r0, sp
    movs r1, #2
    bl func_080098AC
    add sp, #0x4c
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08011DAC: .4byte vtable_unk_080E5BE8
.L08011DB0: .4byte vtable_unk_080E5AF0
.L08011DB4: .4byte vtable_unk_080E5AE0
.L08011DB8: .4byte vtable_unk_080E5AD0
.L08011DBC: .4byte vtable_unk_080E5BB4
.L08011DC0: .4byte vtable_unk_080E5BD8

    thumb_func_start func_08011DC4
func_08011DC4: @ 0x08011DC4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    mov r8, r1
    adds r5, r2, #0
    ldr r0, .L08011EC0 @ =vtable_unk_080E5E64
    str r0, [r6]
    movs r0, #0xf8
    bl __builtin_new
    adds r7, r0, #0
    adds r1, r7, #0
    adds r1, #0xf4
    ldr r0, .L08011EC4 @ =vtable_unk_080E5C08
    str r0, [r1]
    movs r4, #0
    str r4, [r7]
    str r4, [r7, #4]
    adds r0, r7, #0
    adds r0, #8
    str r4, [r0, #4]
    adds r0, #8
    bl func_080096B0
    adds r0, r7, #0
    adds r0, #0x68
    bl func_08008980
    adds r2, r7, #0
    adds r2, #0x6c
    str r4, [r7, #0x6c]
    str r4, [r2, #4]
    ldr r0, .L08011EC8 @ =vtable_unk_080E5BB4
    str r0, [r2, #8]
    adds r1, r7, #0
    adds r1, #0x7c
    str r1, [r2, #0xc]
    str r4, [r7, #0x7c]
    str r4, [r1, #4]
    ldr r0, .L08011ECC @ =vtable_unk_080E5BD8
    str r0, [r1, #8]
    adds r0, r7, #0
    adds r0, #0x78
    str r0, [r2, #0x10]
    str r1, [r2, #0x14]
    adds r0, #0x10
    str r6, [r0]
    adds r0, #4
    mov r1, r8
    str r1, [r0]
    adds r0, #4
    ldm r5!, {r1, r2, r3}
    stm r0!, {r1, r2, r3}
    adds r0, r7, #0
    adds r0, #0xa0
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    movs r1, #0
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0xc0
    movs r1, #1
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0xc4
    movs r1, #2
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0xc8
    movs r1, #3
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0xcc
    movs r1, #4
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0xd0
    str r4, [r0]
    str r4, [r0, #4]
    adds r0, #8
    str r4, [r0, #4]
    adds r0, #0x10
    strb r4, [r0]
    adds r0, #2
    strb r4, [r0]
    adds r0, #6
    str r4, [r0]
    ldrh r0, [r7, #0x14]
    movs r1, #8
    orrs r0, r1
    strh r0, [r7, #0x14]
    ldr r1, .L08011ED0 @ =0x04000004
    strh r0, [r1]
    str r7, [r6, #4]
    ldr r0, .L08011ED4 @ =gUnk_0300040C
    ldr r0, [r0]
    adds r0, #8
    adds r1, r6, #0
    bl SetUnk__12ScriptEnginePv
    adds r0, r6, #0
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08011EC0: .4byte vtable_unk_080E5E64
.L08011EC4: .4byte vtable_unk_080E5C08
.L08011EC8: .4byte vtable_unk_080E5BB4
.L08011ECC: .4byte vtable_unk_080E5BD8
.L08011ED0: .4byte 0x04000004
.L08011ED4: .4byte gUnk_0300040C
