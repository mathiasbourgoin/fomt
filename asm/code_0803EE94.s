    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_0803F8DC
func_0803F8DC: @ 0x0803F8DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r5, r0, #0
	movs r0, #0xa3
	lsls r0, r0, #1
	cmp r1, r0
	bls .L0803F8F6
	bl .L08045572
.L0803F8F6:
	lsls r0, r1, #2
	ldr r1, .L0803F900 @ =.L0803F904
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0803F900: .4byte .L0803F904
.L0803F904: @ jump table
	.4byte .L0803FE20 @ case 0
	.4byte .L0803FE28 @ case 1
	.4byte .L0803FE40 @ case 2
	.4byte .L0803FEB2 @ case 3
	.4byte .L0803FEEC @ case 4
	.4byte .L0803FF26 @ case 5
	.4byte .L0804000A @ case 6
	.4byte .L0803FFC4 @ case 7
	.4byte .L08040044 @ case 8
	.4byte .L0804009E @ case 9
	.4byte .L080400F6 @ case 10
	.4byte .L08040150 @ case 11
	.4byte .L080401A8 @ case 12
	.4byte .L080401D6 @ case 13
	.4byte .L0804021C @ case 14
	.4byte .L0804024A @ case 15
	.4byte .L080402FE @ case 16
	.4byte .L08040278 @ case 17
	.4byte .L080402D0 @ case 18
	.4byte .L080411C4 @ case 19
	.4byte .L08041260 @ case 20
	.4byte .L0803FF6C @ case 21
	.4byte .L08040344 @ case 22
	.4byte .L080403AC @ case 23
	.4byte .L08040404 @ case 24
	.4byte .L0804041C @ case 25
	.4byte .L08040480 @ case 26
	.4byte .L08040498 @ case 27
	.4byte .L080404DE @ case 28
	.4byte .L08045484 @ case 29
	.4byte .L080404F6 @ case 30
	.4byte .L0804050E @ case 31
	.4byte .L08040526 @ case 32
	.4byte .L080405DC @ case 33
	.4byte .L0804053E @ case 34
	.4byte .L0804058C @ case 35
	.4byte .L080406C0 @ case 36
	.4byte .L0804077C @ case 37
	.4byte .L08040868 @ case 38
	.4byte .L08040980 @ case 39
	.4byte .L08040A10 @ case 40
	.4byte .L08040ACC @ case 41
	.4byte .L08040BB8 @ case 42
	.4byte .L08040CD4 @ case 43
	.4byte .L0804062C @ case 44
	.4byte .L0804065A @ case 45
	.4byte .L080406A8 @ case 46
	.4byte .L08040E1C @ case 47
	.4byte .L08040E4A @ case 48
	.4byte .L08040E62 @ case 49
	.4byte .L08040E90 @ case 50
	.4byte .L08040EA8 @ case 51
	.4byte .L08040EF6 @ case 52
	.4byte .L08040F44 @ case 53
	.4byte .L08040F92 @ case 54
	.4byte .L08040FBC @ case 55
	.4byte .L08040FEC @ case 56
	.4byte .L08041032 @ case 57
	.4byte .L0804108A @ case 58
	.4byte .L080410F0 @ case 59
	.4byte .L0804110C @ case 60
	.4byte .L08041164 @ case 61
	.4byte .L0804118C @ case 62
	.4byte .L0804129A @ case 63
	.4byte .L08041332 @ case 64
	.4byte .L08041384 @ case 65
	.4byte .L080413D6 @ case 66
	.4byte .L0804143C @ case 67
	.4byte .L080414A4 @ case 68
	.4byte .L08041500 @ case 69
	.4byte .L08041514 @ case 70
	.4byte .L0804152C @ case 71
	.4byte .L08041580 @ case 72
	.4byte .L080415C0 @ case 73
	.4byte .L08041612 @ case 74
	.4byte .L080412B8 @ case 75
	.4byte .L08041652 @ case 76
	.4byte .L08041690 @ case 77
	.4byte .L080416A2 @ case 78
	.4byte .L080416F4 @ case 79
	.4byte .L0804173C @ case 80
	.4byte .L08041860 @ case 81
	.4byte .L08041884 @ case 82
	.4byte .L080418BC @ case 83
	.4byte .L080418F4 @ case 84
	.4byte .L08041930 @ case 85
	.4byte .L08041948 @ case 86
	.4byte .L0804196C @ case 87
	.4byte .L080419B4 @ case 88
	.4byte .L080419FC @ case 89
	.4byte .L08045456 @ case 90
	.4byte .L0804428C @ case 91
	.4byte .L08043FDE @ case 92
	.4byte .L080440CE @ case 93
	.4byte .L080440F8 @ case 94
	.4byte .L08044122 @ case 95
	.4byte .L080451EE @ case 96
	.4byte .L08044A94 @ case 97
	.4byte .L08044AAC @ case 98
	.4byte .L08044AC4 @ case 99
	.4byte .L08044FA0 @ case 100
	.4byte .L08044FB4 @ case 101
	.4byte .L08044FC8 @ case 102
	.4byte .L08044FDC @ case 103
	.4byte .L08044FF0 @ case 104
	.4byte .L08045010 @ case 105
	.4byte .L08045028 @ case 106
	.4byte .L0804503C @ case 107
	.4byte .L08044AE8 @ case 108
	.4byte .L08044B0A @ case 109
	.4byte .L08044B2C @ case 110
	.4byte .L08044050 @ case 111
	.4byte .L0804407A @ case 112
	.4byte .L080440A4 @ case 113
	.4byte .L08044206 @ case 114
	.4byte .L08044234 @ case 115
	.4byte .L0804425C @ case 116
	.4byte .L08044274 @ case 117
	.4byte .L080451BE @ case 118
	.4byte .L08041A44 @ case 119
	.4byte .L08041A8C @ case 120
	.4byte .L08041AD4 @ case 121
	.4byte .L08041B18 @ case 122
	.4byte .L08041B5C @ case 123
	.4byte .L08041BCC @ case 124
	.4byte .L08041C10 @ case 125
	.4byte .L08041C64 @ case 126
	.4byte .L08041CB8 @ case 127
	.4byte .L08041CFC @ case 128
	.4byte .L08041D38 @ case 129
	.4byte .L08041D80 @ case 130
	.4byte .L08041DC8 @ case 131
	.4byte .L08041E10 @ case 132
	.4byte .L08041E4C @ case 133
	.4byte .L08041E94 @ case 134
	.4byte .L08041ED8 @ case 135
	.4byte .L08041F2C @ case 136
	.4byte .L08041F80 @ case 137
	.4byte .L08041FC6 @ case 138
	.4byte .L08041FF4 @ case 139
	.4byte .L0804200C @ case 140
	.4byte .L0804206A @ case 141
	.4byte .L08042082 @ case 142
	.4byte .L0804209A @ case 143
	.4byte .L080420B2 @ case 144
	.4byte .L080420CA @ case 145
	.4byte .L080420E2 @ case 146
	.4byte .L080420FA @ case 147
	.4byte .L08042112 @ case 148
	.4byte .L0804212A @ case 149
	.4byte .L0804203A @ case 150
	.4byte .L08042052 @ case 151
	.4byte .L08042142 @ case 152
	.4byte .L08042170 @ case 153
	.4byte .L08042188 @ case 154
	.4byte .L080421A0 @ case 155
	.4byte .L080421B8 @ case 156
	.4byte .L080421D0 @ case 157
	.4byte .L080421E8 @ case 158
	.4byte .L08042200 @ case 159
	.4byte .L080424F0 @ case 160
	.4byte .L08042508 @ case 161
	.4byte .L08042520 @ case 162
	.4byte .L08043532 @ case 163
	.4byte .L08042538 @ case 164
	.4byte .L08042550 @ case 165
	.4byte .L08042568 @ case 166
	.4byte .L0804259C @ case 167
	.4byte .L080425CA @ case 168
	.4byte .L080425E2 @ case 169
	.4byte .L08042218 @ case 170
	.4byte .L08042230 @ case 171
	.4byte .L08042248 @ case 172
	.4byte .L08042260 @ case 173
	.4byte .L08042278 @ case 174
	.4byte .L08042290 @ case 175
	.4byte .L08042436 @ case 176
	.4byte .L0804245E @ case 177
	.4byte .L080424CE @ case 178
	.4byte .L08043648 @ case 179
	.4byte .L08043676 @ case 180
	.4byte .L08043718 @ case 181
	.4byte .L08043746 @ case 182
	.4byte .L080422A8 @ case 183
	.4byte .L080422DE @ case 184
	.4byte .L08043798 @ case 185
	.4byte .L080437C6 @ case 186
	.4byte .L08044B4E @ case 187
	.4byte .L08044B70 @ case 188
	.4byte .L08044BA4 @ case 189
	.4byte .L08042322 @ case 190
	.4byte .L08042378 @ case 191
	.4byte .L080423D8 @ case 192
	.4byte .L08044BFE @ case 193
	.4byte .L08044C20 @ case 194
	.4byte .L08044C54 @ case 195
	.4byte .L08044E3C @ case 196
	.4byte .L08044E4A @ case 197
	.4byte .L08043578 @ case 198
	.4byte .L08044E58 @ case 199
	.4byte .L08044E82 @ case 200
	.4byte .L0804249E @ case 201
	.4byte .L080424B6 @ case 202
	.4byte .L08042610 @ case 203
	.4byte .L08042654 @ case 204
	.4byte .L08042698 @ case 205
	.4byte .L080426F0 @ case 206
	.4byte .L08042738 @ case 207
	.4byte .L080427A0 @ case 208
	.4byte .L08042808 @ case 209
	.4byte .L08042844 @ case 210
	.4byte .L0804287E @ case 211
	.4byte .L080428DA @ case 212
	.4byte .L080428AC @ case 213
	.4byte .L08042908 @ case 214
	.4byte .L08042920 @ case 215
	.4byte .L0804294E @ case 216
	.4byte .L080429A8 @ case 217
	.4byte .L080429C0 @ case 218
	.4byte .L080429F4 @ case 219
	.4byte .L08042A0C @ case 220
	.4byte .L08042A34 @ case 221
	.4byte .L08042A58 @ case 222
	.4byte .L08042A7C @ case 223
	.4byte .L08042AA4 @ case 224
	.4byte .L08042AD4 @ case 225
	.4byte .L08042AEC @ case 226
	.4byte .L08042C98 @ case 227
	.4byte .L08042CBC @ case 228
	.4byte .L08042CE4 @ case 229
	.4byte .L08042D1A @ case 230
	.4byte .L08042D38 @ case 231
	.4byte .L08042D4E @ case 232
	.4byte .L08042D72 @ case 233
	.4byte .L08042D94 @ case 234
	.4byte .L08042D04 @ case 235
	.4byte .L08042DB2 @ case 236
	.4byte .L08042DD4 @ case 237
	.4byte .L08042E04 @ case 238
	.4byte .L08043618 @ case 239
	.4byte .L08043630 @ case 240
	.4byte .L080437FC @ case 241
	.4byte .L08043820 @ case 242
	.4byte .L08043848 @ case 243
	.4byte .L08043DBC @ case 244
	.4byte .L08043E30 @ case 245
	.4byte .L08043E66 @ case 246
	.4byte .L08043E9C @ case 247
	.4byte .L08043EC8 @ case 248
	.4byte .L08043EF4 @ case 249
	.4byte .L08043F0A @ case 250
	.4byte .L08044DF0 @ case 251
	.4byte .L080423F0 @ case 252
	.4byte .L0804241E @ case 253
	.4byte .L080442D2 @ case 254
	.4byte .L080442EA @ case 255
	.4byte .L08044336 @ case 256
	.4byte .L080443C0 @ case 257
	.4byte .L08044406 @ case 258
	.4byte .L08044472 @ case 259
	.4byte .L0804448C @ case 260
	.4byte .L080444D6 @ case 261
	.4byte .L08044562 @ case 262
	.4byte .L080445BA @ case 263
	.4byte .L08044604 @ case 264
	.4byte .L0804464E @ case 265
	.4byte .L08044698 @ case 266
	.4byte .L0804451A @ case 267
	.4byte .L080446E0 @ case 268
	.4byte .L08044728 @ case 269
	.4byte .L08044816 @ case 270
	.4byte .L08044912 @ case 271
	.4byte .L08044A34 @ case 272
	.4byte .L08044A4C @ case 273
	.4byte .L08044A64 @ case 274
	.4byte .L08044A7C @ case 275
	.4byte .L08044CAE @ case 276
	.4byte .L080441AC @ case 277
	.4byte .L080441C2 @ case 278
	.4byte .L080441E4 @ case 279
	.4byte .L08044850 @ case 280
	.4byte .L08044896 @ case 281
	.4byte .L080448C4 @ case 282
	.4byte .L08044D58 @ case 283
	.4byte .L08044D90 @ case 284
	.4byte .L08044DB0 @ case 285
	.4byte .L08044DD0 @ case 286
	.4byte .L08042E34 @ case 287
	.4byte .L0804315A @ case 288
	.4byte .L08043458 @ case 289
	.4byte .L08043484 @ case 290
	.4byte .L080434BA @ case 291
	.4byte .L080434E0 @ case 292
	.4byte .L0804358E @ case 293
	.4byte .L08043F2C @ case 294
	.4byte .L08043F7C @ case 295
	.4byte .L08044038 @ case 296
	.4byte .L080453CC @ case 297
	.4byte .L0804532A @ case 298
	.4byte .L0804414C @ case 299
	.4byte .L08044164 @ case 300
	.4byte .L08044D28 @ case 301
	.4byte .L080453E0 @ case 302
	.4byte .L08044F48 @ case 303
	.4byte .L08044F5C @ case 304
	.4byte .L08044F74 @ case 305
	.4byte .L08044F88 @ case 306
	.4byte .L08045496 @ case 307
	.4byte .L08043FF2 @ case 308
	.4byte .L08044D40 @ case 309
	.4byte .L08044EAC @ case 310
	.4byte .L08044EE0 @ case 311
	.4byte .L08044F14 @ case 312
	.4byte .L08045054 @ case 313
	.4byte .L080450E2 @ case 314
	.4byte .L0804513A @ case 315
	.4byte .L0804517A @ case 316
	.4byte .L0804510C @ case 317
	.4byte .L08045572 @ case 318
	.4byte .L08045572 @ case 319
	.4byte .L08045572 @ case 320
	.4byte .L08045572 @ case 321
	.4byte .L080454C8 @ case 322
	.4byte .L08045572 @ case 323
	.4byte .L0804551E @ case 324
	.4byte .L080454FA @ case 325
	.4byte .L08041794 @ case 326
.L0803FE20:
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	b .L0803FE2E
.L0803FE28:
	movs r2, #0xda
	lsls r2, r2, #1
	adds r1, r5, r2
.L0803FE2E:
	ldr r0, [r1]
	cmp r0, #0
	bne .L0803FE38
	bl .L08045572
.L0803FE38:
	subs r0, #1
	str r0, [r1]
	bl .L08045572
.L0803FE40:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r2, r5, r3
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r1, #0
	beq .L0803FE5E
	subs r0, r1, #1
	str r0, [r2]
.L0803FE5E:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L0803FE70
	subs r0, r1, #1
	str r0, [r2]
.L0803FE70:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r7, [r0]
	cmp r1, #0
	beq .L0803FE82
	subs r0, r1, #1
	str r0, [r2]
.L0803FE82:
	ldr r4, [r2]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L0803FE94
	subs r0, r4, #1
	str r0, [r2]
.L0803FE94:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L0803FEA4
	bl .L08045572
.L0803FEA4:
	mov r6, r8
	str r6, [sp]
	adds r2, r7, #0
	bl func_08012064
	bl .L08045572
.L0803FEB2:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r2, #0
	beq .L0803FECE
	subs r0, r2, #1
	str r0, [r4]
.L0803FECE:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	bne .L0803FEDE
	bl .L080448FA
.L0803FEDE:
	adds r0, r1, #0
	adds r1, r3, #0
	bl func_080120A4
	adds r2, r0, #0
	bl .L08045166
.L0803FEEC:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r2, #0
	beq .L0803FF08
	subs r0, r2, #1
	str r0, [r4]
.L0803FF08:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	bne .L0803FF18
	bl .L080448FA
.L0803FF18:
	adds r0, r1, #0
	adds r1, r3, #0
	bl func_080120C4
	adds r2, r0, #0
	bl .L08045166
.L0803FF26:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L0803FF42
	subs r0, r1, #1
	str r0, [r4]
.L0803FF42:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L0803FF54
	subs r0, r3, #1
	str r0, [r4]
.L0803FF54:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L0803FF64
	bl .L08045572
.L0803FF64:
	bl func_080120E4
	bl .L08045572
.L0803FF6C:
	adds r7, r5, #0
	adds r7, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r6, r5, r4
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L0803FF88
	subs r0, r1, #1
	str r0, [r6]
.L0803FF88:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L0803FF9A
	subs r0, r1, #1
	str r0, [r6]
.L0803FF9A:
	ldr r4, [r6]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L0803FFAC
	subs r0, r4, #1
	str r0, [r6]
.L0803FFAC:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L0803FFBC
	bl .L08045572
.L0803FFBC:
	bl func_0801223C
	bl .L08045572
.L0803FFC4:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L0803FFE0
	subs r0, r1, #1
	str r0, [r4]
.L0803FFE0:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L0803FFF2
	subs r0, r3, #1
	str r0, [r4]
.L0803FFF2:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040002
	bl .L08045572
.L08040002:
	bl func_08012154
	bl .L08045572
.L0804000A:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r2, #0
	beq .L08040026
	subs r0, r2, #1
	str r0, [r4]
.L08040026:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	bne .L08040036
	bl .L080448FA
.L08040036:
	adds r0, r1, #0
	adds r1, r3, #0
	bl func_08012114
	adds r2, r0, #0
	bl .L08045166
.L08040044:
	adds r7, r5, #0
	adds r7, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r6, r5, r2
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08040060
	subs r0, r1, #1
	str r0, [r6]
.L08040060:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08040072
	subs r0, r1, #1
	str r0, [r6]
.L08040072:
	ldr r4, [r6]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L08040084
	subs r0, r4, #1
	str r0, [r6]
.L08040084:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040094
	bl .L08045572
.L08040094:
	lsls r3, r3, #0x10
	bl func_08012174
	bl .L08045572
.L0804009E:
	adds r7, r5, #0
	adds r7, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L080400BA
	subs r0, r1, #1
	str r0, [r6]
.L080400BA:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080400CC
	subs r0, r1, #1
	str r0, [r6]
.L080400CC:
	ldr r4, [r6]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L080400DE
	subs r0, r4, #1
	str r0, [r6]
.L080400DE:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080400EE
	bl .L08045572
.L080400EE:
	bl func_08012174
	bl .L08045572
.L080400F6:
	adds r7, r5, #0
	adds r7, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08040112
	subs r0, r1, #1
	str r0, [r6]
.L08040112:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08040124
	subs r0, r1, #1
	str r0, [r6]
.L08040124:
	ldr r4, [r6]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L08040136
	subs r0, r4, #1
	str r0, [r6]
.L08040136:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040146
	bl .L08045572
.L08040146:
	lsls r3, r3, #0x10
	bl func_0801219C
	bl .L08045572
.L08040150:
	adds r7, r5, #0
	adds r7, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L0804016C
	subs r0, r1, #1
	str r0, [r6]
.L0804016C:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L0804017E
	subs r0, r1, #1
	str r0, [r6]
.L0804017E:
	ldr r4, [r6]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L08040190
	subs r0, r4, #1
	str r0, [r6]
.L08040190:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080401A0
	bl .L08045572
.L080401A0:
	bl func_0801219C
	bl .L08045572
.L080401A8:
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080401BE
	subs r0, r2, #1
	str r0, [r3]
.L080401BE:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L080401CE
	bl .L0804168A
.L080401CE:
	bl func_080121C4
	bl .L0804168A
.L080401D6:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080401F2
	subs r0, r1, #1
	str r0, [r4]
.L080401F2:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L08040204
	subs r0, r3, #1
	str r0, [r4]
.L08040204:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040214
	bl .L08045572
.L08040214:
	bl func_080121EC
	bl .L08045572
.L0804021C:
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08040232
	subs r0, r2, #1
	str r0, [r3]
.L08040232:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040242
	bl .L08045572
.L08040242:
	bl func_08012218
	bl .L08045572
.L0804024A:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08040260
	subs r0, r2, #1
	str r0, [r3]
.L08040260:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040270
	bl .L08045572
.L08040270:
	bl func_0801221C
	bl .L08045572
.L08040278:
	adds r7, r5, #0
	adds r7, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08040294
	subs r0, r1, #1
	str r0, [r6]
.L08040294:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080402A6
	subs r0, r1, #1
	str r0, [r6]
.L080402A6:
	ldr r4, [r6]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L080402B8
	subs r0, r4, #1
	str r0, [r6]
.L080402B8:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080402C8
	bl .L08045572
.L080402C8:
	bl func_08012274
	bl .L08045572
.L080402D0:
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080402E6
	subs r0, r2, #1
	str r0, [r3]
.L080402E6:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L080402F6
	bl .L08045572
.L080402F6:
	bl func_080122A0
	bl .L08045572
.L080402FE:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L0804031A
	subs r0, r1, #1
	str r0, [r4]
.L0804031A:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L0804032C
	subs r0, r3, #1
	str r0, [r4]
.L0804032C:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804033C
	bl .L08045572
.L0804033C:
	bl func_080122BC
	bl .L08045572
.L08040344:
	adds r7, r5, #0
	adds r7, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08040360
	subs r0, r1, #1
	str r0, [r6]
.L08040360:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08040372
	subs r0, r1, #1
	str r0, [r6]
.L08040372:
	ldr r4, [r6]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L08040384
	subs r0, r4, #1
	str r0, [r6]
.L08040384:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	beq .L08040394
	bl func_080122E0
.L08040394:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L080403A8 @ =0x000034D8
	adds r0, r0, r1
	bl func_0809C5EC
	bl .L08045572
	.align 2, 0
.L080403A8: .4byte 0x000034D8
.L080403AC:
	adds r7, r5, #0
	adds r7, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r6, r5, r2
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L080403C8
	subs r0, r1, #1
	str r0, [r6]
.L080403C8:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080403DA
	subs r0, r1, #1
	str r0, [r6]
.L080403DA:
	ldr r4, [r6]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L080403EC
	subs r0, r4, #1
	str r0, [r6]
.L080403EC:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080403FC
	bl .L08045572
.L080403FC:
	bl func_0801238C
	bl .L08045572
.L08040404:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040414
	bl .L0804168A
.L08040414:
	bl func_080123A4
	bl .L0804168A
.L0804041C:
	adds r4, r5, #0
	adds r4, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r1, [r3]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r7, [r0]
	cmp r1, #0
	beq .L08040438
	subs r0, r1, #1
	str r0, [r3]
.L08040438:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r6, [r0]
	cmp r2, #0
	beq .L0804044A
	subs r0, r2, #1
	str r0, [r3]
.L0804044A:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	bne .L0804045A
	bl .L08045572
.L0804045A:
	add r0, sp, #0xc
	movs r2, #0
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r3, [r0, #4]
	strb r2, [r0, #6]
	strb r2, [r0, #7]
	strb r2, [r0, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	add r3, sp, #0xc
	bl func_080123CC
	bl .L08045572
.L08040480:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040490
	bl .L08045572
.L08040490:
	bl func_08012454
	bl .L08045572
.L08040498:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080404B4
	subs r0, r1, #1
	str r0, [r4]
.L080404B4:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L080404C6
	subs r0, r3, #1
	str r0, [r4]
.L080404C6:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080404D6
	bl .L08045572
.L080404D6:
	bl func_08012464
	bl .L08045572
.L080404DE:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L080404EE
	bl .L08045572
.L080404EE:
	bl func_080124C4
	bl .L08045572
.L080404F6:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040506
	bl .L08045572
.L08040506:
	bl func_080125EC
	bl .L08045572
.L0804050E:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804051E
	bl .L0804168A
.L0804051E:
	bl func_080124D0
	bl .L0804168A
.L08040526:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040536
	bl .L0804168A
.L08040536:
	bl func_08012658
	bl .L0804168A
.L0804053E:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r1, #0
	beq .L08040554
	subs r0, r1, #1
	str r0, [r2]
.L08040554:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040564
	bl .L0804168A
.L08040564:
	adds r2, r0, #0
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bhi .L0804057A
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	b .L0804057C
.L0804057A:
	ldr r1, .L08040588 @ =0x080F9EB8
.L0804057C:
	adds r0, r2, #0
	movs r2, #0x40
	bl func_0801268C
	bl .L0804168A
	.align 2, 0
.L08040588: .4byte 0x080F9EB8
.L0804058C:
	movs r0, #0xda
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r1, #0
	beq .L080405A2
	subs r0, r1, #1
	str r0, [r2]
.L080405A2:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080405B2
	bl .L0804168A
.L080405B2:
	adds r2, r0, #0
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bhi .L080405C8
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	b .L080405CA
.L080405C8:
	ldr r1, .L080405D8 @ =0x080F9EB8
.L080405CA:
	adds r0, r2, #0
	movs r2, #0
	bl func_0801268C
	bl .L0804168A
	.align 2, 0
.L080405D8: .4byte 0x080F9EB8
.L080405DC:
	movs r3, #0xda
	lsls r3, r3, #1
	adds r2, r5, r3
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r1, #0
	beq .L080405F2
	subs r0, r1, #1
	str r0, [r2]
.L080405F2:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040602
	bl .L0804168A
.L08040602:
	adds r4, r0, #0
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bhi .L08040618
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	b .L0804061A
.L08040618:
	ldr r1, .L08040628 @ =0x080F9EB8
.L0804061A:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl func_0801268C
	bl .L0804168A
	.align 2, 0
.L08040628: .4byte 0x080F9EB8
.L0804062C:
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08040642
	subs r0, r2, #1
	str r0, [r3]
.L08040642:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040652
	bl .L08045572
.L08040652:
	bl func_080126E4
	bl .L08045572
.L0804065A:
	movs r3, #0xda
	lsls r3, r3, #1
	adds r2, r5, r3
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r1, #0
	beq .L08040670
	subs r0, r1, #1
	str r0, [r2]
.L08040670:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040680
	bl .L08045572
.L08040680:
	adds r2, r0, #0
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bhi .L08040696
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	b .L08040698
.L08040696:
	ldr r1, .L080406A4 @ =0x080F9EB8
.L08040698:
	adds r0, r2, #0
	bl func_08012720
	bl .L08045572
	.align 2, 0
.L080406A4: .4byte 0x080F9EB8
.L080406A8:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L080406B8
	bl .L08045572
.L080406B8:
	bl func_0801274C
	bl .L08045572
.L080406C0:
	adds r3, r5, #0
	adds r3, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r1, #0
	beq .L080406DE
	subs r0, r1, #1
	str r0, [r2]
.L080406DE:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r7, [r0]
	cmp r1, #0
	beq .L080406F0
	subs r0, r1, #1
	str r0, [r2]
.L080406F0:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08040702
	subs r0, r1, #1
	str r0, [r2]
.L08040702:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040712
	bl .L0804168A
.L08040712:
	ldr r4, [r5, #0x10]
	cmp r3, r4
	bhi .L08040726
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r6, r1, r0
	b .L08040728
.L08040726:
	ldr r6, .L0804073C @ =0x080F9EB8
.L08040728:
	cmp r7, r4
	bhi .L08040740
	ldr r1, [r5, #0x14]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r2, r1, r0
	b .L08040742
	.align 2, 0
.L0804073C: .4byte 0x080F9EB8
.L08040740:
	ldr r2, .L08040758 @ =0x080F9EB8
.L08040742:
	cmp r8, r4
	bhi .L0804075C
	ldr r1, [r5, #0x14]
	mov r3, r8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r3, r1, r0
	b .L0804075E
	.align 2, 0
.L08040758: .4byte 0x080F9EB8
.L0804075C:
	ldr r3, .L08040778 @ =0x080F9EB8
.L0804075E:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	adds r1, r6, #0
	bl func_08012860
	bl .L0804168A
	.align 2, 0
.L08040778: .4byte 0x080F9EB8
.L0804077C:
	adds r3, r5, #0
	adds r3, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r2, r5, r6
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov sb, r0
	cmp r1, #0
	beq .L0804079A
	subs r0, r1, #1
	str r0, [r2]
.L0804079A:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r1, #0
	beq .L080407AE
	subs r0, r1, #1
	str r0, [r2]
.L080407AE:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r6, [r0]
	cmp r1, #0
	beq .L080407C0
	subs r0, r1, #1
	str r0, [r2]
.L080407C0:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L080407D2
	subs r0, r1, #1
	str r0, [r2]
.L080407D2:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080407E2
	bl .L0804168A
.L080407E2:
	ldr r4, [r5, #0x10]
	cmp r3, r4
	bhi .L080407F6
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r7, r1, r0
	b .L080407F8
.L080407F6:
	ldr r7, .L0804080C @ =0x080F9EB8
.L080407F8:
	cmp r6, r4
	bhi .L08040810
	ldr r1, [r5, #0x14]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r2, r1, r0
	b .L08040812
	.align 2, 0
.L0804080C: .4byte 0x080F9EB8
.L08040810:
	ldr r2, .L08040828 @ =0x080F9EB8
.L08040812:
	cmp r8, r4
	bhi .L0804082C
	ldr r1, [r5, #0x14]
	mov r3, r8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r3, r1, r0
	b .L0804082E
	.align 2, 0
.L08040828: .4byte 0x080F9EB8
.L0804082C:
	ldr r3, .L08040844 @ =0x080F9EB8
.L0804082E:
	cmp sb, r4
	bhi .L08040848
	ldr r1, [r5, #0x14]
	mov r4, sb
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	b .L0804084A
	.align 2, 0
.L08040844: .4byte 0x080F9EB8
.L08040848:
	ldr r1, .L08040864 @ =0x080F9EB8
.L0804084A:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r7, #0
	bl func_08012860
	bl .L0804168A
	.align 2, 0
.L08040864: .4byte 0x080F9EB8
.L08040868:
	adds r3, r5, #0
	adds r3, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov sl, r0
	cmp r1, #0
	beq .L08040886
	subs r0, r1, #1
	str r0, [r2]
.L08040886:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov sb, r0
	cmp r1, #0
	beq .L0804089A
	subs r0, r1, #1
	str r0, [r2]
.L0804089A:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r1, #0
	beq .L080408AE
	subs r0, r1, #1
	str r0, [r2]
.L080408AE:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r6, [r0]
	cmp r1, #0
	beq .L080408C0
	subs r0, r1, #1
	str r0, [r2]
.L080408C0:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L080408D2
	subs r0, r1, #1
	str r0, [r2]
.L080408D2:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080408E2
	bl .L0804168A
.L080408E2:
	ldr r4, [r5, #0x10]
	cmp r3, r4
	bhi .L080408F6
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r7, r1, r0
	b .L080408F8
.L080408F6:
	ldr r7, .L0804090C @ =0x080F9EB8
.L080408F8:
	cmp r6, r4
	bhi .L08040910
	ldr r1, [r5, #0x14]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r2, r1, r0
	b .L08040912
	.align 2, 0
.L0804090C: .4byte 0x080F9EB8
.L08040910:
	ldr r2, .L08040928 @ =0x080F9EB8
.L08040912:
	cmp r8, r4
	bhi .L0804092C
	ldr r1, [r5, #0x14]
	mov r3, r8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r3, r1, r0
	b .L0804092E
	.align 2, 0
.L08040928: .4byte 0x080F9EB8
.L0804092C:
	ldr r3, .L08040944 @ =0x080F9EB8
.L0804092E:
	cmp sb, r4
	bhi .L08040948
	ldr r1, [r5, #0x14]
	mov r6, sb
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r6, r1, r0
	b .L0804094A
	.align 2, 0
.L08040944: .4byte 0x080F9EB8
.L08040948:
	ldr r6, .L08040960 @ =0x080F9EB8
.L0804094A:
	cmp sl, r4
	bhi .L08040964
	ldr r1, [r5, #0x14]
	mov r4, sl
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	b .L08040966
	.align 2, 0
.L08040960: .4byte 0x080F9EB8
.L08040964:
	ldr r1, .L0804097C @ =0x080F9EB8
.L08040966:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	str r6, [sp]
	str r1, [sp, #4]
	adds r1, r7, #0
	bl func_08012860
	bl .L0804168A
	.align 2, 0
.L0804097C: .4byte 0x080F9EB8
.L08040980:
	adds r3, r5, #0
	adds r3, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r2, r5, r6
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r6, [r0]
	cmp r1, #0
	beq .L0804099C
	subs r0, r1, #1
	str r0, [r2]
.L0804099C:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L080409AE
	subs r0, r1, #1
	str r0, [r2]
.L080409AE:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080409BE
	bl .L0804168A
.L080409BE:
	ldr r4, [r5, #0x10]
	cmp r3, r4
	bhi .L080409D2
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r3, r1, r0
	b .L080409D4
.L080409D2:
	ldr r3, .L080409E8 @ =0x080F9EB8
.L080409D4:
	cmp r6, r4
	bhi .L080409EC
	ldr r1, [r5, #0x14]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r2, r1, r0
	b .L080409EE
	.align 2, 0
.L080409E8: .4byte 0x080F9EB8
.L080409EC:
	ldr r2, .L08040A0C @ =0x080F9EB8
.L080409EE:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r1, r3, #0
	movs r3, #0
	bl func_080128D0
	bl .L0804168A
	.align 2, 0
.L08040A0C: .4byte 0x080F9EB8
.L08040A10:
	adds r3, r5, #0
	adds r3, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r2, r5, r6
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r1, #0
	beq .L08040A2E
	subs r0, r1, #1
	str r0, [r2]
.L08040A2E:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r7, [r0]
	cmp r1, #0
	beq .L08040A40
	subs r0, r1, #1
	str r0, [r2]
.L08040A40:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08040A52
	subs r0, r1, #1
	str r0, [r2]
.L08040A52:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040A62
	bl .L0804168A
.L08040A62:
	ldr r4, [r5, #0x10]
	cmp r3, r4
	bhi .L08040A76
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r6, r1, r0
	b .L08040A78
.L08040A76:
	ldr r6, .L08040A8C @ =0x080F9EB8
.L08040A78:
	cmp r7, r4
	bhi .L08040A90
	ldr r1, [r5, #0x14]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r2, r1, r0
	b .L08040A92
	.align 2, 0
.L08040A8C: .4byte 0x080F9EB8
.L08040A90:
	ldr r2, .L08040AA8 @ =0x080F9EB8
.L08040A92:
	cmp r8, r4
	bhi .L08040AAC
	ldr r1, [r5, #0x14]
	mov r3, r8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r3, r1, r0
	b .L08040AAE
	.align 2, 0
.L08040AA8: .4byte 0x080F9EB8
.L08040AAC:
	ldr r3, .L08040AC8 @ =0x080F9EB8
.L08040AAE:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r1, r6, #0
	bl func_080128D0
	bl .L0804168A
	.align 2, 0
.L08040AC8: .4byte 0x080F9EB8
.L08040ACC:
	adds r3, r5, #0
	adds r3, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r2, r5, r6
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov sb, r0
	cmp r1, #0
	beq .L08040AEA
	subs r0, r1, #1
	str r0, [r2]
.L08040AEA:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r1, #0
	beq .L08040AFE
	subs r0, r1, #1
	str r0, [r2]
.L08040AFE:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r6, [r0]
	cmp r1, #0
	beq .L08040B10
	subs r0, r1, #1
	str r0, [r2]
.L08040B10:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08040B22
	subs r0, r1, #1
	str r0, [r2]
.L08040B22:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040B32
	bl .L0804168A
.L08040B32:
	ldr r4, [r5, #0x10]
	cmp r3, r4
	bhi .L08040B46
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r7, r1, r0
	b .L08040B48
.L08040B46:
	ldr r7, .L08040B5C @ =0x080F9EB8
.L08040B48:
	cmp r6, r4
	bhi .L08040B60
	ldr r1, [r5, #0x14]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r2, r1, r0
	b .L08040B62
	.align 2, 0
.L08040B5C: .4byte 0x080F9EB8
.L08040B60:
	ldr r2, .L08040B78 @ =0x080F9EB8
.L08040B62:
	cmp r8, r4
	bhi .L08040B7C
	ldr r1, [r5, #0x14]
	mov r3, r8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r3, r1, r0
	b .L08040B7E
	.align 2, 0
.L08040B78: .4byte 0x080F9EB8
.L08040B7C:
	ldr r3, .L08040B94 @ =0x080F9EB8
.L08040B7E:
	cmp sb, r4
	bhi .L08040B98
	ldr r1, [r5, #0x14]
	mov r4, sb
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	b .L08040B9A
	.align 2, 0
.L08040B94: .4byte 0x080F9EB8
.L08040B98:
	ldr r1, .L08040BB4 @ =0x080F9EB8
.L08040B9A:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r1, r7, #0
	bl func_080128D0
	bl .L0804168A
	.align 2, 0
.L08040BB4: .4byte 0x080F9EB8
.L08040BB8:
	adds r3, r5, #0
	adds r3, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov sl, r0
	cmp r1, #0
	beq .L08040BD6
	subs r0, r1, #1
	str r0, [r2]
.L08040BD6:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov sb, r0
	cmp r1, #0
	beq .L08040BEA
	subs r0, r1, #1
	str r0, [r2]
.L08040BEA:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r1, #0
	beq .L08040BFE
	subs r0, r1, #1
	str r0, [r2]
.L08040BFE:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r6, [r0]
	cmp r1, #0
	beq .L08040C10
	subs r0, r1, #1
	str r0, [r2]
.L08040C10:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08040C22
	subs r0, r1, #1
	str r0, [r2]
.L08040C22:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040C32
	bl .L0804168A
.L08040C32:
	ldr r4, [r5, #0x10]
	cmp r3, r4
	bhi .L08040C46
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r7, r1, r0
	b .L08040C48
.L08040C46:
	ldr r7, .L08040C5C @ =0x080F9EB8
.L08040C48:
	cmp r6, r4
	bhi .L08040C60
	ldr r1, [r5, #0x14]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r2, r1, r0
	b .L08040C62
	.align 2, 0
.L08040C5C: .4byte 0x080F9EB8
.L08040C60:
	ldr r2, .L08040C78 @ =0x080F9EB8
.L08040C62:
	cmp r8, r4
	bhi .L08040C7C
	ldr r1, [r5, #0x14]
	mov r3, r8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r3, r1, r0
	b .L08040C7E
	.align 2, 0
.L08040C78: .4byte 0x080F9EB8
.L08040C7C:
	ldr r3, .L08040C94 @ =0x080F9EB8
.L08040C7E:
	cmp sb, r4
	bhi .L08040C98
	ldr r1, [r5, #0x14]
	mov r6, sb
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r6, r1, r0
	b .L08040C9A
	.align 2, 0
.L08040C94: .4byte 0x080F9EB8
.L08040C98:
	ldr r6, .L08040CB0 @ =0x080F9EB8
.L08040C9A:
	cmp sl, r4
	bhi .L08040CB4
	ldr r1, [r5, #0x14]
	mov r4, sl
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	b .L08040CB6
	.align 2, 0
.L08040CB0: .4byte 0x080F9EB8
.L08040CB4:
	ldr r1, .L08040CD0 @ =0x080F9EB8
.L08040CB6:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	str r6, [sp]
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	adds r1, r7, #0
	bl func_080128D0
	bl .L0804168A
	.align 2, 0
.L08040CD0: .4byte 0x080F9EB8
.L08040CD4:
	adds r3, r5, #0
	adds r3, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r2, r5, r6
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov ip, r0
	cmp r1, #0
	beq .L08040CF2
	subs r0, r1, #1
	str r0, [r2]
.L08040CF2:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov sl, r0
	cmp r1, #0
	beq .L08040D06
	subs r0, r1, #1
	str r0, [r2]
.L08040D06:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	mov sb, r0
	cmp r1, #0
	beq .L08040D1A
	subs r0, r1, #1
	str r0, [r2]
.L08040D1A:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r7, [r0]
	cmp r1, #0
	beq .L08040D2C
	subs r0, r1, #1
	str r0, [r2]
.L08040D2C:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r6, [r0]
	cmp r1, #0
	beq .L08040D3E
	subs r0, r1, #1
	str r0, [r2]
.L08040D3E:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08040D50
	subs r0, r1, #1
	str r0, [r2]
.L08040D50:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040D60
	bl .L0804168A
.L08040D60:
	ldr r4, [r5, #0x10]
	cmp r3, r4
	bhi .L08040D76
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	mov r8, r1
	b .L08040D7A
.L08040D76:
	ldr r2, .L08040D8C @ =0x080F9EB8
	mov r8, r2
.L08040D7A:
	cmp r6, r4
	bhi .L08040D90
	ldr r1, [r5, #0x14]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r2, r1, r0
	b .L08040D92
	.align 2, 0
.L08040D8C: .4byte 0x080F9EB8
.L08040D90:
	ldr r2, .L08040DA4 @ =0x080F9EB8
.L08040D92:
	cmp r7, r4
	bhi .L08040DA8
	ldr r1, [r5, #0x14]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r3, r1, r0
	b .L08040DAA
	.align 2, 0
.L08040DA4: .4byte 0x080F9EB8
.L08040DA8:
	ldr r3, .L08040DC0 @ =0x080F9EB8
.L08040DAA:
	cmp sb, r4
	bhi .L08040DC4
	ldr r1, [r5, #0x14]
	mov r6, sb
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r7, r1, r0
	b .L08040DC6
	.align 2, 0
.L08040DC0: .4byte 0x080F9EB8
.L08040DC4:
	ldr r7, .L08040DDC @ =0x080F9EB8
.L08040DC6:
	cmp sl, r4
	bhi .L08040DE0
	ldr r1, [r5, #0x14]
	mov r6, sl
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r6, r1, r0
	b .L08040DE2
	.align 2, 0
.L08040DDC: .4byte 0x080F9EB8
.L08040DE0:
	ldr r6, .L08040DF8 @ =0x080F9EB8
.L08040DE2:
	cmp ip, r4
	bhi .L08040DFC
	ldr r1, [r5, #0x14]
	mov r4, ip
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	b .L08040DFE
	.align 2, 0
.L08040DF8: .4byte 0x080F9EB8
.L08040DFC:
	ldr r1, .L08040E18 @ =0x080F9EB8
.L08040DFE:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	str r7, [sp]
	str r6, [sp, #4]
	str r1, [sp, #8]
	mov r1, r8
	bl func_080128D0
	bl .L0804168A
	.align 2, 0
.L08040E18: .4byte 0x080F9EB8
.L08040E1C:
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08040E32
	subs r0, r2, #1
	str r0, [r3]
.L08040E32:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040E42
	bl .L08045572
.L08040E42:
	bl func_08012760
	bl .L08045572
.L08040E4A:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040E5A
	bl .L08045572
.L08040E5A:
	bl func_0801278C
	bl .L08045572
.L08040E62:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08040E78
	subs r0, r2, #1
	str r0, [r3]
.L08040E78:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040E88
	bl .L08045572
.L08040E88:
	bl func_080127A0
	bl .L08045572
.L08040E90:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040EA0
	bl .L08045572
.L08040EA0:
	bl func_0801284C
	bl .L08045572
.L08040EA8:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08040EC4
	subs r0, r1, #1
	str r0, [r4]
.L08040EC4:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r6, [r0]
	cmp r3, #0
	beq .L08040ED6
	subs r0, r3, #1
	str r0, [r4]
.L08040ED6:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r1, [r0]
	cmp r1, #0
	bne .L08040EE4
	b .L0804168A
.L08040EE4:
	mov r3, sp
	movs r0, #1
	strb r0, [r3]
	adds r0, r1, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_0801297C
	b .L0804168A
.L08040EF6:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08040F12
	subs r0, r1, #1
	str r0, [r4]
.L08040F12:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r6, [r0]
	cmp r3, #0
	beq .L08040F24
	subs r0, r3, #1
	str r0, [r4]
.L08040F24:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	bne .L08040F32
	b .L0804168A
.L08040F32:
	mov r3, sp
	movs r0, #1
	strb r0, [r3]
	adds r0, r1, #0
	adds r1, r6, #0
	movs r3, #0
	bl func_0801297C
	b .L0804168A
.L08040F44:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08040F60
	subs r0, r1, #1
	str r0, [r4]
.L08040F60:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r6, [r0]
	cmp r3, #0
	beq .L08040F72
	subs r0, r3, #1
	str r0, [r4]
.L08040F72:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r1, [r0]
	cmp r1, #0
	bne .L08040F80
	b .L0804168A
.L08040F80:
	mov r3, sp
	movs r0, #0
	strb r0, [r3]
	adds r0, r1, #0
	adds r1, r6, #0
	movs r3, #0
	bl func_0801297C
	b .L0804168A
.L08040F92:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08040FA8
	subs r0, r2, #1
	str r0, [r3]
.L08040FA8:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040FB6
	b .L0804168A
.L08040FB6:
	bl func_08012BAC
	b .L0804168A
.L08040FBC:
	movs r0, #0xda
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08040FD2
	subs r0, r2, #1
	str r0, [r3]
.L08040FD2:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08040FE2
	bl .L08045572
.L08040FE2:
	movs r2, #0
	bl func_08012B04
	bl .L08045572
.L08040FEC:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08041008
	subs r0, r1, #1
	str r0, [r4]
.L08041008:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L0804101A
	subs r0, r3, #1
	str r0, [r4]
.L0804101A:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804102A
	bl .L08045572
.L0804102A:
	bl func_08012AA4
	bl .L08045572
.L08041032:
	adds r7, r5, #0
	adds r7, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L0804104E
	subs r0, r1, #1
	str r0, [r6]
.L0804104E:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08041060
	subs r0, r1, #1
	str r0, [r6]
.L08041060:
	ldr r4, [r6]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r7, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L08041072
	subs r0, r4, #1
	str r0, [r6]
.L08041072:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08041082
	bl .L08045572
.L08041082:
	bl func_08012ADC
	bl .L08045572
.L0804108A:
	adds r4, r5, #0
	adds r4, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r1, [r3]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r6, [r0]
	cmp r1, #0
	beq .L080410A6
	subs r0, r1, #1
	str r0, [r3]
.L080410A6:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r4, [r0]
	cmp r2, #0
	beq .L080410B8
	subs r0, r2, #1
	str r0, [r3]
.L080410B8:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080410C8
	bl .L08045572
.L080410C8:
	adds r3, r0, #0
	ldr r0, [r5, #0x10]
	cmp r6, r0
	bhi .L080410DE
	ldr r1, [r5, #0x14]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r2, r1, r0
	b .L080410E0
.L080410DE:
	ldr r2, .L080410EC @ =0x080F9EB8
.L080410E0:
	adds r0, r3, #0
	adds r1, r4, #0
	bl func_08012ACC
	bl .L08045572
	.align 2, 0
.L080410EC: .4byte 0x080F9EB8
.L080410F0:
	bl rand
	adds r4, r0, #0
	ldr r0, .L08041108 @ =0x00007FFF
	ands r4, r0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L08041108: .4byte 0x00007FFF
.L0804110C:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r7, [r0]
	cmp r2, #0
	beq .L08041128
	subs r0, r2, #1
	str r0, [r4]
.L08041128:
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r5, [r0]
	cmp r1, #0
	beq .L0804113A
	subs r0, r1, #1
	str r0, [r4]
.L0804113A:
	cmp r5, r7
	bgt .L08041150
	bl rand
	subs r1, r7, r5
	adds r1, #1
	bl __modsi3
	adds r2, r0, r5
	bl .L08045166
.L08041150:
	ldr r2, [r4]
	cmp r2, #0x63
	bls .L0804115A
	bl .L08045572
.L0804115A:
	lsls r0, r2, #2
	adds r0, r6, r0
	movs r1, #0
	bl .L08044CF6
.L08041164:
	adds r6, r5, #0
	adds r6, #0x24
	movs r1, #0xda
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041180
	subs r0, r2, #1
	str r0, [r4]
.L08041180:
	adds r0, r5, #0
	bl func_0804590C
	adds r2, r0, #0
	bl .L08045166
.L0804118C:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080411A8
	subs r0, r1, #1
	str r0, [r4]
.L080411A8:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L080411BA
	subs r0, r3, #1
	str r0, [r4]
.L080411BA:
	adds r0, r5, #0
	bl func_08048FFC
	bl .L08045572
.L080411C4:
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r4, [r1]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r2, r0
	ldr r3, [r0]
	adds r6, r1, #0
	mov r8, r2
	cmp r4, #0
	beq .L080411E4
	subs r0, r4, #1
	str r0, [r6]
.L080411E4:
	cmp r3, #1
	beq .L08041210
	cmp r3, #1
	bgt .L080411F2
	cmp r3, #0
	beq .L080411FC
	b .L0804124C
.L080411F2:
	cmp r3, #2
	beq .L08041224
	cmp r3, #3
	beq .L08041238
	b .L0804124C
.L080411FC:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L08041206
	bl .L08045572
.L08041206:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #1
	bl .L0804370E
.L08041210:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L0804121A
	bl .L08045572
.L0804121A:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #0
	bl .L0804370E
.L08041224:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L0804122E
	bl .L08045572
.L0804122E:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #3
	bl .L0804370E
.L08041238:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L08041242
	bl .L08045572
.L08041242:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #2
	bl .L0804370E
.L0804124C:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L08041256
	bl .L08045572
.L08041256:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #1
	bl .L0804370E
.L08041260:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r2, #0
	beq .L0804127C
	subs r0, r2, #1
	str r0, [r4]
.L0804127C:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	bne .L0804128C
	bl .L080448FA
.L0804128C:
	adds r0, r1, #0
	adds r1, r3, #0
	bl func_08012134
	adds r2, r0, #0
	bl .L08045166
.L0804129A:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L080412B4 @ =0x00001C2C
	adds r0, r0, r3
	bl func_0800F190
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl .L080454A8
	.align 2, 0
.L080412B4: .4byte 0x00001C2C
.L080412B8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L08041310 @ =0x00001C2C
	adds r4, r0, r2
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08041314
	adds r0, r4, #0
	bl func_0800F204
	adds r6, r0, #0
	cmp r6, #1
	bne .L08041314
	adds r0, r4, #0
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x18
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08041314
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r3, [r1]
	cmp r3, #0x63
	bls .L08041306
	bl .L08045572
.L08041306:
	lsls r0, r3, #2
	adds r0, r2, r0
	str r6, [r0]
	bl .L080454BE
	.align 2, 0
.L08041310: .4byte 0x00001C2C
.L08041314:
	adds r1, r5, #0
	adds r1, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r3, [r2]
	cmp r3, #0x63
	bls .L08041328
	bl .L08045572
.L08041328:
	lsls r0, r3, #2
	adds r0, r1, r0
	movs r1, #0
	bl .L08045516
.L08041332:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L08041360 @ =0x00001C2C
	adds r4, r0, r1
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08041364
	adds r0, r4, #0
	bl func_0800F204
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L08041360: .4byte 0x00001C2C
.L08041364:
	adds r1, r5, #0
	adds r1, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r3, [r2]
	cmp r3, #0x63
	bls .L08041378
	bl .L08045572
.L08041378:
	lsls r0, r3, #2
	adds r0, r1, r0
	movs r1, #1
	rsbs r1, r1, #0
	bl .L08045516
.L08041384:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L080413B4 @ =0x00001C2C
	adds r4, r0, r1
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080413B8
	adds r0, r4, #0
	bl func_0800F388
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L080413B4: .4byte 0x00001C2C
.L080413B8:
	adds r1, r5, #0
	adds r1, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r3, [r2]
	cmp r3, #0x63
	bls .L080413CC
	bl .L08045572
.L080413CC:
	lsls r0, r3, #2
	adds r0, r1, r0
	movs r1, #0
	bl .L08045516
.L080413D6:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L08041418 @ =0x00001C2C
	adds r4, r0, r1
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0804141C
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #0
	bne .L0804141C
	add r0, sp, #0xc
	adds r1, r4, #0
	bl func_0800F20C
	add r0, sp, #0xc
	bl GetId__C4Food
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L08041418: .4byte 0x00001C2C
.L0804141C:
	adds r1, r5, #0
	adds r1, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r3, [r2]
	cmp r3, #0x63
	bls .L08041430
	bl .L08045572
.L08041430:
	lsls r0, r3, #2
	adds r0, r1, r0
	movs r1, #1
	rsbs r1, r1, #0
	bl .L08045516
.L0804143C:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L08041480 @ =0x00001C2C
	adds r4, r0, r1
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08041484
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #1
	bne .L08041484
	adds r0, r4, #0
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x19
	strb r1, [r0]
	bl GetId__C7Article
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L08041480: .4byte 0x00001C2C
.L08041484:
	adds r1, r5, #0
	adds r1, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r3, [r2]
	cmp r3, #0x63
	bls .L08041498
	bl .L08045572
.L08041498:
	lsls r0, r3, #2
	adds r0, r1, r0
	movs r1, #1
	rsbs r1, r1, #0
	bl .L08045516
.L080414A4:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L080414DC @ =0x00001C2C
	adds r4, r0, r1
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080414E0
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #3
	bne .L080414E0
	adds r0, r4, #0
	bl func_0800F344
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L080414DC: .4byte 0x00001C2C
.L080414E0:
	adds r1, r5, #0
	adds r1, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r3, [r2]
	cmp r3, #0x63
	bls .L080414F4
	bl .L08045572
.L080414F4:
	lsls r0, r3, #2
	adds r0, r1, r0
	movs r1, #1
	rsbs r1, r1, #0
	bl .L08045516
.L08041500:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804150E
	b .L0804168A
.L0804150E:
	bl func_080141EC
	b .L0804168A
.L08041514:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08041524
	bl .L08045572
.L08041524:
	bl func_08014214
	bl .L08045572
.L0804152C:
	movs r2, #0xda
	lsls r2, r2, #1
	adds r3, r5, r2
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08041542
	subs r0, r2, #1
	str r0, [r3]
.L08041542:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r5, [r0]
	cmp r5, #0
	bne .L08041550
	b .L0804168A
.L08041550:
	add r4, sp, #0x10
	adds r0, r4, #0
	bl __4FoodUi
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	add r0, sp, #0xc
	bl __12RucksackItemG4Food
	adds r0, r5, #0
	add r1, sp, #0xc
	movs r2, #0
	bl func_08014164
	b .L0804168A
.L08041580:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08041596
	subs r0, r2, #1
	str r0, [r3]
.L08041596:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r5, [r0]
	cmp r5, #0
	beq .L0804168A
	mov r4, sp
	adds r4, #0x1a
	adds r0, r4, #0
	bl __7ArticleUi
	ldrb r1, [r4]
	add r0, sp, #0xc
	bl __12RucksackItemG7Article
	adds r0, r5, #0
	add r1, sp, #0xc
	movs r2, #0
	bl func_08014164
	b .L0804168A
.L080415C0:
	movs r0, #0xda
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080415D6
	subs r0, r2, #1
	str r0, [r3]
.L080415D6:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r5, [r0]
	cmp r5, #0
	beq .L0804168A
	add r4, sp, #0x10
	adds r0, r4, #0
	bl __4FoodUi
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	add r0, sp, #0xc
	bl __12RucksackItemG4Food
	adds r0, r5, #0
	add r1, sp, #0xc
	movs r2, #1
	bl func_08014164
	b .L0804168A
.L08041612:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08041628
	subs r0, r2, #1
	str r0, [r3]
.L08041628:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r5, [r0]
	cmp r5, #0
	beq .L0804168A
	mov r4, sp
	adds r4, #0x1b
	adds r0, r4, #0
	bl __7ArticleUi
	ldrb r1, [r4]
	add r0, sp, #0xc
	bl __12RucksackItemG7Article
	adds r0, r5, #0
	add r1, sp, #0xc
	movs r2, #1
	bl func_08014164
	b .L0804168A
.L08041652:
	movs r4, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L08041668
	bl func_0801412C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
.L08041668:
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r3, [r1]
	cmp r3, #0x63
	bhi .L08041682
	lsls r0, r3, #2
	adds r0, r2, r0
	str r4, [r0]
	adds r0, r3, #1
	str r0, [r1]
.L08041682:
	cmp r4, #0
	bne .L0804168A
	bl .L08045572
.L0804168A:
	movs r0, #1
	bl .L08045574
.L08041690:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	beq .L0804168A
	bl func_080141C4
	b .L0804168A
.L080416A2:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L080416F0 @ =0x00001C34
	adds r4, r0, r1
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r4, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080416D0
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x1c
	strb r1, [r0]
	bl GetId__C4Tool
	adds r6, r0, #0
.L080416D0:
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r3, [r1]
	cmp r3, #0x63
	bls .L080416E4
	bl .L08045572
.L080416E4:
	lsls r0, r3, #2
	adds r0, r2, r0
	str r6, [r0]
	bl .L080454BE
	.align 2, 0
.L080416F0: .4byte 0x00001C34
.L080416F4:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L08041738 @ =0x00001C34
	adds r4, r0, r6
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r4, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08041718
	adds r0, r4, #0
	bl GetAmount__C9ToolStack
	adds r6, r0, #0
.L08041718:
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r3, [r1]
	cmp r3, #0x63
	bls .L0804172C
	bl .L08045572
.L0804172C:
	lsls r0, r3, #2
	adds r0, r2, r0
	str r6, [r0]
	bl .L080454BE
	.align 2, 0
.L08041738: .4byte 0x00001C34
.L0804173C:
	adds r4, r5, #0
	adds r4, #0x24
	movs r1, #0xda
	lsls r1, r1, #1
	adds r3, r5, r1
	ldr r1, [r3]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r6, [r0]
	cmp r1, #0
	beq .L08041758
	subs r0, r1, #1
	str r0, [r3]
.L08041758:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L0804176A
	subs r0, r2, #1
	str r0, [r3]
.L0804176A:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r5, [r0]
	ldr r3, .L08041790 @ =0x00001C34
	adds r5, r5, r3
	mov r4, sp
	adds r4, #0x1d
	adds r0, r4, #0
	bl __4ToolUi
	ldrb r1, [r4]
	add r0, sp, #0xc
	adds r2, r6, #0
	bl __9ToolStackG4ToolUi
	adds r0, r5, #0
	b .L08041874
	.align 2, 0
.L08041790: .4byte 0x00001C34
.L08041794:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L080417A4 @ =0x00001BD8
	adds r7, r0, r6
	movs r6, #0
	b .L08041830
	.align 2, 0
.L080417A4: .4byte 0x00001BD8
.L080417A8:
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x1e
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #5
	beq .L0804182E
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x1f
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0xd
	beq .L0804182E
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x20
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x15
	beq .L0804182E
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x21
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x1d
	beq .L0804182E
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x22
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x25
	beq .L0804182E
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x23
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x2d
	beq .L0804182E
	bl .L08045572
.L0804182E:
	adds r6, #1
.L08041830:
	cmp r6, #9
	bls .L08041838
	bl .L08045572
.L08041838:
	adds r0, r7, #0
	bl func_0800EC4C
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L0804185C @ =0x00001C34
	adds r4, r0, r2
	adds r0, r4, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080417A8
	bl .L08045572
	.align 2, 0
.L0804185C: .4byte 0x00001C34
.L08041860:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r4, [r0]
	ldr r6, .L08041880 @ =0x00001C34
	adds r4, r4, r6
	add r0, sp, #0xc
	bl __9ToolStack
	adds r0, r4, #0
.L08041874:
	add r1, sp, #0xc
	movs r2, #2
	bl memcpy
	bl .L08045572
	.align 2, 0
.L08041880: .4byte 0x00001C34
.L08041884:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L080418A0
	subs r0, r2, #1
	str r0, [r4]
.L080418A0:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L080418B8 @ =0x00001C38
	adds r0, r0, r3
	bl GetFirstSlotWithFood__C8RucksackUi
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L080418B8: .4byte 0x00001C38
.L080418BC:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L080418D8
	subs r0, r2, #1
	str r0, [r4]
.L080418D8:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L080418F0 @ =0x00001C38
	adds r0, r0, r3
	bl GetFirstSlotWithArticle__C8RucksackUi
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L080418F0: .4byte 0x00001C38
.L080418F4:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L0804190A
	subs r0, r2, #1
	str r0, [r3]
.L0804190A:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r2, .L0804192C @ =0x00001C38
	adds r0, r0, r2
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0xc
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	bl .L08045572
	.align 2, 0
.L0804192C: .4byte 0x00001C38
.L08041930:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r4, .L08041944 @ =0x00001C38
	adds r0, r0, r4
	bl GetFirstFreeToolSlot__C8Rucksack
	bl .L080454A6
	.align 2, 0
.L08041944: .4byte 0x00001C38
.L08041948:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L08041968 @ =0x00001C38
	adds r0, r0, r2
	bl GetFirstFreeItemSlot__C8Rucksack
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L08041968: .4byte 0x00001C38
.L0804196C:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08041988
	subs r0, r1, #1
	str r0, [r4]
.L08041988:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L0804199A
	subs r0, r3, #1
	str r0, [r4]
.L0804199A:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r3, .L080419B0 @ =0x00001C38
	adds r0, r0, r3
	bl AddAmountOfArticle__8RucksackUiUi
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L080419B0: .4byte 0x00001C38
.L080419B4:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080419D0
	subs r0, r1, #1
	str r0, [r4]
.L080419D0:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L080419E2
	subs r0, r3, #1
	str r0, [r4]
.L080419E2:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r3, .L080419F8 @ =0x00001C38
	adds r0, r0, r3
	bl AddAmountOfFood__8RucksackUiUi
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L080419F8: .4byte 0x00001C38
.L080419FC:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08041A18
	subs r0, r1, #1
	str r0, [r4]
.L08041A18:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L08041A2A
	subs r0, r3, #1
	str r0, [r4]
.L08041A2A:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r3, .L08041A40 @ =0x00001C38
	adds r0, r0, r3
	bl AddAmountOfTool__8RucksackUiUi
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L08041A40: .4byte 0x00001C38
.L08041A44:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r2, #0
	beq .L08041A60
	subs r0, r2, #1
	str r0, [r4]
.L08041A60:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	adds r2, r3, #0
	cmp r3, #0
	bge .L08041A70
	adds r2, r3, #7
.L08041A70:
	asrs r2, r2, #3
	lsls r1, r2, #3
	subs r1, r3, r1
	ldr r3, .L08041A88 @ =0x000021DC
	adds r0, r0, r3
	adds r0, r0, r2
	ldrb r2, [r0]
	asrs r2, r1
	movs r0, #1
	ands r2, r0
	bl .L08045166
	.align 2, 0
.L08041A88: .4byte 0x000021DC
.L08041A8C:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r2, #0
	beq .L08041AA8
	subs r0, r2, #1
	str r0, [r4]
.L08041AA8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	adds r2, r3, #0
	cmp r3, #0
	bge .L08041AB8
	adds r2, r3, #7
.L08041AB8:
	asrs r2, r2, #3
	lsls r1, r2, #3
	subs r1, r3, r1
	ldr r3, .L08041AD0 @ =0x000021D4
	adds r0, r0, r3
	adds r0, r0, r2
	ldrb r2, [r0]
	asrs r2, r1
	movs r0, #1
	ands r2, r0
	bl .L08045166
	.align 2, 0
.L08041AD0: .4byte 0x000021D4
.L08041AD4:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r1, r5, r4
	ldr r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r2, #0
	beq .L08041AEA
	subs r0, r2, #1
	str r0, [r1]
.L08041AEA:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r2, [r0]
	adds r0, r3, #0
	cmp r3, #0
	bge .L08041AFA
	adds r0, r3, #7
.L08041AFA:
	asrs r0, r0, #3
	lsls r1, r0, #3
	subs r1, r3, r1
	ldr r3, .L08041B14 @ =0x000021DC
	adds r2, r2, r3
	adds r2, r2, r0
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	bl .L08045572
	.align 2, 0
.L08041B14: .4byte 0x000021DC
.L08041B18:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r1, #0
	beq .L08041B2E
	subs r0, r1, #1
	str r0, [r2]
.L08041B2E:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r2, [r0]
	adds r1, r3, #0
	cmp r3, #0
	bge .L08041B3E
	adds r1, r3, #7
.L08041B3E:
	asrs r1, r1, #3
	lsls r0, r1, #3
	subs r0, r3, r0
	ldr r3, .L08041B58 @ =0x000021DC
	adds r2, r2, r3
	adds r2, r2, r1
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	bl .L08045572
	.align 2, 0
.L08041B58: .4byte 0x000021DC
.L08041B5C:
	movs r4, #0x24
	adds r4, r4, r5
	mov r8, r4
	movs r0, #0xda
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r2, [r6]
	lsls r0, r2, #2
	subs r0, #4
	add r0, r8
	ldr r7, [r0]
	cmp r2, #0
	beq .L08041B7A
	subs r0, r2, #1
	str r0, [r6]
.L08041B7A:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldrb r5, [r0, #0x11]
	ldr r2, .L08041BC4 @ =0x00001CD4
	adds r4, r0, r2
	ldr r3, .L08041BC8 @ =0x00001BD8
	adds r0, r0, r3
	bl func_0800E4E8
	add r2, sp, #0x24
	strb r0, [r2]
	adds r0, r4, #0
	adds r1, r7, #0
	bl func_0809FE74
	movs r3, #0
	movs r1, #0x7f
	adds r2, r1, #0
	ands r2, r5
	ands r1, r0
	cmp r2, r1
	bne .L08041BAC
	movs r3, #1
.L08041BAC:
	adds r2, r3, #0
	ldr r1, [r6]
	cmp r1, #0x63
	bls .L08041BB8
	bl .L08045572
.L08041BB8:
	lsls r0, r1, #2
	add r0, r8
	str r2, [r0]
	bl .L08044A2C
	.align 2, 0
.L08041BC4: .4byte 0x00001CD4
.L08041BC8: .4byte 0x00001BD8
.L08041BCC:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041BE8
	subs r0, r2, #1
	str r0, [r4]
.L08041BE8:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08041C0C @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A06B0
	movs r2, #0
	cmp r0, #0
	bne .L08041C02
	bl .L08045166
.L08041C02:
	bl GetFriendship__C3Npc
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L08041C0C: .4byte 0x00001CD4
.L08041C10:
	adds r1, r5, #0
	adds r1, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r1, r0
	ldr r4, [r0]
	cmp r2, #0
	beq .L08041C2C
	subs r0, r2, #1
	str r0, [r3]
.L08041C2C:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r1, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041C3E
	subs r0, r2, #1
	str r0, [r3]
.L08041C3E:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r2, .L08041C60 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A06B0
	cmp r0, #0
	bne .L08041C56
	bl .L08045572
.L08041C56:
	adds r1, r4, #0
	bl AddFriendship__3Npci
	bl .L08045572
	.align 2, 0
.L08041C60: .4byte 0x00001CD4
.L08041C64:
	adds r1, r5, #0
	adds r1, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r1, r0
	ldr r4, [r0]
	cmp r2, #0
	beq .L08041C80
	subs r0, r2, #1
	str r0, [r3]
.L08041C80:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r1, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041C92
	subs r0, r2, #1
	str r0, [r3]
.L08041C92:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r2, .L08041CB4 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A06B0
	cmp r0, #0
	bne .L08041CAA
	bl .L08045572
.L08041CAA:
	adds r1, r4, #0
	bl SetFriendship__3Npci
	bl .L08045572
	.align 2, 0
.L08041CB4: .4byte 0x00001CD4
.L08041CB8:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041CD4
	subs r0, r2, #1
	str r0, [r4]
.L08041CD4:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08041CF8 @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A06B0
	movs r2, #0
	cmp r0, #0
	bne .L08041CEE
	bl .L08045166
.L08041CEE:
	bl GetDaysSinceLastSpoken__C3Npc
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L08041CF8: .4byte 0x00001CD4
.L08041CFC:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08041D12
	subs r0, r2, #1
	str r0, [r3]
.L08041D12:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r2, .L08041D34 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A06B0
	cmp r0, #0
	bne .L08041D2A
	bl .L08045572
.L08041D2A:
	bl SetSpokenTo__3Npc
	bl .L08045572
	.align 2, 0
.L08041D34: .4byte 0x00001CD4
.L08041D38:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041D54
	subs r0, r2, #1
	str r0, [r4]
.L08041D54:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08041D7C @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A06B0
	movs r2, #0
	cmp r0, #0
	bne .L08041D6E
	bl .L08045166
.L08041D6E:
	bl HasBeenSpokenToToday__C3Npc
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
	.align 2, 0
.L08041D7C: .4byte 0x00001CD4
.L08041D80:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041D9C
	subs r0, r2, #1
	str r0, [r4]
.L08041D9C:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08041DC4 @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A06B0
	movs r2, #0
	cmp r0, #0
	bne .L08041DB6
	bl .L08045166
.L08041DB6:
	bl HasBeenSpokenToJustNow__C3Npc
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
	.align 2, 0
.L08041DC4: .4byte 0x00001CD4
.L08041DC8:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041DE4
	subs r0, r2, #1
	str r0, [r4]
.L08041DE4:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08041E0C @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A06B0
	movs r2, #0
	cmp r0, #0
	bne .L08041DFE
	bl .L08045166
.L08041DFE:
	bl HasBeenMet__C3Npc
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
	.align 2, 0
.L08041E0C: .4byte 0x00001CD4
.L08041E10:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08041E26
	subs r0, r2, #1
	str r0, [r3]
.L08041E26:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r2, .L08041E48 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A06B0
	cmp r0, #0
	bne .L08041E3E
	bl .L08045572
.L08041E3E:
	bl SetGifted__3Npc
	bl .L08045572
	.align 2, 0
.L08041E48: .4byte 0x00001CD4
.L08041E4C:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041E68
	subs r0, r2, #1
	str r0, [r4]
.L08041E68:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08041E90 @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A06B0
	movs r2, #0
	cmp r0, #0
	bne .L08041E82
	bl .L08045166
.L08041E82:
	bl HasBeenGiftedToday__C3Npc
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
	.align 2, 0
.L08041E90: .4byte 0x00001CD4
.L08041E94:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041EB0
	subs r0, r2, #1
	str r0, [r4]
.L08041EB0:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08041ED4 @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A0878
	movs r2, #0
	cmp r0, #0
	bne .L08041ECA
	bl .L08045166
.L08041ECA:
	bl GetLove__C12Bachelorette
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L08041ED4: .4byte 0x00001CD4
.L08041ED8:
	adds r1, r5, #0
	adds r1, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r1, r0
	ldr r4, [r0]
	cmp r2, #0
	beq .L08041EF4
	subs r0, r2, #1
	str r0, [r3]
.L08041EF4:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r1, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041F06
	subs r0, r2, #1
	str r0, [r3]
.L08041F06:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r2, .L08041F28 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0878
	cmp r0, #0
	bne .L08041F1E
	bl .L08045572
.L08041F1E:
	adds r1, r4, #0
	bl AddLove__12Bachelorettei
	bl .L08045572
	.align 2, 0
.L08041F28: .4byte 0x00001CD4
.L08041F2C:
	adds r1, r5, #0
	adds r1, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r1, r0
	ldr r4, [r0]
	cmp r2, #0
	beq .L08041F48
	subs r0, r2, #1
	str r0, [r3]
.L08041F48:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r1, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08041F5A
	subs r0, r2, #1
	str r0, [r3]
.L08041F5A:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r2, .L08041F7C @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0878
	cmp r0, #0
	bne .L08041F72
	bl .L08045572
.L08041F72:
	adds r1, r4, #0
	bl SetLove__12Bachelorettei
	bl .L08045572
	.align 2, 0
.L08041F7C: .4byte 0x00001CD4
.L08041F80:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08041F9C
	subs r0, r1, #1
	str r0, [r4]
.L08041F9C:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L08041FAE
	subs r0, r3, #1
	str r0, [r4]
.L08041FAE:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08041FBE
	bl .L08045572
.L08041FBE:
	bl func_08014264
	bl .L08045572
.L08041FC6:
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08041FDC
	subs r0, r2, #1
	str r0, [r3]
.L08041FDC:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08041FEC
	bl .L08045572
.L08041FEC:
	bl func_08014290
	bl .L08045572
.L08041FF4:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042004
	bl .L0804168A
.L08042004:
	bl func_08012BBC
	bl .L0804168A
.L0804200C:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08042022
	subs r0, r2, #1
	str r0, [r3]
.L08042022:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042032
	bl .L0804168A
.L08042032:
	bl func_08012C50
	bl .L0804168A
.L0804203A:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804204A
	bl .L0804168A
.L0804204A:
	bl func_0801323C
	bl .L0804168A
.L08042052:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042062
	bl .L0804168A
.L08042062:
	bl func_080132D0
	bl .L0804168A
.L0804206A:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804207A
	bl .L0804168A
.L0804207A:
	bl func_08012CF4
	bl .L0804168A
.L08042082:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042092
	bl .L0804168A
.L08042092:
	bl func_08012D88
	bl .L0804168A
.L0804209A:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L080420AA
	bl .L0804168A
.L080420AA:
	bl func_08012E1C
	bl .L0804168A
.L080420B2:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080420C2
	bl .L0804168A
.L080420C2:
	bl func_08012EC0
	bl .L0804168A
.L080420CA:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L080420DA
	bl .L0804168A
.L080420DA:
	bl func_08012F54
	bl .L0804168A
.L080420E2:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L080420F2
	bl .L0804168A
.L080420F2:
	bl func_08012FE8
	bl .L0804168A
.L080420FA:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804210A
	bl .L0804168A
.L0804210A:
	bl func_08013080
	bl .L0804168A
.L08042112:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042122
	bl .L0804168A
.L08042122:
	bl func_08013114
	bl .L0804168A
.L0804212A:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804213A
	bl .L0804168A
.L0804213A:
	bl func_080131A8
	bl .L0804168A
.L08042142:
	movs r2, #0xda
	lsls r2, r2, #1
	adds r3, r5, r2
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08042158
	subs r0, r2, #1
	str r0, [r3]
.L08042158:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042168
	bl .L0804168A
.L08042168:
	bl func_08013364
	bl .L0804168A
.L08042170:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042180
	bl .L0804168A
.L08042180:
	bl func_08013408
	bl .L0804168A
.L08042188:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042198
	bl .L0804168A
.L08042198:
	bl func_080134A4
	bl .L0804168A
.L080421A0:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080421B0
	bl .L0804168A
.L080421B0:
	bl func_08013544
	bl .L0804168A
.L080421B8:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L080421C8
	bl .L0804168A
.L080421C8:
	bl func_080135D8
	bl .L0804168A
.L080421D0:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L080421E0
	bl .L0804168A
.L080421E0:
	bl func_0801366C
	bl .L0804168A
.L080421E8:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080421F8
	bl .L0804168A
.L080421F8:
	bl func_08013700
	bl .L0804168A
.L08042200:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042210
	bl .L0804168A
.L08042210:
	bl func_08013794
	bl .L0804168A
.L08042218:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042228
	bl .L08045572
.L08042228:
	bl func_08014034
	bl .L08045572
.L08042230:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042240
	bl .L08045572
.L08042240:
	bl func_0801404C
	bl .L08045572
.L08042248:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042258
	bl .L08045572
.L08042258:
	bl func_08014064
	bl .L08045572
.L08042260:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042270
	bl .L08045572
.L08042270:
	bl func_0801407C
	bl .L08045572
.L08042278:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042288
	bl .L08045572
.L08042288:
	bl func_08014094
	bl .L08045572
.L08042290:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080422A0
	bl .L08045572
.L080422A0:
	bl func_080140AC
	bl .L08045572
.L080422A8:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L080422C4
	subs r0, r2, #1
	str r0, [r4]
.L080422C4:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl HasBushelForEnt__C4CoopUi
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L080422DE:
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r4, [r0, #0x20]
	cmp r2, #0
	beq .L080422F4
	subs r0, r2, #1
	str r0, [r1]
.L080422F4:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r4, #0
	bl SetEntBushel__4CoopUi
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042318
	bl .L08045572
.L08042318:
	adds r1, r4, #0
	bl func_080140DC
	bl .L08045572
.L08042322:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L0804233E
	subs r0, r2, #1
	str r0, [r4]
.L0804233E:
	cmp r1, #0xf
	ble .L0804235E
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	subs r1, #0x10
	bl HasBushelForPregnancyStall__C4BarnUi
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L0804235E:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	bl HasBushelForStall__C4BarnUi
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L08042378:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r1, r5, r4
	ldr r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r4, [r0, #0x20]
	cmp r2, #0
	beq .L0804238E
	subs r0, r2, #1
	str r0, [r1]
.L0804238E:
	cmp r4, #0xf
	ble .L080423AA
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r4, #0
	subs r1, #0x10
	bl SetBushelForPregnancyStall__4BarnUi
	b .L080423BE
.L080423AA:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	adds r1, r4, #0
	bl SetBushelForStall__4BarnUi
.L080423BE:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L080423CE
	bl .L08045572
.L080423CE:
	adds r1, r4, #0
	bl func_080140C4
	bl .L08045572
.L080423D8:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080423E8
	bl .L08045572
.L080423E8:
	bl func_080140F4
	bl .L08045572
.L080423F0:
	movs r2, #0xda
	lsls r2, r2, #1
	adds r3, r5, r2
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08042406
	subs r0, r2, #1
	str r0, [r3]
.L08042406:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042416
	bl .L08045572
.L08042416:
	bl func_080142B8
	bl .L08045572
.L0804241E:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804242E
	bl .L08045572
.L0804242E:
	bl func_080142D4
	bl .L08045572
.L08042436:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetRecordPlayer__9FarmHouse
	bl HasAlbum__C12RecordPlayer
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L0804245E:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L0804247A
	subs r0, r2, #1
	str r0, [r4]
.L0804247A:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	beq .L0804248C
	bl func_0801424C
	adds r1, r0, #0
.L0804248C:
	ldr r2, [r4]
	cmp r2, #0x63
	bls .L08042496
	bl .L08045572
.L08042496:
	lsls r0, r2, #2
	adds r0, r6, r0
	bl .L08044CF6
.L0804249E:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L080424AE
	bl .L08045572
.L080424AE:
	bl func_08016BDC
	bl .L08045572
.L080424B6:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080424C6
	bl .L08045572
.L080424C6:
	bl func_08016BF4
	bl .L08045572
.L080424CE:
	movs r4, #0
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	beq .L080424E2
	bl func_08014234
	adds r4, r0, #0
.L080424E2:
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
.L080424F0:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042500
	bl .L0804168A
.L08042500:
	bl func_08013828
	bl .L0804168A
.L08042508:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042518
	bl .L0804168A
.L08042518:
	bl func_080138C0
	bl .L0804168A
.L08042520:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042530
	bl .L0804168A
.L08042530:
	bl func_0801395C
	bl .L0804168A
.L08042538:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042548
	bl .L0804168A
.L08042548:
	bl func_08013BDC
	bl .L0804168A
.L08042550:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042560
	bl .L0804168A
.L08042560:
	bl func_08013C70
	bl .L0804168A
.L08042568:
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r2, #0
	beq .L0804257E
	subs r0, r2, #1
	str r0, [r1]
.L0804257E:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804258E
	bl .L0804168A
.L0804258E:
	rsbs r1, r3, #0
	orrs r1, r3
	lsrs r1, r1, #0x1f
	bl func_08013D04
	bl .L0804168A
.L0804259C:
	movs r2, #0xda
	lsls r2, r2, #1
	adds r3, r5, r2
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080425B2
	subs r0, r2, #1
	str r0, [r3]
.L080425B2:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L080425C2
	bl .L0804168A
.L080425C2:
	bl func_08013DC8
	bl .L0804168A
.L080425CA:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080425DA
	bl .L0804168A
.L080425DA:
	bl func_08013E6C
	bl .L0804168A
.L080425E2:
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080425F8
	subs r0, r2, #1
	str r0, [r3]
.L080425F8:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042608
	bl .L0804168A
.L08042608:
	bl func_08013EF8
	bl .L0804168A
.L08042610:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L0804262C
	subs r0, r2, #1
	str r0, [r4]
.L0804262C:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08042650 @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A0930
	movs r2, #3
	cmp r0, #0
	bne .L08042646
	bl .L08045166
.L08042646:
	bl GetCurrentTask__C13HarvestSprite
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L08042650: .4byte 0x00001CD4
.L08042654:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08042670
	subs r0, r2, #1
	str r0, [r4]
.L08042670:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08042694 @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A0930
	movs r2, #0
	cmp r0, #0
	bne .L0804268A
	bl .L08045166
.L0804268A:
	bl GetWorkDaysLeft__C13HarvestSprite
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L08042694: .4byte 0x00001CD4
.L08042698:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r7, [r0]
	cmp r2, #0
	beq .L080426B4
	subs r0, r2, #1
	str r0, [r4]
.L080426B4:
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L080426C6
	subs r0, r2, #1
	str r0, [r4]
.L080426C6:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L080426EC @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A0930
	movs r2, #0
	cmp r0, #0
	bne .L080426E0
	bl .L08045166
.L080426E0:
	adds r1, r7, #0
	bl GetTaskExp__C13HarvestSpriteQ213HarvestSprite4Task
	adds r2, r0, #0
	bl .L08045166
	.align 2, 0
.L080426EC: .4byte 0x00001CD4
.L080426F0:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L0804270C
	subs r0, r2, #1
	str r0, [r4]
.L0804270C:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08042734 @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A0930
	movs r2, #0
	cmp r0, #0
	bne .L08042726
	bl .L08045166
.L08042726:
	bl HasPlayedMinigameToday__C13HarvestSprite
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
	.align 2, 0
.L08042734: .4byte 0x00001CD4
.L08042738:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r7, [r0]
	cmp r2, #0
	beq .L08042754
	subs r0, r2, #1
	str r0, [r4]
.L08042754:
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08042766
	subs r0, r2, #1
	str r0, [r4]
.L08042766:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L0804279C @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A0930
	movs r1, #0
	cmp r0, #0
	beq .L08042788
	adds r1, r7, #0
	bl GetMinigameExp__C13HarvestSpriteQ213HarvestSprite4Task
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
.L08042788:
	ldr r2, [r4]
	cmp r2, #0x63
	bls .L08042792
	bl .L08045572
.L08042792:
	lsls r0, r2, #2
	adds r0, r6, r0
	bl .L08044CF6
	.align 2, 0
.L0804279C: .4byte 0x00001CD4
.L080427A0:
	adds r4, r5, #0
	adds r4, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r1, [r3]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r7, [r0]
	cmp r1, #0
	beq .L080427BC
	subs r0, r1, #1
	str r0, [r3]
.L080427BC:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r6, [r0]
	cmp r2, #0
	beq .L080427CE
	subs r0, r2, #1
	str r0, [r3]
.L080427CE:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L080427E0
	subs r0, r2, #1
	str r0, [r3]
.L080427E0:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08042804 @ =0x00001CD4
	adds r0, r0, r3
	bl func_080A0930
	cmp r0, #0
	bne .L080427F8
	bl .L08045572
.L080427F8:
	adds r1, r6, #0
	adds r2, r7, #0
	bl StartTask__13HarvestSpriteQ213HarvestSprite4Taski
	bl .L08045572
	.align 2, 0
.L08042804: .4byte 0x00001CD4
.L08042808:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L0804281E
	subs r0, r2, #1
	str r0, [r3]
.L0804281E:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r2, .L08042840 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0930
	cmp r0, #0
	bne .L08042836
	bl .L08045572
.L08042836:
	bl method_0809E6EC__13HarvestSprite
	bl .L08045572
	.align 2, 0
.L08042840: .4byte 0x00001CD4
.L08042844:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08042860
	subs r0, r2, #1
	str r0, [r4]
.L08042860:
	movs r2, #0
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042872
	bl .L08045166
.L08042872:
	bl func_08015920
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L0804287E:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08042894
	subs r0, r2, #1
	str r0, [r3]
.L08042894:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L080428A4
	bl .L0804168A
.L080428A4:
	bl func_080139F0
	bl .L0804168A
.L080428AC:
	movs r0, #0xda
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080428C2
	subs r0, r2, #1
	str r0, [r3]
.L080428C2:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L080428D2
	bl .L0804168A
.L080428D2:
	bl func_08013B38
	bl .L0804168A
.L080428DA:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080428F0
	subs r0, r2, #1
	str r0, [r3]
.L080428F0:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042900
	bl .L0804168A
.L08042900:
	bl func_08013A94
	bl .L0804168A
.L08042908:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042918
	bl .L0804168A
.L08042918:
	bl func_0801437C
	bl .L0804168A
.L08042920:
	movs r2, #0xda
	lsls r2, r2, #1
	adds r3, r5, r2
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08042936
	subs r0, r2, #1
	str r0, [r3]
.L08042936:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042946
	bl .L0804168A
.L08042946:
	bl func_08014410
	bl .L0804168A
.L0804294E:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r1, #0
	beq .L08042964
	subs r0, r1, #1
	str r0, [r2]
.L08042964:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r1, [r0]
	ldr r0, .L080429A4 @ =0x00002C1C
	adds r5, r1, r0
	rsbs r0, r3, #0
	orrs r0, r3
	lsrs r4, r0, #0x1f
	movs r3, #0xc8
	str r3, [sp, #0x28]
	ldrb r0, [r1, #0x10]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #0x2c]
	add r0, sp, #0x2c
	add r2, sp, #0x28
	cmp r3, r1
	bls .L08042994
	adds r2, r0, #0
.L08042994:
	ldr r2, [r2]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_08057E90
	bl .L08045572
	.align 2, 0
.L080429A4: .4byte 0x00002C1C
.L080429A8:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080429B8
	bl .L0804168A
.L080429B8:
	bl func_080144BC
	bl .L0804168A
.L080429C0:
	movs r2, #0xda
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r2, #0
	beq .L080429D6
	subs r0, r2, #1
	str r0, [r1]
.L080429D6:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080429E6
	bl .L0804168A
.L080429E6:
	rsbs r1, r3, #0
	orrs r1, r3
	lsrs r1, r1, #0x1f
	bl func_08014550
	bl .L0804168A
.L080429F4:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08042A04
	bl .L0804168A
.L08042A04:
	bl func_080145F8
	bl .L0804168A
.L08042A0C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	ldr r2, .L08042A2C @ =0x00002C4C
	adds r0, r1, r2
	ldr r3, .L08042A30 @ =0x00001C9C
	adds r1, r1, r3
	ldr r1, [r1]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	bl func_08052230
	bl .L08045572
	.align 2, 0
.L08042A2C: .4byte 0x00002C4C
.L08042A30: .4byte 0x00001C9C
.L08042A34:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L08042A54 @ =0x00002C74
	adds r0, r0, r6
	bl func_0801151C
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
	.align 2, 0
.L08042A54: .4byte 0x00002C74
.L08042A58:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L08042A78 @ =0x00002C74
	adds r0, r0, r2
	bl func_08011520
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L08042A78: .4byte 0x00002C74
.L08042A7C:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L08042AA0 @ =0x00002C74
	adds r0, r0, r6
	bl func_08011524
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
	.align 2, 0
.L08042AA0: .4byte 0x00002C74
.L08042AA4:
	movs r1, #0xda
	lsls r1, r1, #1
	adds r3, r5, r1
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08042ABA
	subs r0, r2, #1
	str r0, [r3]
.L08042ABA:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08042AD0 @ =0x00002C74
	adds r0, r0, r3
	bl func_08011540
	bl .L08045572
	.align 2, 0
.L08042AD0: .4byte 0x00002C74
.L08042AD4:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L08042AE8 @ =0x00002C74
	adds r0, r0, r6
	bl func_08011544
	bl .L08045572
	.align 2, 0
.L08042AE8: .4byte 0x00002C74
.L08042AEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L08042B0C @ =0x00002C74
	adds r0, r0, r2
	bl func_08011520
	cmp r0, #0xf
	bls .L08042B02
	b .L08042C7E
.L08042B02:
	lsls r0, r0, #2
	ldr r1, .L08042B10 @ =.L08042B14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08042B0C: .4byte 0x00002C74
.L08042B10: .4byte .L08042B14
.L08042B14: @ jump table
	.4byte .L08042B54 @ case 0
	.4byte .L08042B68 @ case 1
	.4byte .L08042B7C @ case 2
	.4byte .L08042B90 @ case 3
	.4byte .L08042BA4 @ case 4
	.4byte .L08042BB8 @ case 5
	.4byte .L08042BCC @ case 6
	.4byte .L08042BE0 @ case 7
	.4byte .L08042BF4 @ case 8
	.4byte .L08042C08 @ case 9
	.4byte .L08042C1C @ case 10
	.4byte .L08042C30 @ case 11
	.4byte .L08042C44 @ case 12
	.4byte .L08042C58 @ case 13
	.4byte .L08042C6C @ case 14
	.4byte .L08042C7E @ case 15
.L08042B54:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl AddClock__9FarmHouse
	b .L08042C7E
.L08042B68:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl AddMirror__9FarmHouse
	b .L08042C7E
.L08042B7C:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl AddFridge__9FarmHouse
	b .L08042C7E
.L08042B90:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r0, r0, r6
	bl AddShelf__9FarmHouse
	b .L08042C7E
.L08042BA4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl AddKitchen__9FarmHouse
	b .L08042C7E
.L08042BB8:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl AddCarpet__9FarmHouse
	b .L08042C7E
.L08042BCC:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl AddLargeBed__9FarmHouse
	b .L08042C7E
.L08042BE0:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl AddKitchenKnife__9FarmHouse
	b .L08042C7E
.L08042BF4:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r0, r0, r6
	bl AddKitchenFryingPan__9FarmHouse
	b .L08042C7E
.L08042C08:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl AddKitchenPot__9FarmHouse
	b .L08042C7E
.L08042C1C:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl AddKitchenMixer__9FarmHouse
	b .L08042C7E
.L08042C30:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl AddKitchenWhisk__9FarmHouse
	b .L08042C7E
.L08042C44:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl KitchenRollingPin__9FarmHouse
	b .L08042C7E
.L08042C58:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r0, r0, r6
	bl AddKitchenOven__9FarmHouse
	b .L08042C7E
.L08042C6C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl AddKitchenSeasoningSet__9FarmHouse
.L08042C7E:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r4, .L08042C94 @ =0x00002C74
	adds r0, r0, r4
	bl func_08011550
	bl .L08045572
	.align 2, 0
.L08042C94: .4byte 0x00002C74
.L08042C98:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L08042CB8 @ =0x00001AA8
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1e
	lsrs r4, r0, #0x1f
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L08042CB8: .4byte 0x00001AA8
.L08042CBC:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L08042CE0 @ =0x00001CD4
	adds r0, r0, r6
	bl func_080A0518
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
	.align 2, 0
.L08042CE0: .4byte 0x00001CD4
.L08042CE4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	adds r0, #0x54
	bl HasShippedOneOfEachCrop__C11ShippingBin
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L08042D04:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	adds r0, #0x54
	bl HasShippedOneOfEachProduct__C11ShippingBin
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl .L080454A8
.L08042D1A:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_08010E68
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L08042D38:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	adds r0, #0x54
	bl HasShippedOneOfEachMineral__C11ShippingBin
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl .L080454A8
.L08042D4E:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0xb2
	lsls r2, r2, #6
	adds r0, r0, r2
	bl func_0809CDCC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L08042D72:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	movs r6, #0xb2
	lsls r6, r6, #6
	adds r0, r0, r6
	bl func_0809CDEC
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
.L08042D94:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_08010E60
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L08042DB2:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L08042DD0 @ =0x00001AA8
	adds r0, r0, r6
	ldr r4, [r0]
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
	.align 2, 0
.L08042DD0: .4byte 0x00001AA8
.L08042DD4:
	movs r1, #0xda
	lsls r1, r1, #1
	adds r3, r5, r1
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08042DEA
	subs r0, r2, #1
	str r0, [r3]
.L08042DEA:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08042E00 @ =0x00001AA8
	adds r0, r0, r3
	bl func_0809ABD8
	bl .L08045572
	.align 2, 0
.L08042E00: .4byte 0x00001AA8
.L08042E04:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08042E1A
	subs r0, r2, #1
	str r0, [r3]
.L08042E1A:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r2, .L08042E30 @ =0x00001AA8
	adds r0, r0, r2
	bl func_0809ACC0
	bl .L08045572
	.align 2, 0
.L08042E30: .4byte 0x00001AA8
.L08042E34:
	movs r3, #0x64
	mov sb, r3
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r4, r5, r6
	ldr r0, [r4]
	ldr r1, .L08042E70 @ =0x00001CD4
	adds r0, r0, r1
	bl func_080A0490
	adds r6, r0, #0
	cmp r6, #0
	beq .L08042E50
	b .L08042FC2
.L08042E50:
	ldr r0, [r4]
	ldr r2, .L08042E74 @ =0x00001D6C
	adds r0, r0, r2
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bhi .L08042E78
	ldr r0, [r4]
	ldr r3, .L08042E74 @ =0x00001D6C
	adds r0, r0, r3
	bl GetLove__C12Bachelorette
	add r1, sp, #0xc
	strh r0, [r1]
	b .L08042E7C
	.align 2, 0
.L08042E70: .4byte 0x00001CD4
.L08042E74: .4byte 0x00001D6C
.L08042E78:
	add r0, sp, #0xc
	strh r6, [r0]
.L08042E7C:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r4, r5, r6
	ldr r0, [r4]
	ldr r1, .L08042EA0 @ =0x00001E28
	adds r0, r0, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bhi .L08042EA4
	ldr r0, [r4]
	ldr r2, .L08042EA0 @ =0x00001E28
	adds r0, r0, r2
	bl GetLove__C12Bachelorette
	add r1, sp, #0xc
	b .L08042EA8
	.align 2, 0
.L08042EA0: .4byte 0x00001E28
.L08042EA4:
	add r1, sp, #0xc
	movs r0, #0
.L08042EA8:
	strh r0, [r1, #2]
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r4, r5, r3
	ldr r0, [r4]
	ldr r6, .L08042ECC @ =0x00001EB8
	adds r0, r0, r6
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bhi .L08042ED0
	ldr r0, [r4]
	adds r0, r0, r6
	bl GetLove__C12Bachelorette
	add r1, sp, #0xc
	b .L08042ED4
	.align 2, 0
.L08042ECC: .4byte 0x00001EB8
.L08042ED0:
	add r1, sp, #0xc
	movs r0, #0
.L08042ED4:
	strh r0, [r1, #4]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	ldr r1, .L08042EF8 @ =0x00001EE4
	adds r0, r0, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bhi .L08042EFC
	ldr r0, [r4]
	ldr r2, .L08042EF8 @ =0x00001EE4
	adds r0, r0, r2
	bl GetLove__C12Bachelorette
	add r1, sp, #0xc
	b .L08042F00
	.align 2, 0
.L08042EF8: .4byte 0x00001EE4
.L08042EFC:
	add r1, sp, #0xc
	movs r0, #0
.L08042F00:
	strh r0, [r1, #6]
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r4, r5, r3
	ldr r0, [r4]
	ldr r6, .L08042F24 @ =0x00001F38
	adds r0, r0, r6
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bhi .L08042F28
	ldr r0, [r4]
	adds r0, r0, r6
	bl GetLove__C12Bachelorette
	add r1, sp, #0xc
	b .L08042F2C
	.align 2, 0
.L08042F24: .4byte 0x00001F38
.L08042F28:
	add r1, sp, #0xc
	movs r0, #0
.L08042F2C:
	strh r0, [r1, #8]
	movs r7, #1
	rsbs r7, r7, #0
	ldr r2, .L08042F50 @ =0x00007530
	movs r4, #0
	movs r0, #0xda
	lsls r0, r0, #1
	adds r6, r5, r0
	adds r5, #0x24
	mov r8, r5
	add r5, sp, #0xc
.L08042F42:
	ldrh r0, [r5]
	cmp r0, r2
	bls .L08042F54
	adds r7, r4, #0
	adds r2, r0, #0
	b .L08042F74
	.align 2, 0
.L08042F50: .4byte 0x00007530
.L08042F54:
	cmp r0, r2
	bne .L08042F74
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq .L08042F72
	str r2, [sp, #0x3c]
	bl rand
	asrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	ldr r2, [sp, #0x3c]
	cmp r0, #0
	bne .L08042F74
.L08042F72:
	adds r7, r4, #0
.L08042F74:
	adds r5, #2
	adds r4, #1
	cmp r4, #4
	ble .L08042F42
	cmp r7, #4
	bls .L08042F82
	b .L08043082
.L08042F82:
	lsls r0, r7, #2
	ldr r1, .L08042F8C @ =.L08042F90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08042F8C: .4byte .L08042F90
.L08042F90: @ jump table
	.4byte .L08042FA4 @ case 0
	.4byte .L08042FAA @ case 1
	.4byte .L08042FB0 @ case 2
	.4byte .L08042FB6 @ case 3
	.4byte .L08042FBC @ case 4
.L08042FA4:
	movs r1, #3
	mov sb, r1
	b .L08043082
.L08042FAA:
	movs r2, #0xc
	mov sb, r2
	b .L08043082
.L08042FB0:
	movs r3, #0x13
	mov sb, r3
	b .L08043082
.L08042FB6:
	movs r4, #0x15
	mov sb, r4
	b .L08043082
.L08042FBC:
	movs r0, #0x19
	mov sb, r0
	b .L08043082
.L08042FC2:
	ldr r0, [r4]
	ldr r1, .L08042FE8 @ =0x00001CD4
	adds r0, r0, r1
	bl func_080A0490
	subs r0, #3
	movs r2, #0xda
	lsls r2, r2, #1
	adds r6, r5, r2
	movs r3, #0x24
	adds r3, r3, r5
	mov r8, r3
	cmp r0, #0x16
	bhi .L08043082
	lsls r0, r0, #2
	ldr r1, .L08042FEC @ =.L08042FF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08042FE8: .4byte 0x00001CD4
.L08042FEC: .4byte .L08042FF0
.L08042FF0: @ jump table
	.4byte .L0804304C @ case 0
	.4byte .L08043082 @ case 1
	.4byte .L08043082 @ case 2
	.4byte .L08043082 @ case 3
	.4byte .L08043082 @ case 4
	.4byte .L08043082 @ case 5
	.4byte .L08043082 @ case 6
	.4byte .L08043082 @ case 7
	.4byte .L08043082 @ case 8
	.4byte .L08043058 @ case 9
	.4byte .L08043082 @ case 10
	.4byte .L08043082 @ case 11
	.4byte .L08043082 @ case 12
	.4byte .L08043082 @ case 13
	.4byte .L08043082 @ case 14
	.4byte .L08043082 @ case 15
	.4byte .L0804305C @ case 16
	.4byte .L08043082 @ case 17
	.4byte .L08043068 @ case 18
	.4byte .L08043082 @ case 19
	.4byte .L08043082 @ case 20
	.4byte .L08043082 @ case 21
	.4byte .L08043074 @ case 22
.L0804304C:
	movs r4, #3
	mov sb, r4
	movs r0, #0xda
	lsls r0, r0, #1
	adds r6, r5, r0
	b .L0804307E
.L08043058:
	movs r1, #0xc
	b .L08043076
.L0804305C:
	movs r3, #0x13
	mov sb, r3
	movs r4, #0xda
	lsls r4, r4, #1
	adds r6, r5, r4
	b .L0804307E
.L08043068:
	movs r6, #0x15
	mov sb, r6
	movs r0, #0xda
	lsls r0, r0, #1
	adds r6, r5, r0
	b .L0804307E
.L08043074:
	movs r1, #0x19
.L08043076:
	mov sb, r1
	movs r2, #0xda
	lsls r2, r2, #1
	adds r6, r5, r2
.L0804307E:
	adds r5, #0x24
	mov r8, r5
.L08043082:
	mov r3, sb
	cmp r3, #0x64
	bne .L0804308C
	movs r4, #3
	mov sb, r4
.L0804308C:
	mov r0, sb
	subs r0, #3
	cmp r0, #0x16
	bhi .L08043100
	lsls r0, r0, #2
	ldr r1, .L080430A0 @ =.L080430A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080430A0: .4byte .L080430A4
.L080430A4: @ jump table
	.4byte .L08043124 @ case 0
	.4byte .L08043100 @ case 1
	.4byte .L08043100 @ case 2
	.4byte .L08043100 @ case 3
	.4byte .L08043100 @ case 4
	.4byte .L08043100 @ case 5
	.4byte .L08043100 @ case 6
	.4byte .L08043100 @ case 7
	.4byte .L08043100 @ case 8
	.4byte .L08043136 @ case 9
	.4byte .L08043100 @ case 10
	.4byte .L08043100 @ case 11
	.4byte .L08043100 @ case 12
	.4byte .L08043100 @ case 13
	.4byte .L08043100 @ case 14
	.4byte .L08043100 @ case 15
	.4byte .L08043100 @ case 16
	.4byte .L08043100 @ case 17
	.4byte .L08043148 @ case 18
	.4byte .L08043100 @ case 19
	.4byte .L08043100 @ case 20
	.4byte .L08043100 @ case 21
	.4byte .L08043112 @ case 22
.L08043100:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L0804310A
	bl .L08045572
.L0804310A:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #0
	b .L0804370E
.L08043112:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L0804311C
	bl .L08045572
.L0804311C:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #1
	b .L0804370E
.L08043124:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L0804312E
	bl .L08045572
.L0804312E:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #2
	b .L0804370E
.L08043136:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L08043140
	bl .L08045572
.L08043140:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #3
	b .L0804370E
.L08043148:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L08043152
	bl .L08045572
.L08043152:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #4
	b .L0804370E
.L0804315A:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r7, [r0]
	ldr r0, .L08043190 @ =0x00001C2C
	adds r4, r7, r0
	movs r6, #5
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0804317E
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #0
	beq .L08043198
.L0804317E:
	ldr r0, .L08043194 @ =gUnk_0300040C
	ldr r0, [r0]
	movs r1, #0xda
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xab
	str r1, [r0]
	b .L0804343A
	.align 2, 0
.L08043190: .4byte 0x00001C2C
.L08043194: .4byte gUnk_0300040C
.L08043198:
	add r0, sp, #0xc
	adds r1, r4, #0
	bl func_0800F20C
	add r6, sp, #0xc
	ldr r0, .L080431D0 @ =gUnk_0300040C
	ldr r4, [r0]
	movs r2, #0xda
	lsls r2, r2, #2
	adds r4, r4, r2
	adds r0, r6, #0
	bl GetId__C4Food
	str r0, [r4]
	ldr r3, .L080431D4 @ =0x0000219B
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r7, r0, #0x1d
	movs r4, #0
	cmp r7, #4
	bls .L080431C6
	b .L080433E4
.L080431C6:
	lsls r0, r7, #2
	ldr r1, .L080431D8 @ =.L080431DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080431D0: .4byte gUnk_0300040C
.L080431D4: .4byte 0x0000219B
.L080431D8: .4byte .L080431DC
.L080431DC: @ jump table
	.4byte .L080431F0 @ case 0
	.4byte .L0804323A @ case 1
	.4byte .L0804336C @ case 2
	.4byte .L08043398 @ case 3
	.4byte .L080433AC @ case 4
.L080431F0:
	adds r0, r6, #0
	bl GetId__C4Food
	cmp r0, #0x5c
	bne .L080431FC
	b .L080433E8
.L080431FC:
	cmp r0, #0x5c
	bgt .L0804321A
	cmp r0, #0x3e
	bne .L08043206
	b .L080433E8
.L08043206:
	cmp r0, #0x3e
	bge .L0804320C
	b .L080433E4
.L0804320C:
	cmp r0, #0x5a
	ble .L08043212
	b .L080433E4
.L08043212:
	cmp r0, #0x54
	bge .L08043218
	b .L080433E4
.L08043218:
	b .L080433E8
.L0804321A:
	cmp r0, #0x6f
	bne .L08043220
	b .L080433E8
.L08043220:
	cmp r0, #0x6f
	bgt .L0804322C
	cmp r0, #0x64
	bne .L0804322A
	b .L080433E8
.L0804322A:
	b .L080433E4
.L0804322C:
	cmp r0, #0x91
	bne .L08043232
	b .L080433E8
.L08043232:
	cmp r0, #0x9b
	beq .L08043238
	b .L080433E4
.L08043238:
	b .L080433E8
.L0804323A:
	adds r0, r6, #0
	bl GetId__C4Food
	subs r0, #0x65
	cmp r0, #0x44
	bls .L08043248
	b .L080433E4
.L08043248:
	lsls r0, r0, #2
	ldr r1, .L08043254 @ =.L08043258
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08043254: .4byte .L08043258
.L08043258: @ jump table
	.4byte .L080433E8 @ case 0
	.4byte .L080433E4 @ case 1
	.4byte .L080433E4 @ case 2
	.4byte .L080433E8 @ case 3
	.4byte .L080433E8 @ case 4
	.4byte .L080433E4 @ case 5
	.4byte .L080433E4 @ case 6
	.4byte .L080433E4 @ case 7
	.4byte .L080433E4 @ case 8
	.4byte .L080433E4 @ case 9
	.4byte .L080433E4 @ case 10
	.4byte .L080433E4 @ case 11
	.4byte .L080433E8 @ case 12
	.4byte .L080433E4 @ case 13
	.4byte .L080433E8 @ case 14
	.4byte .L080433E4 @ case 15
	.4byte .L080433E8 @ case 16
	.4byte .L080433E4 @ case 17
	.4byte .L080433E4 @ case 18
	.4byte .L080433E4 @ case 19
	.4byte .L080433E4 @ case 20
	.4byte .L080433E4 @ case 21
	.4byte .L080433E4 @ case 22
	.4byte .L080433E4 @ case 23
	.4byte .L080433E4 @ case 24
	.4byte .L080433E4 @ case 25
	.4byte .L080433E4 @ case 26
	.4byte .L080433E4 @ case 27
	.4byte .L080433E4 @ case 28
	.4byte .L080433E4 @ case 29
	.4byte .L080433E4 @ case 30
	.4byte .L080433E4 @ case 31
	.4byte .L080433E4 @ case 32
	.4byte .L080433E4 @ case 33
	.4byte .L080433E4 @ case 34
	.4byte .L080433E4 @ case 35
	.4byte .L080433E4 @ case 36
	.4byte .L080433E4 @ case 37
	.4byte .L080433E8 @ case 38
	.4byte .L080433E8 @ case 39
	.4byte .L080433E4 @ case 40
	.4byte .L080433E8 @ case 41
	.4byte .L080433E8 @ case 42
	.4byte .L080433E8 @ case 43
	.4byte .L080433E4 @ case 44
	.4byte .L080433E4 @ case 45
	.4byte .L080433E4 @ case 46
	.4byte .L080433E8 @ case 47
	.4byte .L080433E4 @ case 48
	.4byte .L080433E8 @ case 49
	.4byte .L080433E8 @ case 50
	.4byte .L080433E8 @ case 51
	.4byte .L080433E4 @ case 52
	.4byte .L080433E4 @ case 53
	.4byte .L080433E4 @ case 54
	.4byte .L080433E4 @ case 55
	.4byte .L080433E8 @ case 56
	.4byte .L080433E4 @ case 57
	.4byte .L080433E4 @ case 58
	.4byte .L080433E4 @ case 59
	.4byte .L080433E4 @ case 60
	.4byte .L080433E4 @ case 61
	.4byte .L080433E4 @ case 62
	.4byte .L080433E4 @ case 63
	.4byte .L080433E4 @ case 64
	.4byte .L080433E4 @ case 65
	.4byte .L080433E8 @ case 66
	.4byte .L080433E4 @ case 67
	.4byte .L080433E8 @ case 68
.L0804336C:
	adds r0, r6, #0
	bl GetId__C4Food
	cmp r0, #0x7c
	bgt .L08043384
	cmp r0, #0x7a
	bge .L080433E8
	cmp r0, #0x40
	beq .L080433E8
	cmp r0, #0x53
	beq .L080433E8
	b .L080433E4
.L08043384:
	cmp r0, #0x93
	bgt .L08043392
	cmp r0, #0x92
	bge .L080433E8
	cmp r0, #0x7e
	beq .L080433E8
	b .L080433E4
.L08043392:
	cmp r0, #0x9e
	bne .L080433E4
	b .L080433E8
.L08043398:
	adds r0, r6, #0
	bl GetId__C4Food
	cmp r0, #0x83
	blt .L080433E4
	cmp r0, #0x86
	ble .L080433E8
	cmp r0, #0x9f
	bne .L080433E4
	b .L080433E8
.L080433AC:
	adds r0, r6, #0
	bl GetId__C4Food
	cmp r0, #0x79
	bgt .L080433D2
	cmp r0, #0x76
	bge .L080433E2
	cmp r0, #0x4d
	beq .L080433E2
	cmp r0, #0x4d
	bgt .L080433C8
	cmp r0, #0x3f
	beq .L080433E2
	b .L080433E4
.L080433C8:
	cmp r0, #0x51
	beq .L080433E2
	cmp r0, #0x6d
	beq .L080433E2
	b .L080433E4
.L080433D2:
	cmp r0, #0x81
	beq .L080433E2
	cmp r0, #0x81
	blt .L080433E4
	cmp r0, #0xa6
	bgt .L080433E4
	cmp r0, #0xa3
	blt .L080433E4
.L080433E2:
	movs r4, #1
.L080433E4:
	cmp r4, #0
	beq .L08043438
.L080433E8:
	adds r0, r6, #0
	bl GetStaminaGain__C4Food
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetFatigueGain__C4Food
	subs r4, r4, r0
	ldr r2, .L08043408 @ =gUnk_080F9EC5
	lsls r1, r7, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r4, r0
	ble .L0804340C
	movs r6, #0
	b .L0804343A
	.align 2, 0
.L08043408: .4byte gUnk_080F9EC5
.L0804340C:
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r4, r0
	ble .L0804341A
	movs r6, #1
	b .L0804343A
.L0804341A:
	adds r0, r2, #2
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r4, r0
	ble .L08043428
	movs r6, #2
	b .L0804343A
.L08043428:
	adds r0, r2, #3
	adds r0, r1, r0
	movs r6, #4
	ldrb r0, [r0]
	cmp r4, r0
	ble .L0804343A
	movs r6, #3
	b .L0804343A
.L08043438:
	movs r6, #5
.L0804343A:
	adds r2, r5, #0
	adds r2, #0x24
	movs r4, #0xda
	lsls r4, r4, #1
	adds r1, r5, r4
	ldr r3, [r1]
	cmp r3, #0x63
	bls .L0804344E
	bl .L08045572
.L0804344E:
	lsls r0, r3, #2
	adds r0, r2, r0
	str r6, [r0]
	bl .L080454BE
.L08043458:
	bl rand
	asrs r1, r0, #4
	movs r0, #0xff
	ands r1, r0
	movs r2, #0
	ldr r3, .L08043474 @ =gUnk_080F9ED9
.L08043466:
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	bhi .L08043478
	adds r4, r2, #1
	bl .L080454A8
	.align 2, 0
.L08043474: .4byte gUnk_080F9ED9
.L08043478:
	subs r1, r1, r0
	adds r2, #1
	cmp r2, #4
	bls .L08043466
	bl .L08045572
.L08043484:
	bl rand
	asrs r1, r0, #4
	movs r0, #0xff
	ands r1, r0
	movs r3, #0
	ldr r2, .L080434A8 @ =gUnk_080F9EE0
.L08043492:
	ldrb r0, [r2]
	cmp r1, r0
	bhi .L080434AC
	ldrh r4, [r2, #2]
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
	.align 2, 0
.L080434A8: .4byte gUnk_080F9EE0
.L080434AC:
	subs r1, r1, r0
	adds r2, #4
	adds r3, #1
	cmp r3, #4
	bls .L08043492
	bl .L08045572
.L080434BA:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L080434DC @ =0x00001FE4
	adds r0, r0, r2
	bl func_0809EED0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L080434DC: .4byte 0x00001FE4
.L080434E0:
	movs r4, #1
	mov sb, r4
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L08043500 @ =0x00001FE4
	adds r7, r0, r1
	movs r4, #0
	movs r2, #0xda
	lsls r2, r2, #1
	adds r6, r5, r2
	adds r5, #0x24
	mov r8, r5
	b .L08043506
	.align 2, 0
.L08043500: .4byte 0x00001FE4
.L08043504:
	adds r4, #1
.L08043506:
	cmp r4, #9
	bhi .L0804351C
	adds r0, r7, #0
	adds r1, r4, #0
	bl func_0809EEA4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08043504
	movs r3, #0
	mov sb, r3
.L0804351C:
	ldr r1, [r6]
	cmp r1, #0x63
	bls .L08043526
	bl .L08045572
.L08043526:
	lsls r0, r1, #2
	add r0, r8
	mov r4, sb
	str r4, [r0]
	bl .L08044A2C
.L08043532:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L0804354E
	subs r0, r1, #1
	str r0, [r4]
.L0804354E:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L08043560
	subs r0, r3, #1
	str r0, [r4]
.L08043560:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08043570
	bl .L0804168A
.L08043570:
	bl func_08013F88
	bl .L0804168A
.L08043578:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	adds r0, #0x14
	bl method_08009B20__C4Farm
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl .L080454A8
.L0804358E:
	movs r0, #0xda
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r2, [r0, #0x20]
	cmp r1, #0
	beq .L080435A4
	subs r0, r1, #1
	str r0, [r3]
.L080435A4:
	ldr r0, [r5, #0x10]
	cmp r2, r0
	bhi .L080435B8
	ldr r1, [r5, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r4, r1, r0
	b .L080435BA
.L080435B8:
	ldr r4, .L080435F0 @ =0x080F9EB8
.L080435BA:
	adds r0, r4, #0
	bl strlen
	cmp r0, #1
	bls .L080435FC
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	ldr r1, .L080435F4 @ =0x0000FF21
	cmp r0, r1
	bne .L080435FC
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r4, [r0]
	ldr r2, .L080435F8 @ =0x00001BD8
	adds r4, r4, r2
	adds r0, r4, #0
	bl func_0800E4E0
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800E9A8
	bl .L08045572
	.align 2, 0
.L080435F0: .4byte 0x080F9EB8
.L080435F4: .4byte 0x0000FF21
.L080435F8: .4byte 0x00001BD8
.L080435FC:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r6, .L08043614 @ =0x00001BD8
	adds r0, r0, r6
	adds r1, r4, #0
	bl func_0800E9A8
	bl .L08045572
	.align 2, 0
.L08043614: .4byte 0x00001BD8
.L08043618:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08043628
	bl .L08045572
.L08043628:
	bl func_080142F0
	bl .L08045572
.L08043630:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08043640
	bl .L08045572
.L08043640:
	bl func_08014304
	bl .L08045572
.L08043648:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L0804365E
	subs r0, r2, #1
	str r0, [r3]
.L0804365E:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804366E
	bl .L08045572
.L0804366E:
	bl func_08014694
	bl .L08045572
.L08043676:
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r3, [r1]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r2, r0
	ldr r4, [r0]
	adds r6, r1, #0
	mov r8, r2
	cmp r3, #0
	beq .L08043696
	subs r0, r3, #1
	str r0, [r6]
.L08043696:
	cmp r4, #0x1d
	beq .L080436BA
	cmp r4, #0x1d
	bgt .L080436A4
	cmp r4, #0x12
	beq .L080436E4
	b .L080436A8
.L080436A4:
	cmp r4, #0x27
	beq .L080436F2
.L080436A8:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L080436B2
	bl .L08045572
.L080436B2:
	lsls r0, r3, #2
	add r0, r8
	movs r1, #0
	b .L0804370E
.L080436BA:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl IsFireplaceLighted__C9FarmHouse
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, [r6]
	cmp r1, #0x63
	bls .L080436DA
	bl .L08045572
.L080436DA:
	lsls r0, r1, #2
	add r0, r8
	str r2, [r0]
	bl .L08044A2C
.L080436E4:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsrs r1, r0, #7
	b .L08043700
.L080436F2:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1f
	lsrs r1, r0, #0x1f
.L08043700:
	ldr r3, [r6]
	cmp r3, #0x63
	bls .L0804370A
	bl .L08045572
.L0804370A:
	lsls r0, r3, #2
	add r0, r8
.L0804370E:
	str r1, [r0]
	adds r0, r3, #1
	str r0, [r6]
	bl .L08045572
.L08043718:
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L0804372E
	subs r0, r2, #1
	str r0, [r3]
.L0804372E:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804373E
	bl .L08045572
.L0804373E:
	bl func_080146B0
	bl .L08045572
.L08043746:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r4, r5, r3
	ldr r0, [r4]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r0, r0, r6
	bl GetVaseArticleId__C9FarmHouse
	cmp r0, #0x5f
	bne .L0804377C
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r3, [r2]
	cmp r3, #0x63
	bls .L08043770
	bl .L08045572
.L08043770:
	lsls r0, r3, #2
	adds r0, r1, r0
	movs r1, #1
	rsbs r1, r1, #0
	bl .L08045516
.L0804377C:
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetVaseArticleId__C9FarmHouse
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L08043798:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080437AE
	subs r0, r2, #1
	str r0, [r3]
.L080437AE:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L080437BE
	bl .L08045572
.L080437BE:
	bl func_080146CC
	bl .L08045572
.L080437C6:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L080437E2
	subs r0, r2, #1
	str r0, [r4]
.L080437E2:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl IsIncubatorOccupied__C4CoopUi
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L080437FC:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L0804381C @ =0x00001DAC
	adds r0, r0, r6
	bl func_0809ECD8
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
	.align 2, 0
.L0804381C: .4byte 0x00001DAC
.L08043820:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L08043844 @ =0x00001DAC
	adds r0, r0, r2
	bl func_0809ECE0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
	.align 2, 0
.L08043844: .4byte 0x00001DAC
.L08043848:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L08043870 @ =0x00001DAC
	adds r0, r0, r6
	bl func_0809ECD8
	mov sl, r0
	movs r6, #0x51
	movs r7, #0x5f
	subs r0, #1
	cmp r0, #0x24
	bls .L08043866
	b .L08043BA2
.L08043866:
	lsls r0, r0, #2
	ldr r1, .L08043874 @ =.L08043878
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08043870: .4byte 0x00001DAC
.L08043874: .4byte .L08043878
.L08043878: @ jump table
	.4byte .L0804390C @ case 0
	.4byte .L0804390C @ case 1
	.4byte .L0804390C @ case 2
	.4byte .L0804390C @ case 3
	.4byte .L0804390C @ case 4
	.4byte .L08043978 @ case 5
	.4byte .L08043978 @ case 6
	.4byte .L08043978 @ case 7
	.4byte .L08043978 @ case 8
	.4byte .L08043978 @ case 9
	.4byte .L080439E4 @ case 10
	.4byte .L080439E4 @ case 11
	.4byte .L080439E4 @ case 12
	.4byte .L080439E4 @ case 13
	.4byte .L080439E4 @ case 14
	.4byte .L08043A50 @ case 15
	.4byte .L08043A50 @ case 16
	.4byte .L08043A50 @ case 17
	.4byte .L08043A50 @ case 18
	.4byte .L08043A50 @ case 19
	.4byte .L08043ABC @ case 20
	.4byte .L08043ABC @ case 21
	.4byte .L08043ABC @ case 22
	.4byte .L08043ABC @ case 23
	.4byte .L08043ABC @ case 24
	.4byte .L08043B28 @ case 25
	.4byte .L08043B28 @ case 26
	.4byte .L08043B28 @ case 27
	.4byte .L08043B28 @ case 28
	.4byte .L08043B28 @ case 29
	.4byte .L08043B94 @ case 30
	.4byte .L08043B98 @ case 31
	.4byte .L08043B9C @ case 32
	.4byte .L08043BA0 @ case 33
	.4byte .L08043BA2 @ case 34
	.4byte .L08043BA2 @ case 35
	.4byte .L08043BA2 @ case 36
.L0804390C:
	adds r0, r5, #0
	movs r1, #0
	bl func_0804E354
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08043958
	mov r0, sl
	subs r0, #1
	cmp r0, #4
	bhi .L08043944
	lsls r0, r0, #2
	ldr r1, .L0804392C @ =.L08043930
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0804392C: .4byte .L08043930
.L08043930: @ jump table
	.4byte .L08043944 @ case 0
	.4byte .L08043948 @ case 1
	.4byte .L0804394C @ case 2
	.4byte .L08043950 @ case 3
	.4byte .L08043954 @ case 4
.L08043944:
	movs r6, #1
	b .L08043BA2
.L08043948:
	movs r6, #2
	b .L08043BA2
.L0804394C:
	movs r6, #3
	b .L08043BA2
.L08043950:
	movs r6, #4
	b .L08043BA2
.L08043954:
	movs r6, #7
	b .L08043BA2
.L08043958:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L08043974 @ =0x00001BD8
	adds r0, r0, r2
	movs r1, #1
	bl func_0800EB2C
	bl func_0800EFD8
	movs r6, #0
	b .L08043BA2
	.align 2, 0
.L08043974: .4byte 0x00001BD8
.L08043978:
	adds r0, r5, #0
	movs r1, #8
	bl func_0804E354
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080439C4
	mov r0, sl
	subs r0, #6
	cmp r0, #4
	bhi .L080439B0
	lsls r0, r0, #2
	ldr r1, .L08043998 @ =.L0804399C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08043998: .4byte .L0804399C
.L0804399C: @ jump table
	.4byte .L080439B0 @ case 0
	.4byte .L080439B4 @ case 1
	.4byte .L080439B8 @ case 2
	.4byte .L080439BC @ case 3
	.4byte .L080439C0 @ case 4
.L080439B0:
	movs r6, #9
	b .L08043BA2
.L080439B4:
	movs r6, #0xa
	b .L08043BA2
.L080439B8:
	movs r6, #0xb
	b .L08043BA2
.L080439BC:
	movs r6, #0xc
	b .L08043BA2
.L080439C0:
	movs r6, #0xf
	b .L08043BA2
.L080439C4:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r4, .L080439E0 @ =0x00001BD8
	adds r0, r0, r4
	movs r1, #0
	bl func_0800EB2C
	bl func_0800EFD8
	movs r6, #8
	b .L08043BA2
	.align 2, 0
.L080439E0: .4byte 0x00001BD8
.L080439E4:
	adds r0, r5, #0
	movs r1, #0x10
	bl func_0804E354
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08043A30
	mov r0, sl
	subs r0, #0xb
	cmp r0, #4
	bhi .L08043A1C
	lsls r0, r0, #2
	ldr r1, .L08043A04 @ =.L08043A08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08043A04: .4byte .L08043A08
.L08043A08: @ jump table
	.4byte .L08043A1C @ case 0
	.4byte .L08043A20 @ case 1
	.4byte .L08043A24 @ case 2
	.4byte .L08043A28 @ case 3
	.4byte .L08043A2C @ case 4
.L08043A1C:
	movs r6, #0x11
	b .L08043BA2
.L08043A20:
	movs r6, #0x12
	b .L08043BA2
.L08043A24:
	movs r6, #0x13
	b .L08043BA2
.L08043A28:
	movs r6, #0x14
	b .L08043BA2
.L08043A2C:
	movs r6, #0x17
	b .L08043BA2
.L08043A30:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L08043A4C @ =0x00001BD8
	adds r0, r0, r1
	movs r1, #2
	bl func_0800EB2C
	bl func_0800EFD8
	movs r6, #0x10
	b .L08043BA2
	.align 2, 0
.L08043A4C: .4byte 0x00001BD8
.L08043A50:
	adds r0, r5, #0
	movs r1, #0x18
	bl func_0804E354
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08043A9C
	mov r0, sl
	subs r0, #0x10
	cmp r0, #4
	bhi .L08043A88
	lsls r0, r0, #2
	ldr r1, .L08043A70 @ =.L08043A74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08043A70: .4byte .L08043A74
.L08043A74: @ jump table
	.4byte .L08043A88 @ case 0
	.4byte .L08043A8C @ case 1
	.4byte .L08043A90 @ case 2
	.4byte .L08043A94 @ case 3
	.4byte .L08043A98 @ case 4
.L08043A88:
	movs r6, #0x19
	b .L08043BA2
.L08043A8C:
	movs r6, #0x1a
	b .L08043BA2
.L08043A90:
	movs r6, #0x1b
	b .L08043BA2
.L08043A94:
	movs r6, #0x1c
	b .L08043BA2
.L08043A98:
	movs r6, #0x1f
	b .L08043BA2
.L08043A9C:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08043AB8 @ =0x00001BD8
	adds r0, r0, r3
	movs r1, #3
	bl func_0800EB2C
	bl func_0800EFD8
	movs r6, #0x18
	b .L08043BA2
	.align 2, 0
.L08043AB8: .4byte 0x00001BD8
.L08043ABC:
	adds r0, r5, #0
	movs r1, #0x20
	bl func_0804E354
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08043B08
	mov r0, sl
	subs r0, #0x15
	cmp r0, #4
	bhi .L08043AF4
	lsls r0, r0, #2
	ldr r1, .L08043ADC @ =.L08043AE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08043ADC: .4byte .L08043AE0
.L08043AE0: @ jump table
	.4byte .L08043AF4 @ case 0
	.4byte .L08043AF8 @ case 1
	.4byte .L08043AFC @ case 2
	.4byte .L08043B00 @ case 3
	.4byte .L08043B04 @ case 4
.L08043AF4:
	movs r6, #0x21
	b .L08043BA2
.L08043AF8:
	movs r6, #0x22
	b .L08043BA2
.L08043AFC:
	movs r6, #0x23
	b .L08043BA2
.L08043B00:
	movs r6, #0x24
	b .L08043BA2
.L08043B04:
	movs r6, #0x27
	b .L08043BA2
.L08043B08:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L08043B24 @ =0x00001BD8
	adds r0, r0, r6
	movs r1, #4
	bl func_0800EB2C
	bl func_0800EFD8
	movs r6, #0x20
	b .L08043BA2
	.align 2, 0
.L08043B24: .4byte 0x00001BD8
.L08043B28:
	adds r0, r5, #0
	movs r1, #0x28
	bl func_0804E354
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08043B74
	mov r0, sl
	subs r0, #0x1a
	cmp r0, #4
	bhi .L08043B60
	lsls r0, r0, #2
	ldr r1, .L08043B48 @ =.L08043B4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08043B48: .4byte .L08043B4C
.L08043B4C: @ jump table
	.4byte .L08043B60 @ case 0
	.4byte .L08043B64 @ case 1
	.4byte .L08043B68 @ case 2
	.4byte .L08043B6C @ case 3
	.4byte .L08043B70 @ case 4
.L08043B60:
	movs r6, #0x29
	b .L08043BA2
.L08043B64:
	movs r6, #0x2a
	b .L08043BA2
.L08043B68:
	movs r6, #0x2b
	b .L08043BA2
.L08043B6C:
	movs r6, #0x2c
	b .L08043BA2
.L08043B70:
	movs r6, #0x2f
	b .L08043BA2
.L08043B74:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L08043B90 @ =0x00001BD8
	adds r0, r0, r2
	movs r1, #5
	bl func_0800EB2C
	bl func_0800EFD8
	movs r6, #0x28
	b .L08043BA2
	.align 2, 0
.L08043B90: .4byte 0x00001BD8
.L08043B94:
	movs r7, #0x2c
	b .L08043BA2
.L08043B98:
	movs r7, #0x2d
	b .L08043BA2
.L08043B9C:
	movs r7, #0x2e
	b .L08043BA2
.L08043BA0:
	movs r7, #0x2f
.L08043BA2:
	movs r3, #3
	mov sb, r3
	movs r4, #0
	mov r8, r4
	cmp r6, #0x51
	bne .L08043BB0
	b .L08043D06
.L08043BB0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L08043BF0 @ =0x00001C34
	adds r7, r0, r2
	adds r0, r7, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08043BF4
	add r4, sp, #0x30
	adds r0, r4, #0
	adds r1, r6, #0
	bl __4ToolUi
	ldrb r1, [r4]
	add r0, sp, #0xc
	movs r2, #1
	bl __9ToolStackG4ToolUi
	adds r0, r7, #0
	add r1, sp, #0xc
	movs r2, #2
	bl memcpy
	movs r3, #0
	mov sb, r3
	movs r4, #1
	mov r8, r4
	b .L08043C78
	.align 2, 0
.L08043BF0: .4byte 0x00001C34
.L08043BF4:
	movs r4, #0
	adds r0, r7, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x31
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, r6
	bne .L08043C18
	adds r0, r7, #0
	bl GetAmount__C9ToolStack
	cmp r0, #0x62
	bhi .L08043C18
	movs r4, #1
.L08043C18:
	cmp r4, #0
	beq .L08043C2E
	adds r0, r7, #0
	movs r1, #1
	bl AddAmount__9ToolStackUi
	movs r6, #0
	mov sb, r6
	movs r0, #1
	mov r8, r0
	b .L08043C78
.L08043C2E:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r0, [r4]
	ldr r2, .L08043C50 @ =0x00001C38
	adds r0, r0, r2
	adds r1, r6, #0
	movs r2, #1
	bl AddAmountOfTool__8RucksackUiUi
	cmp r0, #0
	bne .L08043C54
	movs r3, #1
	mov sb, r3
	mov r8, r3
	b .L08043C78
	.align 2, 0
.L08043C50: .4byte 0x00001C38
.L08043C54:
	ldr r0, [r4]
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r1, r6, #0
	movs r2, #1
	bl AddAmountOf__9ToolChestUiUi
	cmp r0, #0
	bne .L08043C70
	movs r6, #2
	mov sb, r6
	movs r0, #1
	mov r8, r0
.L08043C70:
	mov r1, r8
	cmp r1, #0
	bne .L08043C78
	b .L08043D98
.L08043C78:
	mov r0, sl
	subs r0, #5
	cmp r0, #0x19
	bls .L08043C82
	b .L08043D82
.L08043C82:
	lsls r0, r0, #2
	ldr r1, .L08043C8C @ =.L08043C90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08043C8C: .4byte .L08043C90
.L08043C90: @ jump table
	.4byte .L08043CF8 @ case 0
	.4byte .L08043D82 @ case 1
	.4byte .L08043D82 @ case 2
	.4byte .L08043D82 @ case 3
	.4byte .L08043D82 @ case 4
	.4byte .L08043CF8 @ case 5
	.4byte .L08043D82 @ case 6
	.4byte .L08043D82 @ case 7
	.4byte .L08043D82 @ case 8
	.4byte .L08043D82 @ case 9
	.4byte .L08043CF8 @ case 10
	.4byte .L08043D82 @ case 11
	.4byte .L08043D82 @ case 12
	.4byte .L08043D82 @ case 13
	.4byte .L08043D82 @ case 14
	.4byte .L08043CF8 @ case 15
	.4byte .L08043D82 @ case 16
	.4byte .L08043D82 @ case 17
	.4byte .L08043D82 @ case 18
	.4byte .L08043D82 @ case 19
	.4byte .L08043CF8 @ case 20
	.4byte .L08043D82 @ case 21
	.4byte .L08043D82 @ case 22
	.4byte .L08043D82 @ case 23
	.4byte .L08043D82 @ case 24
	.4byte .L08043CF8 @ case 25
.L08043CF8:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	bl func_08010F48
	b .L08043D82
.L08043D06:
	cmp r7, #0x5f
	beq .L08043D7E
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r4, r5, r3
	ldr r0, [r4]
	ldr r1, .L08043D3C @ =0x00001C2C
	adds r6, r0, r1
	adds r0, r6, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08043D40
	mov r4, sp
	adds r4, #0x32
	adds r0, r4, #0
	adds r1, r7, #0
	bl __7ArticleUi
	ldrb r1, [r4]
	adds r0, r6, #0
	bl func_0800F3E8
	movs r2, #0
	mov sb, r2
	b .L08043D88
	.align 2, 0
.L08043D3C: .4byte 0x00001C2C
.L08043D40:
	ldr r0, [r4]
	ldr r3, .L08043D58 @ =0x00001C38
	adds r0, r0, r3
	adds r1, r7, #0
	movs r2, #1
	bl AddAmountOfArticle__8RucksackUiUi
	cmp r0, #0
	bne .L08043D5C
	movs r4, #1
	mov sb, r4
	b .L08043D88
	.align 2, 0
.L08043D58: .4byte 0x00001C38
.L08043D5C:
	ldr r0, [r4]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r0, r0, r6
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L08043D82
	adds r1, r7, #0
	movs r2, #1
	bl AddAmountOf__5ShelfUiUi
	cmp r0, #0
	bne .L08043D82
	movs r0, #2
	mov sb, r0
	b .L08043D88
.L08043D7E:
	movs r1, #1
	mov r8, r1
.L08043D82:
	mov r2, r8
	cmp r2, #0
	beq .L08043D98
.L08043D88:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r4, .L08043DB8 @ =0x00001DAC
	adds r0, r0, r4
	bl func_0809ED64
.L08043D98:
	adds r2, r5, #0
	adds r2, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r1, r5, r6
	ldr r3, [r1]
	cmp r3, #0x63
	bls .L08043DAC
	bl .L08045572
.L08043DAC:
	lsls r0, r3, #2
	adds r0, r2, r0
	mov r2, sb
	str r2, [r0]
	bl .L080454BE
	.align 2, 0
.L08043DB8: .4byte 0x00001DAC
.L08043DBC:
	adds r3, r5, #0
	adds r3, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r4, r5, r6
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08043DD8
	subs r0, r1, #1
	str r0, [r4]
.L08043DD8:
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r3, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08043DEA
	subs r0, r1, #1
	str r0, [r4]
.L08043DEA:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r5, [r0]
	cmp r5, #0
	bne .L08043DFA
	bl .L08045572
.L08043DFA:
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	add r1, sp, #0x34
	movs r0, #0x1f
	ands r3, r0
	ldrb r4, [r1]
	subs r0, #0x3f
	ands r0, r4
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0x3f
	ands r2, r0
	lsls r2, r2, #5
	ldrh r3, [r1]
	ldr r0, .L08043E2C @ =0xFFFFF81F
	ands r0, r3
	orrs r0, r2
	strh r0, [r1]
	adds r0, r5, #0
	bl func_08014318
	bl .L08045572
	.align 2, 0
.L08043E2C: .4byte 0xFFFFF81F
.L08043E30:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08043E4C
	subs r0, r2, #1
	str r0, [r4]
.L08043E4C:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	bl func_0800BD14
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L08043E66:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08043E82
	subs r0, r2, #1
	str r0, [r4]
.L08043E82:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	bl func_0800BD40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L08043E9C:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08043EB2
	subs r0, r2, #1
	str r0, [r3]
.L08043EB2:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	bl func_0800BCB0
	bl .L08045572
.L08043EC8:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08043EDE
	subs r0, r2, #1
	str r0, [r3]
.L08043EDE:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	bl func_0800BCD0
	bl .L08045572
.L08043EF4:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r0, r4
	bl func_0800BD6C
	bl .L080454A6
.L08043F0A:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	bl func_0800BDEC
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L08043F2C:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r6, r5, r4
	ldr r0, [r6]
	cmp r0, #0
	bne .L08043F3C
	bl .L08045572
.L08043F3C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetUpgradeLevel__C9FarmHouse
	ldr r2, [r6]
	ldr r1, .L08043F78 @ =gUnk_080F9EF4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r2, #0
	movs r1, #0x1d
	adds r2, r4, #0
	movs r3, #0x70
	bl func_080122E0
	ldr r0, [r6]
	movs r1, #2
	str r1, [sp]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x70
	bl func_08012064
	bl .L08045572
	.align 2, 0
.L08043F78: .4byte gUnk_080F9EF4
.L08043F7C:
	adds r4, r5, #0
	adds r4, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r3, r5, r6
	ldr r1, [r3]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r7, [r0]
	cmp r1, #0
	beq .L08043F98
	subs r0, r1, #1
	str r0, [r3]
.L08043F98:
	ldr r1, [r3]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r6, [r0]
	cmp r1, #0
	beq .L08043FAA
	subs r0, r1, #1
	str r0, [r3]
.L08043FAA:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08043FBC
	subs r0, r2, #1
	str r0, [r3]
.L08043FBC:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r2, [r0]
	cmp r2, #0
	bne .L08043FCC
	bl .L0804168A
.L08043FCC:
	lsls r0, r6, #5
	orrs r1, r0
	lsls r0, r7, #0xa
	orrs r1, r0
	adds r0, r2, #0
	bl func_080146FC
	bl .L0804168A
.L08043FDE:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	bl func_08014D7C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl .L080454A8
.L08043FF2:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L0804400E
	subs r0, r1, #1
	str r0, [r4]
.L0804400E:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L08044020
	subs r0, r3, #1
	str r0, [r4]
.L08044020:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044030
	bl .L08045572
.L08044030:
	bl func_080159B0
	bl .L08045572
.L08044038:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044048
	bl .L08045572
.L08044048:
	bl func_08014AF8
	bl .L08045572
.L08044050:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L0804406C
	subs r0, r2, #1
	str r0, [r4]
.L0804406C:
	adds r0, r5, #0
	bl func_0804E0F8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L0804407A:
	adds r6, r5, #0
	adds r6, #0x24
	movs r1, #0xda
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08044096
	subs r0, r2, #1
	str r0, [r4]
.L08044096:
	adds r0, r5, #0
	bl func_0804E17C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L080440A4:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L080440C0
	subs r0, r2, #1
	str r0, [r4]
.L080440C0:
	adds r0, r5, #0
	bl func_0804E1D4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L080440CE:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L080440EA
	subs r0, r2, #1
	str r0, [r4]
.L080440EA:
	adds r0, r5, #0
	bl func_0804E354
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L080440F8:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08044114
	subs r0, r2, #1
	str r0, [r4]
.L08044114:
	adds r0, r5, #0
	bl func_0804E2C0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L08044122:
	adds r6, r5, #0
	adds r6, #0x24
	movs r1, #0xda
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L0804413E
	subs r0, r2, #1
	str r0, [r4]
.L0804413E:
	adds r0, r5, #0
	bl func_0804E22C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L0804414C:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L08044160 @ =0x000034C5
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
	bl .L08045572
	.align 2, 0
.L08044160: .4byte 0x000034C5
.L08044164:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r7, [r0]
	cmp r2, #0
	beq .L08044180
	subs r0, r2, #1
	str r0, [r4]
.L08044180:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r0, [r5]
	adds r0, #0x54
	adds r1, r7, #0
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne .L0804419C
	bl .L08045166
.L0804419C:
	ldr r0, [r5]
	adds r0, #0x54
	adds r1, r7, #0
	bl GetAmountShipped__C11ShippingBini
	adds r2, r0, #0
	bl .L08045166
.L080441AC:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	bl CountCows__C4Barn
	bl .L080454A6
.L080441C2:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl CountSheeps__C4Barn
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L080441E4:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	movs r6, #0x82
	lsls r6, r6, #3
	adds r0, r0, r6
	bl CountChickens__C4Coop
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
.L08044206:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L08044230 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800ED14
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044226
	bl .L0804168A
.L08044226:
	bl func_08014198
	bl .L0804168A
	.align 2, 0
.L08044230: .4byte 0x00001BD8
.L08044234:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L08044258 @ =0x00001BD8
	adds r0, r0, r6
	bl func_0800E934
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
	.align 2, 0
.L08044258: .4byte 0x00001BD8
.L0804425C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L08044270 @ =0x00001C38
	adds r0, r0, r2
	bl Upgrade__8Rucksack
	bl .L08045572
	.align 2, 0
.L08044270: .4byte 0x00001C38
.L08044274:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r4, .L08044288 @ =0x00001C38
	adds r0, r0, r4
	bl GetUpgradeLevel__C8Rucksack
	bl .L080454A6
	.align 2, 0
.L08044288: .4byte 0x00001C38
.L0804428C:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080442A8
	subs r0, r1, #1
	str r0, [r4]
.L080442A8:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L080442BA
	subs r0, r3, #1
	str r0, [r4]
.L080442BA:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L080442CA
	bl .L08045572
.L080442CA:
	bl func_08014C0C
	bl .L08045572
.L080442D2:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080442E2
	bl .L08045572
.L080442E2:
	bl func_08014BD8
	bl .L08045572
.L080442EA:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08044306
	subs r0, r1, #1
	str r0, [r4]
.L08044306:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L08044318
	subs r0, r3, #1
	str r0, [r4]
.L08044318:
	adds r0, r5, #0
	bl func_0804E3D8
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldr r2, [r4]
	cmp r2, #0x63
	bls .L0804432E
	bl .L08045572
.L0804432E:
	lsls r0, r2, #2
	adds r0, r6, r0
	bl .L08044CF6
.L08044336:
	adds r6, r5, #0
	adds r6, #0x24
	movs r1, #0xda
	lsls r1, r1, #1
	adds r2, r5, r1
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	mov sb, r0
	cmp r1, #0
	beq .L08044354
	subs r0, r1, #1
	str r0, [r2]
.L08044354:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r1, #0
	beq .L08044368
	subs r0, r1, #1
	str r0, [r2]
.L08044368:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L0804437A
	subs r0, r1, #1
	str r0, [r2]
.L0804437A:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r7, [r0]
	cmp r1, #0
	beq .L0804438C
	subs r0, r1, #1
	str r0, [r2]
.L0804438C:
	ldr r4, [r2]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r4, #0
	beq .L0804439E
	subs r0, r4, #1
	str r0, [r2]
.L0804439E:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L080443AE
	bl .L08045572
.L080443AE:
	mov r4, r8
	str r4, [sp]
	mov r6, sb
	str r6, [sp, #4]
	adds r2, r7, #0
	bl func_08014C34
	bl .L08045572
.L080443C0:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080443DC
	subs r0, r1, #1
	str r0, [r4]
.L080443DC:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L080443EE
	subs r0, r3, #1
	str r0, [r4]
.L080443EE:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L080443FE
	bl .L08045572
.L080443FE:
	bl func_08014D30
	bl .L08045572
.L08044406:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08044422
	subs r0, r1, #1
	str r0, [r4]
.L08044422:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L08044434
	subs r0, r3, #1
	str r0, [r4]
.L08044434:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r6, [r0]
	cmp r3, #0
	beq .L08044446
	subs r0, r3, #1
	str r0, [r4]
.L08044446:
	adds r0, r5, #0
	bl func_0804E3D8
	adds r1, r0, #0
	cmp r1, #0
	bne .L08044456
	bl .L08045572
.L08044456:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r4, [r0]
	cmp r4, #0
	bne .L08044466
	bl .L08045572
.L08044466:
	adds r0, r1, #0
	bl GetName__C6Animal
	adds r2, r0, #0
	bl .L08044D86
.L08044472:
	movs r4, #0
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044484
	bl .L080454A8
.L08044484:
	bl func_08014D5C
	bl .L080454A6
.L0804448C:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080444A8
	subs r0, r1, #1
	str r0, [r4]
.L080444A8:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L080444BA
	subs r0, r3, #1
	str r0, [r4]
.L080444BA:
	adds r0, r5, #0
	bl func_0804E3D8
	adds r2, r0, #0
	cmp r2, #0
	bne .L080444CA
	bl .L08045166
.L080444CA:
	bl HasBeenTalkedTo__C6Animal
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L080444D6:
	adds r6, r5, #0
	adds r6, #0x24
	movs r1, #0xda
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080444F2
	subs r0, r1, #1
	str r0, [r4]
.L080444F2:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L08044504
	subs r0, r3, #1
	str r0, [r4]
.L08044504:
	adds r0, r5, #0
	bl func_0804E3D8
	cmp r0, #0
	bne .L08044512
	bl .L08045572
.L08044512:
	bl SetTalkedTo__6Animal
	bl .L08045572
.L0804451A:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08044536
	subs r0, r1, #1
	str r0, [r4]
.L08044536:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L08044548
	subs r0, r3, #1
	str r0, [r4]
.L08044548:
	adds r0, r5, #0
	bl func_0804E3D8
	adds r2, r0, #0
	cmp r2, #0
	bne .L08044558
	bl .L08045166
.L08044558:
	bl GetAge__C6Animal
	adds r2, r0, #0
	bl .L08045166
.L08044562:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r7, [r0]
	cmp r2, #0
	beq .L0804457E
	subs r0, r2, #1
	str r0, [r4]
.L0804457E:
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08044590
	subs r0, r1, #1
	str r0, [r4]
.L08044590:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L080445A2
	subs r0, r3, #1
	str r0, [r4]
.L080445A2:
	adds r0, r5, #0
	bl func_0804E3D8
	cmp r0, #0
	bne .L080445B0
	bl .L08045572
.L080445B0:
	adds r1, r7, #0
	bl AddAffection__6Animali
	bl .L08045572
.L080445BA:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080445D6
	subs r0, r1, #1
	str r0, [r4]
.L080445D6:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L080445E8
	subs r0, r3, #1
	str r0, [r4]
.L080445E8:
	adds r0, r5, #0
	bl func_0804E3D8
	adds r2, r0, #0
	cmp r2, #0
	bne .L080445F8
	bl .L08045166
.L080445F8:
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L08044604:
	adds r6, r5, #0
	adds r6, #0x24
	movs r1, #0xda
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08044620
	subs r0, r1, #1
	str r0, [r4]
.L08044620:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L08044632
	subs r0, r3, #1
	str r0, [r4]
.L08044632:
	adds r0, r5, #0
	bl func_0804E3D8
	adds r2, r0, #0
	cmp r2, #0
	bne .L08044642
	bl .L08045166
.L08044642:
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L0804464E:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L0804466A
	subs r0, r1, #1
	str r0, [r4]
.L0804466A:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L0804467C
	subs r0, r3, #1
	str r0, [r4]
.L0804467C:
	adds r0, r5, #0
	bl func_0804E3D8
	adds r2, r0, #0
	cmp r2, #0
	bne .L0804468C
	bl .L08045166
.L0804468C:
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L08044698:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080446B4
	subs r0, r1, #1
	str r0, [r4]
.L080446B4:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L080446C6
	subs r0, r3, #1
	str r0, [r4]
.L080446C6:
	adds r0, r5, #0
	bl func_0804E3D8
	adds r2, r0, #0
	cmp r2, #0
	bne .L080446D6
	bl .L08045166
.L080446D6:
	bl GetDaysPregnantHealthy__C10BarnAnimal
	adds r2, r0, #0
	bl .L08045166
.L080446E0:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L080446FC
	subs r0, r1, #1
	str r0, [r4]
.L080446FC:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L0804470E
	subs r0, r3, #1
	str r0, [r4]
.L0804470E:
	adds r0, r5, #0
	bl func_0804E3D8
	movs r2, #0
	cmp r0, #0
	bne .L0804471E
	bl .L08045166
.L0804471E:
	bl GetAffection__C6Animal
	adds r2, r0, #0
	bl .L08045166
.L08044728:
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r3, [r1]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r2, r0
	ldr r4, [r0]
	adds r6, r1, #0
	mov r8, r2
	cmp r3, #0
	beq .L08044748
	subs r0, r3, #1
	str r0, [r6]
.L08044748:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	add r0, r8
	ldr r2, [r0]
	cmp r1, #0
	beq .L0804475A
	subs r0, r1, #1
	str r0, [r6]
.L0804475A:
	movs r7, #0
	cmp r2, #4
	bls .L08044762
	b .L08044A1C
.L08044762:
	lsls r0, r2, #2
	ldr r1, .L0804476C @ =.L08044770
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0804476C: .4byte .L08044770
.L08044770: @ jump table
	.4byte .L08044784 @ case 0
	.4byte .L080447B4 @ case 1
	.4byte .L080447D4 @ case 2
	.4byte .L080447F4 @ case 3
	.4byte .L0804479E @ case 4
.L08044784:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	adds r0, #0x14
	bl GetHorse__4Farm
	cmp r0, #0
	bne .L08044798
	b .L08044A1C
.L08044798:
	bl GetGrowthStage__C5Horse
	b .L08044812
.L0804479E:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L080447B0 @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	b .L08044812
	.align 2, 0
.L080447B0: .4byte 0x00001C70
.L080447B4:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r4, #0
	bl GetCow__4BarnUi
	cmp r0, #0
	bne .L080447CE
	b .L08044A1C
.L080447CE:
	bl GetGrowthStage__C3Cow
	b .L08044812
.L080447D4:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	adds r1, r4, #0
	bl GetSheep__4BarnUi
	cmp r0, #0
	bne .L080447EE
	b .L08044A1C
.L080447EE:
	bl GetGrowthStage__C5Sheep
	b .L08044812
.L080447F4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r1, r4, #0
	bl GetChicken__4CoopUi
	cmp r0, #0
	bne .L0804480E
	b .L08044A1C
.L0804480E:
	bl GetGrowthStage__C7Chicken
.L08044812:
	adds r7, r0, #0
	b .L08044A1C
.L08044816:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L08044832
	subs r0, r1, #1
	str r0, [r4]
.L08044832:
	adds r0, r5, #0
	movs r1, #2
	bl func_0804E3D8
	adds r2, r0, #0
	cmp r2, #0
	bne .L08044844
	bl .L08045166
.L08044844:
	bl IsSheared__C5Sheep
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	bl .L08045166
.L08044850:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r2, [r0]
	cmp r1, #0
	beq .L0804486C
	subs r0, r1, #1
	str r0, [r4]
.L0804486C:
	ldr r3, [r4]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r3, #0
	beq .L0804487E
	subs r0, r3, #1
	str r0, [r4]
.L0804487E:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804488E
	bl .L08045572
.L0804488E:
	bl func_08016834
	bl .L08045572
.L08044896:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080448AC
	subs r0, r2, #1
	str r0, [r3]
.L080448AC:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L080448BC
	bl .L08045572
.L080448BC:
	bl func_080168D4
	bl .L08045572
.L080448C4:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r2, #0
	beq .L080448E0
	subs r0, r2, #1
	str r0, [r4]
.L080448E0:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080448FA
	adds r0, r1, #0
	adds r1, r3, #0
	bl func_08016AFC
	adds r2, r0, #0
	bl .L08045166
.L080448FA:
	ldr r3, [r4]
	cmp r3, #0x63
	bls .L08044904
	bl .L08045572
.L08044904:
	lsls r0, r3, #2
	adds r0, r6, r0
	str r1, [r0]
	adds r0, r3, #1
	str r0, [r4]
	bl .L08045572
.L08044912:
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r3, [r1]
	lsls r0, r3, #2
	subs r0, #4
	adds r0, r2, r0
	ldr r0, [r0]
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	cmp r3, #0
	beq .L08044934
	subs r0, r3, #1
	str r0, [r6]
.L08044934:
	ldr r1, [r6]
	lsls r0, r1, #2
	subs r0, #4
	add r0, r8
	ldr r2, [r0]
	cmp r1, #0
	beq .L08044946
	subs r0, r1, #1
	str r0, [r6]
.L08044946:
	movs r7, #0
	cmp r2, #4
	bhi .L08044A1C
	lsls r0, r2, #2
	ldr r1, .L08044958 @ =.L0804495C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08044958: .4byte .L0804495C
.L0804495C: @ jump table
	.4byte .L08044A1C @ case 0
	.4byte .L08044970 @ case 1
	.4byte .L080449AA @ case 2
	.4byte .L080449E4 @ case 3
	.4byte .L08044A1C @ case 4
.L08044970:
	movs r4, #0
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r5, r5, r0
	b .L08044998
.L0804497A:
	ldr r0, [r5]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r4, #0
	bl GetCow__4BarnUi
	cmp r0, #0
	beq .L08044996
	bl method_0809B514__C9Livestock
	cmp r0, sb
	bne .L08044996
	adds r7, #1
.L08044996:
	adds r4, #1
.L08044998:
	ldr r0, [r5]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetCapacity__C4Barn
	cmp r4, r0
	blo .L0804497A
	b .L08044A1C
.L080449AA:
	movs r4, #0
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r5, r5, r3
	b .L080449D2
.L080449B4:
	ldr r0, [r5]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r4, #0
	bl GetSheep__4BarnUi
	cmp r0, #0
	beq .L080449D0
	bl method_0809B514__C9Livestock
	cmp r0, sb
	bne .L080449D0
	adds r7, #1
.L080449D0:
	adds r4, #1
.L080449D2:
	ldr r0, [r5]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetCapacity__C4Barn
	cmp r4, r0
	blo .L080449B4
	b .L08044A1C
.L080449E4:
	movs r4, #0
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r5, r5, r3
	b .L08044A0C
.L080449EE:
	ldr r0, [r5]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r4, #0
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L08044A0A
	bl method_0809B514__C9Livestock
	cmp r0, sb
	bne .L08044A0A
	adds r7, #1
.L08044A0A:
	adds r4, #1
.L08044A0C:
	ldr r0, [r5]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetCapacity__C4Coop
	cmp r4, r0
	blo .L080449EE
.L08044A1C:
	ldr r1, [r6]
	cmp r1, #0x63
	bls .L08044A26
	bl .L08045572
.L08044A26:
	lsls r0, r1, #2
	add r0, r8
	str r7, [r0]
.L08044A2C:
	adds r0, r1, #1
	str r0, [r6]
	bl .L08045572
.L08044A34:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044A44
	bl .L0804168A
.L08044A44:
	bl func_08014D9C
	bl .L0804168A
.L08044A4C:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044A5C
	bl .L08045572
.L08044A5C:
	bl func_08015210
	bl .L08045572
.L08044A64:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044A74
	bl .L0804168A
.L08044A74:
	bl func_0801531C
	bl .L0804168A
.L08044A7C:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044A8C
	bl .L08045572
.L08044A8C:
	bl func_08015790
	bl .L08045572
.L08044A94:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044AA4
	bl .L0804168A
.L08044AA4:
	bl func_080158CC
	bl .L0804168A
.L08044AAC:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044ABC
	bl .L0804168A
.L08044ABC:
	bl func_080158F8
	bl .L0804168A
.L08044AC4:
	movs r4, #0
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	beq .L08044ADA
	bl func_0801410C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
.L08044ADA:
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
.L08044AE8:
	movs r4, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L08044AFC
	bl func_08015950
	adds r4, r0, #0
.L08044AFC:
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L08044B0A:
	movs r4, #0
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	beq .L08044B1E
	bl func_08015970
	adds r4, r0, #0
.L08044B1E:
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
.L08044B2C:
	movs r4, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L08044B40
	bl func_08015990
	adds r4, r0, #0
.L08044B40:
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L08044B4E:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	movs r6, #0x82
	lsls r6, r6, #3
	adds r0, r0, r6
	bl GetIncubatorCapacity__C4Coop
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	bl .L080454B2
.L08044B70:
	adds r6, r5, #0
	adds r6, #0x24
	movs r1, #0xda
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08044B8C
	subs r0, r2, #1
	str r0, [r4]
.L08044B8C:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl ShouldHatch__4CoopUi
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b .L08045166
.L08044BA4:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08044BC0
	subs r0, r2, #1
	str r0, [r4]
.L08044BC0:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl AttemptHatch__4CoopUi
	adds r1, r0, #0
	ldr r2, [r4]
	cmp r2, #0x63
	bhi .L08044BE4
	lsls r0, r2, #2
	adds r0, r6, r0
	str r1, [r0]
	adds r0, r2, #1
	str r0, [r4]
.L08044BE4:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044BF4
	bl .L08045572
.L08044BF4:
	adds r1, #0x2e
	bl func_08016CEC
	bl .L08045572
.L08044BFE:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetPregnancyStallCapacity__C4Barn
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	bl .L080454B2
.L08044C20:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08044C3C
	subs r0, r2, #1
	str r0, [r4]
.L08044C3C:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	bl IsReadyToGiveBirth__C4BarnUi
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b .L08045166
.L08044C54:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08044C70
	subs r0, r2, #1
	str r0, [r4]
.L08044C70:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	bl AttemptBirth__4BarnUi
	adds r1, r0, #0
	ldr r2, [r4]
	cmp r2, #0x63
	bhi .L08044C94
	lsls r0, r2, #2
	adds r0, r6, r0
	str r1, [r0]
	adds r0, r2, #1
	str r0, [r4]
.L08044C94:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044CA4
	bl .L08045572
.L08044CA4:
	adds r1, #0x36
	bl func_08016CEC
	bl .L08045572
.L08044CAE:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r2, #0
	beq .L08044CCC
	subs r0, r2, #1
	str r0, [r4]
.L08044CCC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r0, [r5]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	mov r1, r8
	bl GetCow__4BarnUi
	adds r7, r0, #0
	cmp r7, #0
	beq .L08044D00
	ldr r2, [r4]
	cmp r2, #0x63
	bls .L08044CF0
	bl .L08045572
.L08044CF0:
	lsls r0, r2, #2
	adds r0, r6, r0
	movs r1, #1
.L08044CF6:
	str r1, [r0]
	adds r0, r2, #1
	str r0, [r4]
	bl .L08045572
.L08044D00:
	ldr r0, [r5]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r1, r8
	bl GetSheep__4BarnUi
	adds r2, r0, #0
	cmp r2, #0
	bne .L08044D16
	b .L08045166
.L08044D16:
	ldr r1, [r4]
	cmp r1, #0x63
	bls .L08044D20
	bl .L08045572
.L08044D20:
	lsls r0, r1, #2
	adds r0, r6, r0
	str r7, [r0]
	b .L08045174
.L08044D28:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044D38
	bl .L08045572
.L08044D38:
	bl func_080167DC
	bl .L08045572
.L08044D40:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044D50
	bl .L08045572
.L08044D50:
	bl func_08015E30
	bl .L08045572
.L08044D58:
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r6, [r0, #0x20]
	cmp r2, #0
	beq .L08044D6E
	subs r0, r2, #1
	str r0, [r1]
.L08044D6E:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	bne .L08044D7E
	bl .L08045572
.L08044D7E:
	adds r0, r4, #0
	bl func_080167AC
	ldr r2, [r0]
.L08044D86:
	adds r0, r4, #0
	adds r1, r6, #0
	bl func_08012ACC
	b .L08045572
.L08044D90:
	movs r4, #0
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	beq .L08044DA4
	bl func_080167AC
	ldrh r4, [r0, #4]
.L08044DA4:
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	b .L080454B2
.L08044DB0:
	movs r4, #0
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	beq .L08044DC4
	bl func_080167AC
	ldrb r4, [r0, #0x14]
.L08044DC4:
	adds r2, r5, #0
	adds r2, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r1, r5, r0
	b .L080454B2
.L08044DD0:
	movs r4, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L08044DE4
	bl func_080167AC
	ldrb r4, [r0, #0xd]
.L08044DE4:
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	b .L080454B2
.L08044DF0:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r1, #0
	beq .L08044E06
	subs r0, r1, #1
	str r0, [r2]
.L08044E06:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044E16
	bl .L0804168A
.L08044E16:
	adds r2, r0, #0
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bhi .L08044E2C
	ldr r1, [r5, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	adds r1, r1, r0
	b .L08044E2E
.L08044E2C:
	ldr r1, .L08044E38 @ =0x080F9EB8
.L08044E2E:
	adds r0, r2, #0
	bl func_080126BC
	bl .L0804168A
	.align 2, 0
.L08044E38: .4byte 0x080F9EB8
.L08044E3C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_08010F24
	b .L08045572
.L08044E4A:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	bl func_08010F3C
	b .L08045572
.L08044E58:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08044E6E
	subs r0, r2, #1
	str r0, [r3]
.L08044E6E:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044E7C
	b .L08045572
.L08044E7C:
	bl func_08016BA4
	b .L08045572
.L08044E82:
	movs r0, #0xda
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L08044E98
	subs r0, r2, #1
	str r0, [r3]
.L08044E98:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044EA6
	b .L08045572
.L08044EA6:
	bl func_08016BC0
	b .L08045572
.L08044EAC:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08044EC8
	subs r0, r2, #1
	str r0, [r4]
.L08044EC8:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xd2
	lsls r3, r3, #6
	adds r0, r0, r3
	bl func_0809C304
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b .L08045166
.L08044EE0:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08044EFC
	subs r0, r2, #1
	str r0, [r4]
.L08044EFC:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xd2
	lsls r3, r3, #6
	adds r0, r0, r3
	bl func_0809C444
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b .L08045166
.L08044F14:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08044F30
	subs r0, r2, #1
	str r0, [r4]
.L08044F30:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r3, #0xd2
	lsls r3, r3, #6
	adds r0, r0, r3
	bl func_0809C474
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b .L08045166
.L08044F48:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044F56
	b .L08045572
.L08044F56:
	bl func_08016C2C
	b .L08045572
.L08044F5C:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044F6C
	bl .L0804168A
.L08044F6C:
	bl func_08016C48
	bl .L0804168A
.L08044F74:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044F82
	b .L08045572
.L08044F82:
	bl func_08016C6C
	b .L08045572
.L08044F88:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044F98
	bl .L0804168A
.L08044F98:
	bl func_08016C88
	bl .L0804168A
.L08044FA0:
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	beq .L08044FB0
	bl func_08016CAC
.L08044FB0:
	movs r0, #2
	b .L08045574
.L08044FB4:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044FC2
	b .L08045572
.L08044FC2:
	bl func_08016CCC
	b .L08045572
.L08044FC8:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044FD6
	b .L08045572
.L08044FD6:
	bl func_08016D48
	b .L08045572
.L08044FDC:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08044FEA
	b .L08045572
.L08044FEA:
	bl func_08016D80
	b .L08045572
.L08044FF0:
	movs r4, #0x1d
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	beq .L08045004
	bl func_08016D9C
	adds r4, r0, #0
.L08045004:
	adds r2, r5, #0
	adds r2, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	b .L080454B2
.L08045010:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L08045020
	bl .L0804168A
.L08045020:
	bl func_08016DB0
	bl .L0804168A
.L08045028:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08045036
	b .L08045572
.L08045036:
	bl func_08016E7C
	b .L08045572
.L0804503C:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804504C
	bl .L0804168A
.L0804504C:
	bl func_08016E9C
	bl .L0804168A
.L08045054:
	adds r6, r5, #0
	adds r6, #0x24
	movs r3, #0xda
	lsls r3, r3, #1
	adds r2, r5, r3
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	mov sb, r0
	cmp r1, #0
	beq .L08045072
	subs r0, r1, #1
	str r0, [r2]
.L08045072:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r1, #0
	beq .L08045086
	subs r0, r1, #1
	str r0, [r2]
.L08045086:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08045098
	subs r0, r1, #1
	str r0, [r2]
.L08045098:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r7, [r0]
	cmp r1, #0
	beq .L080450AA
	subs r0, r1, #1
	str r0, [r2]
.L080450AA:
	ldr r4, [r2]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r6, [r0]
	cmp r4, #0
	beq .L080450BC
	subs r0, r4, #1
	str r0, [r2]
.L080450BC:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r1, [r0]
	cmp r1, #0
	bne .L080450CA
	b .L08045572
.L080450CA:
	mov r0, r8
	str r0, [sp]
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl func_08016EC4
	b .L08045572
.L080450E2:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080450F8
	subs r0, r2, #1
	str r0, [r3]
.L080450F8:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L08045106
	b .L08045572
.L08045106:
	bl func_08016EF0
	b .L08045572
.L0804510C:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r5, r5, r0
	ldr r2, [r5]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08045128
	subs r0, r2, #1
	str r0, [r5]
.L08045128:
	mov r4, sp
	adds r4, #0x36
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetIconId__C4Tool
	b .L080451A6
.L0804513A:
	adds r6, r5, #0
	adds r6, #0x24
	movs r1, #0xda
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r2, [r4]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08045156
	subs r0, r2, #1
	str r0, [r4]
.L08045156:
	add r0, sp, #0xc
	bl __4FoodUi
	add r0, sp, #0xc
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
.L08045166:
	ldr r1, [r4]
	cmp r1, #0x63
	bls .L0804516E
	b .L08045572
.L0804516E:
	lsls r0, r1, #2
	adds r0, r6, r0
	str r2, [r0]
.L08045174:
	adds r0, r1, #1
	str r0, [r4]
	b .L08045572
.L0804517A:
	adds r6, r5, #0
	adds r6, #0x24
	movs r2, #0xda
	lsls r2, r2, #1
	adds r5, r5, r2
	ldr r2, [r5]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L08045196
	subs r0, r2, #1
	str r0, [r5]
.L08045196:
	mov r4, sp
	adds r4, #0x37
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
.L080451A6:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [r5]
	cmp r1, #0x63
	bls .L080451B2
	b .L08045572
.L080451B2:
	lsls r0, r1, #2
	adds r0, r6, r0
	str r2, [r0]
	adds r0, r1, #1
	str r0, [r5]
	b .L08045572
.L080451BE:
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r3, [r0, #0x20]
	cmp r2, #0
	beq .L080451D4
	subs r0, r2, #1
	str r0, [r1]
.L080451D4:
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080451E2
	b .L08045572
.L080451E2:
	rsbs r1, r3, #0
	orrs r1, r3
	lsrs r1, r1, #0x1f
	bl func_08016F0C
	b .L08045572
.L080451EE:
	movs r6, #0xda
	lsls r6, r6, #1
	adds r2, r5, r6
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	mov r8, r0
	cmp r1, #0
	beq .L08045206
	subs r0, r1, #1
	str r0, [r2]
.L08045206:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, .L0804525C @ =0x00001C2C
	adds r4, r0, r2
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0804524A
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #1
	bne .L0804524A
	adds r0, r4, #0
	bl func_0800F258
	add r1, sp, #0x38
	strb r0, [r1]
	adds r0, r1, #0
	bl GetId__C7Article
	movs r1, #0
	cmp r0, r8
	bne .L08045240
	movs r1, #1
.L08045240:
	cmp r1, #0
	beq .L0804524A
	adds r0, r4, #0
	bl func_0800F390
.L0804524A:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r4, .L08045260 @ =0x00001C38
	adds r7, r0, r4
	movs r6, #0
	b .L080452AC
	.align 2, 0
.L0804525C: .4byte 0x00001C2C
.L08045260: .4byte 0x00001C38
.L08045264:
	adds r0, r7, #0
	adds r1, r6, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080452AA
	adds r0, r4, #0
	bl GetKind__C12RucksackItem
	cmp r0, #1
	bne .L080452AA
	adds r0, r4, #0
	bl GetArticle__C12RucksackItem
	mov r1, sp
	adds r1, #0x39
	strb r0, [r1]
	adds r0, r1, #0
	bl GetId__C7Article
	movs r1, #0
	cmp r0, r8
	bne .L0804529C
	movs r1, #1
.L0804529C:
	cmp r1, #0
	beq .L080452AA
	add r0, sp, #0xc
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
.L080452AA:
	adds r6, #1
.L080452AC:
	adds r0, r7, #0
	bl GetSize__C8Rucksack
	cmp r6, r0
	blo .L08045264
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r4, r5, r6
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetShelf__9FarmHouse
	cmp r0, #0
	bne .L080452CE
	b .L08045572
.L080452CE:
	ldr r0, [r4]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetShelf__9FarmHouse
	adds r7, r0, #0
	movs r5, #0
.L080452DE:
	adds r0, r7, #0
	adds r1, r5, #0
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	adds r6, r4, #0
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08045322
	adds r0, r4, #0
	bl GetArticle__C12ArticleStack
	mov r1, sp
	adds r1, #0x3a
	strb r0, [r1]
	adds r0, r1, #0
	bl GetId__C7Article
	movs r1, #0
	cmp r0, r8
	bne .L0804530E
	movs r1, #1
.L0804530E:
	cmp r1, #0
	beq .L08045322
	add r0, sp, #0xc
	bl __12ArticleStack
	adds r0, r6, #0
	add r1, sp, #0xc
	movs r2, #2
	bl memcpy
.L08045322:
	adds r5, #1
	cmp r5, #0x3f
	bls .L080452DE
	b .L08045572
.L0804532A:
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r7, [r0, #0x20]
	cmp r2, #0
	beq .L08045340
	subs r0, r2, #1
	str r0, [r1]
.L08045340:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r4, r5, r6
	ldr r0, [r4]
	ldr r1, .L08045378 @ =0x00001C70
	adds r0, r0, r1
	adds r1, r7, #0
	bl AddAffection__6Animali
	ldr r0, [r4]
	adds r0, #0x14
	bl GetHorse__4Farm
	cmp r0, #0
	beq .L0804536C
	ldr r0, [r4]
	adds r0, #0x14
	bl GetHorse__4Farm
	adds r1, r7, #0
	bl AddAffection__6Animali
.L0804536C:
	ldr r0, [r4]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r6, r0, r2
	movs r4, #0
	b .L08045390
	.align 2, 0
.L08045378: .4byte 0x00001C70
.L0804537C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L0804538E
	adds r1, r7, #0
	bl AddAffection__6Animali
.L0804538E:
	adds r4, #1
.L08045390:
	adds r0, r6, #0
	bl GetCapacity__C4Coop
	cmp r4, r0
	blo .L0804537C
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r5, r0, r4
	movs r4, #0
	b .L080453C0
.L080453AC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl GetBarnAnimal__4BarnUi
	cmp r0, #0
	beq .L080453BE
	adds r1, r7, #0
	bl AddAffection__6Animali
.L080453BE:
	adds r4, #1
.L080453C0:
	adds r0, r5, #0
	bl GetCapacity__C4Barn
	cmp r4, r0
	blo .L080453AC
	b .L08045572
.L080453CC:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L080453DA
	b .L08045572
.L080453DA:
	bl func_08016F60
	b .L08045572
.L080453E0:
	adds r6, r5, #0
	adds r6, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r1, #0
	beq .L080453FE
	subs r0, r1, #1
	str r0, [r2]
.L080453FE:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r3, [r0]
	cmp r1, #0
	beq .L08045410
	subs r0, r1, #1
	str r0, [r2]
.L08045410:
	ldr r1, [r2]
	lsls r0, r1, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r7, [r0]
	cmp r1, #0
	beq .L08045422
	subs r0, r1, #1
	str r0, [r2]
.L08045422:
	ldr r4, [r2]
	lsls r0, r4, #2
	subs r0, #4
	adds r0, r6, r0
	ldr r6, [r0]
	cmp r4, #0
	beq .L08045434
	subs r0, r4, #1
	str r0, [r2]
.L08045434:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	bne .L08045442
	b .L08045572
.L08045442:
	mov r2, r8
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl func_08016FA4
	b .L08045572
.L08045456:
	movs r4, #0xda
	lsls r4, r4, #1
	adds r3, r5, r4
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L0804546C
	subs r0, r2, #1
	str r0, [r3]
.L0804546C:
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #0
	bne .L0804547C
	bl .L0804168A
.L0804547C:
	bl func_08016F34
	bl .L0804168A
.L08045484:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L08045572
	bl func_08016784
	b .L08045572
.L08045496:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r3, .L080454C4 @ =0x00002214
	adds r0, r0, r3
	bl func_0809AA28
.L080454A6:
	adds r4, r0, #0
.L080454A8:
	adds r2, r5, #0
	adds r2, #0x24
	movs r6, #0xda
	lsls r6, r6, #1
	adds r1, r5, r6
.L080454B2:
	ldr r3, [r1]
	cmp r3, #0x63
	bhi .L08045572
	lsls r0, r3, #2
	adds r0, r2, r0
	str r4, [r0]
.L080454BE:
	adds r0, r3, #1
	str r0, [r1]
	b .L08045572
	.align 2, 0
.L080454C4: .4byte 0x00002214
.L080454C8:
	movs r0, #0xda
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0, #0x20]
	cmp r2, #0
	beq .L080454DE
	subs r0, r2, #1
	str r0, [r3]
.L080454DE:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L080454EE
	bl .L0804168A
.L080454EE:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl func_0801589C
	bl .L0804168A
.L080454FA:
	adds r4, r5, #0
	adds r4, #0x24
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r1, r5, r3
	movs r6, #0xda
	lsls r6, r6, #1
	adds r2, r5, r6
	ldr r3, [r2]
	cmp r3, #0x63
	bhi .L08045572
	lsls r0, r3, #2
	adds r0, r4, r0
	ldr r1, [r1]
.L08045516:
	str r1, [r0]
	adds r0, r3, #1
	str r0, [r2]
	b .L08045572
.L0804551E:
	adds r4, r5, #0
	adds r4, #0x24
	movs r0, #0xda
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r1, [r0]
	cmp r2, #0
	beq .L0804553A
	subs r0, r2, #1
	str r0, [r3]
.L0804553A:
	ldr r2, [r3]
	lsls r0, r2, #2
	subs r0, #4
	adds r0, r4, r0
	ldr r6, [r0]
	cmp r2, #0
	beq .L0804554C
	subs r0, r2, #1
	str r0, [r3]
.L0804554C:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r5, [r0]
	cmp r5, #0
	beq .L08045572
	mov r4, sp
	adds r4, #0x3b
	adds r0, r4, #0
	bl __7ProductUi
	adds r0, r4, #0
	bl GetName__C7Product
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_08012ACC
.L08045572:
	movs r0, #0
.L08045574:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_08045584
func_08045584: @ 0x08045584
	push {r4, r5, lr}
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, .L080455B8 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0878
	adds r4, r0, #0
	cmp r4, #0
	beq .L080455CE
	cmp r5, #0
	bne .L080455BC
	adds r0, r4, #0
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #5
	bne .L080455CE
	adds r0, r4, #0
	bl GetDaysSincePlayerEvent_bugged__C12Bachelorette
	b .L080455D0
	.align 2, 0
.L080455B8: .4byte 0x00001CD4
.L080455BC:
	adds r0, r4, #0
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bne .L080455CE
	adds r0, r4, #0
	bl GetDaysSinceRivalEvent__C12Bachelorette
	b .L080455D0
.L080455CE:
	movs r0, #0
.L080455D0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080455D8
func_080455D8: @ 0x080455D8
	push {r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r7, r3, #0
	add r2, sp, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r5, [r2]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r4, r0, r2
	ldr r0, [r4]
	ldr r2, .L08045600 @ =0x0000214C
	adds r0, r0, r2
	bl func_0809C694
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08045604
	movs r0, #1
	b .L08045632
	.align 2, 0
.L08045600: .4byte 0x0000214C
.L08045604:
	ldr r0, [r4]
	ldr r1, .L08045620 @ =0x00001CD4
	adds r0, r0, r1
	adds r1, r6, #0
	bl func_080A0878
	cmp r0, #0
	beq .L0804562C
	cmp r5, #0
	bne .L08045624
	bl GetPlayerEventCount__C12Bachelorette
	b .L08045628
	.align 2, 0
.L08045620: .4byte 0x00001CD4
.L08045624:
	bl GetRivalEventCount__C12Bachelorette
.L08045628:
	cmp r0, r7
	bhs .L08045630
.L0804562C:
	movs r0, #0
	b .L08045632
.L08045630:
	movs r0, #2
.L08045632:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_08045638
func_08045638: @ 0x08045638
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sl, r0
	str r2, [sp, #8]
	adds r5, r3, #0
	ldr r0, [sp, #0x3c]
	mov sb, r0
	add r0, sp, #0x40
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldrb r6, [r0]
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r1, .L08045684 @ =0x0000214C
	adds r7, r0, r1
	ldr r2, .L08045688 @ =0x00001CD4
	adds r0, r0, r2
	ldr r1, [sp, #8]
	bl func_080A0878
	adds r4, r0, #0
	cmp r4, #0
	bne .L08045676
	b .L080458F8
.L08045676:
	cmp r5, #1
	beq .L080456AC
	cmp r5, #1
	bgt .L0804568C
	cmp r5, #0
	beq .L08045692
	b .L080458F8
	.align 2, 0
.L08045684: .4byte 0x0000214C
.L08045688: .4byte 0x00001CD4
.L0804568C:
	cmp r5, #2
	beq .L080456E0
	b .L080458F8
.L08045692:
	adds r0, r7, #0
	mov r1, r8
	bl func_0809C694
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080456A2
	b .L080458F8
.L080456A2:
	adds r0, r7, #0
	mov r1, r8
	bl func_0809C6B0
	b .L080458F8
.L080456AC:
	cmp r6, #0
	bne .L080456B8
	adds r0, r4, #0
	bl GetPlayerEventCount__C12Bachelorette
	b .L080456BE
.L080456B8:
	adds r0, r4, #0
	bl GetRivalEventCount__C12Bachelorette
.L080456BE:
	cmp r0, sb
	blo .L080456C4
	b .L080458F8
.L080456C4:
	adds r0, r7, #0
	mov r1, r8
	bl func_0809C6AC
	b .L080458F8
.L080456CE:
	cmp r6, #0
	bne .L080456DA
	adds r0, r4, #0
	bl PlayerEventUpdate__12Bachelorette
	b .L080456E0
.L080456DA:
	adds r0, r4, #0
	bl RivalEventUpdate__12Bachelorette
.L080456E0:
	cmp r6, #0
	bne .L080456EC
	adds r0, r4, #0
	bl GetPlayerEventCount__C12Bachelorette
	b .L080456F2
.L080456EC:
	adds r0, r4, #0
	bl GetRivalEventCount__C12Bachelorette
.L080456F2:
	cmp r0, sb
	blo .L080456CE
	adds r0, r7, #0
	mov r1, r8
	bl func_0809C694
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0804570C
	adds r0, r7, #0
	mov r1, r8
	bl func_0809C6B0
.L0804570C:
	cmp r6, #0
	beq .L08045712
	b .L080458F8
.L08045712:
	adds r0, r4, #0
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #5
	beq .L0804571E
	b .L080458F8
.L0804571E:
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, sl
	ldr r2, [r0]
	ldrb r1, [r2, #0x10]
	mov r0, sp
	strb r1, [r0]
	ldrb r4, [r2, #0x11]
	movs r1, #0
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1b
	adds r3, r0, #7
	cmp r3, #0x1d
	bls .L0804573E
	movs r1, #1
	subs r3, #0x1e
.L0804573E:
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	ands r2, r4
	orrs r2, r0
	movs r0, #0x1f
	ands r3, r0
	lsls r1, r3, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r2, r0
	orrs r2, r1
	mov r0, sp
	adds r0, #2
	strb r2, [r0]
	lsls r1, r2, #0x1e
	adds r7, r0, #0
	cmp r1, #0
	bne .L080457AC
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	cmp r0, #7
	bhi .L080457AC
	mov r4, sp
	mov r0, sp
	ldrb r3, [r0]
	lsls r0, r3, #0x1d
	lsrs r0, r0, #0x1d
	adds r2, r0, #1
	cmp r2, #6
	bls .L0804579C
	movs r2, #0
	lsrs r0, r3, #3
	cmp r0, #0x1c
	bhi .L0804579C
	adds r0, #1
	lsls r0, r0, #3
	movs r1, #7
	ands r1, r3
	orrs r1, r0
	mov r0, sp
	strb r1, [r0]
.L0804579C:
	movs r0, #7
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
.L080457AC:
	movs r5, #0xd4
	lsls r5, r5, #2
	add r5, sl
	ldr r0, [r5]
	ldr r3, .L080457F0 @ =0x00001BD8
	adds r0, r0, r3
	bl func_0800E4E8
	mov r4, sp
	adds r4, #1
	strb r0, [r4]
	ldr r0, [r5]
	ldr r6, .L080457F4 @ =0x00001CD4
	adds r0, r0, r6
	ldr r1, [sp, #8]
	adds r2, r4, #0
	bl func_0809FE74
	mov sb, r0
	movs r0, #4
	rsbs r0, r0, #0
	mov r1, sp
	ldrb r1, [r1, #0x10]
	ands r0, r1
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sp
	strb r0, [r2, #0x10]
	mov r8, r4
	adds r2, #4
	str r2, [sp, #0x18]
	b .L08045892
	.align 2, 0
.L080457F0: .4byte 0x00001BD8
.L080457F4: .4byte 0x00001CD4
.L080457F8:
	ldrb r5, [r7]
	lsls r0, r5, #0x19
	lsrs r2, r0, #0x1b
	adds r2, #1
	cmp r2, #0x1e
	bne .L08045836
	lsls r1, r5, #0x1e
	movs r3, #3
	lsrs r1, r1, #0x1e
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r4, sp
	ldrb r4, [r4, #0x14]
	ands r0, r4
	orrs r0, r1
	adds r1, #1
	ands r1, r3
	ands r0, r2
	orrs r0, r1
	mov r6, sp
	strb r0, [r6, #0x14]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ands r0, r3
	ands r2, r5
	orrs r2, r0
	mov r0, sp
	adds r0, #2
	strb r2, [r0]
	movs r2, #0
.L08045836:
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r7]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	mov r1, sp
	adds r1, #2
	strb r0, [r1]
	movs r2, #0
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne .L08045858
	movs r2, #1
.L08045858:
	cmp r2, #0
	beq .L08045892
	mov r5, sp
	mov r0, sp
	ldrb r3, [r0]
	lsls r0, r3, #0x1d
	lsrs r0, r0, #0x1d
	adds r2, r0, #1
	cmp r2, #6
	bls .L08045882
	movs r2, #0
	lsrs r0, r3, #3
	cmp r0, #0x1c
	bhi .L08045882
	adds r0, #1
	lsls r0, r0, #3
	movs r1, #7
	ands r1, r3
	orrs r1, r0
	mov r0, sp
	strb r1, [r0]
.L08045882:
	movs r0, #7
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
.L08045892:
	movs r6, #0
	movs r1, #0
	mov r0, sp
	adds r0, #2
	ldrb r0, [r0]
	movs r5, #0x7f
	adds r2, r5, #0
	ands r2, r0
	adds r0, r5, #0
	mov r3, sb
	ands r0, r3
	cmp r2, r0
	bne .L080458AE
	movs r1, #1
.L080458AE:
	cmp r1, #0
	bne .L080458D2
	mov r4, r8
	ldrb r1, [r4]
	movs r3, #0
	adds r0, r5, #0
	ands r0, r1
	cmp r2, r0
	bne .L080458C2
	movs r3, #1
.L080458C2:
	cmp r3, #0
	bne .L080458D2
	adds r0, r7, #0
	bl func_080ADBB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080458D4
.L080458D2:
	movs r6, #1
.L080458D4:
	cmp r6, #0
	bne .L080457F8
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r6, .L08045908 @ =0x00001CD4
	adds r0, r0, r6
	mov r1, sp
	ldrb r2, [r1]
	add r1, sp, #4
	strb r2, [r1]
	ldrb r1, [r7]
	ldr r2, [sp, #0x18]
	strb r1, [r2, #1]
	ldr r1, [sp, #0x18]
	bl func_080A1478
.L080458F8:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08045908: .4byte 0x00001CD4

	thumb_func_start func_0804590C
func_0804590C: @ 0x0804590C
	push {r4, r5, lr}
	mov r5, r8
	push {r5}
	sub sp, #0xc
	adds r2, r0, #0
	ldr r0, .L0804592C @ =0x0000024D
	cmp r1, r0
	bls .L08045920
	bl sub_08048FEC
.L08045920:
	lsls r0, r1, #2
	ldr r1, .L08045930 @ =.L08045934
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0804592C: .4byte 0x0000024D
.L08045930: .4byte .L08045934
.L08045934: @ jump table
	.4byte .L0804626C @ case 0
	.4byte .L08046296 @ case 1
	.4byte .L080462A4 @ case 2
	.4byte .L080462B0 @ case 3
	.4byte .L080462BE @ case 4
	.4byte .L080462D0 @ case 5
	.4byte .L08046312 @ case 6
	.4byte .L08046320 @ case 7
	.4byte .L0804632E @ case 8
	.4byte .L08046348 @ case 9
	.4byte .L08046360 @ case 10
	.4byte .L08046378 @ case 11
	.4byte .L08046390 @ case 12
	.4byte .L080463A8 @ case 13
	.4byte .L0804640E @ case 14
	.4byte .L08046424 @ case 15
	.4byte .L0804643A @ case 16
	.4byte .L08046450 @ case 17
	.4byte .L0804645E @ case 18
	.4byte .L0804646C @ case 19
	.4byte .L0804647A @ case 20
	.4byte .L0804648E @ case 21
	.4byte .L080464AE @ case 22
	.4byte .L0804653A @ case 23
	.4byte .L080464C2 @ case 24
	.4byte .L080464D6 @ case 25
	.4byte .L080464EA @ case 26
	.4byte .L080464FE @ case 27
	.4byte .L08046512 @ case 28
	.4byte .L08046526 @ case 29
	.4byte .L080465EE @ case 30
	.4byte .L08046664 @ case 31
	.4byte .L0804654E @ case 32
	.4byte .L08046562 @ case 33
	.4byte .L08046576 @ case 34
	.4byte .L0804658A @ case 35
	.4byte .L0804659E @ case 36
	.4byte .L080465B2 @ case 37
	.4byte .L080465C6 @ case 38
	.4byte .L080465DA @ case 39
	.4byte .L080463C0 @ case 40
	.4byte .L080463D2 @ case 41
	.4byte .L080463E8 @ case 42
	.4byte .L080463FE @ case 43
	.4byte .L08046602 @ case 44
	.4byte .L0804664C @ case 45
	.4byte .L08046694 @ case 46
	.4byte .L080466B8 @ case 47
	.4byte .L080466E0 @ case 48
	.4byte .L08046704 @ case 49
	.4byte .L0804677A @ case 50
	.4byte .L080467E4 @ case 51
	.4byte .L08046800 @ case 52
	.4byte .L08046820 @ case 53
	.4byte .L08046728 @ case 54
	.4byte .L0804672E @ case 55
	.4byte .L08046734 @ case 56
	.4byte .L0804673A @ case 57
	.4byte .L08046740 @ case 58
	.4byte .L08046746 @ case 59
	.4byte .L08046754 @ case 60
	.4byte .L0804675A @ case 61
	.4byte .L08046760 @ case 62
	.4byte .L08046766 @ case 63
	.4byte .L0804676C @ case 64
	.4byte .L0804661C @ case 65
	.4byte .L08046634 @ case 66
	.4byte .L08046838 @ case 67
	.4byte .L08046848 @ case 68
	.4byte .L08046866 @ case 69
	.4byte .L08046898 @ case 70
	.4byte .L080468A6 @ case 71
	.4byte .L08046C98 @ case 72
	.4byte .L080468B4 @ case 73
	.4byte .L080468C2 @ case 74
	.4byte .L080468D0 @ case 75
	.4byte .L080468DE @ case 76
	.4byte .L08046C34 @ case 77
	.4byte .L080468EC @ case 78
	.4byte .L080468FA @ case 79
	.4byte .L08046908 @ case 80
	.4byte .L08046CAC @ case 81
	.4byte .L08046916 @ case 82
	.4byte .L08046CC0 @ case 83
	.4byte .L08046924 @ case 84
	.4byte .L08046932 @ case 85
	.4byte .L08046C48 @ case 86
	.4byte .L08046940 @ case 87
	.4byte .L0804694E @ case 88
	.4byte .L08046CD4 @ case 89
	.4byte .L0804695C @ case 90
	.4byte .L08046CE8 @ case 91
	.4byte .L0804696A @ case 92
	.4byte .L08046CFC @ case 93
	.4byte .L08046978 @ case 94
	.4byte .L08046986 @ case 95
	.4byte .L08046C5C @ case 96
	.4byte .L08046994 @ case 97
	.4byte .L080469A2 @ case 98
	.4byte .L08046D10 @ case 99
	.4byte .L080469B0 @ case 100
	.4byte .L080469BE @ case 101
	.4byte .L080469CC @ case 102
	.4byte .L080469DA @ case 103
	.4byte .L08046C70 @ case 104
	.4byte .L080469E8 @ case 105
	.4byte .L080469F4 @ case 106
	.4byte .L08046A00 @ case 107
	.4byte .L08046D24 @ case 108
	.4byte .L08046A0C @ case 109
	.4byte .L08046A18 @ case 110
	.4byte .L08046A24 @ case 111
	.4byte .L08046C84 @ case 112
	.4byte .L08046A5C @ case 113
	.4byte .L08046A6A @ case 114
	.4byte .L08046A78 @ case 115
	.4byte .L08046A86 @ case 116
	.4byte .L08046A94 @ case 117
	.4byte .L08046AA2 @ case 118
	.4byte .L08046AB0 @ case 119
	.4byte .L08046D38 @ case 120
	.4byte .L08046D9C @ case 121
	.4byte .L08046ABE @ case 122
	.4byte .L08046ACC @ case 123
	.4byte .L08046ADA @ case 124
	.4byte .L08046AE8 @ case 125
	.4byte .L08046AF6 @ case 126
	.4byte .L08046B04 @ case 127
	.4byte .L08046D4C @ case 128
	.4byte .L08046DB0 @ case 129
	.4byte .L08046B12 @ case 130
	.4byte .L08046B20 @ case 131
	.4byte .L08046B2E @ case 132
	.4byte .L08046B3C @ case 133
	.4byte .L08046B4A @ case 134
	.4byte .L08046B58 @ case 135
	.4byte .L08046D60 @ case 136
	.4byte .L08046DC4 @ case 137
	.4byte .L08046B66 @ case 138
	.4byte .L08046B74 @ case 139
	.4byte .L08046B82 @ case 140
	.4byte .L08046B90 @ case 141
	.4byte .L08046B9E @ case 142
	.4byte .L08046BAC @ case 143
	.4byte .L08046D74 @ case 144
	.4byte .L08046DD8 @ case 145
	.4byte .L08046BBA @ case 146
	.4byte .L08046BD0 @ case 147
	.4byte .L08046BE6 @ case 148
	.4byte .L08046BFC @ case 149
	.4byte .L08046C12 @ case 150
	.4byte .L08046C1E @ case 151
	.4byte .L08046D88 @ case 152
	.4byte .L08046DEC @ case 153
	.4byte .L08046E00 @ case 154
	.4byte .L08046E14 @ case 155
	.4byte .L08046E28 @ case 156
	.4byte .L08046E3C @ case 157
	.4byte .L08046E50 @ case 158
	.4byte .L08046E64 @ case 159
	.4byte .L08046E78 @ case 160
	.4byte .L08046E8C @ case 161
	.4byte .L08046EA0 @ case 162
	.4byte .L08046EB4 @ case 163
	.4byte .L08046ED8 @ case 164
	.4byte .L08046EEC @ case 165
	.4byte .L08046F00 @ case 166
	.4byte .L08046F14 @ case 167
	.4byte .L08046F28 @ case 168
	.4byte .L08046F3C @ case 169
	.4byte .L08046F50 @ case 170
	.4byte .L08046F64 @ case 171
	.4byte .L08046F78 @ case 172
	.4byte .L08046F8C @ case 173
	.4byte .L08046FA0 @ case 174
	.4byte .L08046FB4 @ case 175
	.4byte .L08046FC8 @ case 176
	.4byte .L08046FDC @ case 177
	.4byte .L08046FF0 @ case 178
	.4byte .L08047004 @ case 179
	.4byte .L08047028 @ case 180
	.4byte .L0804703C @ case 181
	.4byte .L08047050 @ case 182
	.4byte .L08047064 @ case 183
	.4byte .L08047078 @ case 184
	.4byte .L0804708C @ case 185
	.4byte .L080470A0 @ case 186
	.4byte .L080470B4 @ case 187
	.4byte .L080470C8 @ case 188
	.4byte .L080470DC @ case 189
	.4byte .L080470F0 @ case 190
	.4byte .L08047104 @ case 191
	.4byte .L08047118 @ case 192
	.4byte .L0804712C @ case 193
	.4byte .L08047140 @ case 194
	.4byte .L08047154 @ case 195
	.4byte .L08047178 @ case 196
	.4byte .L0804718C @ case 197
	.4byte .L080471A0 @ case 198
	.4byte .L080471B4 @ case 199
	.4byte .L080471C8 @ case 200
	.4byte .L080471DC @ case 201
	.4byte .L080471F0 @ case 202
	.4byte .L08047204 @ case 203
	.4byte .L08047218 @ case 204
	.4byte .L0804722C @ case 205
	.4byte .L08047240 @ case 206
	.4byte .L08047254 @ case 207
	.4byte .L08047268 @ case 208
	.4byte .L0804727C @ case 209
	.4byte .L08047290 @ case 210
	.4byte .L080472A4 @ case 211
	.4byte .L080472C8 @ case 212
	.4byte .L080472DC @ case 213
	.4byte .L080472F0 @ case 214
	.4byte .L08047304 @ case 215
	.4byte .L08047318 @ case 216
	.4byte .L0804732C @ case 217
	.4byte .L08047340 @ case 218
	.4byte .L08047354 @ case 219
	.4byte .L08047368 @ case 220
	.4byte .L0804737C @ case 221
	.4byte .L08047390 @ case 222
	.4byte .L080473BC @ case 223
	.4byte .L080473D0 @ case 224
	.4byte .L080473E4 @ case 225
	.4byte .L080473F8 @ case 226
	.4byte .L0804740C @ case 227
	.4byte .L08047420 @ case 228
	.4byte .L08047434 @ case 229
	.4byte .L08047448 @ case 230
	.4byte .L0804745C @ case 231
	.4byte .L08047470 @ case 232
	.4byte .L08047484 @ case 233
	.4byte .L08047498 @ case 234
	.4byte .L080474AC @ case 235
	.4byte .L080474C0 @ case 236
	.4byte .L080474D4 @ case 237
	.4byte .L080474E8 @ case 238
	.4byte .L080474FC @ case 239
	.4byte .L08047510 @ case 240
	.4byte .L08047524 @ case 241
	.4byte .L08047538 @ case 242
	.4byte .L0804754C @ case 243
	.4byte .L08047560 @ case 244
	.4byte .L08047574 @ case 245
	.4byte .L08047588 @ case 246
	.4byte .L0804759C @ case 247
	.4byte .L080475B0 @ case 248
	.4byte .L080475C4 @ case 249
	.4byte .L080475D8 @ case 250
	.4byte .L080475EC @ case 251
	.4byte .L08047600 @ case 252
	.4byte .L08047614 @ case 253
	.4byte .L08047628 @ case 254
	.4byte .L0804763C @ case 255
	.4byte .L08047650 @ case 256
	.4byte .L08047664 @ case 257
	.4byte .L08047678 @ case 258
	.4byte .L0804768C @ case 259
	.4byte .L080476A8 @ case 260
	.4byte .L080476BC @ case 261
	.4byte .L080476D0 @ case 262
	.4byte .L080476E4 @ case 263
	.4byte .L080476F8 @ case 264
	.4byte .L08047708 @ case 265
	.4byte .L0804771C @ case 266
	.4byte .L08047730 @ case 267
	.4byte .L08047744 @ case 268
	.4byte .L08047758 @ case 269
	.4byte .L08047774 @ case 270
	.4byte .L08047788 @ case 271
	.4byte .L080477AC @ case 272
	.4byte .L080477C0 @ case 273
	.4byte .L080477D4 @ case 274
	.4byte .L080477E8 @ case 275
	.4byte .L080477FC @ case 276
	.4byte .L08047810 @ case 277
	.4byte .L08047824 @ case 278
	.4byte .L08047838 @ case 279
	.4byte .L0804784C @ case 280
	.4byte .L08047860 @ case 281
	.4byte .L08047874 @ case 282
	.4byte .L08047888 @ case 283
	.4byte .L0804789C @ case 284
	.4byte .L080478B0 @ case 285
	.4byte .L080478C4 @ case 286
	.4byte .L080478D8 @ case 287
	.4byte .L080478EC @ case 288
	.4byte .L080478FC @ case 289
	.4byte .L0804790C @ case 290
	.4byte .L0804791C @ case 291
	.4byte .L0804792C @ case 292
	.4byte .L08047940 @ case 293
	.4byte .L08047954 @ case 294
	.4byte .L08047968 @ case 295
	.4byte .L0804797C @ case 296
	.4byte .L08047990 @ case 297
	.4byte .L080479A4 @ case 298
	.4byte .L080479B8 @ case 299
	.4byte .L080479CC @ case 300
	.4byte .L080479E0 @ case 301
	.4byte .L080479F4 @ case 302
	.4byte .L08047A08 @ case 303
	.4byte .L08047A1C @ case 304
	.4byte .L08047A40 @ case 305
	.4byte .L08047A54 @ case 306
	.4byte .L08047A68 @ case 307
	.4byte .L08047A7C @ case 308
	.4byte .L08047A90 @ case 309
	.4byte .L08047AA4 @ case 310
	.4byte .L08047AB8 @ case 311
	.4byte .L08047ACC @ case 312
	.4byte .L08047AE0 @ case 313
	.4byte .L08047AF4 @ case 314
	.4byte .L08047B10 @ case 315
	.4byte .L08047B24 @ case 316
	.4byte .L08047B38 @ case 317
	.4byte .L08047B4C @ case 318
	.4byte .L08047B60 @ case 319
	.4byte .L08047B74 @ case 320
	.4byte .L08047B98 @ case 321
	.4byte .L08047BAC @ case 322
	.4byte .L08047BC0 @ case 323
	.4byte .L08047BD4 @ case 324
	.4byte .L08047BE8 @ case 325
	.4byte .L08047BFC @ case 326
	.4byte .L08047C10 @ case 327
	.4byte .L08047C2C @ case 328
	.4byte .L08047C40 @ case 329
	.4byte .L08047C54 @ case 330
	.4byte .L08047C68 @ case 331
	.4byte .L08047C7C @ case 332
	.4byte .L08047C90 @ case 333
	.4byte .L08047CBC @ case 334
	.4byte .L08047CD0 @ case 335
	.4byte .L08047CE4 @ case 336
	.4byte .L08047CF8 @ case 337
	.4byte .L08047D0C @ case 338
	.4byte .L08047D20 @ case 339
	.4byte .L08047D34 @ case 340
	.4byte .L08047D50 @ case 341
	.4byte .L08047D64 @ case 342
	.4byte .L08047D78 @ case 343
	.4byte .L08047D8C @ case 344
	.4byte .L08047DA0 @ case 345
	.4byte .L08047DB4 @ case 346
	.4byte .L08047DC8 @ case 347
	.4byte .L08047DDC @ case 348
	.4byte .L08047DF0 @ case 349
	.4byte .L08047E04 @ case 350
	.4byte .L08047E18 @ case 351
	.4byte .L08047E2C @ case 352
	.4byte .L08047E40 @ case 353
	.4byte .L08047E54 @ case 354
	.4byte .L08047E68 @ case 355
	.4byte .L08047E7C @ case 356
	.4byte .L08047E90 @ case 357
	.4byte .L08047EA4 @ case 358
	.4byte .L08047EB8 @ case 359
	.4byte .L08047ECC @ case 360
	.4byte .L08047EE0 @ case 361
	.4byte .L08047EF4 @ case 362
	.4byte .L08047F08 @ case 363
	.4byte .L08047F1C @ case 364
	.4byte .L08047F30 @ case 365
	.4byte .L08047F44 @ case 366
	.4byte .L08047F58 @ case 367
	.4byte .L08047F6C @ case 368
	.4byte .L08047F80 @ case 369
	.4byte .L08046A32 @ case 370
	.4byte .L08046A42 @ case 371
	.4byte .L08047F94 @ case 372
	.4byte .L08047FA8 @ case 373
	.4byte .L08047FBC @ case 374
	.4byte .L08047FD0 @ case 375
	.4byte .L08047FE4 @ case 376
	.4byte .L08047FF8 @ case 377
	.4byte .L0804800C @ case 378
	.4byte .L08048020 @ case 379
	.4byte .L08048034 @ case 380
	.4byte .L08048048 @ case 381
	.4byte .L0804805C @ case 382
	.4byte .L08048070 @ case 383
	.4byte .L08048084 @ case 384
	.4byte .L08048098 @ case 385
	.4byte .L080480AC @ case 386
	.4byte .L080480C0 @ case 387
	.4byte .L080480D4 @ case 388
	.4byte .L080480E8 @ case 389
	.4byte .L080480FC @ case 390
	.4byte .L08048110 @ case 391
	.4byte .L0804812C @ case 392
	.4byte .L08048140 @ case 393
	.4byte .L08048154 @ case 394
	.4byte .L08048168 @ case 395
	.4byte .L08048178 @ case 396
	.4byte .L08048188 @ case 397
	.4byte .L080481A4 @ case 398
	.4byte .L080481B8 @ case 399
	.4byte .L080481CC @ case 400
	.4byte .L08046884 @ case 401
	.4byte .L080481F0 @ case 402
	.4byte .L08048204 @ case 403
	.4byte .L08048218 @ case 404
	.4byte .L08048228 @ case 405
	.4byte .L0804823C @ case 406
	.4byte .L08048250 @ case 407
	.4byte .L08048264 @ case 408
	.4byte .L08048274 @ case 409
	.4byte .L08048288 @ case 410
	.4byte .L0804829C @ case 411
	.4byte .L080482B0 @ case 412
	.4byte .L080482C0 @ case 413
	.4byte .L080482D4 @ case 414
	.4byte .L080482E8 @ case 415
	.4byte .L080482F8 @ case 416
	.4byte .L08048308 @ case 417
	.4byte .L0804831C @ case 418
	.4byte .L08048330 @ case 419
	.4byte .L08048344 @ case 420
	.4byte .L08048358 @ case 421
	.4byte .L0804836C @ case 422
	.4byte .L08048380 @ case 423
	.4byte .L08048394 @ case 424
	.4byte .L080483A4 @ case 425
	.4byte .L080483C0 @ case 426
	.4byte .L080483D4 @ case 427
	.4byte .L080483E8 @ case 428
	.4byte .L080483F8 @ case 429
	.4byte .L0804840C @ case 430
	.4byte .L08048420 @ case 431
	.4byte .L08048434 @ case 432
	.4byte .L08048444 @ case 433
	.4byte .L08048458 @ case 434
	.4byte .L0804846C @ case 435
	.4byte .L08048480 @ case 436
	.4byte .L08048494 @ case 437
	.4byte .L080484A8 @ case 438
	.4byte .L080484BC @ case 439
	.4byte .L080484D0 @ case 440
	.4byte .L080484F4 @ case 441
	.4byte .L08048508 @ case 442
	.4byte .L0804851C @ case 443
	.4byte .L08048530 @ case 444
	.4byte .L08048540 @ case 445
	.4byte .L08048554 @ case 446
	.4byte .L08048568 @ case 447
	.4byte .L0804857C @ case 448
	.4byte .L0804858C @ case 449
	.4byte .L0804859C @ case 450
	.4byte .L080485B8 @ case 451
	.4byte .L080485CC @ case 452
	.4byte .L080485E0 @ case 453
	.4byte .L080485F4 @ case 454
	.4byte .L08048608 @ case 455
	.4byte .L0804861C @ case 456
	.4byte .L08048638 @ case 457
	.4byte .L08048648 @ case 458
	.4byte .L08048658 @ case 459
	.4byte .L08048674 @ case 460
	.4byte .L08048698 @ case 461
	.4byte .L080486A8 @ case 462
	.4byte .L080486C4 @ case 463
	.4byte .L080486DC @ case 464
	.4byte .L080486F0 @ case 465
	.4byte .L08048704 @ case 466
	.4byte .L08048718 @ case 467
	.4byte .L0804872C @ case 468
	.4byte .L08048740 @ case 469
	.4byte .L08048754 @ case 470
	.4byte .L08048768 @ case 471
	.4byte .L08048778 @ case 472
	.4byte .L0804878C @ case 473
	.4byte .L080487A0 @ case 474
	.4byte .L080487B4 @ case 475
	.4byte .L080487C8 @ case 476
	.4byte .L080487DC @ case 477
	.4byte .L080487F0 @ case 478
	.4byte .L08048804 @ case 479
	.4byte .L08048814 @ case 480
	.4byte .L08048828 @ case 481
	.4byte .L0804883C @ case 482
	.4byte .L0804884C @ case 483
	.4byte .L0804885C @ case 484
	.4byte .L0804886C @ case 485
	.4byte .L08048888 @ case 486
	.4byte .L08048898 @ case 487
	.4byte .L080488A8 @ case 488
	.4byte .L080488B8 @ case 489
	.4byte .L080488D4 @ case 490
	.4byte .L080488E4 @ case 491
	.4byte .L08048900 @ case 492
	.4byte .L0804891C @ case 493
	.4byte .L08048944 @ case 494
	.4byte .L0804895C @ case 495
	.4byte .L08048974 @ case 496
	.4byte .L08048984 @ case 497
	.4byte .L08048994 @ case 498
	.4byte .L080489A4 @ case 499
	.4byte .L080489B4 @ case 500
	.4byte .L080489C4 @ case 501
	.4byte .L080489D4 @ case 502
	.4byte .L080489E4 @ case 503
	.4byte .L080489F4 @ case 504
	.4byte .L08048A04 @ case 505
	.4byte .L08048A14 @ case 506
	.4byte .L08048A24 @ case 507
	.4byte .L08048A34 @ case 508
	.4byte .L08048A4C @ case 509
	.4byte .L08048A64 @ case 510
	.4byte .L08048A8C @ case 511
	.4byte .L08048A9C @ case 512
	.4byte .L08048AAC @ case 513
	.4byte .L08048ABC @ case 514
	.4byte .L08048ACC @ case 515
	.4byte .L08048ADC @ case 516
	.4byte .L08048AEC @ case 517
	.4byte .L08048AFC @ case 518
	.4byte .L08048B0C @ case 519
	.4byte .L08048B1C @ case 520
	.4byte .L08048B2C @ case 521
	.4byte .L08048B3C @ case 522
	.4byte .L08048B4C @ case 523
	.4byte .L08048B5C @ case 524
	.4byte .L08048B6C @ case 525
	.4byte .L08048B84 @ case 526
	.4byte .L08048B94 @ case 527
	.4byte .L08048BA4 @ case 528
	.4byte .L08048BB4 @ case 529
	.4byte .L08048BC4 @ case 530
	.4byte .L08048BD4 @ case 531
	.4byte .L08048BE4 @ case 532
	.4byte .L08048BF4 @ case 533
	.4byte .L08048C04 @ case 534
	.4byte .L08048C1C @ case 535
	.4byte .L08048C2C @ case 536
	.4byte .L08048C3C @ case 537
	.4byte .L08048C4C @ case 538
	.4byte .L08048C5C @ case 539
	.4byte .L08048C6C @ case 540
	.4byte .L08048C7C @ case 541
	.4byte .L08048C8C @ case 542
	.4byte .L08048C9C @ case 543
	.4byte .L08048CAC @ case 544
	.4byte .L08048CBC @ case 545
	.4byte .L08048CCC @ case 546
	.4byte .L08048CDC @ case 547
	.4byte .L08048CEC @ case 548
	.4byte .L08048CFC @ case 549
	.4byte .L08048D0C @ case 550
	.4byte .L08048D1C @ case 551
	.4byte .L08048D2C @ case 552
	.4byte .L08048D3C @ case 553
	.4byte .L08048D4C @ case 554
	.4byte .L08048D5C @ case 555
	.4byte .L08048D6C @ case 556
	.4byte .L08048D7C @ case 557
	.4byte .L08048D8C @ case 558
	.4byte .L08048D9C @ case 559
	.4byte .L08048DAC @ case 560
	.4byte .L08048DBC @ case 561
	.4byte .L08048DCC @ case 562
	.4byte .L08048DDC @ case 563
	.4byte .L08048DEC @ case 564
	.4byte .L08048DFC @ case 565
	.4byte .L08048E0C @ case 566
	.4byte .L08048E1C @ case 567
	.4byte .L08048E2C @ case 568
	.4byte .L08048E44 @ case 569
	.4byte .L08048E54 @ case 570
	.4byte .L08048E6C @ case 571
	.4byte .L08048E84 @ case 572
	.4byte .L08048E94 @ case 573
	.4byte .L08048EA4 @ case 574
	.4byte .L08048EBC @ case 575
	.4byte .L08048ED4 @ case 576
	.4byte .L08048EEC @ case 577
	.4byte .L08048EFC @ case 578
	.4byte .L08048F0C @ case 579
	.4byte .L08048F24 @ case 580
	.4byte .L08048F3C @ case 581
	.4byte .L08048F54 @ case 582
	.4byte .L08048F6C @ case 583
	.4byte .L08048F84 @ case 584
	.4byte .L08048F94 @ case 585
	.4byte .L08048FA4 @ case 586
	.4byte .L08048FBC @ case 587
	.4byte .L08048FD4 @ case 588
	.4byte .L0804667A @ case 589
.L0804626C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r3, #0xc8
	str r3, [sp, #4]
	ldrb r0, [r0, #0x10]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #8]
	add r2, sp, #8
	add r0, sp, #4
	cmp r3, r1
	bhi .L08046292
	b .L0804688E
.L08046292:
	adds r0, r2, #0
	b .L0804688E
.L08046296:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	bl .L08048F32
.L080462A4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	b .L08046812
.L080462B0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldrb r0, [r0, #0x12]
	bl sub_08047766
.L080462BE:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1a
	bl .L08048FEE
.L080462D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldrb r2, [r0, #0x10]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	ldrb r3, [r0, #0x11]
	lsls r0, r3, #0x1e
	lsrs r0, r0, #0x1e
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1b
	adds r2, #6
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r3, r3, r1
	cmp r3, #6
	bls .L08046308
	adds r0, r3, #0
	movs r1, #7
	bl __umodsi3
	adds r3, r0, #0
.L08046308:
	movs r0, #7
	ands r3, r0
	adds r0, r3, #0
	bl .L08048FEE
.L08046312:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl .L08048FEE
.L08046320:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl .L08048FEE
.L0804632E:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046344 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E4E8
	bl .L08048F32
	.align 2, 0
.L08046344: .4byte 0x00001BD8
.L08046348:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804635C @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E4E8
	b .L08046812
	.align 2, 0
.L0804635C: .4byte 0x00001BD8
.L08046360:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046374 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E4F0
	bl .L08048FEE
	.align 2, 0
.L08046374: .4byte 0x00001BD8
.L08046378:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804638C @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E51C
	bl .L08048FEE
	.align 2, 0
.L0804638C: .4byte 0x00001BD8
.L08046390:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080463A4 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E4FC
	bl .L08048FEE
	.align 2, 0
.L080463A4: .4byte 0x00001BD8
.L080463A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080463BC @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E53C
	b .L080466D4
	.align 2, 0
.L080463BC: .4byte 0x00001BD8
.L080463C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x14
	bl GetUnk10__C4Farm
	bl .L08048FEE
.L080463D2:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetStoredBushelCount__C4Barn
	bl .L08048FEE
.L080463E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetStoredBushelCount__C4Coop
	bl .L08048FEE
.L080463FE:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x14
	bl GetUnkFlag11__C4Farm
	b .L080466D4
.L0804640E:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetUpgradeLevel__C9FarmHouse
	bl .L08048FEE
.L08046424:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetUpgradeLevel__C4Coop
	bl .L08048FEE
.L0804643A:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetUpgradeLevel__C4Barn
	bl .L08048FEE
.L08046450:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	bl func_08010E48
	b .L080466D4
.L0804645E:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	bl func_08010E50
	b .L080466D4
.L0804646C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	bl func_08010E58
	b .L080466D4
.L0804647A:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasBathroom__C9FarmHouse
	b .L080466D4
.L0804648E:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetFridge__9FarmHouse
.L080464A0:
	cmp r0, #0
	bne .L080464A8
	bl .L08048FEE
.L080464A8:
	movs r0, #1
	bl .L08048FEE
.L080464AE:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetShelf__9FarmHouse
	b .L080464A0
.L080464C2:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasCarpet__C9FarmHouse
	b .L080466D4
.L080464D6:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasLargeBed__C9FarmHouse
	b .L080466D4
.L080464EA:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasMirror__C9FarmHouse
	b .L080466D4
.L080464FE:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasClock__C9FarmHouse
	b .L080466D4
.L08046512:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasVase__C9FarmHouse
	b .L080466D4
.L08046526:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetRecordPlayer__9FarmHouse
	b .L080464A0
.L0804653A:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasKitchen__C9FarmHouse
	b .L080466D4
.L0804654E:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasKitchenKnife__C9FarmHouse
	b .L080466D4
.L08046562:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasKitchenFryingPan__C9FarmHouse
	b .L080466D4
.L08046576:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasKitchenPot__C9FarmHouse
	b .L080466D4
.L0804658A:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasKitchenMixer__C9FarmHouse
	b .L080466D4
.L0804659E:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasKitchenWhisk__C9FarmHouse
	b .L080466D4
.L080465B2:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasKitchenRollingPin__C9FarmHouse
	b .L080466D4
.L080465C6:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasKitchenOven__C9FarmHouse
	b .L080466D4
.L080465DA:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasKitchenSeasoningSet__C9FarmHouse
	b .L080466D4
.L080465EE:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl HasStocking__C9FarmHouse
	b .L080466D4
.L08046602:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046618 @ =0x00001C38
	adds r0, r0, r2
	bl GetUpgradeLevel__C8Rucksack
	bl .L08048FEE
	.align 2, 0
.L08046618: .4byte 0x00001C38
.L0804661C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046630 @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	bl .L08048FEE
	.align 2, 0
.L08046630: .4byte 0x00001C70
.L08046634:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046648 @ =0x00001C70
	adds r0, r0, r2
	bl GetAffection__C6Animal
	bl .L08048FEE
	.align 2, 0
.L08046648: .4byte 0x00001C70
.L0804664C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046660 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E958
	bl .L08048FEE
	.align 2, 0
.L08046660: .4byte 0x00001BD8
.L08046664:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetStockingArticleId__C9FarmHouse
	bl .L08048FEE
.L0804667A:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046690 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A039C
	bl .L08048FEE
	.align 2, 0
.L08046690: .4byte 0x00001CD4
.L08046694:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080466B4 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0A04
	cmp r0, #0
	bne .L080466AC
	bl sub_08048FEC
.L080466AC:
	bl func_0809EAD8
	bl .L08048FEE
	.align 2, 0
.L080466B4: .4byte 0x00001CD4
.L080466B8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080466DC @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0A04
	cmp r0, #0
	bne .L080466D0
	bl sub_08048FEC
.L080466D0:
	bl func_0809EAE0
.L080466D4:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl .L08048FEE
	.align 2, 0
.L080466DC: .4byte 0x00001CD4
.L080466E0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046700 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0A04
	cmp r0, #0
	bne .L080466F8
	bl sub_08048FEC
.L080466F8:
	bl func_0809EAD0
	bl .L08048F32
	.align 2, 0
.L08046700: .4byte 0x00001CD4
.L08046704:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046724 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0A04
	cmp r0, #0
	bne .L0804671C
	bl sub_08048FEC
.L0804671C:
	bl func_0809EAD0
	b .L08046812
	.align 2, 0
.L08046724: .4byte 0x00001CD4
.L08046728:
	adds r0, r2, #0
	movs r1, #0x13
	b .L0804674A
.L0804672E:
	adds r0, r2, #0
	movs r1, #3
	b .L0804674A
.L08046734:
	adds r0, r2, #0
	movs r1, #0xc
	b .L0804674A
.L0804673A:
	adds r0, r2, #0
	movs r1, #0x15
	b .L0804674A
.L08046740:
	adds r0, r2, #0
	movs r1, #0x19
	b .L0804674A
.L08046746:
	adds r0, r2, #0
	movs r1, #0x1f
.L0804674A:
	movs r2, #0
	bl func_08045584
	bl .L08048FEE
.L08046754:
	adds r0, r2, #0
	movs r1, #0x13
	b .L08046770
.L0804675A:
	adds r0, r2, #0
	movs r1, #3
	b .L08046770
.L08046760:
	adds r0, r2, #0
	movs r1, #0xc
	b .L08046770
.L08046766:
	adds r0, r2, #0
	movs r1, #0x15
	b .L08046770
.L0804676C:
	adds r0, r2, #0
	movs r1, #0x19
.L08046770:
	movs r2, #1
	bl func_08045584
	bl .L08048FEE
.L0804677A:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r5, [r0]
	ldr r0, .L080467D8 @ =0x0000214C
	adds r4, r5, r0
	ldrb r1, [r4, #0x1b]
	lsrs r1, r1, #7
	ldrb r3, [r4, #0x1c]
	movs r0, #1
	ands r0, r3
	lsls r0, r0, #1
	orrs r0, r1
	cmp r0, #2
	beq .L080467CC
	lsls r0, r3, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L080467CC
	lsls r0, r3, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L080467CC
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L080467CC
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L080467CC
	ldr r1, .L080467DC @ =0x00002197
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L080467CC
	bl sub_08048FEC
.L080467CC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080467E0 @ =0x00002144
	b .L0804688C
	.align 2, 0
.L080467D8: .4byte 0x0000214C
.L080467DC: .4byte 0x00002197
.L080467E0: .4byte 0x00002144
.L080467E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080467FC @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A1480
	ldrb r0, [r0, #1]
	bl .L08048F32
	.align 2, 0
.L080467FC: .4byte 0x00001CD4
.L08046800:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804681C @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A1480
	ldrb r0, [r0, #1]
.L08046812:
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	bl .L08048FEE
	.align 2, 0
.L0804681C: .4byte 0x00001CD4
.L08046820:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046834 @ =0x00002148
	adds r0, r0, r2
	ldrb r0, [r0]
	bl .L08048FEE
	.align 2, 0
.L08046834: .4byte 0x00002148
.L08046838:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x14
	bl GetHorse__4Farm
	b .L080464A0
.L08046848:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x14
	bl GetHorse__4Farm
	cmp r0, #0
	bne .L0804685E
	bl sub_08048FEC
.L0804685E:
	bl GetGrowthStage__C5Horse
	bl .L08048FEE
.L08046866:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x14
	bl GetHorse__4Farm
	cmp r0, #0
	bne .L0804687C
	bl sub_08048FEC
.L0804687C:
	bl GetAffection__C6Animal
	bl .L08048FEE
.L08046884:
	ldr r0, .L08046894 @ =gUnk_0300040C
	ldr r0, [r0]
	movs r2, #0xda
	lsls r2, r2, #2
.L0804688C:
	adds r0, r0, r2
.L0804688E:
	ldr r0, [r0]
	bl .L08048FEE
	.align 2, 0
.L08046894: .4byte gUnk_0300040C
.L08046898:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x46
	movs r2, #0x13
	b .L08046BC6
.L080468A6:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x47
	movs r2, #0x13
	b .L08046BDC
.L080468B4:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x49
	movs r2, #0x13
	b .L08046BF2
.L080468C2:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x4a
	movs r2, #0x13
	b .L08046C08
.L080468D0:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x4b
	movs r2, #0x13
	b .L08046C2A
.L080468DE:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x4c
	movs r2, #0x13
	b .L08046A4E
.L080468EC:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x4e
	movs r2, #3
	b .L08046BC6
.L080468FA:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x4f
	movs r2, #3
	b .L08046BDC
.L08046908:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x50
	movs r2, #3
	b .L08046BF2
.L08046916:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x52
	movs r2, #3
	b .L08046C08
.L08046924:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x54
	movs r2, #3
	b .L08046C2A
.L08046932:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x55
	movs r2, #3
	b .L08046A4E
.L08046940:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x57
	movs r2, #0x19
	b .L08046BC6
.L0804694E:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x58
	movs r2, #0x19
	b .L08046BDC
.L0804695C:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x5a
	movs r2, #0x19
	b .L08046BF2
.L0804696A:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x5c
	movs r2, #0x19
	b .L08046C08
.L08046978:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x5e
	movs r2, #0x19
	b .L08046C2A
.L08046986:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x5f
	movs r2, #0x19
	b .L08046A4E
.L08046994:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x61
	movs r2, #0xc
	b .L08046BC6
.L080469A2:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x62
	movs r2, #0xc
	b .L08046BDC
.L080469B0:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x64
	movs r2, #0xc
	b .L08046BF2
.L080469BE:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x65
	movs r2, #0xc
	b .L08046C08
.L080469CC:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x66
	movs r2, #0xc
	b .L08046C2A
.L080469DA:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x67
	movs r2, #0xc
	b .L08046A4E
.L080469E8:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x69
	b .L08046BC4
.L080469F4:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x6a
	b .L08046BDA
.L08046A00:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x6b
	b .L08046BF0
.L08046A0C:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x6d
	b .L08046C06
.L08046A18:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x6e
	b .L08046C28
.L08046A24:
	mov r1, sp
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x6f
	movs r2, #0x15
	b .L08046A4E
.L08046A32:
	movs r1, #0xb9
	lsls r1, r1, #1
	mov r3, sp
	movs r0, #0
	strb r0, [r3]
	adds r0, r2, #0
	movs r2, #0x1f
	b .L08046C2A
.L08046A42:
	ldr r1, .L08046A58 @ =0x00000173
	mov r3, sp
	movs r0, #0
	strb r0, [r3]
	adds r0, r2, #0
	movs r2, #0x1f
.L08046A4E:
	movs r3, #6
	bl func_080455D8
	bl .L08048FEE
	.align 2, 0
.L08046A58: .4byte 0x00000173
.L08046A5C:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x71
	movs r2, #0x13
	b .L08046BC6
.L08046A6A:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x72
	movs r2, #0x13
	b .L08046BDC
.L08046A78:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x73
	movs r2, #0x13
	b .L08046BF2
.L08046A86:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x74
	movs r2, #0x13
	b .L08046C08
.L08046A94:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x75
	movs r2, #0x13
	b .L08046C2A
.L08046AA2:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x76
	movs r2, #0x13
	b .L08046C2A
.L08046AB0:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x77
	movs r2, #0x13
	b .L08046C2A
.L08046ABE:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x7a
	movs r2, #3
	b .L08046BC6
.L08046ACC:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x7b
	movs r2, #3
	b .L08046BDC
.L08046ADA:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x7c
	movs r2, #3
	b .L08046BF2
.L08046AE8:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x7d
	movs r2, #3
	b .L08046C08
.L08046AF6:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x7e
	movs r2, #3
	b .L08046C2A
.L08046B04:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x7f
	movs r2, #3
	b .L08046C2A
.L08046B12:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x82
	movs r2, #0x19
	b .L08046BC6
.L08046B20:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x83
	movs r2, #0x19
	b .L08046BDC
.L08046B2E:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x84
	movs r2, #0x19
	b .L08046BF2
.L08046B3C:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x85
	movs r2, #0x19
	b .L08046C08
.L08046B4A:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x86
	movs r2, #0x19
	b .L08046C2A
.L08046B58:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x87
	movs r2, #0x19
	b .L08046C2A
.L08046B66:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x8a
	movs r2, #0xc
	b .L08046BC6
.L08046B74:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x8b
	movs r2, #0xc
	b .L08046BDC
.L08046B82:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x8c
	movs r2, #0xc
	b .L08046BF2
.L08046B90:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x8d
	movs r2, #0xc
	b .L08046C08
.L08046B9E:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x8e
	movs r2, #0xc
	b .L08046C2A
.L08046BAC:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x8f
	movs r2, #0xc
	b .L08046C2A
.L08046BBA:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x92
.L08046BC4:
	movs r2, #0x15
.L08046BC6:
	movs r3, #1
	bl func_080455D8
	bl .L08048FEE
.L08046BD0:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x93
.L08046BDA:
	movs r2, #0x15
.L08046BDC:
	movs r3, #2
	bl func_080455D8
	bl .L08048FEE
.L08046BE6:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x94
.L08046BF0:
	movs r2, #0x15
.L08046BF2:
	movs r3, #3
	bl func_080455D8
	bl .L08048FEE
.L08046BFC:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x95
.L08046C06:
	movs r2, #0x15
.L08046C08:
	movs r3, #4
	bl func_080455D8
	bl .L08048FEE
.L08046C12:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x96
	b .L08046C28
.L08046C1E:
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x97
.L08046C28:
	movs r2, #0x15
.L08046C2A:
	movs r3, #5
	bl func_080455D8
	bl .L08048FEE
.L08046C34:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046C44 @ =0x0000215A
	bl .L08048966
	.align 2, 0
.L08046C44: .4byte 0x0000215A
.L08046C48:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046C58 @ =0x0000215A
	bl .L08048E36
	.align 2, 0
.L08046C58: .4byte 0x0000215A
.L08046C5C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046C6C @ =0x0000215B
	bl .L080486B2
	.align 2, 0
.L08046C6C: .4byte 0x0000215B
.L08046C70:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046C80 @ =0x0000215B
	bl .L08048E36
	.align 2, 0
.L08046C80: .4byte 0x0000215B
.L08046C84:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046C94 @ =0x0000215C
	bl .L08048966
	.align 2, 0
.L08046C94: .4byte 0x0000215C
.L08046C98:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046CA8 @ =0x0000215A
	bl .L08048EC6
	.align 2, 0
.L08046CA8: .4byte 0x0000215A
.L08046CAC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046CBC @ =0x0000215A
	bl .L08048F5E
	.align 2, 0
.L08046CBC: .4byte 0x0000215A
.L08046CC0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046CD0 @ =0x0000215A
	bl .L08048E76
	.align 2, 0
.L08046CD0: .4byte 0x0000215A
.L08046CD4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046CE4 @ =0x0000215B
	bl .L08048EC6
	.align 2, 0
.L08046CE4: .4byte 0x0000215B
.L08046CE8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046CF8 @ =0x0000215B
	bl .L08048C0E
	.align 2, 0
.L08046CF8: .4byte 0x0000215B
.L08046CFC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046D0C @ =0x0000215B
	bl .L08048F46
	.align 2, 0
.L08046D0C: .4byte 0x0000215B
.L08046D10:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046D20 @ =0x0000215B
	bl .L08048FC6
	.align 2, 0
.L08046D20: .4byte 0x0000215B
.L08046D24:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046D34 @ =0x0000215C
	bl .L08048EC6
	.align 2, 0
.L08046D34: .4byte 0x0000215C
.L08046D38:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046D48 @ =0x0000215C
	bl .L08048F5E
	.align 2, 0
.L08046D48: .4byte 0x0000215C
.L08046D4C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046D5C @ =0x0000215C
	bl .L08048FC6
	.align 2, 0
.L08046D5C: .4byte 0x0000215C
.L08046D60:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046D70 @ =0x0000215C
	bl .L08048F16
	.align 2, 0
.L08046D70: .4byte 0x0000215C
.L08046D74:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046D84 @ =0x0000215D
	bl .L08048C0E
	.align 2, 0
.L08046D84: .4byte 0x0000215D
.L08046D88:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046D98 @ =0x0000215D
	bl .L08048F5E
	.align 2, 0
.L08046D98: .4byte 0x0000215D
.L08046D9C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046DAC @ =0x0000215C
	bl .L08048F76
	.align 2, 0
.L08046DAC: .4byte 0x0000215C
.L08046DB0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046DC0 @ =0x0000215C
	bl .L08048FDE
	.align 2, 0
.L08046DC0: .4byte 0x0000215C
.L08046DC4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046DD4 @ =0x0000215D
	bl .L08048EC6
	.align 2, 0
.L08046DD4: .4byte 0x0000215D
.L08046DD8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046DE8 @ =0x0000215D
	bl .L08048F46
	.align 2, 0
.L08046DE8: .4byte 0x0000215D
.L08046DEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046DFC @ =0x0000215D
	bl .L08048F76
	.align 2, 0
.L08046DFC: .4byte 0x0000215D
.L08046E00:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046E10 @ =0x0000215D
	bl .L08048662
	.align 2, 0
.L08046E10: .4byte 0x0000215D
.L08046E14:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046E24 @ =0x0000215C
	bl .L0804811A
	.align 2, 0
.L08046E24: .4byte 0x0000215C
.L08046E28:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046E38 @ =0x0000215E
	bl .L08048966
	.align 2, 0
.L08046E38: .4byte 0x0000215E
.L08046E3C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046E4C @ =0x0000215E
	bl .L080486B2
	.align 2, 0
.L08046E4C: .4byte 0x0000215E
.L08046E50:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046E60 @ =0x0000215E
	bl .L08048662
	.align 2, 0
.L08046E60: .4byte 0x0000215E
.L08046E64:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046E74 @ =0x0000215E
	bl .L08048626
	.align 2, 0
.L08046E74: .4byte 0x0000215E
.L08046E78:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046E88 @ =0x0000215F
	bl .L08048966
	.align 2, 0
.L08046E88: .4byte 0x0000215F
.L08046E8C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046E9C @ =0x0000215F
	bl .L080486B2
	.align 2, 0
.L08046E9C: .4byte 0x0000215F
.L08046EA0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046EB0 @ =0x0000215F
	bl .L08048662
	.align 2, 0
.L08046EB0: .4byte 0x0000215F
.L08046EB4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046ED0 @ =0x0000215F
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L08046ED4 @ =0x00002160
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl .L08048A7C
	.align 2, 0
.L08046ED0: .4byte 0x0000215F
.L08046ED4: .4byte 0x00002160
.L08046ED8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046EE8 @ =0x00002160
	bl .L08048966
	.align 2, 0
.L08046EE8: .4byte 0x00002160
.L08046EEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046EFC @ =0x00002160
	bl .L080486B2
	.align 2, 0
.L08046EFC: .4byte 0x00002160
.L08046F00:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046F10 @ =0x00002160
	bl .L08048662
	.align 2, 0
.L08046F10: .4byte 0x00002160
.L08046F14:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046F24 @ =0x00002160
	bl .L08048626
	.align 2, 0
.L08046F24: .4byte 0x00002160
.L08046F28:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046F38 @ =0x00002161
	bl .L08048966
	.align 2, 0
.L08046F38: .4byte 0x00002161
.L08046F3C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046F4C @ =0x00002161
	bl .L080486B2
	.align 2, 0
.L08046F4C: .4byte 0x00002161
.L08046F50:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046F60 @ =0x00002161
	bl .L08048662
	.align 2, 0
.L08046F60: .4byte 0x00002161
.L08046F64:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046F74 @ =0x00002160
	bl .L0804811A
	.align 2, 0
.L08046F74: .4byte 0x00002160
.L08046F78:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046F88 @ =0x00002162
	bl .L08048966
	.align 2, 0
.L08046F88: .4byte 0x00002162
.L08046F8C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046F9C @ =0x00002162
	bl .L080486B2
	.align 2, 0
.L08046F9C: .4byte 0x00002162
.L08046FA0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046FB0 @ =0x00002162
	bl .L08048662
	.align 2, 0
.L08046FB0: .4byte 0x00002162
.L08046FB4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046FC4 @ =0x00002162
	bl .L08048626
	.align 2, 0
.L08046FC4: .4byte 0x00002162
.L08046FC8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046FD8 @ =0x00002163
	bl .L08048966
	.align 2, 0
.L08046FD8: .4byte 0x00002163
.L08046FDC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08046FEC @ =0x00002163
	bl .L080486B2
	.align 2, 0
.L08046FEC: .4byte 0x00002163
.L08046FF0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047000 @ =0x00002163
	bl .L08048662
	.align 2, 0
.L08047000: .4byte 0x00002163
.L08047004:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047020 @ =0x00002163
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L08047024 @ =0x00002164
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl .L08048A7C
	.align 2, 0
.L08047020: .4byte 0x00002163
.L08047024: .4byte 0x00002164
.L08047028:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047038 @ =0x00002164
	bl .L08048966
	.align 2, 0
.L08047038: .4byte 0x00002164
.L0804703C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804704C @ =0x00002164
	bl .L080486B2
	.align 2, 0
.L0804704C: .4byte 0x00002164
.L08047050:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047060 @ =0x00002164
	bl .L08048662
	.align 2, 0
.L08047060: .4byte 0x00002164
.L08047064:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047074 @ =0x00002164
	bl .L08048626
	.align 2, 0
.L08047074: .4byte 0x00002164
.L08047078:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047088 @ =0x00002165
	bl .L08048966
	.align 2, 0
.L08047088: .4byte 0x00002165
.L0804708C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804709C @ =0x00002165
	bl .L080486B2
	.align 2, 0
.L0804709C: .4byte 0x00002165
.L080470A0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080470B0 @ =0x00002165
	bl .L08048662
	.align 2, 0
.L080470B0: .4byte 0x00002165
.L080470B4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080470C4 @ =0x00002164
	bl .L0804811A
	.align 2, 0
.L080470C4: .4byte 0x00002164
.L080470C8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080470D8 @ =0x00002166
	bl .L08048966
	.align 2, 0
.L080470D8: .4byte 0x00002166
.L080470DC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080470EC @ =0x00002166
	bl .L080486B2
	.align 2, 0
.L080470EC: .4byte 0x00002166
.L080470F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047100 @ =0x00002166
	bl .L08048662
	.align 2, 0
.L08047100: .4byte 0x00002166
.L08047104:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047114 @ =0x00002166
	bl .L08048626
	.align 2, 0
.L08047114: .4byte 0x00002166
.L08047118:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047128 @ =0x00002167
	bl .L08048966
	.align 2, 0
.L08047128: .4byte 0x00002167
.L0804712C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804713C @ =0x00002167
	bl .L080486B2
	.align 2, 0
.L0804713C: .4byte 0x00002167
.L08047140:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047150 @ =0x00002167
	bl .L08048662
	.align 2, 0
.L08047150: .4byte 0x00002167
.L08047154:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047170 @ =0x00002167
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L08047174 @ =0x00002168
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl .L08048A7C
	.align 2, 0
.L08047170: .4byte 0x00002167
.L08047174: .4byte 0x00002168
.L08047178:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047188 @ =0x00002168
	bl .L08048966
	.align 2, 0
.L08047188: .4byte 0x00002168
.L0804718C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804719C @ =0x00002168
	bl .L080486B2
	.align 2, 0
.L0804719C: .4byte 0x00002168
.L080471A0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080471B0 @ =0x00002168
	bl .L08048662
	.align 2, 0
.L080471B0: .4byte 0x00002168
.L080471B4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080471C4 @ =0x00002168
	bl .L08048626
	.align 2, 0
.L080471C4: .4byte 0x00002168
.L080471C8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080471D8 @ =0x00002169
	bl .L08048966
	.align 2, 0
.L080471D8: .4byte 0x00002169
.L080471DC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080471EC @ =0x00002169
	bl .L080486B2
	.align 2, 0
.L080471EC: .4byte 0x00002169
.L080471F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047200 @ =0x00002169
	bl .L08048662
	.align 2, 0
.L08047200: .4byte 0x00002169
.L08047204:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047214 @ =0x00002168
	bl .L0804811A
	.align 2, 0
.L08047214: .4byte 0x00002168
.L08047218:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047228 @ =0x0000216A
	bl .L08048966
	.align 2, 0
.L08047228: .4byte 0x0000216A
.L0804722C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804723C @ =0x0000216A
	bl .L080486B2
	.align 2, 0
.L0804723C: .4byte 0x0000216A
.L08047240:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047250 @ =0x0000216A
	bl .L08048662
	.align 2, 0
.L08047250: .4byte 0x0000216A
.L08047254:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047264 @ =0x0000216A
	bl .L08048626
	.align 2, 0
.L08047264: .4byte 0x0000216A
.L08047268:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047278 @ =0x0000216B
	bl .L08048966
	.align 2, 0
.L08047278: .4byte 0x0000216B
.L0804727C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804728C @ =0x0000216B
	bl .L080486B2
	.align 2, 0
.L0804728C: .4byte 0x0000216B
.L08047290:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080472A0 @ =0x0000216B
	bl .L08048662
	.align 2, 0
.L080472A0: .4byte 0x0000216B
.L080472A4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080472C0 @ =0x0000216B
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L080472C4 @ =0x0000216C
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl .L08048A7C
	.align 2, 0
.L080472C0: .4byte 0x0000216B
.L080472C4: .4byte 0x0000216C
.L080472C8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080472D8 @ =0x0000216C
	bl .L08048966
	.align 2, 0
.L080472D8: .4byte 0x0000216C
.L080472DC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080472EC @ =0x0000216C
	bl .L080486B2
	.align 2, 0
.L080472EC: .4byte 0x0000216C
.L080472F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047300 @ =0x0000216C
	bl .L08048662
	.align 2, 0
.L08047300: .4byte 0x0000216C
.L08047304:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047314 @ =0x0000216C
	bl .L08048626
	.align 2, 0
.L08047314: .4byte 0x0000216C
.L08047318:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047328 @ =0x0000216D
	bl .L08048966
	.align 2, 0
.L08047328: .4byte 0x0000216D
.L0804732C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804733C @ =0x0000216D
	bl .L080486B2
	.align 2, 0
.L0804733C: .4byte 0x0000216D
.L08047340:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047350 @ =0x0000216D
	bl .L08048662
	.align 2, 0
.L08047350: .4byte 0x0000216D
.L08047354:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047364 @ =0x0000216C
	bl .L0804811A
	.align 2, 0
.L08047364: .4byte 0x0000216C
.L08047368:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047378 @ =0x0000216E
	bl .L08048966
	.align 2, 0
.L08047378: .4byte 0x0000216E
.L0804737C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804738C @ =0x0000216E
	bl .L080486B2
	.align 2, 0
.L0804738C: .4byte 0x0000216E
.L08047390:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080473B4 @ =0x0000216F
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #4
	ldr r1, .L080473B8 @ =0x00002170
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #4
	orrs r0, r2
	bl .L08048FEE
	.align 2, 0
.L080473B4: .4byte 0x0000216F
.L080473B8: .4byte 0x00002170
.L080473BC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080473CC @ =0x00002170
	bl .L080486B2
	.align 2, 0
.L080473CC: .4byte 0x00002170
.L080473D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080473E0 @ =0x00002170
	bl .L08048662
	.align 2, 0
.L080473E0: .4byte 0x00002170
.L080473E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080473F4 @ =0x00002170
	bl .L08048626
	.align 2, 0
.L080473F4: .4byte 0x00002170
.L080473F8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047408 @ =0x00002171
	bl .L08048966
	.align 2, 0
.L08047408: .4byte 0x00002171
.L0804740C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804741C @ =0x00002171
	bl .L080486B2
	.align 2, 0
.L0804741C: .4byte 0x00002171
.L08047420:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047430 @ =0x00002171
	bl .L08048662
	.align 2, 0
.L08047430: .4byte 0x00002171
.L08047434:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047444 @ =0x00002171
	bl .L08048F16
	.align 2, 0
.L08047444: .4byte 0x00002171
.L08047448:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047458 @ =0x00002172
	bl .L08048F2E
	.align 2, 0
.L08047458: .4byte 0x00002172
.L0804745C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804746C @ =0x00002172
	bl .L08048E5E
	.align 2, 0
.L0804746C: .4byte 0x00002172
.L08047470:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047480 @ =0x00002172
	bl .L08048E76
	.align 2, 0
.L08047480: .4byte 0x00002172
.L08047484:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047494 @ =0x00002172
	bl .L08048E36
	.align 2, 0
.L08047494: .4byte 0x00002172
.L08047498:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080474A8 @ =0x00002173
	bl .L08048F2E
	.align 2, 0
.L080474A8: .4byte 0x00002173
.L080474AC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080474BC @ =0x00002173
	bl .L08048E5E
	.align 2, 0
.L080474BC: .4byte 0x00002173
.L080474C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080474D0 @ =0x00002173
	bl .L08048E76
	.align 2, 0
.L080474D0: .4byte 0x00002173
.L080474D4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080474E4 @ =0x00002173
	bl .L08048E36
	.align 2, 0
.L080474E4: .4byte 0x00002173
.L080474E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080474F8 @ =0x00002174
	bl .L08048F2E
	.align 2, 0
.L080474F8: .4byte 0x00002174
.L080474FC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804750C @ =0x00002174
	bl .L08048E5E
	.align 2, 0
.L0804750C: .4byte 0x00002174
.L08047510:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047520 @ =0x00002174
	bl .L08048E76
	.align 2, 0
.L08047520: .4byte 0x00002174
.L08047524:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047534 @ =0x00002174
	bl .L08048E36
	.align 2, 0
.L08047534: .4byte 0x00002174
.L08047538:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047548 @ =0x00002175
	bl .L08048F2E
	.align 2, 0
.L08047548: .4byte 0x00002175
.L0804754C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804755C @ =0x00002175
	bl .L08048E5E
	.align 2, 0
.L0804755C: .4byte 0x00002175
.L08047560:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047570 @ =0x00002175
	bl .L08048F76
	.align 2, 0
.L08047570: .4byte 0x00002175
.L08047574:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047584 @ =0x00002175
	bl .L08048FC6
	.align 2, 0
.L08047584: .4byte 0x00002175
.L08047588:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047598 @ =0x00002175
	bl .L08048FDE
	.align 2, 0
.L08047598: .4byte 0x00002175
.L0804759C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080475AC @ =0x00002175
	bl .L08048F16
	.align 2, 0
.L080475AC: .4byte 0x00002175
.L080475B0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080475C0 @ =0x00002176
	bl .L08048EC6
	.align 2, 0
.L080475C0: .4byte 0x00002176
.L080475C4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080475D4 @ =0x00002176
	bl .L08048966
	.align 2, 0
.L080475D4: .4byte 0x00002176
.L080475D8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080475E8 @ =0x00002176
	bl .L080486B2
	.align 2, 0
.L080475E8: .4byte 0x00002176
.L080475EC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080475FC @ =0x00002176
	bl .L08048662
	.align 2, 0
.L080475FC: .4byte 0x00002176
.L08047600:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047610 @ =0x00002176
	bl .L08048626
	.align 2, 0
.L08047610: .4byte 0x00002176
.L08047614:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047624 @ =0x00002177
	bl .L08048966
	.align 2, 0
.L08047624: .4byte 0x00002177
.L08047628:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047638 @ =0x00002177
	bl .L08048F5E
	.align 2, 0
.L08047638: .4byte 0x00002177
.L0804763C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804764C @ =0x00002177
	bl .L08048E76
	.align 2, 0
.L0804764C: .4byte 0x00002177
.L08047650:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047660 @ =0x00002177
	bl .L08048E36
	.align 2, 0
.L08047660: .4byte 0x00002177
.L08047664:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047674 @ =0x00002178
	bl .L08048EC6
	.align 2, 0
.L08047674: .4byte 0x00002178
.L08047678:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047688 @ =0x00002178
	bl .L08048966
	.align 2, 0
.L08047688: .4byte 0x00002178
.L0804768C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080476A4 @ =0x00002178
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	bl .L08048FEE
	.align 2, 0
.L080476A4: .4byte 0x00002178
.L080476A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080476B8 @ =0x00002178
	bl .L08048E36
	.align 2, 0
.L080476B8: .4byte 0x00002178
.L080476BC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080476CC @ =0x00002179
	bl .L08048F2E
	.align 2, 0
.L080476CC: .4byte 0x00002179
.L080476D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080476E0 @ =0x00002179
	bl .L08048E5E
	.align 2, 0
.L080476E0: .4byte 0x00002179
.L080476E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080476F4 @ =0x00002179
	bl .L08048E76
	.align 2, 0
.L080476F4: .4byte 0x00002179
.L080476F8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047704 @ =0x00002178
	b .L08047C1A
	.align 2, 0
.L08047704: .4byte 0x00002178
.L08047708:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047718 @ =0x0000217A
	bl .L08048F46
	.align 2, 0
.L08047718: .4byte 0x0000217A
.L0804771C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804772C @ =0x0000217A
	bl .L080486B2
	.align 2, 0
.L0804772C: .4byte 0x0000217A
.L08047730:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047740 @ =0x0000217A
	bl .L08048662
	.align 2, 0
.L08047740: .4byte 0x0000217A
.L08047744:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047754 @ =0x0000217A
	bl .L08048F16
	.align 2, 0
.L08047754: .4byte 0x0000217A
.L08047758:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047770 @ =0x0000217B
	adds r0, r0, r2
	ldrb r0, [r0]

	non_word_aligned_thumb_func_start sub_08047766
sub_08047766: @ 0x08047766
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl .L08048FEE
	.align 2, 0
.L08047770: .4byte 0x0000217B
.L08047774:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047784 @ =0x0000217B
	bl .L08048662
	.align 2, 0
.L08047784: .4byte 0x0000217B
.L08047788:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080477A4 @ =0x0000217B
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L080477A8 @ =0x0000217C
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl .L08048A7C
	.align 2, 0
.L080477A4: .4byte 0x0000217B
.L080477A8: .4byte 0x0000217C
.L080477AC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080477BC @ =0x0000217C
	bl .L08048966
	.align 2, 0
.L080477BC: .4byte 0x0000217C
.L080477C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080477D0 @ =0x0000217C
	bl .L080486B2
	.align 2, 0
.L080477D0: .4byte 0x0000217C
.L080477D4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080477E4 @ =0x0000217C
	bl .L08048662
	.align 2, 0
.L080477E4: .4byte 0x0000217C
.L080477E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080477F8 @ =0x0000217C
	bl .L08048F16
	.align 2, 0
.L080477F8: .4byte 0x0000217C
.L080477FC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804780C @ =0x0000217D
	bl .L08048F2E
	.align 2, 0
.L0804780C: .4byte 0x0000217D
.L08047810:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047820 @ =0x0000217D
	bl .L08048E5E
	.align 2, 0
.L08047820: .4byte 0x0000217D
.L08047824:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047834 @ =0x0000217D
	bl .L08048E76
	.align 2, 0
.L08047834: .4byte 0x0000217D
.L08047838:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047848 @ =0x0000217D
	bl .L08048E36
	.align 2, 0
.L08047848: .4byte 0x0000217D
.L0804784C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804785C @ =0x0000217E
	bl .L08048F2E
	.align 2, 0
.L0804785C: .4byte 0x0000217E
.L08047860:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047870 @ =0x0000217E
	bl .L08048E5E
	.align 2, 0
.L08047870: .4byte 0x0000217E
.L08047874:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047884 @ =0x0000217E
	bl .L08048E76
	.align 2, 0
.L08047884: .4byte 0x0000217E
.L08047888:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047898 @ =0x0000217E
	bl .L08048E36
	.align 2, 0
.L08047898: .4byte 0x0000217E
.L0804789C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080478AC @ =0x0000217F
	bl .L08048F2E
	.align 2, 0
.L080478AC: .4byte 0x0000217F
.L080478B0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080478C0 @ =0x0000217F
	bl .L08048E5E
	.align 2, 0
.L080478C0: .4byte 0x0000217F
.L080478C4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080478D4 @ =0x0000217F
	bl .L08048E76
	.align 2, 0
.L080478D4: .4byte 0x0000217F
.L080478D8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080478E8 @ =0x0000217F
	bl .L08048E36
	.align 2, 0
.L080478E8: .4byte 0x0000217F
.L080478EC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0x86
	lsls r2, r2, #6
	bl .L08048F2E
.L080478FC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0x86
	lsls r2, r2, #6
	bl .L08048E5E
.L0804790C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0x86
	lsls r2, r2, #6
	bl .L08048E76
.L0804791C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0x86
	lsls r2, r2, #6
	bl .L08048E36
.L0804792C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804793C @ =0x00002181
	bl .L08048F2E
	.align 2, 0
.L0804793C: .4byte 0x00002181
.L08047940:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047950 @ =0x00002181
	bl .L08048E5E
	.align 2, 0
.L08047950: .4byte 0x00002181
.L08047954:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047964 @ =0x00002181
	bl .L08048E76
	.align 2, 0
.L08047964: .4byte 0x00002181
.L08047968:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047978 @ =0x00002181
	bl .L08048E36
	.align 2, 0
.L08047978: .4byte 0x00002181
.L0804797C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804798C @ =0x00002182
	bl .L08048F2E
	.align 2, 0
.L0804798C: .4byte 0x00002182
.L08047990:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080479A0 @ =0x00002182
	bl .L08048F46
	.align 2, 0
.L080479A0: .4byte 0x00002182
.L080479A4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080479B4 @ =0x00002182
	bl .L080486B2
	.align 2, 0
.L080479B4: .4byte 0x00002182
.L080479B8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080479C8 @ =0x00002182
	bl .L08048662
	.align 2, 0
.L080479C8: .4byte 0x00002182
.L080479CC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080479DC @ =0x00002182
	bl .L08048626
	.align 2, 0
.L080479DC: .4byte 0x00002182
.L080479E0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080479F0 @ =0x00002183
	bl .L08048966
	.align 2, 0
.L080479F0: .4byte 0x00002183
.L080479F4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047A04 @ =0x00002183
	bl .L080486B2
	.align 2, 0
.L08047A04: .4byte 0x00002183
.L08047A08:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047A18 @ =0x00002183
	bl .L08048662
	.align 2, 0
.L08047A18: .4byte 0x00002183
.L08047A1C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047A38 @ =0x00002183
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L08047A3C @ =0x00002184
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl .L08048A7C
	.align 2, 0
.L08047A38: .4byte 0x00002183
.L08047A3C: .4byte 0x00002184
.L08047A40:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047A50 @ =0x00002184
	bl .L08048C0E
	.align 2, 0
.L08047A50: .4byte 0x00002184
.L08047A54:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047A64 @ =0x00002184
	bl .L08048E5E
	.align 2, 0
.L08047A64: .4byte 0x00002184
.L08047A68:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047A78 @ =0x00002184
	bl .L08048E76
	.align 2, 0
.L08047A78: .4byte 0x00002184
.L08047A7C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047A8C @ =0x00002184
	bl .L08048E36
	.align 2, 0
.L08047A8C: .4byte 0x00002184
.L08047A90:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047AA0 @ =0x00002185
	bl .L08048F2E
	.align 2, 0
.L08047AA0: .4byte 0x00002185
.L08047AA4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047AB4 @ =0x00002185
	bl .L08048E5E
	.align 2, 0
.L08047AB4: .4byte 0x00002185
.L08047AB8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047AC8 @ =0x00002185
	bl .L08048E76
	.align 2, 0
.L08047AC8: .4byte 0x00002185
.L08047ACC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047ADC @ =0x00002185
	bl .L08048E36
	.align 2, 0
.L08047ADC: .4byte 0x00002185
.L08047AE0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047AF0 @ =0x00002186
	bl .L08048F2E
	.align 2, 0
.L08047AF0: .4byte 0x00002186
.L08047AF4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047B0C @ =0x00002186
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	bl .L08048FEE
	.align 2, 0
.L08047B0C: .4byte 0x00002186
.L08047B10:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047B20 @ =0x00002186
	bl .L08048662
	.align 2, 0
.L08047B20: .4byte 0x00002186
.L08047B24:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047B34 @ =0x00002186
	bl .L08048626
	.align 2, 0
.L08047B34: .4byte 0x00002186
.L08047B38:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047B48 @ =0x00002187
	bl .L08048966
	.align 2, 0
.L08047B48: .4byte 0x00002187
.L08047B4C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047B5C @ =0x00002187
	bl .L080486B2
	.align 2, 0
.L08047B5C: .4byte 0x00002187
.L08047B60:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047B70 @ =0x00002187
	bl .L08048662
	.align 2, 0
.L08047B70: .4byte 0x00002187
.L08047B74:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047B90 @ =0x00002187
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L08047B94 @ =0x00002188
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl .L08048A7C
	.align 2, 0
.L08047B90: .4byte 0x00002187
.L08047B94: .4byte 0x00002188
.L08047B98:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047BA8 @ =0x00002188
	bl .L08048966
	.align 2, 0
.L08047BA8: .4byte 0x00002188
.L08047BAC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047BBC @ =0x00002188
	bl .L080486B2
	.align 2, 0
.L08047BBC: .4byte 0x00002188
.L08047BC0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047BD0 @ =0x00002188
	bl .L08048662
	.align 2, 0
.L08047BD0: .4byte 0x00002188
.L08047BD4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047BE4 @ =0x00002188
	bl .L080483AE
	.align 2, 0
.L08047BE4: .4byte 0x00002188
.L08047BE8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047BF8 @ =0x00002189
	bl .L08048E5E
	.align 2, 0
.L08047BF8: .4byte 0x00002189
.L08047BFC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047C0C @ =0x00002189
	bl .L08048E76
	.align 2, 0
.L08047C0C: .4byte 0x00002189
.L08047C10:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047C28 @ =0x00002188
.L08047C1A:
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1c
	bl .L08048FEE
	.align 2, 0
.L08047C28: .4byte 0x00002188
.L08047C2C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047C3C @ =0x0000218A
	bl .L08048E5E
	.align 2, 0
.L08047C3C: .4byte 0x0000218A
.L08047C40:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047C50 @ =0x0000218A
	bl .L08048E76
	.align 2, 0
.L08047C50: .4byte 0x0000218A
.L08047C54:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047C64 @ =0x0000218A
	bl .L08048E36
	.align 2, 0
.L08047C64: .4byte 0x0000218A
.L08047C68:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047C78 @ =0x0000218B
	bl .L08048F2E
	.align 2, 0
.L08047C78: .4byte 0x0000218B
.L08047C7C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047C8C @ =0x0000218B
	bl .L080486B2
	.align 2, 0
.L08047C8C: .4byte 0x0000218B
.L08047C90:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047CB4 @ =0x0000218B
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #5
	ldr r1, .L08047CB8 @ =0x0000218C
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #3
	orrs r0, r2
	bl .L08048FEE
	.align 2, 0
.L08047CB4: .4byte 0x0000218B
.L08047CB8: .4byte 0x0000218C
.L08047CBC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047CCC @ =0x0000218C
	bl .L08048966
	.align 2, 0
.L08047CCC: .4byte 0x0000218C
.L08047CD0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047CE0 @ =0x0000218C
	bl .L080486B2
	.align 2, 0
.L08047CE0: .4byte 0x0000218C
.L08047CE4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047CF4 @ =0x0000218C
	bl .L08048662
	.align 2, 0
.L08047CF4: .4byte 0x0000218C
.L08047CF8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047D08 @ =0x0000218C
	bl .L08048626
	.align 2, 0
.L08047D08: .4byte 0x0000218C
.L08047D0C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047D1C @ =0x0000218D
	bl .L08048966
	.align 2, 0
.L08047D1C: .4byte 0x0000218D
.L08047D20:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047D30 @ =0x0000218D
	bl .L080486B2
	.align 2, 0
.L08047D30: .4byte 0x0000218D
.L08047D34:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047D4C @ =0x0000218C
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	bl .L08048FEE
	.align 2, 0
.L08047D4C: .4byte 0x0000218C
.L08047D50:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047D60 @ =0x0000218E
	bl .L08048966
	.align 2, 0
.L08047D60: .4byte 0x0000218E
.L08047D64:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047D74 @ =0x0000218E
	bl .L080486B2
	.align 2, 0
.L08047D74: .4byte 0x0000218E
.L08047D78:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047D88 @ =0x0000218E
	bl .L08048FC6
	.align 2, 0
.L08047D88: .4byte 0x0000218E
.L08047D8C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047D9C @ =0x0000218E
	bl .L08048E36
	.align 2, 0
.L08047D9C: .4byte 0x0000218E
.L08047DA0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047DB0 @ =0x0000218F
	bl .L08048F2E
	.align 2, 0
.L08047DB0: .4byte 0x0000218F
.L08047DB4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047DC4 @ =0x0000218F
	bl .L08048E5E
	.align 2, 0
.L08047DC4: .4byte 0x0000218F
.L08047DC8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047DD8 @ =0x0000218F
	bl .L08048E76
	.align 2, 0
.L08047DD8: .4byte 0x0000218F
.L08047DDC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047DEC @ =0x0000218F
	bl .L08048E36
	.align 2, 0
.L08047DEC: .4byte 0x0000218F
.L08047DF0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047E00 @ =0x00002190
	bl .L08048F2E
	.align 2, 0
.L08047E00: .4byte 0x00002190
.L08047E04:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047E14 @ =0x00002190
	bl .L08048E5E
	.align 2, 0
.L08047E14: .4byte 0x00002190
.L08047E18:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047E28 @ =0x00002190
	bl .L08048E76
	.align 2, 0
.L08047E28: .4byte 0x00002190
.L08047E2C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047E3C @ =0x00002190
	bl .L08048E36
	.align 2, 0
.L08047E3C: .4byte 0x00002190
.L08047E40:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047E50 @ =0x00002191
	bl .L08048F2E
	.align 2, 0
.L08047E50: .4byte 0x00002191
.L08047E54:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047E64 @ =0x00002191
	bl .L08048E5E
	.align 2, 0
.L08047E64: .4byte 0x00002191
.L08047E68:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047E78 @ =0x00002191
	bl .L08048E76
	.align 2, 0
.L08047E78: .4byte 0x00002191
.L08047E7C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047E8C @ =0x00002191
	bl .L08048E36
	.align 2, 0
.L08047E8C: .4byte 0x00002191
.L08047E90:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047EA0 @ =0x00002192
	bl .L08048F2E
	.align 2, 0
.L08047EA0: .4byte 0x00002192
.L08047EA4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047EB4 @ =0x00002192
	bl .L08048E5E
	.align 2, 0
.L08047EB4: .4byte 0x00002192
.L08047EB8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047EC8 @ =0x00002192
	bl .L08048E76
	.align 2, 0
.L08047EC8: .4byte 0x00002192
.L08047ECC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047EDC @ =0x00002192
	bl .L08048E36
	.align 2, 0
.L08047EDC: .4byte 0x00002192
.L08047EE0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047EF0 @ =0x00002193
	bl .L08048F2E
	.align 2, 0
.L08047EF0: .4byte 0x00002193
.L08047EF4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047F04 @ =0x00002193
	bl .L08048E5E
	.align 2, 0
.L08047F04: .4byte 0x00002193
.L08047F08:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047F18 @ =0x00002193
	bl .L08048E76
	.align 2, 0
.L08047F18: .4byte 0x00002193
.L08047F1C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047F2C @ =0x00002193
	bl .L08048E36
	.align 2, 0
.L08047F2C: .4byte 0x00002193
.L08047F30:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047F40 @ =0x00002194
	bl .L08048F2E
	.align 2, 0
.L08047F40: .4byte 0x00002194
.L08047F44:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047F54 @ =0x00002194
	bl .L08048E5E
	.align 2, 0
.L08047F54: .4byte 0x00002194
.L08047F58:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047F68 @ =0x00002194
	bl .L08048E76
	.align 2, 0
.L08047F68: .4byte 0x00002194
.L08047F6C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047F7C @ =0x00002194
	bl .L08048E36
	.align 2, 0
.L08047F7C: .4byte 0x00002194
.L08047F80:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047F90 @ =0x00002195
	bl .L08048F2E
	.align 2, 0
.L08047F90: .4byte 0x00002195
.L08047F94:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047FA4 @ =0x00002195
	bl .L08048E36
	.align 2, 0
.L08047FA4: .4byte 0x00002195
.L08047FA8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047FB8 @ =0x00002196
	bl .L08048F2E
	.align 2, 0
.L08047FB8: .4byte 0x00002196
.L08047FBC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047FCC @ =0x00002196
	bl .L08048E5E
	.align 2, 0
.L08047FCC: .4byte 0x00002196
.L08047FD0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047FE0 @ =0x00002196
	bl .L08048E76
	.align 2, 0
.L08047FE0: .4byte 0x00002196
.L08047FE4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08047FF4 @ =0x00002196
	bl .L08048E36
	.align 2, 0
.L08047FF4: .4byte 0x00002196
.L08047FF8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048008 @ =0x00002197
	bl .L08048F2E
	.align 2, 0
.L08048008: .4byte 0x00002197
.L0804800C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804801C @ =0x00002197
	bl .L08048E5E
	.align 2, 0
.L0804801C: .4byte 0x00002197
.L08048020:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048030 @ =0x00002197
	bl .L08048E76
	.align 2, 0
.L08048030: .4byte 0x00002197
.L08048034:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048044 @ =0x00002197
	bl .L08048E36
	.align 2, 0
.L08048044: .4byte 0x00002197
.L08048048:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048058 @ =0x00002198
	bl .L08048F2E
	.align 2, 0
.L08048058: .4byte 0x00002198
.L0804805C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804806C @ =0x00002198
	bl .L08048E5E
	.align 2, 0
.L0804806C: .4byte 0x00002198
.L08048070:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048080 @ =0x00002198
	bl .L08048E76
	.align 2, 0
.L08048080: .4byte 0x00002198
.L08048084:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048094 @ =0x00002198
	bl .L08048E36
	.align 2, 0
.L08048094: .4byte 0x00002198
.L08048098:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080480A8 @ =0x00002199
	bl .L08048F2E
	.align 2, 0
.L080480A8: .4byte 0x00002199
.L080480AC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080480BC @ =0x00002199
	bl .L08048F46
	.align 2, 0
.L080480BC: .4byte 0x00002199
.L080480C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080480D0 @ =0x00002199
	bl .L08048F5E
	.align 2, 0
.L080480D0: .4byte 0x00002199
.L080480D4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080480E4 @ =0x00002199
	bl .L08048F76
	.align 2, 0
.L080480E4: .4byte 0x00002199
.L080480E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080480F8 @ =0x00002199
	bl .L08048FC6
	.align 2, 0
.L080480F8: .4byte 0x00002199
.L080480FC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804810C @ =0x00002199
	bl .L08048FDE
	.align 2, 0
.L0804810C: .4byte 0x00002199
.L08048110:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048128 @ =0x00002198
.L0804811A:
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1e
	bl .L08048FEE
	.align 2, 0
.L08048128: .4byte 0x00002198
.L0804812C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804813C @ =0x0000219A
	bl .L08048C0E
	.align 2, 0
.L0804813C: .4byte 0x0000219A
.L08048140:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048150 @ =0x0000219A
	bl .L08048E5E
	.align 2, 0
.L08048150: .4byte 0x0000219A
.L08048154:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048164 @ =0x0000219A
	bl .L08048F76
	.align 2, 0
.L08048164: .4byte 0x0000219A
.L08048168:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048174 @ =0x0000219A
	b .L08048662
	.align 2, 0
.L08048174: .4byte 0x0000219A
.L08048178:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048184 @ =0x0000219A
	b .L08048626
	.align 2, 0
.L08048184: .4byte 0x0000219A
.L08048188:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080481A0 @ =0x0000219B
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	bl .L08048FEE
	.align 2, 0
.L080481A0: .4byte 0x0000219B
.L080481A4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080481B4 @ =0x0000219B
	bl .L08048E76
	.align 2, 0
.L080481B4: .4byte 0x0000219B
.L080481B8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080481C8 @ =0x0000219B
	bl .L08048FDE
	.align 2, 0
.L080481C8: .4byte 0x0000219B
.L080481CC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080481E8 @ =0x0000219B
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L080481EC @ =0x0000219C
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #3
	bl .L08048A7C
	.align 2, 0
.L080481E8: .4byte 0x0000219B
.L080481EC: .4byte 0x0000219C
.L080481F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048200 @ =0x0000219C
	bl .L08048E5E
	.align 2, 0
.L08048200: .4byte 0x0000219C
.L08048204:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048214 @ =0x0000219C
	bl .L08048F76
	.align 2, 0
.L08048214: .4byte 0x0000219C
.L08048218:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048224 @ =0x0000219C
	b .L08048662
	.align 2, 0
.L08048224: .4byte 0x0000219C
.L08048228:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048238 @ =0x0000219C
	bl .L08048F16
	.align 2, 0
.L08048238: .4byte 0x0000219C
.L0804823C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804824C @ =0x0000219D
	bl .L08048F2E
	.align 2, 0
.L0804824C: .4byte 0x0000219D
.L08048250:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048260 @ =0x0000219D
	bl .L08048F46
	.align 2, 0
.L08048260: .4byte 0x0000219D
.L08048264:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048270 @ =0x0000219D
	b .L080486B2
	.align 2, 0
.L08048270: .4byte 0x0000219D
.L08048274:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048284 @ =0x0000219D
	bl .L08048FC6
	.align 2, 0
.L08048284: .4byte 0x0000219D
.L08048288:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048298 @ =0x0000219D
	bl .L08048E36
	.align 2, 0
.L08048298: .4byte 0x0000219D
.L0804829C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080482AC @ =0x0000219E
	bl .L08048EC6
	.align 2, 0
.L080482AC: .4byte 0x0000219E
.L080482B0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080482BC @ =0x0000219E
	b .L08048966
	.align 2, 0
.L080482BC: .4byte 0x0000219E
.L080482C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080482D0 @ =0x0000219E
	bl .L08048F5E
	.align 2, 0
.L080482D0: .4byte 0x0000219E
.L080482D4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080482E4 @ =0x0000219E
	bl .L08048E76
	.align 2, 0
.L080482E4: .4byte 0x0000219E
.L080482E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080482F4 @ =0x0000219E
	b .L08048950
	.align 2, 0
.L080482F4: .4byte 0x0000219E
.L080482F8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048304 @ =0x0000219F
	b .L08048966
	.align 2, 0
.L08048304: .4byte 0x0000219F
.L08048308:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048318 @ =0x0000219F
	bl .L08048F5E
	.align 2, 0
.L08048318: .4byte 0x0000219F
.L0804831C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804832C @ =0x0000219F
	bl .L08048E76
	.align 2, 0
.L0804832C: .4byte 0x0000219F
.L08048330:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048340 @ =0x0000219F
	bl .L08048E36
	.align 2, 0
.L08048340: .4byte 0x0000219F
.L08048344:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048354 @ =0x000021A0
	bl .L08048F2E
	.align 2, 0
.L08048354: .4byte 0x000021A0
.L08048358:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048368 @ =0x000021A0
	bl .L08048F46
	.align 2, 0
.L08048368: .4byte 0x000021A0
.L0804836C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804837C @ =0x000021A0
	bl .L08048F5E
	.align 2, 0
.L0804837C: .4byte 0x000021A0
.L08048380:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048390 @ =0x000021A0
	bl .L08048F76
	.align 2, 0
.L08048390: .4byte 0x000021A0
.L08048394:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080483A0 @ =0x000021A0
	b .L08048662
	.align 2, 0
.L080483A0: .4byte 0x000021A0
.L080483A4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080483BC @ =0x000021CA
.L080483AE:
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1d
	bl .L08048FEE
	.align 2, 0
.L080483BC: .4byte 0x000021CA
.L080483C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080483D0 @ =0x000021A1
	bl .L08048F2E
	.align 2, 0
.L080483D0: .4byte 0x000021A1
.L080483D4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080483E4 @ =0x000021A1
	bl .L08048F46
	.align 2, 0
.L080483E4: .4byte 0x000021A1
.L080483E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080483F4 @ =0x000021A1
	b .L080486B2
	.align 2, 0
.L080483F4: .4byte 0x000021A1
.L080483F8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048408 @ =0x000021A1
	bl .L08048FC6
	.align 2, 0
.L08048408: .4byte 0x000021A1
.L0804840C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804841C @ =0x000021A1
	bl .L08048E36
	.align 2, 0
.L0804841C: .4byte 0x000021A1
.L08048420:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048430 @ =0x000021A2
	bl .L08048EC6
	.align 2, 0
.L08048430: .4byte 0x000021A2
.L08048434:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048440 @ =0x000021A2
	b .L08048966
	.align 2, 0
.L08048440: .4byte 0x000021A2
.L08048444:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048454 @ =0x000021A2
	bl .L08048F5E
	.align 2, 0
.L08048454: .4byte 0x000021A2
.L08048458:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048468 @ =0x000021A2
	bl .L08048E76
	.align 2, 0
.L08048468: .4byte 0x000021A2
.L0804846C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804847C @ =0x000021A2
	bl .L08048E36
	.align 2, 0
.L0804847C: .4byte 0x000021A2
.L08048480:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048490 @ =0x000021A3
	bl .L08048F2E
	.align 2, 0
.L08048490: .4byte 0x000021A3
.L08048494:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080484A4 @ =0x000021A3
	bl .L08048E5E
	.align 2, 0
.L080484A4: .4byte 0x000021A3
.L080484A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080484B8 @ =0x000021A3
	bl .L08048E76
	.align 2, 0
.L080484B8: .4byte 0x000021A3
.L080484BC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080484CC @ =0x000021A3
	bl .L08048FDE
	.align 2, 0
.L080484CC: .4byte 0x000021A3
.L080484D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080484EC @ =0x000021A3
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L080484F0 @ =0x000021A4
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	b .L08048A7C
	.align 2, 0
.L080484EC: .4byte 0x000021A3
.L080484F0: .4byte 0x000021A4
.L080484F4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048504 @ =0x000021A4
	bl .L08048C0E
	.align 2, 0
.L08048504: .4byte 0x000021A4
.L08048508:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048518 @ =0x000021A4
	bl .L08048E5E
	.align 2, 0
.L08048518: .4byte 0x000021A4
.L0804851C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804852C @ =0x000021A4
	bl .L08048F76
	.align 2, 0
.L0804852C: .4byte 0x000021A4
.L08048530:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804853C @ =0x000021A4
	b .L08048662
	.align 2, 0
.L0804853C: .4byte 0x000021A4
.L08048540:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048550 @ =0x000021A4
	bl .L08048F16
	.align 2, 0
.L08048550: .4byte 0x000021A4
.L08048554:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048564 @ =0x000021A5
	bl .L08048F2E
	.align 2, 0
.L08048564: .4byte 0x000021A5
.L08048568:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048578 @ =0x000021A5
	bl .L08048F46
	.align 2, 0
.L08048578: .4byte 0x000021A5
.L0804857C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048588 @ =0x000021A5
	b .L080486B2
	.align 2, 0
.L08048588: .4byte 0x000021A5
.L0804858C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048598 @ =0x000021A5
	b .L08048662
	.align 2, 0
.L08048598: .4byte 0x000021A5
.L0804859C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080485B4 @ =0x000021A4
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1d
	bl .L08048FEE
	.align 2, 0
.L080485B4: .4byte 0x000021A4
.L080485B8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080485C8 @ =0x000021A6
	bl .L08048F46
	.align 2, 0
.L080485C8: .4byte 0x000021A6
.L080485CC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080485DC @ =0x000021A6
	bl .L08048F5E
	.align 2, 0
.L080485DC: .4byte 0x000021A6
.L080485E0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080485F0 @ =0x000021A6
	bl .L08048F76
	.align 2, 0
.L080485F0: .4byte 0x000021A6
.L080485F4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048604 @ =0x000021A6
	bl .L08048FC6
	.align 2, 0
.L08048604: .4byte 0x000021A6
.L08048608:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048618 @ =0x000021A6
	bl .L08048FDE
	.align 2, 0
.L08048618: .4byte 0x000021A6
.L0804861C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048634 @ =0x000021A6
.L08048626:
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	bl .L08048FEE
	.align 2, 0
.L08048634: .4byte 0x000021A6
.L08048638:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048644 @ =0x000021A7
	b .L08048966
	.align 2, 0
.L08048644: .4byte 0x000021A7
.L08048648:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048654 @ =0x000021A7
	b .L080486B2
	.align 2, 0
.L08048654: .4byte 0x000021A7
.L08048658:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048670 @ =0x000021A7
.L08048662:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl .L08048FEE
	.align 2, 0
.L08048670: .4byte 0x000021A7
.L08048674:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048690 @ =0x000021A7
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L08048694 @ =0x000021A8
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	b .L08048A7C
	.align 2, 0
.L08048690: .4byte 0x000021A7
.L08048694: .4byte 0x000021A8
.L08048698:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080486A4 @ =0x000021A8
	b .L08048966
	.align 2, 0
.L080486A4: .4byte 0x000021A8
.L080486A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080486C0 @ =0x000021A8
.L080486B2:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl .L08048FEE
	.align 2, 0
.L080486C0: .4byte 0x000021A8
.L080486C4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080486D8 @ =0x000021A8
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #5
	bl .L08048FEE
	.align 2, 0
.L080486D8: .4byte 0x000021A8
.L080486DC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080486EC @ =0x000021A9
	bl .L08048F2E
	.align 2, 0
.L080486EC: .4byte 0x000021A9
.L080486F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048700 @ =0x000021A9
	bl .L08048E5E
	.align 2, 0
.L08048700: .4byte 0x000021A9
.L08048704:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048714 @ =0x000021A9
	bl .L08048F76
	.align 2, 0
.L08048714: .4byte 0x000021A9
.L08048718:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048728 @ =0x000021A9
	bl .L08048FC6
	.align 2, 0
.L08048728: .4byte 0x000021A9
.L0804872C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804873C @ =0x000021A9
	bl .L08048FDE
	.align 2, 0
.L0804873C: .4byte 0x000021A9
.L08048740:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048750 @ =0x000021A9
	bl .L08048F16
	.align 2, 0
.L08048750: .4byte 0x000021A9
.L08048754:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048764 @ =0x000021AA
	bl .L08048EC6
	.align 2, 0
.L08048764: .4byte 0x000021AA
.L08048768:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048774 @ =0x000021AA
	b .L08048C0E
	.align 2, 0
.L08048774: .4byte 0x000021AA
.L08048778:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048788 @ =0x000021AA
	bl .L08048F46
	.align 2, 0
.L08048788: .4byte 0x000021AA
.L0804878C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L0804879C @ =0x000021AA
	bl .L08048F5E
	.align 2, 0
.L0804879C: .4byte 0x000021AA
.L080487A0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080487B0 @ =0x000021AA
	bl .L08048F76
	.align 2, 0
.L080487B0: .4byte 0x000021AA
.L080487B4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080487C4 @ =0x000021AA
	bl .L08048FC6
	.align 2, 0
.L080487C4: .4byte 0x000021AA
.L080487C8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080487D8 @ =0x000021AA
	bl .L08048FDE
	.align 2, 0
.L080487D8: .4byte 0x000021AA
.L080487DC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080487EC @ =0x000021AA
	bl .L08048F16
	.align 2, 0
.L080487EC: .4byte 0x000021AA
.L080487F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048800 @ =0x000021AB
	bl .L08048EC6
	.align 2, 0
.L08048800: .4byte 0x000021AB
.L08048804:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048810 @ =0x000021AB
	b .L08048C0E
	.align 2, 0
.L08048810: .4byte 0x000021AB
.L08048814:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048824 @ =0x000021AB
	bl .L08048F46
	.align 2, 0
.L08048824: .4byte 0x000021AB
.L08048828:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048838 @ =0x000021AB
	bl .L08048F5E
	.align 2, 0
.L08048838: .4byte 0x000021AB
.L0804883C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048848 @ =0x000021B4
	b .L0804890A
	.align 2, 0
.L08048848: .4byte 0x000021B4
.L0804884C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048858 @ =0x000021B4
	b .L080488EE
	.align 2, 0
.L08048858: .4byte 0x000021B4
.L0804885C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048868 @ =0x000021B6
	b .L0804890A
	.align 2, 0
.L08048868: .4byte 0x000021B6
.L0804886C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048880 @ =0x000021B7
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #6
	ldr r1, .L08048884 @ =0x000021B8
	b .L08048930
	.align 2, 0
.L08048880: .4byte 0x000021B7
.L08048884: .4byte 0x000021B8
.L08048888:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048894 @ =0x000021B8
	b .L0804890A
	.align 2, 0
.L08048894: .4byte 0x000021B8
.L08048898:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080488A4 @ =0x000021B8
	b .L080488EE
	.align 2, 0
.L080488A4: .4byte 0x000021B8
.L080488A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080488B4 @ =0x000021BA
	b .L0804890A
	.align 2, 0
.L080488B4: .4byte 0x000021BA
.L080488B8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080488CC @ =0x000021BB
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #6
	ldr r1, .L080488D0 @ =0x000021BC
	b .L08048930
	.align 2, 0
.L080488CC: .4byte 0x000021BB
.L080488D0: .4byte 0x000021BC
.L080488D4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080488E0 @ =0x000021BC
	b .L0804890A
	.align 2, 0
.L080488E0: .4byte 0x000021BC
.L080488E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080488FC @ =0x000021BC
.L080488EE:
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x18
	bl .L08048FEE
	.align 2, 0
.L080488FC: .4byte 0x000021BC
.L08048900:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048918 @ =0x000021BE
.L0804890A:
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x18
	bl .L08048FEE
	.align 2, 0
.L08048918: .4byte 0x000021BE
.L0804891C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048940 @ =0x000021BF
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #6
	movs r1, #0x87
	lsls r1, r1, #6
.L08048930:
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0x3f
	ands r0, r1
	lsls r0, r0, #2
	orrs r0, r2
	bl .L08048FEE
	.align 2, 0
.L08048940: .4byte 0x000021BF
.L08048944:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0x87
	lsls r2, r2, #6
.L08048950:
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1d
	bl .L08048FEE
.L0804895C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048970 @ =0x000021C1
.L08048966:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	b .L08048FEE
	.align 2, 0
.L08048970: .4byte 0x000021C1
.L08048974:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048980 @ =0x000021C1
	b .L08048F5E
	.align 2, 0
.L08048980: .4byte 0x000021C1
.L08048984:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048990 @ =0x000021C1
	b .L08048F76
	.align 2, 0
.L08048990: .4byte 0x000021C1
.L08048994:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080489A0 @ =0x000021C1
	b .L08048FC6
	.align 2, 0
.L080489A0: .4byte 0x000021C1
.L080489A4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080489B0 @ =0x000021C1
	b .L08048FDE
	.align 2, 0
.L080489B0: .4byte 0x000021C1
.L080489B4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080489C0 @ =0x000021C1
	b .L08048F16
	.align 2, 0
.L080489C0: .4byte 0x000021C1
.L080489C4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080489D0 @ =0x000021C2
	b .L08048EC6
	.align 2, 0
.L080489D0: .4byte 0x000021C2
.L080489D4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080489E0 @ =0x000021C2
	b .L08048C0E
	.align 2, 0
.L080489E0: .4byte 0x000021C2
.L080489E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L080489F0 @ =0x000021C2
	b .L08048F46
	.align 2, 0
.L080489F0: .4byte 0x000021C2
.L080489F4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048A00 @ =0x000021C2
	b .L08048F5E
	.align 2, 0
.L08048A00: .4byte 0x000021C2
.L08048A04:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048A10 @ =0x000021C2
	b .L08048F76
	.align 2, 0
.L08048A10: .4byte 0x000021C2
.L08048A14:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048A20 @ =0x000021C2
	b .L08048FC6
	.align 2, 0
.L08048A20: .4byte 0x000021C2
.L08048A24:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048A30 @ =0x000021C2
	b .L08048FDE
	.align 2, 0
.L08048A30: .4byte 0x000021C2
.L08048A34:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048A48 @ =0x000021C2
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	b .L08048FEE
	.align 2, 0
.L08048A48: .4byte 0x000021C2
.L08048A4C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048A60 @ =0x000021C3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	b .L08048FEE
	.align 2, 0
.L08048A60: .4byte 0x000021C3
.L08048A64:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048A84 @ =0x000021C3
	adds r1, r0, r2
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r1, .L08048A88 @ =0x000021C4
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #7
.L08048A7C:
	ands r0, r1
	lsls r0, r0, #1
	orrs r0, r2
	b .L08048FEE
	.align 2, 0
.L08048A84: .4byte 0x000021C3
.L08048A88: .4byte 0x000021C4
.L08048A8C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048A98 @ =0x000021C4
	b .L08048F5E
	.align 2, 0
.L08048A98: .4byte 0x000021C4
.L08048A9C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048AA8 @ =0x000021C4
	b .L08048F76
	.align 2, 0
.L08048AA8: .4byte 0x000021C4
.L08048AAC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048AB8 @ =0x000021C4
	b .L08048FC6
	.align 2, 0
.L08048AB8: .4byte 0x000021C4
.L08048ABC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048AC8 @ =0x000021C4
	b .L08048FDE
	.align 2, 0
.L08048AC8: .4byte 0x000021C4
.L08048ACC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048AD8 @ =0x000021C4
	b .L08048F16
	.align 2, 0
.L08048AD8: .4byte 0x000021C4
.L08048ADC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048AE8 @ =0x000021C5
	b .L08048EC6
	.align 2, 0
.L08048AE8: .4byte 0x000021C5
.L08048AEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048AF8 @ =0x000021C5
	b .L08048C0E
	.align 2, 0
.L08048AF8: .4byte 0x000021C5
.L08048AFC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048B08 @ =0x000021C5
	b .L08048F46
	.align 2, 0
.L08048B08: .4byte 0x000021C5
.L08048B0C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048B18 @ =0x000021C5
	b .L08048F5E
	.align 2, 0
.L08048B18: .4byte 0x000021C5
.L08048B1C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048B28 @ =0x000021C5
	b .L08048F76
	.align 2, 0
.L08048B28: .4byte 0x000021C5
.L08048B2C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048B38 @ =0x000021C5
	b .L08048FC6
	.align 2, 0
.L08048B38: .4byte 0x000021C5
.L08048B3C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048B48 @ =0x000021C5
	b .L08048FDE
	.align 2, 0
.L08048B48: .4byte 0x000021C5
.L08048B4C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048B58 @ =0x000021C5
	b .L08048F16
	.align 2, 0
.L08048B58: .4byte 0x000021C5
.L08048B5C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048B68 @ =0x000021C6
	b .L08048EC6
	.align 2, 0
.L08048B68: .4byte 0x000021C6
.L08048B6C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048B80 @ =0x000021C6
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	b .L08048FEE
	.align 2, 0
.L08048B80: .4byte 0x000021C6
.L08048B84:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048B90 @ =0x000021C7
	b .L08048C0E
	.align 2, 0
.L08048B90: .4byte 0x000021C7
.L08048B94:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048BA0 @ =0x000021C7
	b .L08048F46
	.align 2, 0
.L08048BA0: .4byte 0x000021C7
.L08048BA4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048BB0 @ =0x000021C7
	b .L08048F5E
	.align 2, 0
.L08048BB0: .4byte 0x000021C7
.L08048BB4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048BC0 @ =0x000021C7
	b .L08048F76
	.align 2, 0
.L08048BC0: .4byte 0x000021C7
.L08048BC4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048BD0 @ =0x000021C7
	b .L08048FC6
	.align 2, 0
.L08048BD0: .4byte 0x000021C7
.L08048BD4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048BE0 @ =0x000021C7
	b .L08048FDE
	.align 2, 0
.L08048BE0: .4byte 0x000021C7
.L08048BE4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048BF0 @ =0x000021C7
	b .L08048F16
	.align 2, 0
.L08048BF0: .4byte 0x000021C7
.L08048BF4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048C00 @ =0x000021C8
	b .L08048EC6
	.align 2, 0
.L08048C00: .4byte 0x000021C8
.L08048C04:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048C18 @ =0x000021C8
.L08048C0E:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	b .L08048FEE
	.align 2, 0
.L08048C18: .4byte 0x000021C8
.L08048C1C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048C28 @ =0x000021AB
	b .L08048E76
	.align 2, 0
.L08048C28: .4byte 0x000021AB
.L08048C2C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048C38 @ =0x000021AB
	b .L08048E36
	.align 2, 0
.L08048C38: .4byte 0x000021AB
.L08048C3C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048C48 @ =0x000021AC
	b .L08048F2E
	.align 2, 0
.L08048C48: .4byte 0x000021AC
.L08048C4C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048C58 @ =0x000021AC
	b .L08048E5E
	.align 2, 0
.L08048C58: .4byte 0x000021AC
.L08048C5C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048C68 @ =0x000021AC
	b .L08048E76
	.align 2, 0
.L08048C68: .4byte 0x000021AC
.L08048C6C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048C78 @ =0x000021AC
	b .L08048E36
	.align 2, 0
.L08048C78: .4byte 0x000021AC
.L08048C7C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048C88 @ =0x000021AD
	b .L08048F2E
	.align 2, 0
.L08048C88: .4byte 0x000021AD
.L08048C8C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048C98 @ =0x000021AD
	b .L08048E5E
	.align 2, 0
.L08048C98: .4byte 0x000021AD
.L08048C9C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048CA8 @ =0x000021AD
	b .L08048E76
	.align 2, 0
.L08048CA8: .4byte 0x000021AD
.L08048CAC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048CB8 @ =0x000021AD
	b .L08048E36
	.align 2, 0
.L08048CB8: .4byte 0x000021AD
.L08048CBC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048CC8 @ =0x000021AE
	b .L08048F2E
	.align 2, 0
.L08048CC8: .4byte 0x000021AE
.L08048CCC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048CD8 @ =0x000021AE
	b .L08048E5E
	.align 2, 0
.L08048CD8: .4byte 0x000021AE
.L08048CDC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048CE8 @ =0x000021AE
	b .L08048E76
	.align 2, 0
.L08048CE8: .4byte 0x000021AE
.L08048CEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048CF8 @ =0x000021AE
	b .L08048E36
	.align 2, 0
.L08048CF8: .4byte 0x000021AE
.L08048CFC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048D08 @ =0x000021AF
	b .L08048F2E
	.align 2, 0
.L08048D08: .4byte 0x000021AF
.L08048D0C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048D18 @ =0x000021AF
	b .L08048E5E
	.align 2, 0
.L08048D18: .4byte 0x000021AF
.L08048D1C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048D28 @ =0x000021AF
	b .L08048E76
	.align 2, 0
.L08048D28: .4byte 0x000021AF
.L08048D2C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048D38 @ =0x000021AF
	b .L08048E36
	.align 2, 0
.L08048D38: .4byte 0x000021AF
.L08048D3C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048D48 @ =0x000021B0
	b .L08048F2E
	.align 2, 0
.L08048D48: .4byte 0x000021B0
.L08048D4C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048D58 @ =0x000021B0
	b .L08048E5E
	.align 2, 0
.L08048D58: .4byte 0x000021B0
.L08048D5C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048D68 @ =0x000021B0
	b .L08048E76
	.align 2, 0
.L08048D68: .4byte 0x000021B0
.L08048D6C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048D78 @ =0x000021B0
	b .L08048E36
	.align 2, 0
.L08048D78: .4byte 0x000021B0
.L08048D7C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048D88 @ =0x000021B1
	b .L08048F2E
	.align 2, 0
.L08048D88: .4byte 0x000021B1
.L08048D8C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048D98 @ =0x000021B1
	b .L08048E5E
	.align 2, 0
.L08048D98: .4byte 0x000021B1
.L08048D9C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048DA8 @ =0x000021B1
	b .L08048E76
	.align 2, 0
.L08048DA8: .4byte 0x000021B1
.L08048DAC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048DB8 @ =0x000021B1
	b .L08048E36
	.align 2, 0
.L08048DB8: .4byte 0x000021B1
.L08048DBC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048DC8 @ =0x000021B2
	b .L08048F2E
	.align 2, 0
.L08048DC8: .4byte 0x000021B2
.L08048DCC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048DD8 @ =0x000021B2
	b .L08048E5E
	.align 2, 0
.L08048DD8: .4byte 0x000021B2
.L08048DDC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048DE8 @ =0x000021B2
	b .L08048E76
	.align 2, 0
.L08048DE8: .4byte 0x000021B2
.L08048DEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048DF8 @ =0x000021B2
	b .L08048E36
	.align 2, 0
.L08048DF8: .4byte 0x000021B2
.L08048DFC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048E08 @ =0x000021B3
	b .L08048F2E
	.align 2, 0
.L08048E08: .4byte 0x000021B3
.L08048E0C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048E18 @ =0x000021B3
	b .L08048E5E
	.align 2, 0
.L08048E18: .4byte 0x000021B3
.L08048E1C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048E28 @ =0x000021B3
	b .L08048E76
	.align 2, 0
.L08048E28: .4byte 0x000021B3
.L08048E2C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048E40 @ =0x000021B3
.L08048E36:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #6
	b .L08048FEE
	.align 2, 0
.L08048E40: .4byte 0x000021B3
.L08048E44:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048E50 @ =0x000021B4
	b .L08048F2E
	.align 2, 0
.L08048E50: .4byte 0x000021B4
.L08048E54:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048E68 @ =0x000021B4
.L08048E5E:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	b .L08048FEE
	.align 2, 0
.L08048E68: .4byte 0x000021B4
.L08048E6C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048E80 @ =0x000021B4
.L08048E76:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	b .L08048FEE
	.align 2, 0
.L08048E80: .4byte 0x000021B4
.L08048E84:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048E90 @ =0x000021C8
	b .L08048F46
	.align 2, 0
.L08048E90: .4byte 0x000021C8
.L08048E94:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048EA0 @ =0x000021C8
	b .L08048F5E
	.align 2, 0
.L08048EA0: .4byte 0x000021C8
.L08048EA4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048EB8 @ =0x000021C8
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #4
	b .L08048FEE
	.align 2, 0
.L08048EB8: .4byte 0x000021C8
.L08048EBC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048ED0 @ =0x000021C9
.L08048EC6:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b .L08048FEE
	.align 2, 0
.L08048ED0: .4byte 0x000021C9
.L08048ED4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048EE8 @ =0x000021C9
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	b .L08048FEE
	.align 2, 0
.L08048EE8: .4byte 0x000021C9
.L08048EEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048EF8 @ =0x000021C9
	b .L08048FC6
	.align 2, 0
.L08048EF8: .4byte 0x000021C9
.L08048EFC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048F08 @ =0x000021C9
	b .L08048FDE
	.align 2, 0
.L08048F08: .4byte 0x000021C9
.L08048F0C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048F20 @ =0x000021C9
.L08048F16:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #7
	b .L08048FEE
	.align 2, 0
.L08048F20: .4byte 0x000021C9
.L08048F24:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048F38 @ =0x000021CA
.L08048F2E:
	adds r0, r0, r2
	ldrb r0, [r0]
.L08048F32:
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	b .L08048FEE
	.align 2, 0
.L08048F38: .4byte 0x000021CA
.L08048F3C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048F50 @ =0x000021CA
.L08048F46:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	b .L08048FEE
	.align 2, 0
.L08048F50: .4byte 0x000021CA
.L08048F54:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048F68 @ =0x000021CA
.L08048F5E:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	b .L08048FEE
	.align 2, 0
.L08048F68: .4byte 0x000021CA
.L08048F6C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048F80 @ =0x000021CA
.L08048F76:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	b .L08048FEE
	.align 2, 0
.L08048F80: .4byte 0x000021CA
.L08048F84:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048F90 @ =0x000021CA
	b .L08048FC6
	.align 2, 0
.L08048F90: .4byte 0x000021CA
.L08048F94:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048FA0 @ =0x000021CA
	b .L08048FDE
	.align 2, 0
.L08048FA0: .4byte 0x000021CA
.L08048FA4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048FB8 @ =0x000021CB
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #2
	b .L08048FEE
	.align 2, 0
.L08048FB8: .4byte 0x000021CB
.L08048FBC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048FD0 @ =0x0000216E
.L08048FC6:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	b .L08048FEE
	.align 2, 0
.L08048FD0: .4byte 0x0000216E
.L08048FD4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, .L08048FE8 @ =0x0000216E
.L08048FDE:
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	b .L08048FEE
	.align 2, 0
.L08048FE8: .4byte 0x0000216E

	thumb_func_start sub_08048FEC
sub_08048FEC: @ 0x08048FEC
	movs r0, #0
.L08048FEE:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08048FFC
func_08048FFC: @ 0x08048FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov r8, r1
	adds r6, r2, #0
	bl func_0804590C
	mov sb, r0
	mov r1, r8
	subs r1, #0x1c
	ldr r0, .L0804902C @ =0x00000231
	cmp r1, r0
	bls .L08049020
	bl .L0804DA2E
.L08049020:
	lsls r0, r1, #2
	ldr r1, .L08049030 @ =.L08049034
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0804902C: .4byte 0x00000231
.L08049030: .4byte .L08049034
.L08049034: @ jump table
	.4byte .L08049A24 @ case 0
	.4byte .L0804DA2E @ case 1
	.4byte .L08049B32 @ case 2
	.4byte .L08049B4C @ case 3
	.4byte .L0804DA2E @ case 4
	.4byte .L0804DA2E @ case 5
	.4byte .L0804DA2E @ case 6
	.4byte .L0804DA2E @ case 7
	.4byte .L0804DA2E @ case 8
	.4byte .L0804DA2E @ case 9
	.4byte .L0804DA2E @ case 10
	.4byte .L0804DA2E @ case 11
	.4byte .L08049928 @ case 12
	.4byte .L08049956 @ case 13
	.4byte .L08049990 @ case 14
	.4byte .L080498FC @ case 15
	.4byte .L0804DA2E @ case 16
	.4byte .L0804DA2E @ case 17
	.4byte .L0804DA2E @ case 18
	.4byte .L080499E4 @ case 19
	.4byte .L0804DA2E @ case 20
	.4byte .L0804DA2E @ case 21
	.4byte .L0804DA2E @ case 22
	.4byte .L0804DA2E @ case 23
	.4byte .L0804DA2E @ case 24
	.4byte .L080499CA @ case 25
	.4byte .L0804DA2E @ case 26
	.4byte .L0804DA2E @ case 27
	.4byte .L0804DA2E @ case 28
	.4byte .L0804DA2E @ case 29
	.4byte .L0804DA2E @ case 30
	.4byte .L0804DA2E @ case 31
	.4byte .L0804DA2E @ case 32
	.4byte .L0804DA2E @ case 33
	.4byte .L0804DA2E @ case 34
	.4byte .L0804DA2E @ case 35
	.4byte .L0804DA2E @ case 36
	.4byte .L0804DA2E @ case 37
	.4byte .L0804DA2E @ case 38
	.4byte .L0804DA2E @ case 39
	.4byte .L0804DA2E @ case 40
	.4byte .L0804DA2E @ case 41
	.4byte .L08049D64 @ case 42
	.4byte .L08049D76 @ case 43
	.4byte .L0804A25C @ case 44
	.4byte .L08049D88 @ case 45
	.4byte .L08049D9A @ case 46
	.4byte .L08049DAC @ case 47
	.4byte .L08049DBE @ case 48
	.4byte .L0804A1C2 @ case 49
	.4byte .L08049DD0 @ case 50
	.4byte .L08049DE2 @ case 51
	.4byte .L08049DF4 @ case 52
	.4byte .L0804A280 @ case 53
	.4byte .L08049E06 @ case 54
	.4byte .L0804A2A0 @ case 55
	.4byte .L08049E18 @ case 56
	.4byte .L08049E2A @ case 57
	.4byte .L0804A1E4 @ case 58
	.4byte .L08049E3C @ case 59
	.4byte .L08049E4E @ case 60
	.4byte .L0804A2C0 @ case 61
	.4byte .L08049E60 @ case 62
	.4byte .L0804A2E4 @ case 63
	.4byte .L08049E72 @ case 64
	.4byte .L0804A304 @ case 65
	.4byte .L08049E84 @ case 66
	.4byte .L08049E96 @ case 67
	.4byte .L0804A200 @ case 68
	.4byte .L08049EA8 @ case 69
	.4byte .L08049EBA @ case 70
	.4byte .L0804A324 @ case 71
	.4byte .L08049ECC @ case 72
	.4byte .L08049EDE @ case 73
	.4byte .L08049EF0 @ case 74
	.4byte .L08049F02 @ case 75
	.4byte .L0804A220 @ case 76
	.4byte .L08049F14 @ case 77
	.4byte .L08049F24 @ case 78
	.4byte .L08049F34 @ case 79
	.4byte .L0804A344 @ case 80
	.4byte .L08049F44 @ case 81
	.4byte .L08049F54 @ case 82
	.4byte .L08049F64 @ case 83
	.4byte .L0804A23C @ case 84
	.4byte .L08049FA0 @ case 85
	.4byte .L08049FB0 @ case 86
	.4byte .L08049FC2 @ case 87
	.4byte .L08049FD4 @ case 88
	.4byte .L08049FE6 @ case 89
	.4byte .L08049FF8 @ case 90
	.4byte .L0804A00A @ case 91
	.4byte .L0804A368 @ case 92
	.4byte .L0804A404 @ case 93
	.4byte .L0804A01C @ case 94
	.4byte .L0804A02C @ case 95
	.4byte .L0804A03E @ case 96
	.4byte .L0804A050 @ case 97
	.4byte .L0804A062 @ case 98
	.4byte .L0804A074 @ case 99
	.4byte .L0804A388 @ case 100
	.4byte .L0804A424 @ case 101
	.4byte .L0804A086 @ case 102
	.4byte .L0804A096 @ case 103
	.4byte .L0804A0A8 @ case 104
	.4byte .L0804A0BA @ case 105
	.4byte .L0804A0CC @ case 106
	.4byte .L0804A0DE @ case 107
	.4byte .L0804A3A8 @ case 108
	.4byte .L0804A438 @ case 109
	.4byte .L0804A0F0 @ case 110
	.4byte .L0804A100 @ case 111
	.4byte .L0804A112 @ case 112
	.4byte .L0804A124 @ case 113
	.4byte .L0804A136 @ case 114
	.4byte .L0804A148 @ case 115
	.4byte .L0804A3C4 @ case 116
	.4byte .L0804A45C @ case 117
	.4byte .L0804A15A @ case 118
	.4byte .L0804A168 @ case 119
	.4byte .L0804A178 @ case 120
	.4byte .L0804A188 @ case 121
	.4byte .L0804A198 @ case 122
	.4byte .L0804A1A8 @ case 123
	.4byte .L0804A3E4 @ case 124
	.4byte .L0804A47C @ case 125
	.4byte .L0804A49C @ case 126
	.4byte .L0804A4BC @ case 127
	.4byte .L0804A4E0 @ case 128
	.4byte .L0804A500 @ case 129
	.4byte .L0804A520 @ case 130
	.4byte .L0804A540 @ case 131
	.4byte .L0804A564 @ case 132
	.4byte .L0804A584 @ case 133
	.4byte .L0804A5A4 @ case 134
	.4byte .L0804A5C4 @ case 135
	.4byte .L0804A5FC @ case 136
	.4byte .L0804A61C @ case 137
	.4byte .L0804A63C @ case 138
	.4byte .L0804A65C @ case 139
	.4byte .L0804A680 @ case 140
	.4byte .L0804A6A0 @ case 141
	.4byte .L0804A6C0 @ case 142
	.4byte .L0804A6E0 @ case 143
	.4byte .L0804A704 @ case 144
	.4byte .L0804A724 @ case 145
	.4byte .L0804A744 @ case 146
	.4byte .L0804A764 @ case 147
	.4byte .L0804A788 @ case 148
	.4byte .L0804A7A8 @ case 149
	.4byte .L0804A7C8 @ case 150
	.4byte .L0804A7E8 @ case 151
	.4byte .L0804A820 @ case 152
	.4byte .L0804A840 @ case 153
	.4byte .L0804A860 @ case 154
	.4byte .L0804A880 @ case 155
	.4byte .L0804A8A4 @ case 156
	.4byte .L0804A8C4 @ case 157
	.4byte .L0804A8E4 @ case 158
	.4byte .L0804A904 @ case 159
	.4byte .L0804A928 @ case 160
	.4byte .L0804A948 @ case 161
	.4byte .L0804A968 @ case 162
	.4byte .L0804A988 @ case 163
	.4byte .L0804A9AC @ case 164
	.4byte .L0804A9CC @ case 165
	.4byte .L0804A9EC @ case 166
	.4byte .L0804AA0C @ case 167
	.4byte .L0804AA44 @ case 168
	.4byte .L0804AA64 @ case 169
	.4byte .L0804AA84 @ case 170
	.4byte .L0804AAA4 @ case 171
	.4byte .L0804AAEC @ case 172
	.4byte .L0804AB0C @ case 173
	.4byte .L0804AB2C @ case 174
	.4byte .L0804AB4C @ case 175
	.4byte .L0804AB70 @ case 176
	.4byte .L0804AB90 @ case 177
	.4byte .L0804ABB0 @ case 178
	.4byte .L0804ABD0 @ case 179
	.4byte .L0804ABF4 @ case 180
	.4byte .L0804AC14 @ case 181
	.4byte .L0804AC34 @ case 182
	.4byte .L0804AC54 @ case 183
	.4byte .L0804AC8C @ case 184
	.4byte .L0804ACAC @ case 185
	.4byte .L0804ACCC @ case 186
	.4byte .L0804ACEC @ case 187
	.4byte .L0804AD10 @ case 188
	.4byte .L0804AD30 @ case 189
	.4byte .L0804AD50 @ case 190
	.4byte .L0804AD70 @ case 191
	.4byte .L0804AD94 @ case 192
	.4byte .L0804ADB4 @ case 193
	.4byte .L0804ADD4 @ case 194
	.4byte .L0804AE04 @ case 195
	.4byte .L0804AE24 @ case 196
	.4byte .L0804AE44 @ case 197
	.4byte .L0804AE68 @ case 198
	.4byte .L0804AE88 @ case 199
	.4byte .L0804AEA8 @ case 200
	.4byte .L0804AEC8 @ case 201
	.4byte .L0804AEE4 @ case 202
	.4byte .L0804AF08 @ case 203
	.4byte .L0804AF28 @ case 204
	.4byte .L0804AF48 @ case 205
	.4byte .L0804AF64 @ case 206
	.4byte .L0804AF88 @ case 207
	.4byte .L0804AFA8 @ case 208
	.4byte .L0804AFC8 @ case 209
	.4byte .L0804AFE4 @ case 210
	.4byte .L0804B008 @ case 211
	.4byte .L0804B028 @ case 212
	.4byte .L0804B048 @ case 213
	.4byte .L0804B064 @ case 214
	.4byte .L0804B088 @ case 215
	.4byte .L0804B0A8 @ case 216
	.4byte .L0804B0C8 @ case 217
	.4byte .L0804B0E8 @ case 218
	.4byte .L0804B0FC @ case 219
	.4byte .L0804B118 @ case 220
	.4byte .L0804B13C @ case 221
	.4byte .L0804B15C @ case 222
	.4byte .L0804B17C @ case 223
	.4byte .L0804B19C @ case 224
	.4byte .L0804B1C0 @ case 225
	.4byte .L0804B1E0 @ case 226
	.4byte .L0804B200 @ case 227
	.4byte .L0804B220 @ case 228
	.4byte .L0804B23C @ case 229
	.4byte .L0804B260 @ case 230
	.4byte .L0804B280 @ case 231
	.4byte .L0804B2A0 @ case 232
	.4byte .L0804B2BC @ case 233
	.4byte .L0804B2E0 @ case 234
	.4byte .L0804B300 @ case 235
	.4byte .L0804B320 @ case 236
	.4byte .L0804B344 @ case 237
	.4byte .L0804B364 @ case 238
	.4byte .L0804B384 @ case 239
	.4byte .L0804B3A4 @ case 240
	.4byte .L0804B3C0 @ case 241
	.4byte .L0804B3E4 @ case 242
	.4byte .L0804B404 @ case 243
	.4byte .L0804B43C @ case 244
	.4byte .L0804B45C @ case 245
	.4byte .L0804B47C @ case 246
	.4byte .L0804B49C @ case 247
	.4byte .L0804B4B8 @ case 248
	.4byte .L0804B4DC @ case 249
	.4byte .L0804B4FC @ case 250
	.4byte .L0804B51C @ case 251
	.4byte .L0804B538 @ case 252
	.4byte .L0804B55C @ case 253
	.4byte .L0804B57C @ case 254
	.4byte .L0804B59C @ case 255
	.4byte .L0804B5B8 @ case 256
	.4byte .L0804B5DC @ case 257
	.4byte .L0804B5FC @ case 258
	.4byte .L0804B61C @ case 259
	.4byte .L0804B638 @ case 260
	.4byte .L0804B658 @ case 261
	.4byte .L0804B676 @ case 262
	.4byte .L0804B694 @ case 263
	.4byte .L0804B6AC @ case 264
	.4byte .L0804B6D0 @ case 265
	.4byte .L0804B6F0 @ case 266
	.4byte .L0804B710 @ case 267
	.4byte .L0804B72C @ case 268
	.4byte .L0804B750 @ case 269
	.4byte .L0804B770 @ case 270
	.4byte .L0804B790 @ case 271
	.4byte .L0804B7B0 @ case 272
	.4byte .L0804B7D4 @ case 273
	.4byte .L0804B7F4 @ case 274
	.4byte .L0804B814 @ case 275
	.4byte .L0804B834 @ case 276
	.4byte .L0804B86C @ case 277
	.4byte .L0804B88C @ case 278
	.4byte .L0804B8AC @ case 279
	.4byte .L0804B8CC @ case 280
	.4byte .L0804B8E8 @ case 281
	.4byte .L0804B90C @ case 282
	.4byte .L0804B92C @ case 283
	.4byte .L0804B94C @ case 284
	.4byte .L0804B968 @ case 285
	.4byte .L0804B98C @ case 286
	.4byte .L0804B9AC @ case 287
	.4byte .L0804B9CC @ case 288
	.4byte .L0804B9F0 @ case 289
	.4byte .L0804BA10 @ case 290
	.4byte .L0804BA30 @ case 291
	.4byte .L0804BA50 @ case 292
	.4byte .L0804BA88 @ case 293
	.4byte .L0804BAA8 @ case 294
	.4byte .L0804BAC8 @ case 295
	.4byte .L0804BAE8 @ case 296
	.4byte .L0804BB0C @ case 297
	.4byte .L0804BB2C @ case 298
	.4byte .L0804BB4C @ case 299
	.4byte .L0804BB70 @ case 300
	.4byte .L0804BB90 @ case 301
	.4byte .L0804BBB0 @ case 302
	.4byte .L0804BBCC @ case 303
	.4byte .L0804BBF0 @ case 304
	.4byte .L0804BC10 @ case 305
	.4byte .L0804BC48 @ case 306
	.4byte .L0804BC68 @ case 307
	.4byte .L0804BC88 @ case 308
	.4byte .L0804BCA8 @ case 309
	.4byte .L0804BCCC @ case 310
	.4byte .L0804BCEC @ case 311
	.4byte .L0804BD0C @ case 312
	.4byte .L0804BD30 @ case 313
	.4byte .L0804BD50 @ case 314
	.4byte .L0804BD70 @ case 315
	.4byte .L0804BD90 @ case 316
	.4byte .L0804BDAC @ case 317
	.4byte .L0804BDD0 @ case 318
	.4byte .L0804BDF0 @ case 319
	.4byte .L0804BE10 @ case 320
	.4byte .L0804BE2C @ case 321
	.4byte .L0804BE50 @ case 322
	.4byte .L0804BE70 @ case 323
	.4byte .L0804BE90 @ case 324
	.4byte .L0804BEAC @ case 325
	.4byte .L0804BED0 @ case 326
	.4byte .L0804BEF0 @ case 327
	.4byte .L0804BF10 @ case 328
	.4byte .L0804BF2C @ case 329
	.4byte .L0804BF50 @ case 330
	.4byte .L0804BF70 @ case 331
	.4byte .L0804BF90 @ case 332
	.4byte .L0804BFAC @ case 333
	.4byte .L0804BFD0 @ case 334
	.4byte .L0804BFF0 @ case 335
	.4byte .L0804C010 @ case 336
	.4byte .L0804C02C @ case 337
	.4byte .L0804C050 @ case 338
	.4byte .L0804C070 @ case 339
	.4byte .L0804C090 @ case 340
	.4byte .L0804C0AC @ case 341
	.4byte .L08049F74 @ case 342
	.4byte .L08049F88 @ case 343
	.4byte .L0804C0D0 @ case 344
	.4byte .L0804C0EC @ case 345
	.4byte .L0804C110 @ case 346
	.4byte .L0804C130 @ case 347
	.4byte .L0804C150 @ case 348
	.4byte .L0804AAC8 @ case 349
	.4byte .L0804C16C @ case 350
	.4byte .L0804C18C @ case 351
	.4byte .L0804C1AC @ case 352
	.4byte .L0804C1C8 @ case 353
	.4byte .L0804C1EC @ case 354
	.4byte .L0804C20C @ case 355
	.4byte .L0804C22C @ case 356
	.4byte .L0804C248 @ case 357
	.4byte .L0804C26C @ case 358
	.4byte .L0804C28C @ case 359
	.4byte .L0804C2AC @ case 360
	.4byte .L0804C2CC @ case 361
	.4byte .L0804C2EC @ case 362
	.4byte .L0804C300 @ case 363
	.4byte .L08049AAA @ case 364
	.4byte .L0804C324 @ case 365
	.4byte .L08049B94 @ case 366
	.4byte .L0804C344 @ case 367
	.4byte .L0804C364 @ case 368
	.4byte .L0804C388 @ case 369
	.4byte .L0804C3A8 @ case 370
	.4byte .L0804C3C8 @ case 371
	.4byte .L0804C3DC @ case 372
	.4byte .L0804DA2E @ case 373
	.4byte .L0804C414 @ case 374
	.4byte .L08049A54 @ case 375
	.4byte .L0804C434 @ case 376
	.4byte .L08049BE0 @ case 377
	.4byte .L0804C454 @ case 378
	.4byte .L0804C478 @ case 379
	.4byte .L0804C498 @ case 380
	.4byte .L08049C24 @ case 381
	.4byte .L0804C4B8 @ case 382
	.4byte .L0804C4D4 @ case 383
	.4byte .L0804C4F8 @ case 384
	.4byte .L08049C70 @ case 385
	.4byte .L0804C518 @ case 386
	.4byte .L0804C538 @ case 387
	.4byte .L0804C55C @ case 388
	.4byte .L0804C57C @ case 389
	.4byte .L0804C59C @ case 390
	.4byte .L0804C5BC @ case 391
	.4byte .L0804C5D8 @ case 392
	.4byte .L0804C5FC @ case 393
	.4byte .L0804C61C @ case 394
	.4byte .L0804C63C @ case 395
	.4byte .L0804C65C @ case 396
	.4byte .L0804C67C @ case 397
	.4byte .L0804C6A0 @ case 398
	.4byte .L08049AD4 @ case 399
	.4byte .L0804C6C4 @ case 400
	.4byte .L08049CBC @ case 401
	.4byte .L0804C6E4 @ case 402
	.4byte .L0804C700 @ case 403
	.4byte .L0804C724 @ case 404
	.4byte .L08049D08 @ case 405
	.4byte .L0804C744 @ case 406
	.4byte .L0804C764 @ case 407
	.4byte .L0804C780 @ case 408
	.4byte .L0804C7A4 @ case 409
	.4byte .L0804C7C4 @ case 410
	.4byte .L0804C7E4 @ case 411
	.4byte .L0804C7F8 @ case 412
	.4byte .L0804C830 @ case 413
	.4byte .L0804C850 @ case 414
	.4byte .L0804C870 @ case 415
	.4byte .L0804C890 @ case 416
	.4byte .L0804C8B0 @ case 417
	.4byte .L0804C8CC @ case 418
	.4byte .L0804C8F0 @ case 419
	.4byte .L0804C910 @ case 420
	.4byte .L0804C930 @ case 421
	.4byte .L0804C950 @ case 422
	.4byte .L0804C970 @ case 423
	.4byte .L0804C990 @ case 424
	.4byte .L0804C9B0 @ case 425
	.4byte .L0804C9D0 @ case 426
	.4byte .L0804C9F0 @ case 427
	.4byte .L0804CA04 @ case 428
	.4byte .L0804CA28 @ case 429
	.4byte .L0804CA48 @ case 430
	.4byte .L0804CA68 @ case 431
	.4byte .L0804CA88 @ case 432
	.4byte .L0804CAC0 @ case 433
	.4byte .L0804CAE0 @ case 434
	.4byte .L0804CB00 @ case 435
	.4byte .L0804CB1C @ case 436
	.4byte .L0804CB40 @ case 437
	.4byte .L0804CB60 @ case 438
	.4byte .L0804CB80 @ case 439
	.4byte .L0804CBA0 @ case 440
	.4byte .L0804CBB4 @ case 441
	.4byte .L0804CBD0 @ case 442
	.4byte .L0804CBF4 @ case 443
	.4byte .L0804CC14 @ case 444
	.4byte .L0804CC34 @ case 445
	.4byte .L0804CC54 @ case 446
	.4byte .L0804CC74 @ case 447
	.4byte .L0804CC94 @ case 448
	.4byte .L0804CCA8 @ case 449
	.4byte .L0804CCC4 @ case 450
	.4byte .L0804CCE8 @ case 451
	.4byte .L0804CD08 @ case 452
	.4byte .L0804CD28 @ case 453
	.4byte .L0804CD48 @ case 454
	.4byte .L0804CD68 @ case 455
	.4byte .L0804CD78 @ case 456
	.4byte .L0804CD98 @ case 457
	.4byte .L0804CDD0 @ case 458
	.4byte .L0804CDF0 @ case 459
	.4byte .L0804CE00 @ case 460
	.4byte .L0804CE20 @ case 461
	.4byte .L0804CE58 @ case 462
	.4byte .L0804CE78 @ case 463
	.4byte .L0804CEA0 @ case 464
	.4byte .L0804CEC0 @ case 465
	.4byte .L0804CEF4 @ case 466
	.4byte .L0804CF14 @ case 467
	.4byte .L0804CF34 @ case 468
	.4byte .L0804CF54 @ case 469
	.4byte .L0804CF74 @ case 470
	.4byte .L0804CF94 @ case 471
	.4byte .L0804CFA8 @ case 472
	.4byte .L0804CFC4 @ case 473
	.4byte .L0804CFE8 @ case 474
	.4byte .L0804D008 @ case 475
	.4byte .L0804D028 @ case 476
	.4byte .L0804D048 @ case 477
	.4byte .L0804D068 @ case 478
	.4byte .L0804D088 @ case 479
	.4byte .L0804D09C @ case 480
	.4byte .L0804D0BC @ case 481
	.4byte .L0804D0DC @ case 482
	.4byte .L0804D118 @ case 483
	.4byte .L0804D138 @ case 484
	.4byte .L0804D158 @ case 485
	.4byte .L0804D178 @ case 486
	.4byte .L0804D18C @ case 487
	.4byte .L0804D1A8 @ case 488
	.4byte .L0804D1CC @ case 489
	.4byte .L0804D1EC @ case 490
	.4byte .L0804D20C @ case 491
	.4byte .L0804D22C @ case 492
	.4byte .L0804D24C @ case 493
	.4byte .L0804D26C @ case 494
	.4byte .L0804D280 @ case 495
	.4byte .L0804D29C @ case 496
	.4byte .L0804D2C0 @ case 497
	.4byte .L0804D2E8 @ case 498
	.4byte .L0804D308 @ case 499
	.4byte .L0804D328 @ case 500
	.4byte .L0804D348 @ case 501
	.4byte .L0804D368 @ case 502
	.4byte .L0804D388 @ case 503
	.4byte .L0804D398 @ case 504
	.4byte .L0804D3B0 @ case 505
	.4byte .L0804D3D0 @ case 506
	.4byte .L0804D3F0 @ case 507
	.4byte .L0804D410 @ case 508
	.4byte .L0804D428 @ case 509
	.4byte .L0804D448 @ case 510
	.4byte .L0804D468 @ case 511
	.4byte .L0804D488 @ case 512
	.4byte .L0804D4A0 @ case 513
	.4byte .L0804D4C0 @ case 514
	.4byte .L0804D4E0 @ case 515
	.4byte .L0804D500 @ case 516
	.4byte .L0804D518 @ case 517
	.4byte .L0804D538 @ case 518
	.4byte .L0804D558 @ case 519
	.4byte .L0804D578 @ case 520
	.4byte .L0804D590 @ case 521
	.4byte .L0804D5B0 @ case 522
	.4byte .L0804D5D0 @ case 523
	.4byte .L0804D5F0 @ case 524
	.4byte .L0804D608 @ case 525
	.4byte .L0804D628 @ case 526
	.4byte .L0804D648 @ case 527
	.4byte .L0804D668 @ case 528
	.4byte .L0804D680 @ case 529
	.4byte .L0804D6A0 @ case 530
	.4byte .L0804D6C0 @ case 531
	.4byte .L0804D6E0 @ case 532
	.4byte .L0804D6F8 @ case 533
	.4byte .L0804D718 @ case 534
	.4byte .L0804D738 @ case 535
	.4byte .L0804D758 @ case 536
	.4byte .L0804D770 @ case 537
	.4byte .L0804D790 @ case 538
	.4byte .L0804D7B0 @ case 539
	.4byte .L0804D7D0 @ case 540
	.4byte .L0804D7E8 @ case 541
	.4byte .L0804D808 @ case 542
	.4byte .L0804D828 @ case 543
	.4byte .L0804D848 @ case 544
	.4byte .L0804D868 @ case 545
	.4byte .L0804D888 @ case 546
	.4byte .L0804D8A0 @ case 547
	.4byte .L0804D8C0 @ case 548
	.4byte .L0804D8E0 @ case 549
	.4byte .L0804D900 @ case 550
	.4byte .L0804D910 @ case 551
	.4byte .L0804D928 @ case 552
	.4byte .L0804D948 @ case 553
	.4byte .L0804D968 @ case 554
	.4byte .L0804D988 @ case 555
	.4byte .L0804D9A8 @ case 556
	.4byte .L0804D9C8 @ case 557
	.4byte .L0804D9D8 @ case 558
	.4byte .L0804D9F0 @ case 559
	.4byte .L0804DA10 @ case 560
	.4byte .L08049B78 @ case 561
.L080498FC:
	cmp r6, #0
	beq .L08049904
	bl .L0804DA2E
.L08049904:
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r0, [r4]
	adds r0, #0x14
	bl GetUnkFlag11__C4Farm
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0804991C
	bl .L0804DA2E
.L0804991C:
	ldr r0, [r4]
	adds r0, #0x14
	bl method_08009C60__4Farm
	bl .L0804DA2E
.L08049928:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [r4]
	adds r0, #0x14
	bl GetUnk10__C4Farm
	subs r1, r6, r0
	cmp r1, #0
	blt .L08049948
	ldr r0, [r4]
	adds r0, #0x14
	bl method_08009B68__4FarmUi
	bl .L0804DA2E
.L08049948:
	ldr r0, [r4]
	adds r0, #0x14
	rsbs r1, r1, #0
	bl method_08009BAC__4FarmUi
	bl .L0804DA2E
.L08049956:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r0, [r4]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetStoredBushelCount__C4Barn
	subs r1, r6, r0
	cmp r1, #0
	blt .L0804997E
	ldr r0, [r4]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl AddStoredBushels__4BarnUi
	bl .L0804DA2E
.L0804997E:
	ldr r0, [r4]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	rsbs r1, r1, #0
	bl SubtractStoredBushels__4BarnUi
	bl .L0804DA2E
.L08049990:
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r0, [r4]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetStoredBushelCount__C4Coop
	subs r1, r6, r0
	cmp r1, #0
	blt .L080499B8
	ldr r0, [r4]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl AddStoredBushels__4CoopUi
	bl .L0804DA2E
.L080499B8:
	ldr r0, [r4]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	rsbs r1, r1, #0
	bl SubtractStoredBushels__4CoopUi
	bl .L0804DA2E
.L080499CA:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	rsbs r0, r6, #0
	orrs r0, r6
	lsrs r0, r0, #0x1f
	ldr r2, .L080499E0 @ =0x00002148
	adds r1, r1, r2
	bl .L0804DA2C
	.align 2, 0
.L080499E0: .4byte 0x00002148
.L080499E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r2, .L08049A20 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0A04
	adds r4, r0, #0
	cmp r4, #0
	bne .L080499FE
	bl .L0804DA2E
.L080499FE:
	cmp r6, #0
	bne .L08049A06
	bl .L0804DA2E
.L08049A06:
	bl func_0809EAE0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08049A14
	bl .L0804DA2E
.L08049A14:
	adds r0, r4, #0
	bl func_0809EAEC
	bl .L0804DA2E
	.align 2, 0
.L08049A20: .4byte 0x00001CD4
.L08049A24:
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r0, [r4]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl HasVase__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08049A40
	bl .L0804DA2E
.L08049A40:
	cmp r6, #0
	bne .L08049A48
	bl .L0804DA2E
.L08049A48:
	ldr r0, [r4]
	adds r0, r0, r5
	bl AddVase__9FarmHouse
	bl .L0804DA2E
.L08049A54:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r2, [r0]
	ldr r0, .L08049A8C @ =0x0000219C
	adds r2, r2, r0
	movs r0, #1
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	beq .L08049A90
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049A88
	bl .L0804DA2E
.L08049A88:
	movs r1, #4
	b .L08049B0A
	.align 2, 0
.L08049A8C: .4byte 0x0000219C
.L08049A90:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049AA0
	bl .L0804DA2E
.L08049AA0:
	movs r1, #4
	bl func_080168D4
	bl .L0804DA2E
.L08049AAA:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r2, [r0]
	ldr r0, .L08049AD0 @ =0x0000219A
	adds r2, r2, r0
	movs r0, #1
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #1
	ldrb r3, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	bne .L08049AF8
	b .L08049B18
	.align 2, 0
.L08049AD0: .4byte 0x0000219A
.L08049AD4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r2, [r0]
	ldr r0, .L08049B14 @ =0x000021A1
	adds r2, r2, r0
	movs r0, #1
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	beq .L08049B18
.L08049AF8:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049B08
	bl .L0804DA2E
.L08049B08:
	movs r1, #0
.L08049B0A:
	movs r2, #0
	bl func_08016834
	bl .L0804DA2E
	.align 2, 0
.L08049B14: .4byte 0x000021A1
.L08049B18:
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049B28
	bl .L0804DA2E
.L08049B28:
	movs r1, #0
	bl func_080168D4
	bl .L0804DA2E
.L08049B32:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl AddStocking__9FarmHouse
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	b .L08049B66
.L08049B4C:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r6, #0
	bl SetStockingArticleId__9FarmHouseUi
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r7, r2
.L08049B66:
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049B70
	bl .L0804DA2E
.L08049B70:
	bl func_08016C10
	bl .L0804DA2E
.L08049B78:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r2, .L08049B90 @ =0x00001CD4
	adds r0, r0, r2
	adds r1, r6, #0
	bl func_080A03A4
	bl .L0804DA2E
	.align 2, 0
.L08049B90: .4byte 0x00001CD4
.L08049B94:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r2, [r0]
	ldr r0, .L08049BDC @ =0x0000219A
	adds r2, r2, r0
	movs r0, #1
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	bne .L08049BBC
	bl .L0804DA2E
.L08049BBC:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049BCC
	bl .L0804DA2E
.L08049BCC:
	movs r1, #0
	bl func_08016AFC
	adds r2, r0, #0
	adds r0, r7, #0
	movs r1, #0
	b .L08049D4C
	.align 2, 0
.L08049BDC: .4byte 0x0000219A
.L08049BE0:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r0, .L08049C20 @ =0x0000219C
	adds r1, r1, r0
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	cmp r6, #0
	bne .L08049C00
	bl .L0804DA2E
.L08049C00:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049C10
	bl .L0804DA2E
.L08049C10:
	movs r1, #4
	bl func_08016AFC
	adds r2, r0, #0
	adds r0, r7, #0
	movs r1, #4
	b .L08049D4C
	.align 2, 0
.L08049C20: .4byte 0x0000219C
.L08049C24:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r2, [r0]
	ldr r0, .L08049C6C @ =0x0000219D
	adds r2, r2, r0
	movs r0, #1
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #5
	ldrb r3, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	bne .L08049C4C
	bl .L0804DA2E
.L08049C4C:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049C5C
	bl .L0804DA2E
.L08049C5C:
	movs r1, #3
	bl func_08016AFC
	adds r2, r0, #0
	adds r0, r7, #0
	movs r1, #3
	b .L08049D4C
	.align 2, 0
.L08049C6C: .4byte 0x0000219D
.L08049C70:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r2, [r0]
	ldr r0, .L08049CB8 @ =0x0000219E
	adds r2, r2, r0
	movs r0, #1
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #3
	ldrb r3, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	bne .L08049C98
	bl .L0804DA2E
.L08049C98:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049CA8
	bl .L0804DA2E
.L08049CA8:
	movs r1, #1
	bl func_08016AFC
	adds r2, r0, #0
	adds r0, r7, #0
	movs r1, #1
	b .L08049D4C
	.align 2, 0
.L08049CB8: .4byte 0x0000219E
.L08049CBC:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r2, [r0]
	ldr r0, .L08049D04 @ =0x000021A1
	adds r2, r2, r0
	movs r0, #1
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #5
	ldrb r3, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	bne .L08049CE4
	bl .L0804DA2E
.L08049CE4:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049CF4
	bl .L0804DA2E
.L08049CF4:
	movs r1, #0
	bl func_08016AFC
	adds r2, r0, #0
	adds r0, r7, #0
	movs r1, #0
	b .L08049D4C
	.align 2, 0
.L08049D04: .4byte 0x000021A1
.L08049D08:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r2, [r0]
	ldr r0, .L08049D60 @ =0x000021A2
	adds r2, r2, r0
	movs r0, #1
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #3
	ldrb r3, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	bne .L08049D30
	bl .L0804DA2E
.L08049D30:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08049D40
	bl .L0804DA2E
.L08049D40:
	movs r1, #2
	bl func_08016AFC
	adds r2, r0, #0
	adds r0, r7, #0
	movs r1, #2
.L08049D4C:
	bl func_0804E3D8
	cmp r0, #0
	bne .L08049D58
	bl .L0804DA2E
.L08049D58:
	bl SetFestivalWinner__6Animal
	bl .L0804DA2E
	.align 2, 0
.L08049D60: .4byte 0x000021A2
.L08049D64:
	movs r0, #1
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x46
	movs r2, #0x13
	b .L0804A1B8
.L08049D76:
	movs r0, #2
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x47
	movs r2, #0x13
	b .L0804A1B8
.L08049D88:
	movs r0, #3
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x49
	movs r2, #0x13
	b .L0804A1B8
.L08049D9A:
	movs r0, #4
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x4a
	movs r2, #0x13
	b .L0804A1B8
.L08049DAC:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x4b
	movs r2, #0x13
	b .L0804A1B8
.L08049DBE:
	movs r0, #6
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x4c
	movs r2, #0x13
	b .L0804A1B8
.L08049DD0:
	movs r0, #1
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x4e
	movs r2, #3
	b .L0804A1B8
.L08049DE2:
	movs r0, #2
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x4f
	movs r2, #3
	b .L0804A1B8
.L08049DF4:
	movs r0, #3
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x50
	movs r2, #3
	b .L0804A1B8
.L08049E06:
	movs r0, #4
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x52
	movs r2, #3
	b .L0804A1B8
.L08049E18:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x54
	movs r2, #3
	b .L0804A1B8
.L08049E2A:
	movs r0, #6
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x55
	movs r2, #3
	b .L0804A1B8
.L08049E3C:
	movs r0, #1
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x57
	movs r2, #0x19
	b .L0804A1B8
.L08049E4E:
	movs r0, #2
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x58
	movs r2, #0x19
	b .L0804A1B8
.L08049E60:
	movs r0, #3
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x5a
	movs r2, #0x19
	b .L0804A1B8
.L08049E72:
	movs r0, #4
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x5c
	movs r2, #0x19
	b .L0804A1B8
.L08049E84:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x5e
	movs r2, #0x19
	b .L0804A1B8
.L08049E96:
	movs r0, #6
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x5f
	movs r2, #0x19
	b .L0804A1B8
.L08049EA8:
	movs r0, #1
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x61
	movs r2, #0xc
	b .L0804A1B8
.L08049EBA:
	movs r0, #2
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x62
	movs r2, #0xc
	b .L0804A1B8
.L08049ECC:
	movs r0, #3
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x64
	movs r2, #0xc
	b .L0804A1B8
.L08049EDE:
	movs r0, #4
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x65
	movs r2, #0xc
	b .L0804A1B8
.L08049EF0:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x66
	movs r2, #0xc
	b .L0804A1B8
.L08049F02:
	movs r0, #6
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x67
	movs r2, #0xc
	b .L0804A1B8
.L08049F14:
	movs r0, #1
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x69
	b .L0804A1B6
.L08049F24:
	movs r0, #2
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x6a
	b .L0804A1B6
.L08049F34:
	movs r0, #3
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x6b
	b .L0804A1B6
.L08049F44:
	movs r0, #4
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x6d
	b .L0804A1B6
.L08049F54:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x6e
	b .L0804A1B6
.L08049F64:
	movs r0, #6
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x6f
	b .L0804A1B6
.L08049F74:
	movs r1, #0xb9
	lsls r1, r1, #1
	movs r0, #5
	str r0, [sp]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	adds r0, r7, #0
	movs r2, #0x1f
	b .L0804A1B8
.L08049F88:
	ldr r1, .L08049F9C @ =0x00000173
	movs r0, #6
	str r0, [sp]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	adds r0, r7, #0
	movs r2, #0x1f
	b .L0804A1B8
	.align 2, 0
.L08049F9C: .4byte 0x00000173
.L08049FA0:
	movs r1, #1
	str r1, [sp]
	add r0, sp, #4
	strb r1, [r0]
	adds r0, r7, #0
	movs r1, #0x71
	movs r2, #0x13
	b .L0804A1B8
.L08049FB0:
	movs r0, #2
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x72
	movs r2, #0x13
	b .L0804A1B8
.L08049FC2:
	movs r0, #3
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x73
	movs r2, #0x13
	b .L0804A1B8
.L08049FD4:
	movs r0, #4
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x74
	movs r2, #0x13
	b .L0804A1B8
.L08049FE6:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x75
	movs r2, #0x13
	b .L0804A1B8
.L08049FF8:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x76
	movs r2, #0x13
	b .L0804A1B8
.L0804A00A:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x77
	movs r2, #0x13
	b .L0804A1B8
.L0804A01C:
	movs r1, #1
	str r1, [sp]
	add r0, sp, #4
	strb r1, [r0]
	adds r0, r7, #0
	movs r1, #0x7a
	movs r2, #3
	b .L0804A1B8
.L0804A02C:
	movs r0, #2
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x7b
	movs r2, #3
	b .L0804A1B8
.L0804A03E:
	movs r0, #3
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x7c
	movs r2, #3
	b .L0804A1B8
.L0804A050:
	movs r0, #4
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x7d
	movs r2, #3
	b .L0804A1B8
.L0804A062:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x7e
	movs r2, #3
	b .L0804A1B8
.L0804A074:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x7f
	movs r2, #3
	b .L0804A1B8
.L0804A086:
	movs r1, #1
	str r1, [sp]
	add r0, sp, #4
	strb r1, [r0]
	adds r0, r7, #0
	movs r1, #0x82
	movs r2, #0x19
	b .L0804A1B8
.L0804A096:
	movs r0, #2
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x83
	movs r2, #0x19
	b .L0804A1B8
.L0804A0A8:
	movs r0, #3
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x84
	movs r2, #0x19
	b .L0804A1B8
.L0804A0BA:
	movs r0, #4
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x85
	movs r2, #0x19
	b .L0804A1B8
.L0804A0CC:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x86
	movs r2, #0x19
	b .L0804A1B8
.L0804A0DE:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x87
	movs r2, #0x19
	b .L0804A1B8
.L0804A0F0:
	movs r1, #1
	str r1, [sp]
	add r0, sp, #4
	strb r1, [r0]
	adds r0, r7, #0
	movs r1, #0x8a
	movs r2, #0xc
	b .L0804A1B8
.L0804A100:
	movs r0, #2
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x8b
	movs r2, #0xc
	b .L0804A1B8
.L0804A112:
	movs r0, #3
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x8c
	movs r2, #0xc
	b .L0804A1B8
.L0804A124:
	movs r0, #4
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x8d
	movs r2, #0xc
	b .L0804A1B8
.L0804A136:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x8e
	movs r2, #0xc
	b .L0804A1B8
.L0804A148:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x8f
	movs r2, #0xc
	b .L0804A1B8
.L0804A15A:
	movs r1, #1
	str r1, [sp]
	add r0, sp, #4
	strb r1, [r0]
	adds r0, r7, #0
	movs r1, #0x92
	b .L0804A1B6
.L0804A168:
	movs r0, #2
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x93
	b .L0804A1B6
.L0804A178:
	movs r0, #3
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x94
	b .L0804A1B6
.L0804A188:
	movs r0, #4
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x95
	b .L0804A1B6
.L0804A198:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x96
	b .L0804A1B6
.L0804A1A8:
	movs r0, #5
	str r0, [sp]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x97
.L0804A1B6:
	movs r2, #0x15
.L0804A1B8:
	adds r3, r6, #0
	bl func_08045638
	bl .L0804DA2E
.L0804A1C2:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r0, .L0804A1E0 @ =0x0000215A
	adds r1, r1, r0
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A1E0: .4byte 0x0000215A
.L0804A1E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A1FC @ =0x0000215A
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804A1FC: .4byte 0x0000215A
.L0804A200:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A21C @ =0x0000215B
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A21C: .4byte 0x0000215B
.L0804A220:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A238 @ =0x0000215B
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804A238: .4byte 0x0000215B
.L0804A23C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A258 @ =0x0000215C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A258: .4byte 0x0000215C
.L0804A25C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A27C @ =0x0000215A
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804A27C: .4byte 0x0000215A
.L0804A280:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A29C @ =0x0000215A
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A29C: .4byte 0x0000215A
.L0804A2A0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A2BC @ =0x0000215A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A2BC: .4byte 0x0000215A
.L0804A2C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A2E0 @ =0x0000215B
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804A2E0: .4byte 0x0000215B
.L0804A2E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A300 @ =0x0000215B
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A300: .4byte 0x0000215B
.L0804A304:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A320 @ =0x0000215B
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A320: .4byte 0x0000215B
.L0804A324:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A340 @ =0x0000215B
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A340: .4byte 0x0000215B
.L0804A344:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A364 @ =0x0000215C
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804A364: .4byte 0x0000215C
.L0804A368:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A384 @ =0x0000215C
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A384: .4byte 0x0000215C
.L0804A388:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A3A4 @ =0x0000215C
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A3A4: .4byte 0x0000215C
.L0804A3A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A3C0 @ =0x0000215C
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804A3C0: .4byte 0x0000215C
.L0804A3C4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A3E0 @ =0x0000215D
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A3E0: .4byte 0x0000215D
.L0804A3E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A400 @ =0x0000215D
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A400: .4byte 0x0000215D
.L0804A404:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A420 @ =0x0000215C
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A420: .4byte 0x0000215C
.L0804A424:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A434 @ =0x0000215C
	bl .L0804DA1A
	.align 2, 0
.L0804A434: .4byte 0x0000215C
.L0804A438:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A458 @ =0x0000215D
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804A458: .4byte 0x0000215D
.L0804A45C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A478 @ =0x0000215D
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A478: .4byte 0x0000215D
.L0804A47C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A498 @ =0x0000215D
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A498: .4byte 0x0000215D
.L0804A49C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A4B8 @ =0x0000215D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A4B8: .4byte 0x0000215D
.L0804A4BC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804A4D8 @ =0x0000215C
	adds r3, r3, r2
	movs r1, #3
	ands r1, r6
	lsls r1, r1, #0xf
	ldr r0, [r3]
	ldr r2, .L0804A4DC @ =0xFFFE7FFF
	bl .L0804CE8E
	.align 2, 0
.L0804A4D8: .4byte 0x0000215C
.L0804A4DC: .4byte 0xFFFE7FFF
.L0804A4E0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A4FC @ =0x0000215E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A4FC: .4byte 0x0000215E
.L0804A500:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A51C @ =0x0000215E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A51C: .4byte 0x0000215E
.L0804A520:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A53C @ =0x0000215E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A53C: .4byte 0x0000215E
.L0804A540:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A55C @ =0x0000215E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804A560 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804A55C: .4byte 0x0000215E
.L0804A560: .4byte 0xFFFFFE7F
.L0804A564:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A580 @ =0x0000215F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A580: .4byte 0x0000215F
.L0804A584:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A5A0 @ =0x0000215F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A5A0: .4byte 0x0000215F
.L0804A5A4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A5C0 @ =0x0000215F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A5C0: .4byte 0x0000215F
.L0804A5C4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r5, #1
	adds r1, r6, #0
	ands r1, r5
	ldr r2, .L0804A5F4 @ =0x0000215F
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	ldr r0, .L0804A5F8 @ =0x00002160
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	bl .L0804D106
	.align 2, 0
.L0804A5F4: .4byte 0x0000215F
.L0804A5F8: .4byte 0x00002160
.L0804A5FC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A618 @ =0x00002160
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A618: .4byte 0x00002160
.L0804A61C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A638 @ =0x00002160
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A638: .4byte 0x00002160
.L0804A63C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A658 @ =0x00002160
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A658: .4byte 0x00002160
.L0804A65C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A678 @ =0x00002160
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804A67C @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804A678: .4byte 0x00002160
.L0804A67C: .4byte 0xFFFFFE7F
.L0804A680:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A69C @ =0x00002161
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A69C: .4byte 0x00002161
.L0804A6A0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A6BC @ =0x00002161
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A6BC: .4byte 0x00002161
.L0804A6C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A6DC @ =0x00002161
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A6DC: .4byte 0x00002161
.L0804A6E0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804A6FC @ =0x00002160
	adds r3, r3, r2
	movs r1, #3
	ands r1, r6
	lsls r1, r1, #0xf
	ldr r0, [r3]
	ldr r2, .L0804A700 @ =0xFFFE7FFF
	bl .L0804CE8E
	.align 2, 0
.L0804A6FC: .4byte 0x00002160
.L0804A700: .4byte 0xFFFE7FFF
.L0804A704:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A720 @ =0x00002162
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A720: .4byte 0x00002162
.L0804A724:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A740 @ =0x00002162
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A740: .4byte 0x00002162
.L0804A744:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A760 @ =0x00002162
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A760: .4byte 0x00002162
.L0804A764:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A780 @ =0x00002162
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804A784 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804A780: .4byte 0x00002162
.L0804A784: .4byte 0xFFFFFE7F
.L0804A788:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A7A4 @ =0x00002163
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A7A4: .4byte 0x00002163
.L0804A7A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A7C4 @ =0x00002163
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A7C4: .4byte 0x00002163
.L0804A7C8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A7E4 @ =0x00002163
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A7E4: .4byte 0x00002163
.L0804A7E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r5, #1
	adds r1, r6, #0
	ands r1, r5
	ldr r2, .L0804A818 @ =0x00002163
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	ldr r0, .L0804A81C @ =0x00002164
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	bl .L0804D106
	.align 2, 0
.L0804A818: .4byte 0x00002163
.L0804A81C: .4byte 0x00002164
.L0804A820:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A83C @ =0x00002164
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A83C: .4byte 0x00002164
.L0804A840:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A85C @ =0x00002164
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A85C: .4byte 0x00002164
.L0804A860:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A87C @ =0x00002164
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A87C: .4byte 0x00002164
.L0804A880:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A89C @ =0x00002164
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804A8A0 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804A89C: .4byte 0x00002164
.L0804A8A0: .4byte 0xFFFFFE7F
.L0804A8A4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A8C0 @ =0x00002165
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A8C0: .4byte 0x00002165
.L0804A8C4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A8E0 @ =0x00002165
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A8E0: .4byte 0x00002165
.L0804A8E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A900 @ =0x00002165
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A900: .4byte 0x00002165
.L0804A904:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804A920 @ =0x00002164
	adds r3, r3, r2
	movs r1, #3
	ands r1, r6
	lsls r1, r1, #0xf
	ldr r0, [r3]
	ldr r2, .L0804A924 @ =0xFFFE7FFF
	bl .L0804CE8E
	.align 2, 0
.L0804A920: .4byte 0x00002164
.L0804A924: .4byte 0xFFFE7FFF
.L0804A928:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A944 @ =0x00002166
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A944: .4byte 0x00002166
.L0804A948:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A964 @ =0x00002166
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A964: .4byte 0x00002166
.L0804A968:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A984 @ =0x00002166
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A984: .4byte 0x00002166
.L0804A988:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A9A4 @ =0x00002166
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804A9A8 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804A9A4: .4byte 0x00002166
.L0804A9A8: .4byte 0xFFFFFE7F
.L0804A9AC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A9C8 @ =0x00002167
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A9C8: .4byte 0x00002167
.L0804A9CC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804A9E8 @ =0x00002167
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804A9E8: .4byte 0x00002167
.L0804A9EC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AA08 @ =0x00002167
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AA08: .4byte 0x00002167
.L0804AA0C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r5, #1
	adds r1, r6, #0
	ands r1, r5
	ldr r2, .L0804AA3C @ =0x00002167
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	ldr r0, .L0804AA40 @ =0x00002168
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	bl .L0804D106
	.align 2, 0
.L0804AA3C: .4byte 0x00002167
.L0804AA40: .4byte 0x00002168
.L0804AA44:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AA60 @ =0x00002168
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AA60: .4byte 0x00002168
.L0804AA64:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AA80 @ =0x00002168
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AA80: .4byte 0x00002168
.L0804AA84:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AAA0 @ =0x00002168
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AAA0: .4byte 0x00002168
.L0804AAA4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AAC0 @ =0x00002168
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804AAC4 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804AAC0: .4byte 0x00002168
.L0804AAC4: .4byte 0xFFFFFE7F
.L0804AAC8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AAE8 @ =0x00002197
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804AAE8: .4byte 0x00002197
.L0804AAEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AB08 @ =0x00002169
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AB08: .4byte 0x00002169
.L0804AB0C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AB28 @ =0x00002169
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AB28: .4byte 0x00002169
.L0804AB2C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AB48 @ =0x00002169
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AB48: .4byte 0x00002169
.L0804AB4C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804AB68 @ =0x00002168
	adds r3, r3, r2
	movs r1, #3
	ands r1, r6
	lsls r1, r1, #0xf
	ldr r0, [r3]
	ldr r2, .L0804AB6C @ =0xFFFE7FFF
	bl .L0804CE8E
	.align 2, 0
.L0804AB68: .4byte 0x00002168
.L0804AB6C: .4byte 0xFFFE7FFF
.L0804AB70:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AB8C @ =0x0000216A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AB8C: .4byte 0x0000216A
.L0804AB90:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804ABAC @ =0x0000216A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804ABAC: .4byte 0x0000216A
.L0804ABB0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804ABCC @ =0x0000216A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804ABCC: .4byte 0x0000216A
.L0804ABD0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804ABEC @ =0x0000216A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804ABF0 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804ABEC: .4byte 0x0000216A
.L0804ABF0: .4byte 0xFFFFFE7F
.L0804ABF4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AC10 @ =0x0000216B
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AC10: .4byte 0x0000216B
.L0804AC14:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AC30 @ =0x0000216B
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AC30: .4byte 0x0000216B
.L0804AC34:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AC50 @ =0x0000216B
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AC50: .4byte 0x0000216B
.L0804AC54:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r5, #1
	adds r1, r6, #0
	ands r1, r5
	ldr r2, .L0804AC84 @ =0x0000216B
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	ldr r0, .L0804AC88 @ =0x0000216C
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	bl .L0804D106
	.align 2, 0
.L0804AC84: .4byte 0x0000216B
.L0804AC88: .4byte 0x0000216C
.L0804AC8C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804ACA8 @ =0x0000216C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804ACA8: .4byte 0x0000216C
.L0804ACAC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804ACC8 @ =0x0000216C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804ACC8: .4byte 0x0000216C
.L0804ACCC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804ACE8 @ =0x0000216C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804ACE8: .4byte 0x0000216C
.L0804ACEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AD08 @ =0x0000216C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804AD0C @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804AD08: .4byte 0x0000216C
.L0804AD0C: .4byte 0xFFFFFE7F
.L0804AD10:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AD2C @ =0x0000216D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AD2C: .4byte 0x0000216D
.L0804AD30:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AD4C @ =0x0000216D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AD4C: .4byte 0x0000216D
.L0804AD50:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AD6C @ =0x0000216D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AD6C: .4byte 0x0000216D
.L0804AD70:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804AD8C @ =0x0000216C
	adds r3, r3, r2
	movs r1, #3
	ands r1, r6
	lsls r1, r1, #0xf
	ldr r0, [r3]
	ldr r2, .L0804AD90 @ =0xFFFE7FFF
	bl .L0804CE8E
	.align 2, 0
.L0804AD8C: .4byte 0x0000216C
.L0804AD90: .4byte 0xFFFE7FFF
.L0804AD94:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804ADB0 @ =0x0000216E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804ADB0: .4byte 0x0000216E
.L0804ADB4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804ADD0 @ =0x0000216E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804ADD0: .4byte 0x0000216E
.L0804ADD4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r0, #0xf
	adds r1, r6, #0
	ands r1, r0
	ldr r2, .L0804ADFC @ =0x0000216F
	adds r4, r3, r2
	lsls r1, r1, #4
	ldrb r2, [r4]
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #4
	movs r0, #7
	ldr r2, .L0804AE00 @ =0x00002170
	bl .L0804D0FE
	.align 2, 0
.L0804ADFC: .4byte 0x0000216F
.L0804AE00: .4byte 0x00002170
.L0804AE04:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AE20 @ =0x00002170
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AE20: .4byte 0x00002170
.L0804AE24:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AE40 @ =0x00002170
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AE40: .4byte 0x00002170
.L0804AE44:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AE60 @ =0x00002170
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804AE64 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804AE60: .4byte 0x00002170
.L0804AE64: .4byte 0xFFFFFE7F
.L0804AE68:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AE84 @ =0x00002171
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AE84: .4byte 0x00002171
.L0804AE88:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AEA4 @ =0x00002171
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AEA4: .4byte 0x00002171
.L0804AEA8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AEC4 @ =0x00002171
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AEC4: .4byte 0x00002171
.L0804AEC8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AEE0 @ =0x00002171
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804AEE0: .4byte 0x00002171
.L0804AEE4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AF04 @ =0x00002172
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804AF04: .4byte 0x00002172
.L0804AF08:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AF24 @ =0x00002172
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AF24: .4byte 0x00002172
.L0804AF28:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AF44 @ =0x00002172
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AF44: .4byte 0x00002172
.L0804AF48:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AF60 @ =0x00002172
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804AF60: .4byte 0x00002172
.L0804AF64:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AF84 @ =0x00002173
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804AF84: .4byte 0x00002173
.L0804AF88:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AFA4 @ =0x00002173
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AFA4: .4byte 0x00002173
.L0804AFA8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AFC4 @ =0x00002173
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804AFC4: .4byte 0x00002173
.L0804AFC8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804AFE0 @ =0x00002173
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804AFE0: .4byte 0x00002173
.L0804AFE4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B004 @ =0x00002174
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B004: .4byte 0x00002174
.L0804B008:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B024 @ =0x00002174
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B024: .4byte 0x00002174
.L0804B028:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B044 @ =0x00002174
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B044: .4byte 0x00002174
.L0804B048:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B060 @ =0x00002174
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804B060: .4byte 0x00002174
.L0804B064:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B084 @ =0x00002175
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B084: .4byte 0x00002175
.L0804B088:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B0A4 @ =0x00002175
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B0A4: .4byte 0x00002175
.L0804B0A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B0C4 @ =0x00002175
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B0C4: .4byte 0x00002175
.L0804B0C8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B0E4 @ =0x00002175
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B0E4: .4byte 0x00002175
.L0804B0E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B0F8 @ =0x00002175
	bl .L0804DA1A
	.align 2, 0
.L0804B0F8: .4byte 0x00002175
.L0804B0FC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B114 @ =0x00002175
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804B114: .4byte 0x00002175
.L0804B118:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B138 @ =0x00002176
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B138: .4byte 0x00002176
.L0804B13C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B158 @ =0x00002176
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B158: .4byte 0x00002176
.L0804B15C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B178 @ =0x00002176
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B178: .4byte 0x00002176
.L0804B17C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B198 @ =0x00002176
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B198: .4byte 0x00002176
.L0804B19C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B1B8 @ =0x00002176
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804B1BC @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804B1B8: .4byte 0x00002176
.L0804B1BC: .4byte 0xFFFFFE7F
.L0804B1C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B1DC @ =0x00002177
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B1DC: .4byte 0x00002177
.L0804B1E0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B1FC @ =0x00002177
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B1FC: .4byte 0x00002177
.L0804B200:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B21C @ =0x00002177
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B21C: .4byte 0x00002177
.L0804B220:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B238 @ =0x00002177
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804B238: .4byte 0x00002177
.L0804B23C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B25C @ =0x00002178
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B25C: .4byte 0x00002178
.L0804B260:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B27C @ =0x00002178
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B27C: .4byte 0x00002178
.L0804B280:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B29C @ =0x00002178
	adds r1, r1, r2
	movs r0, #7
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x39
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B29C: .4byte 0x00002178
.L0804B2A0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B2B8 @ =0x00002178
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804B2B8: .4byte 0x00002178
.L0804B2BC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B2DC @ =0x00002179
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B2DC: .4byte 0x00002179
.L0804B2E0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B2FC @ =0x00002179
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B2FC: .4byte 0x00002179
.L0804B300:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B31C @ =0x00002179
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B31C: .4byte 0x00002179
.L0804B320:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804B33C @ =0x00002178
	adds r3, r3, r2
	movs r1, #0xf
	ands r1, r6
	lsls r1, r1, #0xe
	ldr r0, [r3]
	ldr r2, .L0804B340 @ =0xFFFC3FFF
	bl .L0804CE8E
	.align 2, 0
.L0804B33C: .4byte 0x00002178
.L0804B340: .4byte 0xFFFC3FFF
.L0804B344:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B360 @ =0x0000217A
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B360: .4byte 0x0000217A
.L0804B364:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B380 @ =0x0000217A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B380: .4byte 0x0000217A
.L0804B384:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B3A0 @ =0x0000217A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B3A0: .4byte 0x0000217A
.L0804B3A4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B3BC @ =0x0000217A
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804B3BC: .4byte 0x0000217A
.L0804B3C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B3E0 @ =0x0000217B
	adds r1, r1, r2
	movs r0, #0x1f
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B3E0: .4byte 0x0000217B
.L0804B3E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B400 @ =0x0000217B
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B400: .4byte 0x0000217B
.L0804B404:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r5, #1
	adds r1, r6, #0
	ands r1, r5
	ldr r2, .L0804B434 @ =0x0000217B
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	ldr r0, .L0804B438 @ =0x0000217C
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	bl .L0804D106
	.align 2, 0
.L0804B434: .4byte 0x0000217B
.L0804B438: .4byte 0x0000217C
.L0804B43C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B458 @ =0x0000217C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B458: .4byte 0x0000217C
.L0804B45C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B478 @ =0x0000217C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B478: .4byte 0x0000217C
.L0804B47C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B498 @ =0x0000217C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B498: .4byte 0x0000217C
.L0804B49C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B4B4 @ =0x0000217C
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804B4B4: .4byte 0x0000217C
.L0804B4B8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B4D8 @ =0x0000217D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B4D8: .4byte 0x0000217D
.L0804B4DC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B4F8 @ =0x0000217D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B4F8: .4byte 0x0000217D
.L0804B4FC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B518 @ =0x0000217D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B518: .4byte 0x0000217D
.L0804B51C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B534 @ =0x0000217D
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804B534: .4byte 0x0000217D
.L0804B538:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B558 @ =0x0000217E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B558: .4byte 0x0000217E
.L0804B55C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B578 @ =0x0000217E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B578: .4byte 0x0000217E
.L0804B57C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B598 @ =0x0000217E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B598: .4byte 0x0000217E
.L0804B59C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B5B4 @ =0x0000217E
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804B5B4: .4byte 0x0000217E
.L0804B5B8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B5D8 @ =0x0000217F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B5D8: .4byte 0x0000217F
.L0804B5DC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B5F8 @ =0x0000217F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B5F8: .4byte 0x0000217F
.L0804B5FC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B618 @ =0x0000217F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B618: .4byte 0x0000217F
.L0804B61C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B634 @ =0x0000217F
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804B634: .4byte 0x0000217F
.L0804B638:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0x86
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
.L0804B658:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0x86
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
.L0804B676:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0x86
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
.L0804B694:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0x86
	lsls r2, r2, #6
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
.L0804B6AC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B6CC @ =0x00002181
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B6CC: .4byte 0x00002181
.L0804B6D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B6EC @ =0x00002181
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B6EC: .4byte 0x00002181
.L0804B6F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B70C @ =0x00002181
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B70C: .4byte 0x00002181
.L0804B710:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B728 @ =0x00002181
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804B728: .4byte 0x00002181
.L0804B72C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B74C @ =0x00002182
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B74C: .4byte 0x00002182
.L0804B750:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B76C @ =0x00002182
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B76C: .4byte 0x00002182
.L0804B770:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B78C @ =0x00002182
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B78C: .4byte 0x00002182
.L0804B790:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B7AC @ =0x00002182
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B7AC: .4byte 0x00002182
.L0804B7B0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B7CC @ =0x00002182
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804B7D0 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804B7CC: .4byte 0x00002182
.L0804B7D0: .4byte 0xFFFFFE7F
.L0804B7D4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B7F0 @ =0x00002183
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B7F0: .4byte 0x00002183
.L0804B7F4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B810 @ =0x00002183
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B810: .4byte 0x00002183
.L0804B814:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B830 @ =0x00002183
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B830: .4byte 0x00002183
.L0804B834:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r5, #1
	adds r1, r6, #0
	ands r1, r5
	ldr r2, .L0804B864 @ =0x00002183
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	ldr r0, .L0804B868 @ =0x00002184
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	bl .L0804D106
	.align 2, 0
.L0804B864: .4byte 0x00002183
.L0804B868: .4byte 0x00002184
.L0804B86C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B888 @ =0x00002184
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B888: .4byte 0x00002184
.L0804B88C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B8A8 @ =0x00002184
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B8A8: .4byte 0x00002184
.L0804B8AC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B8C8 @ =0x00002184
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B8C8: .4byte 0x00002184
.L0804B8CC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B8E4 @ =0x00002184
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804B8E4: .4byte 0x00002184
.L0804B8E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B908 @ =0x00002185
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B908: .4byte 0x00002185
.L0804B90C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B928 @ =0x00002185
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B928: .4byte 0x00002185
.L0804B92C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B948 @ =0x00002185
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B948: .4byte 0x00002185
.L0804B94C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B964 @ =0x00002185
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804B964: .4byte 0x00002185
.L0804B968:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B988 @ =0x00002186
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804B988: .4byte 0x00002186
.L0804B98C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B9A8 @ =0x00002186
	adds r1, r1, r2
	movs r0, #7
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0x1d
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B9A8: .4byte 0x00002186
.L0804B9AC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B9C8 @ =0x00002186
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804B9C8: .4byte 0x00002186
.L0804B9CC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804B9E8 @ =0x00002186
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804B9EC @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804B9E8: .4byte 0x00002186
.L0804B9EC: .4byte 0xFFFFFE7F
.L0804B9F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BA0C @ =0x00002187
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BA0C: .4byte 0x00002187
.L0804BA10:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BA2C @ =0x00002187
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BA2C: .4byte 0x00002187
.L0804BA30:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BA4C @ =0x00002187
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BA4C: .4byte 0x00002187
.L0804BA50:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r5, #1
	adds r1, r6, #0
	ands r1, r5
	ldr r2, .L0804BA80 @ =0x00002187
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	ldr r0, .L0804BA84 @ =0x00002188
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	bl .L0804D106
	.align 2, 0
.L0804BA80: .4byte 0x00002187
.L0804BA84: .4byte 0x00002188
.L0804BA88:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BAA4 @ =0x00002188
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BAA4: .4byte 0x00002188
.L0804BAA8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BAC4 @ =0x00002188
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BAC4: .4byte 0x00002188
.L0804BAC8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BAE4 @ =0x00002188
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BAE4: .4byte 0x00002188
.L0804BAE8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BB04 @ =0x00002188
	adds r1, r1, r2
	movs r0, #7
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804BB08 @ =0xFFFFFC7F
	bl .L0804D2D6
	.align 2, 0
.L0804BB04: .4byte 0x00002188
.L0804BB08: .4byte 0xFFFFFC7F
.L0804BB0C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BB28 @ =0x00002189
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BB28: .4byte 0x00002189
.L0804BB2C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BB48 @ =0x00002189
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BB48: .4byte 0x00002189
.L0804BB4C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804BB68 @ =0x00002188
	adds r3, r3, r2
	movs r1, #0xf
	ands r1, r6
	lsls r1, r1, #0xe
	ldr r0, [r3]
	ldr r2, .L0804BB6C @ =0xFFFC3FFF
	bl .L0804CE8E
	.align 2, 0
.L0804BB68: .4byte 0x00002188
.L0804BB6C: .4byte 0xFFFC3FFF
.L0804BB70:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BB8C @ =0x0000218A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BB8C: .4byte 0x0000218A
.L0804BB90:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BBAC @ =0x0000218A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BBAC: .4byte 0x0000218A
.L0804BBB0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BBC8 @ =0x0000218A
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804BBC8: .4byte 0x0000218A
.L0804BBCC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BBEC @ =0x0000218B
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804BBEC: .4byte 0x0000218B
.L0804BBF0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BC0C @ =0x0000218B
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BC0C: .4byte 0x0000218B
.L0804BC10:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r1, #7
	ands r1, r6
	ldr r2, .L0804BC40 @ =0x0000218B
	adds r4, r3, r2
	lsls r1, r1, #5
	ldrb r2, [r4]
	movs r0, #0x1f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #3
	movs r0, #1
	ldr r2, .L0804BC44 @ =0x0000218C
	adds r3, r3, r2
	ands r1, r0
	ldrb r2, [r3]
	subs r0, #3
	bl .L0804D106
	.align 2, 0
.L0804BC40: .4byte 0x0000218B
.L0804BC44: .4byte 0x0000218C
.L0804BC48:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BC64 @ =0x0000218C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BC64: .4byte 0x0000218C
.L0804BC68:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BC84 @ =0x0000218C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BC84: .4byte 0x0000218C
.L0804BC88:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BCA4 @ =0x0000218C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BCA4: .4byte 0x0000218C
.L0804BCA8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BCC4 @ =0x0000218C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804BCC8 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804BCC4: .4byte 0x0000218C
.L0804BCC8: .4byte 0xFFFFFE7F
.L0804BCCC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BCE8 @ =0x0000218D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BCE8: .4byte 0x0000218D
.L0804BCEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BD08 @ =0x0000218D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BD08: .4byte 0x0000218D
.L0804BD0C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804BD28 @ =0x0000218C
	adds r3, r3, r2
	movs r1, #0xf
	ands r1, r6
	lsls r1, r1, #0xd
	ldr r0, [r3]
	ldr r2, .L0804BD2C @ =0xFFFE1FFF
	bl .L0804CE8E
	.align 2, 0
.L0804BD28: .4byte 0x0000218C
.L0804BD2C: .4byte 0xFFFE1FFF
.L0804BD30:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BD4C @ =0x0000218E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BD4C: .4byte 0x0000218E
.L0804BD50:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BD6C @ =0x0000218E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BD6C: .4byte 0x0000218E
.L0804BD70:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BD8C @ =0x0000218E
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BD8C: .4byte 0x0000218E
.L0804BD90:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BDA8 @ =0x0000218E
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804BDA8: .4byte 0x0000218E
.L0804BDAC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BDCC @ =0x0000218F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804BDCC: .4byte 0x0000218F
.L0804BDD0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BDEC @ =0x0000218F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BDEC: .4byte 0x0000218F
.L0804BDF0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BE0C @ =0x0000218F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BE0C: .4byte 0x0000218F
.L0804BE10:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BE28 @ =0x0000218F
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804BE28: .4byte 0x0000218F
.L0804BE2C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BE4C @ =0x00002190
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804BE4C: .4byte 0x00002190
.L0804BE50:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BE6C @ =0x00002190
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BE6C: .4byte 0x00002190
.L0804BE70:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BE8C @ =0x00002190
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BE8C: .4byte 0x00002190
.L0804BE90:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BEA8 @ =0x00002190
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804BEA8: .4byte 0x00002190
.L0804BEAC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BECC @ =0x00002191
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804BECC: .4byte 0x00002191
.L0804BED0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BEEC @ =0x00002191
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BEEC: .4byte 0x00002191
.L0804BEF0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BF0C @ =0x00002191
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BF0C: .4byte 0x00002191
.L0804BF10:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BF28 @ =0x00002191
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804BF28: .4byte 0x00002191
.L0804BF2C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BF4C @ =0x00002192
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804BF4C: .4byte 0x00002192
.L0804BF50:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BF6C @ =0x00002192
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BF6C: .4byte 0x00002192
.L0804BF70:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BF8C @ =0x00002192
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BF8C: .4byte 0x00002192
.L0804BF90:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BFA8 @ =0x00002192
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804BFA8: .4byte 0x00002192
.L0804BFAC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BFCC @ =0x00002193
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804BFCC: .4byte 0x00002193
.L0804BFD0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804BFEC @ =0x00002193
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804BFEC: .4byte 0x00002193
.L0804BFF0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C00C @ =0x00002193
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C00C: .4byte 0x00002193
.L0804C010:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C028 @ =0x00002193
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804C028: .4byte 0x00002193
.L0804C02C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C04C @ =0x00002194
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C04C: .4byte 0x00002194
.L0804C050:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C06C @ =0x00002194
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C06C: .4byte 0x00002194
.L0804C070:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C08C @ =0x00002194
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C08C: .4byte 0x00002194
.L0804C090:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C0A8 @ =0x00002194
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804C0A8: .4byte 0x00002194
.L0804C0AC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C0CC @ =0x00002195
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C0CC: .4byte 0x00002195
.L0804C0D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C0E8 @ =0x00002195
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804C0E8: .4byte 0x00002195
.L0804C0EC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C10C @ =0x00002196
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C10C: .4byte 0x00002196
.L0804C110:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C12C @ =0x00002196
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C12C: .4byte 0x00002196
.L0804C130:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C14C @ =0x00002196
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C14C: .4byte 0x00002196
.L0804C150:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C168 @ =0x00002196
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804C168: .4byte 0x00002196
.L0804C16C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C188 @ =0x00002197
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C188: .4byte 0x00002197
.L0804C18C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C1A8 @ =0x00002197
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C1A8: .4byte 0x00002197
.L0804C1AC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C1C4 @ =0x00002197
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804C1C4: .4byte 0x00002197
.L0804C1C8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C1E8 @ =0x00002198
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C1E8: .4byte 0x00002198
.L0804C1EC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C208 @ =0x00002198
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C208: .4byte 0x00002198
.L0804C20C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C228 @ =0x00002198
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C228: .4byte 0x00002198
.L0804C22C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C244 @ =0x00002198
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804C244: .4byte 0x00002198
.L0804C248:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C268 @ =0x00002199
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C268: .4byte 0x00002199
.L0804C26C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C288 @ =0x00002199
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C288: .4byte 0x00002199
.L0804C28C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C2A8 @ =0x00002199
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C2A8: .4byte 0x00002199
.L0804C2AC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C2C8 @ =0x00002199
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C2C8: .4byte 0x00002199
.L0804C2CC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C2E8 @ =0x00002199
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C2E8: .4byte 0x00002199
.L0804C2EC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C2FC @ =0x00002199
	bl .L0804DA1A
	.align 2, 0
.L0804C2FC: .4byte 0x00002199
.L0804C300:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804C31C @ =0x00002198
	adds r3, r3, r2
	movs r1, #3
	ands r1, r6
	lsls r1, r1, #0xf
	ldr r0, [r3]
	ldr r2, .L0804C320 @ =0xFFFE7FFF
	bl .L0804CE8E
	.align 2, 0
.L0804C31C: .4byte 0x00002198
.L0804C320: .4byte 0xFFFE7FFF
.L0804C324:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C340 @ =0x0000219A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C340: .4byte 0x0000219A
.L0804C344:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C360 @ =0x0000219A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C360: .4byte 0x0000219A
.L0804C364:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C380 @ =0x0000219A
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804C384 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804C380: .4byte 0x0000219A
.L0804C384: .4byte 0xFFFFFE7F
.L0804C388:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C3A4 @ =0x0000219B
	adds r1, r1, r2
	movs r0, #7
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #0xf
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C3A4: .4byte 0x0000219B
.L0804C3A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C3C4 @ =0x0000219B
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C3C4: .4byte 0x0000219B
.L0804C3C8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C3D8 @ =0x0000219B
	bl .L0804DA1A
	.align 2, 0
.L0804C3D8: .4byte 0x0000219B
.L0804C3DC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r1, #1
	ands r1, r6
	ldr r2, .L0804C40C @ =0x0000219B
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	movs r0, #3
	ldr r2, .L0804C410 @ =0x0000219C
	adds r3, r3, r2
	ands r1, r0
	ldrb r2, [r3]
	subs r0, #7
	bl .L0804D106
	.align 2, 0
.L0804C40C: .4byte 0x0000219B
.L0804C410: .4byte 0x0000219C
.L0804C414:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C430 @ =0x0000219C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C430: .4byte 0x0000219C
.L0804C434:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C450 @ =0x0000219C
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C450: .4byte 0x0000219C
.L0804C454:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C474 @ =0x0000219D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C474: .4byte 0x0000219D
.L0804C478:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C494 @ =0x0000219D
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C494: .4byte 0x0000219D
.L0804C498:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C4B4 @ =0x0000219D
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C4B4: .4byte 0x0000219D
.L0804C4B8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C4D0 @ =0x0000219D
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804C4D0: .4byte 0x0000219D
.L0804C4D4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C4F4 @ =0x0000219E
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C4F4: .4byte 0x0000219E
.L0804C4F8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C514 @ =0x0000219E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C514: .4byte 0x0000219E
.L0804C518:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C534 @ =0x0000219E
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C534: .4byte 0x0000219E
.L0804C538:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C554 @ =0x0000219E
	adds r1, r1, r2
	movs r0, #7
	ands r6, r0
	lsls r3, r6, #6
	ldrh r2, [r1]
	ldr r0, .L0804C558 @ =0xFFFFFE3F
	bl .L0804D2D6
	.align 2, 0
.L0804C554: .4byte 0x0000219E
.L0804C558: .4byte 0xFFFFFE3F
.L0804C55C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C578 @ =0x0000219F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C578: .4byte 0x0000219F
.L0804C57C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C598 @ =0x0000219F
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C598: .4byte 0x0000219F
.L0804C59C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C5B8 @ =0x0000219F
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C5B8: .4byte 0x0000219F
.L0804C5BC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C5D4 @ =0x0000219F
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804C5D4: .4byte 0x0000219F
.L0804C5D8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C5F8 @ =0x000021A0
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C5F8: .4byte 0x000021A0
.L0804C5FC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C618 @ =0x000021A0
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C618: .4byte 0x000021A0
.L0804C61C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C638 @ =0x000021A0
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C638: .4byte 0x000021A0
.L0804C63C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C658 @ =0x000021A0
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C658: .4byte 0x000021A0
.L0804C65C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C678 @ =0x000021A0
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C678: .4byte 0x000021A0
.L0804C67C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C698 @ =0x000021CA
	adds r1, r1, r2
	movs r0, #7
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804C69C @ =0xFFFFFC7F
	bl .L0804D2D6
	.align 2, 0
.L0804C698: .4byte 0x000021CA
.L0804C69C: .4byte 0xFFFFFC7F
.L0804C6A0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C6C0 @ =0x000021A1
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C6C0: .4byte 0x000021A1
.L0804C6C4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C6E0 @ =0x000021A1
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C6E0: .4byte 0x000021A1
.L0804C6E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C6FC @ =0x000021A1
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804C6FC: .4byte 0x000021A1
.L0804C700:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C720 @ =0x000021A2
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C720: .4byte 0x000021A2
.L0804C724:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C740 @ =0x000021A2
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C740: .4byte 0x000021A2
.L0804C744:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C760 @ =0x000021A2
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C760: .4byte 0x000021A2
.L0804C764:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C77C @ =0x000021A2
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	bl .L0804DA28
	.align 2, 0
.L0804C77C: .4byte 0x000021A2
.L0804C780:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C7A0 @ =0x000021A3
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C7A0: .4byte 0x000021A3
.L0804C7A4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C7C0 @ =0x000021A3
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C7C0: .4byte 0x000021A3
.L0804C7C4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C7E0 @ =0x000021A3
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C7E0: .4byte 0x000021A3
.L0804C7E4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C7F4 @ =0x000021A3
	bl .L0804DA1A
	.align 2, 0
.L0804C7F4: .4byte 0x000021A3
.L0804C7F8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r5, #1
	adds r1, r6, #0
	ands r1, r5
	ldr r2, .L0804C828 @ =0x000021A3
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	ldr r0, .L0804C82C @ =0x000021A4
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	bl .L0804D106
	.align 2, 0
.L0804C828: .4byte 0x000021A3
.L0804C82C: .4byte 0x000021A4
.L0804C830:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C84C @ =0x000021A4
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C84C: .4byte 0x000021A4
.L0804C850:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C86C @ =0x000021A4
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C86C: .4byte 0x000021A4
.L0804C870:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C88C @ =0x000021A4
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C88C: .4byte 0x000021A4
.L0804C890:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C8AC @ =0x000021A4
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C8AC: .4byte 0x000021A4
.L0804C8B0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C8C8 @ =0x000021A4
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804C8C8: .4byte 0x000021A4
.L0804C8CC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C8EC @ =0x000021A5
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804C8EC: .4byte 0x000021A5
.L0804C8F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C90C @ =0x000021A5
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C90C: .4byte 0x000021A5
.L0804C910:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C92C @ =0x000021A5
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C92C: .4byte 0x000021A5
.L0804C930:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C94C @ =0x000021A5
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C94C: .4byte 0x000021A5
.L0804C950:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804C968 @ =0x000021A4
	adds r3, r3, r2
	movs r1, #7
	ands r1, r6
	lsls r1, r1, #0xf
	ldr r0, [r3]
	ldr r2, .L0804C96C @ =0xFFFC7FFF
	b .L0804CE8E
	.align 2, 0
.L0804C968: .4byte 0x000021A4
.L0804C96C: .4byte 0xFFFC7FFF
.L0804C970:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C98C @ =0x000021A6
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C98C: .4byte 0x000021A6
.L0804C990:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C9AC @ =0x000021A6
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C9AC: .4byte 0x000021A6
.L0804C9B0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C9CC @ =0x000021A6
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C9CC: .4byte 0x000021A6
.L0804C9D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804C9EC @ =0x000021A6
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804C9EC: .4byte 0x000021A6
.L0804C9F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CA00 @ =0x000021A6
	bl .L0804DA1A
	.align 2, 0
.L0804CA00: .4byte 0x000021A6
.L0804CA04:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CA20 @ =0x000021A6
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804CA24 @ =0xFFFFFE7F
	bl .L0804D2D6
	.align 2, 0
.L0804CA20: .4byte 0x000021A6
.L0804CA24: .4byte 0xFFFFFE7F
.L0804CA28:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CA44 @ =0x000021A7
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CA44: .4byte 0x000021A7
.L0804CA48:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CA64 @ =0x000021A7
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CA64: .4byte 0x000021A7
.L0804CA68:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CA84 @ =0x000021A7
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x61
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CA84: .4byte 0x000021A7
.L0804CA88:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r5, #1
	adds r1, r6, #0
	ands r1, r5
	ldr r2, .L0804CAB8 @ =0x000021A7
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	ldr r0, .L0804CABC @ =0x000021A8
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	b .L0804D106
	.align 2, 0
.L0804CAB8: .4byte 0x000021A7
.L0804CABC: .4byte 0x000021A8
.L0804CAC0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CADC @ =0x000021A8
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CADC: .4byte 0x000021A8
.L0804CAE0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CAFC @ =0x000021A8
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x19
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CAFC: .4byte 0x000021A8
.L0804CB00:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CB18 @ =0x000021A8
	adds r1, r1, r2
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x1f
	bl .L0804DA28
	.align 2, 0
.L0804CB18: .4byte 0x000021A8
.L0804CB1C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CB3C @ =0x000021A9
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804CB3C: .4byte 0x000021A9
.L0804CB40:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CB5C @ =0x000021A9
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CB5C: .4byte 0x000021A9
.L0804CB60:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CB7C @ =0x000021A9
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CB7C: .4byte 0x000021A9
.L0804CB80:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CB9C @ =0x000021A9
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CB9C: .4byte 0x000021A9
.L0804CBA0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CBB0 @ =0x000021A9
	bl .L0804DA1A
	.align 2, 0
.L0804CBB0: .4byte 0x000021A9
.L0804CBB4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CBCC @ =0x000021A9
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804CBCC: .4byte 0x000021A9
.L0804CBD0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CBF0 @ =0x000021AA
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804CBF0: .4byte 0x000021AA
.L0804CBF4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CC10 @ =0x000021AA
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CC10: .4byte 0x000021AA
.L0804CC14:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CC30 @ =0x000021AA
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CC30: .4byte 0x000021AA
.L0804CC34:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CC50 @ =0x000021AA
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CC50: .4byte 0x000021AA
.L0804CC54:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CC70 @ =0x000021AA
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CC70: .4byte 0x000021AA
.L0804CC74:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CC90 @ =0x000021AA
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CC90: .4byte 0x000021AA
.L0804CC94:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CCA4 @ =0x000021AA
	bl .L0804DA1A
	.align 2, 0
.L0804CCA4: .4byte 0x000021AA
.L0804CCA8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CCC0 @ =0x000021AA
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804CCC0: .4byte 0x000021AA
.L0804CCC4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CCE4 @ =0x000021AB
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804CCE4: .4byte 0x000021AB
.L0804CCE8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CD04 @ =0x000021AB
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CD04: .4byte 0x000021AB
.L0804CD08:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CD24 @ =0x000021AB
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CD24: .4byte 0x000021AB
.L0804CD28:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CD44 @ =0x000021AB
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CD44: .4byte 0x000021AB
.L0804CD48:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CD60 @ =0x000021B4
	adds r1, r1, r2
	movs r0, #0xff
	ands r6, r0
	lsls r3, r6, #6
	ldrh r2, [r1]
	ldr r0, .L0804CD64 @ =0xFFFFC03F
	b .L0804D2D6
	.align 2, 0
.L0804CD60: .4byte 0x000021B4
.L0804CD64: .4byte 0xFFFFC03F
.L0804CD68:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804CD74 @ =0x000021B4
	b .L0804CE82
	.align 2, 0
.L0804CD74: .4byte 0x000021B4
.L0804CD78:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CD90 @ =0x000021B6
	adds r1, r1, r2
	movs r0, #0xff
	ands r6, r0
	lsls r3, r6, #6
	ldrh r2, [r1]
	ldr r0, .L0804CD94 @ =0xFFFFC03F
	b .L0804D2D6
	.align 2, 0
.L0804CD90: .4byte 0x000021B6
.L0804CD94: .4byte 0xFFFFC03F
.L0804CD98:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r1, #3
	ands r1, r6
	ldr r2, .L0804CDC8 @ =0x000021B7
	adds r4, r3, r2
	lsls r1, r1, #6
	ldrb r2, [r4]
	movs r5, #0x3f
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #2
	ldr r0, .L0804CDCC @ =0x000021B8
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #0x40
	rsbs r0, r0, #0
	b .L0804D106
	.align 2, 0
.L0804CDC8: .4byte 0x000021B7
.L0804CDCC: .4byte 0x000021B8
.L0804CDD0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CDE8 @ =0x000021B8
	adds r1, r1, r2
	movs r0, #0xff
	ands r6, r0
	lsls r3, r6, #6
	ldrh r2, [r1]
	ldr r0, .L0804CDEC @ =0xFFFFC03F
	b .L0804D2D6
	.align 2, 0
.L0804CDE8: .4byte 0x000021B8
.L0804CDEC: .4byte 0xFFFFC03F
.L0804CDF0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804CDFC @ =0x000021B8
	b .L0804CE82
	.align 2, 0
.L0804CDFC: .4byte 0x000021B8
.L0804CE00:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CE18 @ =0x000021BA
	adds r1, r1, r2
	movs r0, #0xff
	ands r6, r0
	lsls r3, r6, #6
	ldrh r2, [r1]
	ldr r0, .L0804CE1C @ =0xFFFFC03F
	b .L0804D2D6
	.align 2, 0
.L0804CE18: .4byte 0x000021BA
.L0804CE1C: .4byte 0xFFFFC03F
.L0804CE20:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r1, #3
	ands r1, r6
	ldr r2, .L0804CE50 @ =0x000021BB
	adds r4, r3, r2
	lsls r1, r1, #6
	ldrb r2, [r4]
	movs r5, #0x3f
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #2
	ldr r0, .L0804CE54 @ =0x000021BC
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #0x40
	rsbs r0, r0, #0
	b .L0804D106
	.align 2, 0
.L0804CE50: .4byte 0x000021BB
.L0804CE54: .4byte 0x000021BC
.L0804CE58:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CE70 @ =0x000021BC
	adds r1, r1, r2
	movs r0, #0xff
	ands r6, r0
	lsls r3, r6, #6
	ldrh r2, [r1]
	ldr r0, .L0804CE74 @ =0xFFFFC03F
	b .L0804D2D6
	.align 2, 0
.L0804CE70: .4byte 0x000021BC
.L0804CE74: .4byte 0xFFFFC03F
.L0804CE78:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	ldr r2, .L0804CE98 @ =0x000021BC
.L0804CE82:
	adds r3, r3, r2
	movs r1, #0xff
	ands r1, r6
	lsls r1, r1, #0xe
	ldr r0, [r3]
	ldr r2, .L0804CE9C @ =0xFFC03FFF
.L0804CE8E:
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	bl .L0804DA2E
	.align 2, 0
.L0804CE98: .4byte 0x000021BC
.L0804CE9C: .4byte 0xFFC03FFF
.L0804CEA0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CEB8 @ =0x000021BE
	adds r1, r1, r2
	movs r0, #0xff
	ands r6, r0
	lsls r3, r6, #6
	ldrh r2, [r1]
	ldr r0, .L0804CEBC @ =0xFFFFC03F
	b .L0804D2D6
	.align 2, 0
.L0804CEB8: .4byte 0x000021BE
.L0804CEBC: .4byte 0xFFFFC03F
.L0804CEC0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r1, #3
	ands r1, r6
	ldr r2, .L0804CEF0 @ =0x000021BF
	adds r4, r3, r2
	lsls r1, r1, #6
	ldrb r2, [r4]
	movs r5, #0x3f
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #2
	movs r0, #0x87
	lsls r0, r0, #6
	adds r3, r3, r0
	ands r1, r5
	ldrb r2, [r3]
	movs r0, #0x40
	rsbs r0, r0, #0
	b .L0804D106
	.align 2, 0
.L0804CEF0: .4byte 0x000021BF
.L0804CEF4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0x87
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r0, #7
	ands r6, r0
	lsls r3, r6, #6
	ldrh r2, [r1]
	ldr r0, .L0804CF10 @ =0xFFFFFE3F
	b .L0804D2D6
	.align 2, 0
.L0804CF10: .4byte 0xFFFFFE3F
.L0804CF14:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CF30 @ =0x000021C1
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CF30: .4byte 0x000021C1
.L0804CF34:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CF50 @ =0x000021C1
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CF50: .4byte 0x000021C1
.L0804CF54:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CF70 @ =0x000021C1
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CF70: .4byte 0x000021C1
.L0804CF74:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CF90 @ =0x000021C1
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804CF90: .4byte 0x000021C1
.L0804CF94:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CFA4 @ =0x000021C1
	bl .L0804DA1A
	.align 2, 0
.L0804CFA4: .4byte 0x000021C1
.L0804CFA8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CFC0 @ =0x000021C1
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804CFC0: .4byte 0x000021C1
.L0804CFC4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804CFE4 @ =0x000021C2
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804CFE4: .4byte 0x000021C2
.L0804CFE8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D004 @ =0x000021C2
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D004: .4byte 0x000021C2
.L0804D008:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D024 @ =0x000021C2
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D024: .4byte 0x000021C2
.L0804D028:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D044 @ =0x000021C2
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D044: .4byte 0x000021C2
.L0804D048:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D064 @ =0x000021C2
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D064: .4byte 0x000021C2
.L0804D068:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D084 @ =0x000021C2
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D084: .4byte 0x000021C2
.L0804D088:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D098 @ =0x000021C2
	bl .L0804DA1A
	.align 2, 0
.L0804D098: .4byte 0x000021C2
.L0804D09C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D0B4 @ =0x000021C2
	adds r1, r1, r2
	movs r0, #0xf
	ands r6, r0
	lsls r3, r6, #7
	ldrh r2, [r1]
	ldr r0, .L0804D0B8 @ =0xFFFFF87F
	b .L0804D2D6
	.align 2, 0
.L0804D0B4: .4byte 0x000021C2
.L0804D0B8: .4byte 0xFFFFF87F
.L0804D0BC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D0D8 @ =0x000021C3
	adds r1, r1, r2
	movs r0, #0xf
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D0D8: .4byte 0x000021C3
.L0804D0DC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r3, [r0]
	movs r1, #1
	ands r1, r6
	ldr r2, .L0804D110 @ =0x000021C3
	adds r4, r3, r2
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r1, r6, #1
	movs r0, #7
	ldr r2, .L0804D114 @ =0x000021C4
.L0804D0FE:
	adds r3, r3, r2
	ands r1, r0
	ldrb r2, [r3]
	subs r0, #0xf
.L0804D106:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl .L0804DA2E
	.align 2, 0
.L0804D110: .4byte 0x000021C3
.L0804D114: .4byte 0x000021C4
.L0804D118:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D134 @ =0x000021C4
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D134: .4byte 0x000021C4
.L0804D138:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D154 @ =0x000021C4
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D154: .4byte 0x000021C4
.L0804D158:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D174 @ =0x000021C4
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D174: .4byte 0x000021C4
.L0804D178:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D188 @ =0x000021C4
	bl .L0804DA1A
	.align 2, 0
.L0804D188: .4byte 0x000021C4
.L0804D18C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D1A4 @ =0x000021C4
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804D1A4: .4byte 0x000021C4
.L0804D1A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D1C8 @ =0x000021C5
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804D1C8: .4byte 0x000021C5
.L0804D1CC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D1E8 @ =0x000021C5
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D1E8: .4byte 0x000021C5
.L0804D1EC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D208 @ =0x000021C5
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D208: .4byte 0x000021C5
.L0804D20C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D228 @ =0x000021C5
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D228: .4byte 0x000021C5
.L0804D22C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D248 @ =0x000021C5
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D248: .4byte 0x000021C5
.L0804D24C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D268 @ =0x000021C5
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	bl .L0804DA28
	.align 2, 0
.L0804D268: .4byte 0x000021C5
.L0804D26C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D27C @ =0x000021C5
	bl .L0804DA1A
	.align 2, 0
.L0804D27C: .4byte 0x000021C5
.L0804D280:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D298 @ =0x000021C5
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	bl .L0804DA28
	.align 2, 0
.L0804D298: .4byte 0x000021C5
.L0804D29C:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D2BC @ =0x000021C6
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	bl .L0804DA2C
	.align 2, 0
.L0804D2BC: .4byte 0x000021C6
.L0804D2C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D2E0 @ =0x000021C6
	adds r1, r1, r2
	movs r0, #0xff
	ands r6, r0
	lsls r3, r6, #1
	ldrh r2, [r1]
	ldr r0, .L0804D2E4 @ =0xFFFFFE01
.L0804D2D6:
	ands r0, r2
	orrs r0, r3
	strh r0, [r1]
	bl .L0804DA2E
	.align 2, 0
.L0804D2E0: .4byte 0x000021C6
.L0804D2E4: .4byte 0xFFFFFE01
.L0804D2E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D304 @ =0x000021C7
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D304: .4byte 0x000021C7
.L0804D308:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D324 @ =0x000021C7
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D324: .4byte 0x000021C7
.L0804D328:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D344 @ =0x000021C7
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D344: .4byte 0x000021C7
.L0804D348:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D364 @ =0x000021C7
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D364: .4byte 0x000021C7
.L0804D368:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D384 @ =0x000021C7
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D384: .4byte 0x000021C7
.L0804D388:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D394 @ =0x000021C7
	b .L0804DA1A
	.align 2, 0
.L0804D394: .4byte 0x000021C7
.L0804D398:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D3AC @ =0x000021C7
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	b .L0804DA28
	.align 2, 0
.L0804D3AC: .4byte 0x000021C7
.L0804D3B0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D3CC @ =0x000021C8
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D3CC: .4byte 0x000021C8
.L0804D3D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D3EC @ =0x000021C8
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D3EC: .4byte 0x000021C8
.L0804D3F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D40C @ =0x000021AB
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D40C: .4byte 0x000021AB
.L0804D410:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D424 @ =0x000021AB
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	b .L0804DA28
	.align 2, 0
.L0804D424: .4byte 0x000021AB
.L0804D428:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D444 @ =0x000021AC
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D444: .4byte 0x000021AC
.L0804D448:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D464 @ =0x000021AC
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D464: .4byte 0x000021AC
.L0804D468:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D484 @ =0x000021AC
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D484: .4byte 0x000021AC
.L0804D488:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D49C @ =0x000021AC
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	b .L0804DA28
	.align 2, 0
.L0804D49C: .4byte 0x000021AC
.L0804D4A0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D4BC @ =0x000021AD
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D4BC: .4byte 0x000021AD
.L0804D4C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D4DC @ =0x000021AD
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D4DC: .4byte 0x000021AD
.L0804D4E0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D4FC @ =0x000021AD
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D4FC: .4byte 0x000021AD
.L0804D500:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D514 @ =0x000021AD
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	b .L0804DA28
	.align 2, 0
.L0804D514: .4byte 0x000021AD
.L0804D518:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D534 @ =0x000021AE
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D534: .4byte 0x000021AE
.L0804D538:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D554 @ =0x000021AE
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D554: .4byte 0x000021AE
.L0804D558:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D574 @ =0x000021AE
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D574: .4byte 0x000021AE
.L0804D578:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D58C @ =0x000021AE
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	b .L0804DA28
	.align 2, 0
.L0804D58C: .4byte 0x000021AE
.L0804D590:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D5AC @ =0x000021AF
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D5AC: .4byte 0x000021AF
.L0804D5B0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D5CC @ =0x000021AF
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D5CC: .4byte 0x000021AF
.L0804D5D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D5EC @ =0x000021AF
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D5EC: .4byte 0x000021AF
.L0804D5F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D604 @ =0x000021AF
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	b .L0804DA28
	.align 2, 0
.L0804D604: .4byte 0x000021AF
.L0804D608:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D624 @ =0x000021B0
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D624: .4byte 0x000021B0
.L0804D628:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D644 @ =0x000021B0
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D644: .4byte 0x000021B0
.L0804D648:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D664 @ =0x000021B0
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D664: .4byte 0x000021B0
.L0804D668:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D67C @ =0x000021B0
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	b .L0804DA28
	.align 2, 0
.L0804D67C: .4byte 0x000021B0
.L0804D680:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D69C @ =0x000021B1
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D69C: .4byte 0x000021B1
.L0804D6A0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D6BC @ =0x000021B1
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D6BC: .4byte 0x000021B1
.L0804D6C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D6DC @ =0x000021B1
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D6DC: .4byte 0x000021B1
.L0804D6E0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D6F4 @ =0x000021B1
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	b .L0804DA28
	.align 2, 0
.L0804D6F4: .4byte 0x000021B1
.L0804D6F8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D714 @ =0x000021B2
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D714: .4byte 0x000021B2
.L0804D718:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D734 @ =0x000021B2
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D734: .4byte 0x000021B2
.L0804D738:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D754 @ =0x000021B2
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D754: .4byte 0x000021B2
.L0804D758:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D76C @ =0x000021B2
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	b .L0804DA28
	.align 2, 0
.L0804D76C: .4byte 0x000021B2
.L0804D770:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D78C @ =0x000021B3
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D78C: .4byte 0x000021B3
.L0804D790:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D7AC @ =0x000021B3
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D7AC: .4byte 0x000021B3
.L0804D7B0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D7CC @ =0x000021B3
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D7CC: .4byte 0x000021B3
.L0804D7D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D7E4 @ =0x000021B3
	adds r1, r1, r2
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x3f
	b .L0804DA28
	.align 2, 0
.L0804D7E4: .4byte 0x000021B3
.L0804D7E8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D804 @ =0x000021B4
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D804: .4byte 0x000021B4
.L0804D808:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D824 @ =0x000021B4
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D824: .4byte 0x000021B4
.L0804D828:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D844 @ =0x000021B4
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D844: .4byte 0x000021B4
.L0804D848:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D864 @ =0x000021C8
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D864: .4byte 0x000021C8
.L0804D868:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D884 @ =0x000021C8
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D884: .4byte 0x000021C8
.L0804D888:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D89C @ =0x000021C8
	adds r1, r1, r2
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0xf
	b .L0804DA28
	.align 2, 0
.L0804D89C: .4byte 0x000021C8
.L0804D8A0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D8BC @ =0x000021C9
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D8BC: .4byte 0x000021C9
.L0804D8C0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D8DC @ =0x000021C9
	adds r1, r1, r2
	movs r0, #0xf
	ands r6, r0
	lsls r3, r6, #1
	ldrb r2, [r1]
	movs r0, #0x1f
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D8DC: .4byte 0x000021C9
.L0804D8E0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D8FC @ =0x000021C9
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D8FC: .4byte 0x000021C9
.L0804D900:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D90C @ =0x000021C9
	b .L0804DA1A
	.align 2, 0
.L0804D90C: .4byte 0x000021C9
.L0804D910:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D924 @ =0x000021C9
	adds r1, r1, r2
	lsls r3, r6, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	b .L0804DA28
	.align 2, 0
.L0804D924: .4byte 0x000021C9
.L0804D928:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D944 @ =0x000021CA
	adds r1, r1, r2
	movs r0, #3
	ands r6, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r6
	b .L0804DA2C
	.align 2, 0
.L0804D944: .4byte 0x000021CA
.L0804D948:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D964 @ =0x000021CA
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D964: .4byte 0x000021CA
.L0804D968:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D984 @ =0x000021CA
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #3
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D984: .4byte 0x000021CA
.L0804D988:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D9A4 @ =0x000021CA
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #4
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D9A4: .4byte 0x000021CA
.L0804D9A8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D9C4 @ =0x000021CA
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804D9C4: .4byte 0x000021CA
.L0804D9C8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D9D4 @ =0x000021CA
	b .L0804DA1A
	.align 2, 0
.L0804D9D4: .4byte 0x000021CA
.L0804D9D8:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804D9EC @ =0x000021CB
	adds r1, r1, r2
	lsls r3, r6, #2
	ldrb r2, [r1]
	movs r0, #3
	b .L0804DA28
	.align 2, 0
.L0804D9EC: .4byte 0x000021CB
.L0804D9F0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804DA0C @ =0x0000216E
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #5
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	b .L0804DA28
	.align 2, 0
.L0804DA0C: .4byte 0x0000216E
.L0804DA10:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, .L0804DA50 @ =0x0000216E
.L0804DA1A:
	adds r1, r1, r2
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #6
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
.L0804DA28:
	ands r0, r2
	orrs r0, r3
.L0804DA2C:
	strb r0, [r1]
.L0804DA2E:
	adds r0, r7, #0
	mov r1, r8
	bl func_0804590C
	adds r2, r0, #0
	mov r1, r8
	subs r1, #0x46
	ldr r0, .L0804DA54 @ =0x0000018B
	cmp r1, r0
	bls .L0804DA44
	b .L0804E0E6
.L0804DA44:
	lsls r0, r1, #2
	ldr r1, .L0804DA58 @ =.L0804DA5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0804DA50: .4byte 0x0000216E
.L0804DA54: .4byte 0x0000018B
.L0804DA58: .4byte .L0804DA5C
.L0804DA5C: @ jump table
	.4byte .L0804E08C @ case 0
	.4byte .L0804E08C @ case 1
	.4byte .L0804E0E6 @ case 2
	.4byte .L0804E08C @ case 3
	.4byte .L0804E08C @ case 4
	.4byte .L0804E08C @ case 5
	.4byte .L0804E08C @ case 6
	.4byte .L0804E08C @ case 7
	.4byte .L0804E08C @ case 8
	.4byte .L0804E08C @ case 9
	.4byte .L0804E08C @ case 10
	.4byte .L0804E0E6 @ case 11
	.4byte .L0804E08C @ case 12
	.4byte .L0804E0E6 @ case 13
	.4byte .L0804E08C @ case 14
	.4byte .L0804E08C @ case 15
	.4byte .L0804E08C @ case 16
	.4byte .L0804E08C @ case 17
	.4byte .L0804E08C @ case 18
	.4byte .L0804E0E6 @ case 19
	.4byte .L0804E08C @ case 20
	.4byte .L0804E0E6 @ case 21
	.4byte .L0804E08C @ case 22
	.4byte .L0804E0E6 @ case 23
	.4byte .L0804E08C @ case 24
	.4byte .L0804E08C @ case 25
	.4byte .L0804E08C @ case 26
	.4byte .L0804E08C @ case 27
	.4byte .L0804E08C @ case 28
	.4byte .L0804E0E6 @ case 29
	.4byte .L0804E08C @ case 30
	.4byte .L0804E08C @ case 31
	.4byte .L0804E08C @ case 32
	.4byte .L0804E08C @ case 33
	.4byte .L0804E08C @ case 34
	.4byte .L0804E08C @ case 35
	.4byte .L0804E08C @ case 36
	.4byte .L0804E08C @ case 37
	.4byte .L0804E0E6 @ case 38
	.4byte .L0804E08C @ case 39
	.4byte .L0804E08C @ case 40
	.4byte .L0804E08C @ case 41
	.4byte .L0804E08C @ case 42
	.4byte .L0804E08C @ case 43
	.4byte .L0804E08C @ case 44
	.4byte .L0804E08C @ case 45
	.4byte .L0804E08C @ case 46
	.4byte .L0804E08C @ case 47
	.4byte .L0804E08C @ case 48
	.4byte .L0804E08C @ case 49
	.4byte .L0804E0E6 @ case 50
	.4byte .L0804E0E6 @ case 51
	.4byte .L0804E08C @ case 52
	.4byte .L0804E08C @ case 53
	.4byte .L0804E08C @ case 54
	.4byte .L0804E08C @ case 55
	.4byte .L0804E08C @ case 56
	.4byte .L0804E08C @ case 57
	.4byte .L0804E0E6 @ case 58
	.4byte .L0804E0E6 @ case 59
	.4byte .L0804E08C @ case 60
	.4byte .L0804E08C @ case 61
	.4byte .L0804E08C @ case 62
	.4byte .L0804E08C @ case 63
	.4byte .L0804E08C @ case 64
	.4byte .L0804E08C @ case 65
	.4byte .L0804E0E6 @ case 66
	.4byte .L0804E0E6 @ case 67
	.4byte .L0804E08C @ case 68
	.4byte .L0804E08C @ case 69
	.4byte .L0804E08C @ case 70
	.4byte .L0804E08C @ case 71
	.4byte .L0804E08C @ case 72
	.4byte .L0804E08C @ case 73
	.4byte .L0804E0E6 @ case 74
	.4byte .L0804E0E6 @ case 75
	.4byte .L0804E08C @ case 76
	.4byte .L0804E08C @ case 77
	.4byte .L0804E08C @ case 78
	.4byte .L0804E08C @ case 79
	.4byte .L0804E08C @ case 80
	.4byte .L0804E08C @ case 81
	.4byte .L0804E0E6 @ case 82
	.4byte .L0804E0E6 @ case 83
	.4byte .L0804E08C @ case 84
	.4byte .L0804E08C @ case 85
	.4byte .L0804E08C @ case 86
	.4byte .L0804E08C @ case 87
	.4byte .L0804E08C @ case 88
	.4byte .L0804E08C @ case 89
	.4byte .L0804E08C @ case 90
	.4byte .L0804E08C @ case 91
	.4byte .L0804E08C @ case 92
	.4byte .L0804E08C @ case 93
	.4byte .L0804E08C @ case 94
	.4byte .L0804E08C @ case 95
	.4byte .L0804E08C @ case 96
	.4byte .L0804E08C @ case 97
	.4byte .L0804E08C @ case 98
	.4byte .L0804E08C @ case 99
	.4byte .L0804E08C @ case 100
	.4byte .L0804E08C @ case 101
	.4byte .L0804E08C @ case 102
	.4byte .L0804E08C @ case 103
	.4byte .L0804E08C @ case 104
	.4byte .L0804E08C @ case 105
	.4byte .L0804E08C @ case 106
	.4byte .L0804E08C @ case 107
	.4byte .L0804E08C @ case 108
	.4byte .L0804E08C @ case 109
	.4byte .L0804E08C @ case 110
	.4byte .L0804E08C @ case 111
	.4byte .L0804E08C @ case 112
	.4byte .L0804E08C @ case 113
	.4byte .L0804E08C @ case 114
	.4byte .L0804E08C @ case 115
	.4byte .L0804E08C @ case 116
	.4byte .L0804E08C @ case 117
	.4byte .L0804E08C @ case 118
	.4byte .L0804E08C @ case 119
	.4byte .L0804E08C @ case 120
	.4byte .L0804E08C @ case 121
	.4byte .L0804E08C @ case 122
	.4byte .L0804E08C @ case 123
	.4byte .L0804E08C @ case 124
	.4byte .L0804E08C @ case 125
	.4byte .L0804E08C @ case 126
	.4byte .L0804E08C @ case 127
	.4byte .L0804E08C @ case 128
	.4byte .L0804E08C @ case 129
	.4byte .L0804E08C @ case 130
	.4byte .L0804E08C @ case 131
	.4byte .L0804E08C @ case 132
	.4byte .L0804E08C @ case 133
	.4byte .L0804E08C @ case 134
	.4byte .L0804E08C @ case 135
	.4byte .L0804E08C @ case 136
	.4byte .L0804E08C @ case 137
	.4byte .L0804E08C @ case 138
	.4byte .L0804E08C @ case 139
	.4byte .L0804E0E6 @ case 140
	.4byte .L0804E0E6 @ case 141
	.4byte .L0804E0E6 @ case 142
	.4byte .L0804E0E6 @ case 143
	.4byte .L0804E0E6 @ case 144
	.4byte .L0804E08C @ case 145
	.4byte .L0804E08C @ case 146
	.4byte .L0804E08C @ case 147
	.4byte .L0804E08C @ case 148
	.4byte .L0804E08C @ case 149
	.4byte .L0804E08C @ case 150
	.4byte .L0804E08C @ case 151
	.4byte .L0804E0E6 @ case 152
	.4byte .L0804E08C @ case 153
	.4byte .L0804E08C @ case 154
	.4byte .L0804E08C @ case 155
	.4byte .L0804E08C @ case 156
	.4byte .L0804E08C @ case 157
	.4byte .L0804E08C @ case 158
	.4byte .L0804E0E6 @ case 159
	.4byte .L0804E08C @ case 160
	.4byte .L0804E08C @ case 161
	.4byte .L0804E08C @ case 162
	.4byte .L0804E08C @ case 163
	.4byte .L0804E08C @ case 164
	.4byte .L0804E08C @ case 165
	.4byte .L0804E08C @ case 166
	.4byte .L0804E08C @ case 167
	.4byte .L0804E08C @ case 168
	.4byte .L0804E08C @ case 169
	.4byte .L0804E08C @ case 170
	.4byte .L0804E08C @ case 171
	.4byte .L0804E08C @ case 172
	.4byte .L0804E08C @ case 173
	.4byte .L0804E0E6 @ case 174
	.4byte .L0804E0E6 @ case 175
	.4byte .L0804E0E6 @ case 176
	.4byte .L0804E0E6 @ case 177
	.4byte .L0804E0E6 @ case 178
	.4byte .L0804E08C @ case 179
	.4byte .L0804E08C @ case 180
	.4byte .L0804E08C @ case 181
	.4byte .L0804E08C @ case 182
	.4byte .L0804E08C @ case 183
	.4byte .L0804E0E6 @ case 184
	.4byte .L0804E08C @ case 185
	.4byte .L0804E08C @ case 186
	.4byte .L0804E0E6 @ case 187
	.4byte .L0804E08C @ case 188
	.4byte .L0804E0E6 @ case 189
	.4byte .L0804E08C @ case 190
	.4byte .L0804E08C @ case 191
	.4byte .L0804E08C @ case 192
	.4byte .L0804E08C @ case 193
	.4byte .L0804E0E6 @ case 194
	.4byte .L0804E0E6 @ case 195
	.4byte .L0804E08C @ case 196
	.4byte .L0804E08C @ case 197
	.4byte .L0804E0E6 @ case 198
	.4byte .L0804E0E6 @ case 199
	.4byte .L0804E08C @ case 200
	.4byte .L0804E08C @ case 201
	.4byte .L0804E08C @ case 202
	.4byte .L0804E08C @ case 203
	.4byte .L0804E08C @ case 204
	.4byte .L0804E0E6 @ case 205
	.4byte .L0804E08C @ case 206
	.4byte .L0804E08C @ case 207
	.4byte .L0804E08C @ case 208
	.4byte .L0804E08C @ case 209
	.4byte .L0804E08C @ case 210
	.4byte .L0804E08C @ case 211
	.4byte .L0804E08C @ case 212
	.4byte .L0804E08C @ case 213
	.4byte .L0804E08C @ case 214
	.4byte .L0804E08C @ case 215
	.4byte .L0804E08C @ case 216
	.4byte .L0804E08C @ case 217
	.4byte .L0804E08C @ case 218
	.4byte .L0804E08C @ case 219
	.4byte .L0804E08C @ case 220
	.4byte .L0804E08C @ case 221
	.4byte .L0804E0E6 @ case 222
	.4byte .L0804E0E6 @ case 223
	.4byte .L0804E08C @ case 224
	.4byte .L0804E08C @ case 225
	.4byte .L0804E08C @ case 226
	.4byte .L0804E0E6 @ case 227
	.4byte .L0804E08C @ case 228
	.4byte .L0804E08C @ case 229
	.4byte .L0804E08C @ case 230
	.4byte .L0804E08C @ case 231
	.4byte .L0804E08C @ case 232
	.4byte .L0804E08C @ case 233
	.4byte .L0804E08C @ case 234
	.4byte .L0804E0E6 @ case 235
	.4byte .L0804E08C @ case 236
	.4byte .L0804E08C @ case 237
	.4byte .L0804E08C @ case 238
	.4byte .L0804E08C @ case 239
	.4byte .L0804E08C @ case 240
	.4byte .L0804E08C @ case 241
	.4byte .L0804E08C @ case 242
	.4byte .L0804E08C @ case 243
	.4byte .L0804E0E6 @ case 244
	.4byte .L0804E08C @ case 245
	.4byte .L0804E08C @ case 246
	.4byte .L0804E08C @ case 247
	.4byte .L0804E08C @ case 248
	.4byte .L0804E08C @ case 249
	.4byte .L0804E08C @ case 250
	.4byte .L0804E08C @ case 251
	.4byte .L0804E08C @ case 252
	.4byte .L0804E08C @ case 253
	.4byte .L0804E0E6 @ case 254
	.4byte .L0804E08C @ case 255
	.4byte .L0804E08C @ case 256
	.4byte .L0804E0E6 @ case 257
	.4byte .L0804E08C @ case 258
	.4byte .L0804E08C @ case 259
	.4byte .L0804E08C @ case 260
	.4byte .L0804E08C @ case 261
	.4byte .L0804E08C @ case 262
	.4byte .L0804E0E6 @ case 263
	.4byte .L0804E08C @ case 264
	.4byte .L0804E08C @ case 265
	.4byte .L0804E08C @ case 266
	.4byte .L0804E08C @ case 267
	.4byte .L0804E08C @ case 268
	.4byte .L0804E08C @ case 269
	.4byte .L0804E0E6 @ case 270
	.4byte .L0804E08C @ case 271
	.4byte .L0804E08C @ case 272
	.4byte .L0804E0E6 @ case 273
	.4byte .L0804E08C @ case 274
	.4byte .L0804E08C @ case 275
	.4byte .L0804E08C @ case 276
	.4byte .L0804E08C @ case 277
	.4byte .L0804E08C @ case 278
	.4byte .L0804E08C @ case 279
	.4byte .L0804E08C @ case 280
	.4byte .L0804E08C @ case 281
	.4byte .L0804E08C @ case 282
	.4byte .L0804E08C @ case 283
	.4byte .L0804E08C @ case 284
	.4byte .L0804E08C @ case 285
	.4byte .L0804E08C @ case 286
	.4byte .L0804E08C @ case 287
	.4byte .L0804E08C @ case 288
	.4byte .L0804E08C @ case 289
	.4byte .L0804E08C @ case 290
	.4byte .L0804E08C @ case 291
	.4byte .L0804E08C @ case 292
	.4byte .L0804E08C @ case 293
	.4byte .L0804E08C @ case 294
	.4byte .L0804E08C @ case 295
	.4byte .L0804E08C @ case 296
	.4byte .L0804E08C @ case 297
	.4byte .L0804E08C @ case 298
	.4byte .L0804E08C @ case 299
	.4byte .L0804E08C @ case 300
	.4byte .L0804E08C @ case 301
	.4byte .L0804E08C @ case 302
	.4byte .L0804E08C @ case 303
	.4byte .L0804E08C @ case 304
	.4byte .L0804E08C @ case 305
	.4byte .L0804E08C @ case 306
	.4byte .L0804E08C @ case 307
	.4byte .L0804E08C @ case 308
	.4byte .L0804E08C @ case 309
	.4byte .L0804E08C @ case 310
	.4byte .L0804E08C @ case 311
	.4byte .L0804E08C @ case 312
	.4byte .L0804E08C @ case 313
	.4byte .L0804E08C @ case 314
	.4byte .L0804E08C @ case 315
	.4byte .L0804E0E6 @ case 316
	.4byte .L0804E0E6 @ case 317
	.4byte .L0804E0E6 @ case 318
	.4byte .L0804E0E6 @ case 319
	.4byte .L0804E0E6 @ case 320
	.4byte .L0804E08C @ case 321
	.4byte .L0804E0E6 @ case 322
	.4byte .L0804E08C @ case 323
	.4byte .L0804E0E6 @ case 324
	.4byte .L0804E08C @ case 325
	.4byte .L0804E08C @ case 326
	.4byte .L0804E0E6 @ case 327
	.4byte .L0804E08C @ case 328
	.4byte .L0804E0E6 @ case 329
	.4byte .L0804E0E6 @ case 330
	.4byte .L0804E0E6 @ case 331
	.4byte .L0804E08C @ case 332
	.4byte .L0804E0E6 @ case 333
	.4byte .L0804E08C @ case 334
	.4byte .L0804E0E6 @ case 335
	.4byte .L0804E08C @ case 336
	.4byte .L0804E0E6 @ case 337
	.4byte .L0804E08C @ case 338
	.4byte .L0804E0E6 @ case 339
	.4byte .L0804E08C @ case 340
	.4byte .L0804E0E6 @ case 341
	.4byte .L0804E08C @ case 342
	.4byte .L0804E0E6 @ case 343
	.4byte .L0804E08C @ case 344
	.4byte .L0804E0E6 @ case 345
	.4byte .L0804E08C @ case 346
	.4byte .L0804E0E6 @ case 347
	.4byte .L0804E08C @ case 348
	.4byte .L0804E08C @ case 349
	.4byte .L0804E08C @ case 350
	.4byte .L0804E0E6 @ case 351
	.4byte .L0804E0E6 @ case 352
	.4byte .L0804E0E6 @ case 353
	.4byte .L0804E08C @ case 354
	.4byte .L0804E0E6 @ case 355
	.4byte .L0804E08C @ case 356
	.4byte .L0804E0E6 @ case 357
	.4byte .L0804E08C @ case 358
	.4byte .L0804E0E6 @ case 359
	.4byte .L0804E08C @ case 360
	.4byte .L0804E0E6 @ case 361
	.4byte .L0804E08C @ case 362
	.4byte .L0804E0E6 @ case 363
	.4byte .L0804E08C @ case 364
	.4byte .L0804E08C @ case 365
	.4byte .L0804E08C @ case 366
	.4byte .L0804E08C @ case 367
	.4byte .L0804E08C @ case 368
	.4byte .L0804E0E6 @ case 369
	.4byte .L0804E08C @ case 370
	.4byte .L0804E0E6 @ case 371
	.4byte .L0804E08C @ case 372
	.4byte .L0804E0E6 @ case 373
	.4byte .L0804E08C @ case 374
	.4byte .L0804E0E6 @ case 375
	.4byte .L0804E08C @ case 376
	.4byte .L0804E0E6 @ case 377
	.4byte .L0804E08C @ case 378
	.4byte .L0804E08C @ case 379
	.4byte .L0804E0E6 @ case 380
	.4byte .L0804E0E6 @ case 381
	.4byte .L0804E0E6 @ case 382
	.4byte .L0804E0E6 @ case 383
	.4byte .L0804E0E6 @ case 384
	.4byte .L0804E0E6 @ case 385
	.4byte .L0804E08C @ case 386
	.4byte .L0804E08C @ case 387
	.4byte .L0804E08C @ case 388
	.4byte .L0804E08C @ case 389
	.4byte .L0804E08C @ case 390
	.4byte .L0804E08C @ case 391
	.4byte .L0804E08C @ case 392
	.4byte .L0804E0E6 @ case 393
	.4byte .L0804E08C @ case 394
	.4byte .L0804E08C @ case 395
.L0804E08C:
	cmp r2, sb
	beq .L0804E0E6
	cmp r2, #1
	beq .L0804E0A4
	cmp r2, #1
	bgt .L0804E09E
	cmp r2, #0
	beq .L0804E0D0
	b .L0804E0E6
.L0804E09E:
	cmp r2, #2
	beq .L0804E0D0
	b .L0804E0E6
.L0804E0A4:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L0804E0B4
	bl func_080125EC
.L0804E0B4:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r1, .L0804E0CC @ =0x0000214C
	adds r0, r0, r1
	mov r2, r8
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	bl func_0809C600
	b .L0804E0E6
	.align 2, 0
.L0804E0CC: .4byte 0x0000214C
.L0804E0D0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r2, .L0804E0F4 @ =0x0000214C
	adds r0, r0, r2
	mov r2, r8
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	bl func_0809C644
.L0804E0E6:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0804E0F4: .4byte 0x0000214C

	thumb_func_start func_0804E0F8
func_0804E0F8: @ 0x0804E0F8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r1, #0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r5, r0, r1
	ldr r0, [r5]
	ldr r1, .L0804E168 @ =0x00001C34
	adds r0, r0, r1
	adds r4, r0, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0804E170
	movs r7, #0
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	mov r1, sp
	strb r0, [r1]
	mov r0, sp
	bl GetId__C4Tool
	cmp r0, r6
	bne .L0804E13C
	adds r0, r4, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r7, r1, #0x1f
.L0804E13C:
	cmp r7, #0
	bne .L0804E170
	ldr r0, [r5]
	ldr r1, .L0804E16C @ =0x00001C38
	adds r0, r0, r1
	adds r1, r6, #0
	bl GetAvailableSpaceForTool__C8RucksackUi
	cmp r0, #0
	bne .L0804E170
	ldr r0, [r5]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r6, #0
	bl GetAvailableSpaceFor__C9ToolChestUi
	cmp r0, #0
	bne .L0804E170
	movs r0, #0
	b .L0804E172
	.align 2, 0
.L0804E168: .4byte 0x00001C34
.L0804E16C: .4byte 0x00001C38
.L0804E170:
	movs r0, #1
.L0804E172:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0804E17C
func_0804E17C: @ 0x0804E17C
	push {r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r0, [r4]
	ldr r1, .L0804E1C4 @ =0x00001C2C
	adds r0, r0, r1
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0804E1BE
	ldr r0, [r4]
	ldr r1, .L0804E1C8 @ =0x00001C38
	adds r0, r0, r1
	bl GetEmptyItemSlotCount__C8Rucksack
	cmp r0, #0
	bne .L0804E1BE
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetFridge__9FarmHouse
	cmp r0, #0
	beq .L0804E1CC
	adds r1, r5, #0
	bl GetAvailableSpaceFor__C6FridgeUi
	cmp r0, #0
	beq .L0804E1CC
.L0804E1BE:
	movs r0, #1
	b .L0804E1CE
	.align 2, 0
.L0804E1C4: .4byte 0x00001C2C
.L0804E1C8: .4byte 0x00001C38
.L0804E1CC:
	movs r0, #0
.L0804E1CE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0804E1D4
func_0804E1D4: @ 0x0804E1D4
	push {r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r0, [r4]
	ldr r1, .L0804E21C @ =0x00001C2C
	adds r0, r0, r1
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0804E216
	ldr r0, [r4]
	ldr r1, .L0804E220 @ =0x00001C38
	adds r0, r0, r1
	bl GetEmptyItemSlotCount__C8Rucksack
	cmp r0, #0
	bne .L0804E216
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L0804E224
	adds r1, r5, #0
	bl GetAvailableSpaceFor__C5ShelfUi
	cmp r0, #0
	beq .L0804E224
.L0804E216:
	movs r0, #1
	b .L0804E226
	.align 2, 0
.L0804E21C: .4byte 0x00001C2C
.L0804E220: .4byte 0x00001C38
.L0804E224:
	movs r0, #0
.L0804E226:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0804E22C
func_0804E22C: @ 0x0804E22C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, .L0804E2AC @ =0x00001C2C
	adds r4, r0, r1
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0804E272
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #1
	bne .L0804E272
	adds r0, r4, #0
	bl func_0800F258
	mov r1, sp
	strb r0, [r1]
	mov r0, sp
	bl GetId__C7Article
	movs r1, #0
	cmp r0, r6
	bne .L0804E26E
	movs r1, #1
.L0804E26E:
	cmp r1, #0
	bne .L0804E2A8
.L0804E272:
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	ldr r1, .L0804E2B0 @ =0x00001C38
	adds r0, r0, r1
	adds r1, r6, #0
	bl GetFirstSlotWithArticle__C8RucksackUi
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne .L0804E2A8
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L0804E2B4
	adds r1, r6, #0
	bl GetFirstSlotWith__C5ShelfUi
	cmp r0, r5
	beq .L0804E2B4
.L0804E2A8:
	movs r0, #1
	b .L0804E2B6
	.align 2, 0
.L0804E2AC: .4byte 0x00001C2C
.L0804E2B0: .4byte 0x00001C38
.L0804E2B4:
	movs r0, #0
.L0804E2B6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0804E2C0
func_0804E2C0: @ 0x0804E2C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, .L0804E340 @ =0x00001C2C
	adds r4, r0, r1
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0804E304
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #0
	bne .L0804E304
	mov r0, sp
	adds r1, r4, #0
	bl func_0800F20C
	mov r0, sp
	bl GetId__C4Food
	movs r1, #0
	cmp r0, r6
	bne .L0804E300
	movs r1, #1
.L0804E300:
	cmp r1, #0
	bne .L0804E33A
.L0804E304:
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	ldr r1, .L0804E344 @ =0x00001C38
	adds r0, r0, r1
	adds r1, r6, #0
	bl GetFirstSlotWithFood__C8RucksackUi
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne .L0804E33A
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetFridge__9FarmHouse
	cmp r0, #0
	beq .L0804E348
	adds r1, r6, #0
	bl GetFirstSlotWith__C6FridgeUi
	cmp r0, r5
	beq .L0804E348
.L0804E33A:
	movs r0, #1
	b .L0804E34A
	.align 2, 0
.L0804E340: .4byte 0x00001C2C
.L0804E344: .4byte 0x00001C38
.L0804E348:
	movs r0, #0
.L0804E34A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0804E354
func_0804E354: @ 0x0804E354
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, .L0804E3C4 @ =0x00001C34
	adds r4, r0, r1
	adds r0, r4, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0804E390
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	mov r1, sp
	strb r0, [r1]
	mov r0, sp
	bl GetId__C4Tool
	movs r1, #0
	cmp r0, r6
	bne .L0804E38C
	movs r1, #1
.L0804E38C:
	cmp r1, #0
	bne .L0804E3CC
.L0804E390:
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	ldr r1, .L0804E3C8 @ =0x00001C38
	adds r0, r0, r1
	adds r1, r6, #0
	bl GetFirstSlotWithTool__C8RucksackUi
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne .L0804E3CC
	ldr r0, [r4]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r6, #0
	bl GetFirstSlotWith__C9ToolChestUi
	cmp r0, r5
	bne .L0804E3CC
	movs r0, #0
	b .L0804E3CE
	.align 2, 0
.L0804E3C4: .4byte 0x00001C34
.L0804E3C8: .4byte 0x00001C38
.L0804E3CC:
	movs r0, #1
.L0804E3CE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0804E3D8
func_0804E3D8: @ 0x0804E3D8
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r2, #0
	movs r6, #0
	cmp r1, #4
	bhi .L0804E49E
	lsls r0, r1, #2
	ldr r1, .L0804E3F0 @ =.L0804E3F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0804E3F0: .4byte .L0804E3F4
.L0804E3F4: @ jump table
	.4byte .L0804E408 @ case 0
	.4byte .L0804E41A @ case 1
	.4byte .L0804E442 @ case 2
	.4byte .L0804E46A @ case 3
	.4byte .L0804E492 @ case 4
.L0804E408:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x14
	bl GetHorse__4Farm
	adds r6, r0, #0
	b .L0804E49E
.L0804E41A:
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r4, r3, r0
	ldr r0, [r4]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetCapacity__C4Barn
	cmp r5, r0
	bge .L0804E49E
	ldr r0, [r4]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r5, #0
	bl GetCow__4BarnUi
	adds r6, r0, #0
	b .L0804E49E
.L0804E442:
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r4, r3, r0
	ldr r0, [r4]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetCapacity__C4Barn
	cmp r5, r0
	bge .L0804E49E
	ldr r0, [r4]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r5, #0
	bl GetSheep__4BarnUi
	adds r6, r0, #0
	b .L0804E49E
.L0804E46A:
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r4, r3, r0
	ldr r0, [r4]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetCapacity__C4Coop
	cmp r5, r0
	bge .L0804E49E
	ldr r0, [r4]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r5, #0
	bl GetChicken__4CoopUi
	adds r6, r0, #0
	b .L0804E49E
.L0804E492:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	ldr r1, .L0804E4A8 @ =0x00001C70
	adds r6, r0, r1
.L0804E49E:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0804E4A8: .4byte 0x00001C70

