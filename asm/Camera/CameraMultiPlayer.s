.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global ctrlMultiPlayerCamera___15CPolarSubCameraFv
ctrlMultiPlayerCamera___15CPolarSubCameraFv:
/* 8036012C 0035D06C  7C 08 02 A6 */	mflr r0
/* 80360130 0035D070  90 01 00 04 */	stw r0, 4(r1)
/* 80360134 0035D074  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80360138 0035D078  DB E1 00 58 */	stfd f31, 0x58(r1)
/* 8036013C 0035D07C  93 E1 00 54 */	stw r31, 0x54(r1)
/* 80360140 0035D080  7C 7F 1B 78 */	mr r31, r3
/* 80360144 0035D084  80 63 02 BC */	lwz r3, 0x2bc(r3)
/* 80360148 0035D088  88 C3 00 01 */	lbz r6, 1(r3)
/* 8036014C 0035D08C  2C 06 00 00 */	cmpwi r6, 0
/* 80360150 0035D090  41 81 00 38 */	bgt lbl_80360188
/* 80360154 0035D094  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80360158 0035D098  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 8036015C 0035D09C  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80360160 0035D0A0  D0 1F 00 90 */	stfs f0, 0x90(r31)
/* 80360164 0035D0A4  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80360168 0035D0A8  D0 1F 00 94 */	stfs f0, 0x94(r31)
/* 8036016C 0035D0AC  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80360170 0035D0B0  D0 1F 00 98 */	stfs f0, 0x98(r31)
/* 80360174 0035D0B4  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 80360178 0035D0B8  D0 1F 00 9C */	stfs f0, 0x9c(r31)
/* 8036017C 0035D0BC  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80360180 0035D0C0  D0 1F 00 A0 */	stfs f0, 0xa0(r31)
/* 80360184 0035D0C4  48 00 02 FC */	b lbl_80360480
lbl_80360188:
/* 80360188 0035D0C8  C0 02 08 10 */	lfs f0, "@1758"@sda21(r2)
/* 8036018C 0035D0CC  7C C3 33 78 */	mr r3, r6
/* 80360190 0035D0D0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80360194 0035D0D4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80360198 0035D0D8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8036019C 0035D0DC  80 9F 02 BC */	lwz r4, 0x2bc(r31)
/* 803601A0 0035D0E0  80 A4 00 04 */	lwz r5, 4(r4)
/* 803601A4 0035D0E4  40 81 01 30 */	ble lbl_803602D4
/* 803601A8 0035D0E8  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 803601AC 0035D0EC  7C 09 03 A6 */	mtctr r0
/* 803601B0 0035D0F0  41 82 00 E4 */	beq lbl_80360294
lbl_803601B4:
/* 803601B4 0035D0F4  80 85 00 00 */	lwz r4, 0(r5)
/* 803601B8 0035D0F8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 803601BC 0035D0FC  C0 04 00 00 */	lfs f0, 0(r4)
/* 803601C0 0035D100  EC 01 00 2A */	fadds f0, f1, f0
/* 803601C4 0035D104  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 803601C8 0035D108  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 803601CC 0035D10C  C0 04 00 04 */	lfs f0, 4(r4)
/* 803601D0 0035D110  EC 01 00 2A */	fadds f0, f1, f0
/* 803601D4 0035D114  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 803601D8 0035D118  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 803601DC 0035D11C  C0 04 00 08 */	lfs f0, 8(r4)
/* 803601E0 0035D120  EC 01 00 2A */	fadds f0, f1, f0
/* 803601E4 0035D124  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 803601E8 0035D128  80 85 00 0C */	lwz r4, 0xc(r5)
/* 803601EC 0035D12C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 803601F0 0035D130  C0 04 00 00 */	lfs f0, 0(r4)
/* 803601F4 0035D134  EC 01 00 2A */	fadds f0, f1, f0
/* 803601F8 0035D138  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 803601FC 0035D13C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80360200 0035D140  C0 04 00 04 */	lfs f0, 4(r4)
/* 80360204 0035D144  EC 01 00 2A */	fadds f0, f1, f0
/* 80360208 0035D148  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8036020C 0035D14C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80360210 0035D150  C0 04 00 08 */	lfs f0, 8(r4)
/* 80360214 0035D154  EC 01 00 2A */	fadds f0, f1, f0
/* 80360218 0035D158  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8036021C 0035D15C  80 85 00 18 */	lwz r4, 0x18(r5)
/* 80360220 0035D160  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80360224 0035D164  C0 04 00 00 */	lfs f0, 0(r4)
/* 80360228 0035D168  EC 01 00 2A */	fadds f0, f1, f0
/* 8036022C 0035D16C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80360230 0035D170  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80360234 0035D174  C0 04 00 04 */	lfs f0, 4(r4)
/* 80360238 0035D178  EC 01 00 2A */	fadds f0, f1, f0
/* 8036023C 0035D17C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80360240 0035D180  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80360244 0035D184  C0 04 00 08 */	lfs f0, 8(r4)
/* 80360248 0035D188  EC 01 00 2A */	fadds f0, f1, f0
/* 8036024C 0035D18C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80360250 0035D190  80 85 00 24 */	lwz r4, 0x24(r5)
/* 80360254 0035D194  38 A5 00 30 */	addi r5, r5, 0x30
/* 80360258 0035D198  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8036025C 0035D19C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80360260 0035D1A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80360264 0035D1A4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80360268 0035D1A8  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8036026C 0035D1AC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80360270 0035D1B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80360274 0035D1B4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80360278 0035D1B8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8036027C 0035D1BC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80360280 0035D1C0  EC 01 00 2A */	fadds f0, f1, f0
/* 80360284 0035D1C4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80360288 0035D1C8  42 00 FF 2C */	bdnz lbl_803601B4
/* 8036028C 0035D1CC  70 63 00 03 */	andi. r3, r3, 3
/* 80360290 0035D1D0  41 82 00 44 */	beq lbl_803602D4
lbl_80360294:
/* 80360294 0035D1D4  7C 69 03 A6 */	mtctr r3
lbl_80360298:
/* 80360298 0035D1D8  80 85 00 00 */	lwz r4, 0(r5)
/* 8036029C 0035D1DC  38 A5 00 0C */	addi r5, r5, 0xc
/* 803602A0 0035D1E0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 803602A4 0035D1E4  C0 04 00 00 */	lfs f0, 0(r4)
/* 803602A8 0035D1E8  EC 01 00 2A */	fadds f0, f1, f0
/* 803602AC 0035D1EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 803602B0 0035D1F0  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 803602B4 0035D1F4  C0 04 00 04 */	lfs f0, 4(r4)
/* 803602B8 0035D1F8  EC 01 00 2A */	fadds f0, f1, f0
/* 803602BC 0035D1FC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 803602C0 0035D200  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 803602C4 0035D204  C0 04 00 08 */	lfs f0, 8(r4)
/* 803602C8 0035D208  EC 01 00 2A */	fadds f0, f1, f0
/* 803602CC 0035D20C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 803602D0 0035D210  42 00 FF C8 */	bdnz lbl_80360298
lbl_803602D4:
/* 803602D4 0035D214  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 803602D8 0035D218  C8 22 08 30 */	lfd f1, "@1765"@sda21(r2)
/* 803602DC 0035D21C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 803602E0 0035D220  3C 00 43 30 */	lis r0, 0x4330
/* 803602E4 0035D224  C0 42 08 14 */	lfs f2, "@1759"@sda21(r2)
/* 803602E8 0035D228  38 66 FF FF */	addi r3, r6, -1
/* 803602EC 0035D22C  90 01 00 48 */	stw r0, 0x48(r1)
/* 803602F0 0035D230  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 803602F4 0035D234  38 E0 00 00 */	li r7, 0
/* 803602F8 0035D238  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 803602FC 0035D23C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80360300 0035D240  EC 22 00 24 */	fdivs f1, f2, f0
/* 80360304 0035D244  EC 03 00 72 */	fmuls f0, f3, f1
/* 80360308 0035D248  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8036030C 0035D24C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80360310 0035D250  EC 00 00 72 */	fmuls f0, f0, f1
/* 80360314 0035D254  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80360318 0035D258  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8036031C 0035D25C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80360320 0035D260  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80360324 0035D264  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 80360328 0035D268  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8036032C 0035D26C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80360330 0035D270  EC 01 00 2A */	fadds f0, f1, f0
/* 80360334 0035D274  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80360338 0035D278  80 9F 02 BC */	lwz r4, 0x2bc(r31)
/* 8036033C 0035D27C  C0 A2 08 10 */	lfs f5, "@1758"@sda21(r2)
/* 80360340 0035D280  81 04 00 04 */	lwz r8, 4(r4)
/* 80360344 0035D284  48 00 00 78 */	b lbl_803603BC
lbl_80360348:
/* 80360348 0035D288  38 87 00 01 */	addi r4, r7, 1
/* 8036034C 0035D28C  7C 04 30 50 */	subf r0, r4, r6
/* 80360350 0035D290  7C 04 30 00 */	cmpw r4, r6
/* 80360354 0035D294  7C 09 03 A6 */	mtctr r0
/* 80360358 0035D298  39 28 00 0C */	addi r9, r8, 0xc
/* 8036035C 0035D29C  40 80 00 58 */	bge lbl_803603B4
lbl_80360360:
/* 80360360 0035D2A0  80 A9 00 00 */	lwz r5, 0(r9)
/* 80360364 0035D2A4  80 88 00 00 */	lwz r4, 0(r8)
/* 80360368 0035D2A8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8036036C 0035D2AC  C0 64 00 00 */	lfs f3, 0(r4)
/* 80360370 0035D2B0  C0 24 00 04 */	lfs f1, 4(r4)
/* 80360374 0035D2B4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80360378 0035D2B8  EC 83 10 28 */	fsubs f4, f3, f2
/* 8036037C 0035D2BC  C0 44 00 08 */	lfs f2, 8(r4)
/* 80360380 0035D2C0  EC 61 00 28 */	fsubs f3, f1, f0
/* 80360384 0035D2C4  C0 05 00 08 */	lfs f0, 8(r5)
/* 80360388 0035D2C8  EC 24 01 32 */	fmuls f1, f4, f4
/* 8036038C 0035D2CC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80360390 0035D2D0  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80360394 0035D2D4  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80360398 0035D2D8  EC 01 00 2A */	fadds f0, f1, f0
/* 8036039C 0035D2DC  EC 02 00 2A */	fadds f0, f2, f0
/* 803603A0 0035D2E0  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 803603A4 0035D2E4  40 81 00 08 */	ble lbl_803603AC
/* 803603A8 0035D2E8  FC A0 00 90 */	fmr f5, f0
lbl_803603AC:
/* 803603AC 0035D2EC  39 29 00 0C */	addi r9, r9, 0xc
/* 803603B0 0035D2F0  42 00 FF B0 */	bdnz lbl_80360360
lbl_803603B4:
/* 803603B4 0035D2F4  38 E7 00 01 */	addi r7, r7, 1
/* 803603B8 0035D2F8  39 08 00 0C */	addi r8, r8, 0xc
lbl_803603BC:
/* 803603BC 0035D2FC  7C 07 18 00 */	cmpw r7, r3
/* 803603C0 0035D300  41 80 FF 88 */	blt lbl_80360348
/* 803603C4 0035D304  C0 02 08 10 */	lfs f0, "@1758"@sda21(r2)
/* 803603C8 0035D308  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 803603CC 0035D30C  40 81 00 34 */	ble lbl_80360400
/* 803603D0 0035D310  FC 60 28 34 */	frsqrte f3, f5
/* 803603D4 0035D314  C8 42 08 18 */	lfd f2, "@1760"@sda21(r2)
/* 803603D8 0035D318  C8 02 08 20 */	lfd f0, "@1761"@sda21(r2)
/* 803603DC 0035D31C  FC 23 00 F2 */	fmul f1, f3, f3
/* 803603E0 0035D320  FC 42 00 F2 */	fmul f2, f2, f3
/* 803603E4 0035D324  FC 05 00 7C */	fnmsub f0, f5, f1, f0
/* 803603E8 0035D328  FC 02 00 32 */	fmul f0, f2, f0
/* 803603EC 0035D32C  FC 05 00 32 */	fmul f0, f5, f0
/* 803603F0 0035D330  FC 00 00 18 */	frsp f0, f0
/* 803603F4 0035D334  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 803603F8 0035D338  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 803603FC 0035D33C  48 00 00 08 */	b lbl_80360404
lbl_80360400:
/* 80360400 0035D340  FC 60 28 90 */	fmr f3, f5
lbl_80360404:
/* 80360404 0035D344  C0 22 08 2C */	lfs f1, "@1763"@sda21(r2)
/* 80360408 0035D348  C0 02 08 28 */	lfs f0, "@1762"@sda21(r2)
/* 8036040C 0035D34C  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80360410 0035D350  EF E1 00 FA */	fmadds f31, f1, f3, f0
/* 80360414 0035D354  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80360418 0035D358  C0 23 00 08 */	lfs f1, 8(r3)
/* 8036041C 0035D35C  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 80360420 0035D360  40 81 00 0C */	ble lbl_8036042C
/* 80360424 0035D364  FF E0 10 90 */	fmr f31, f2
/* 80360428 0035D368  48 00 00 10 */	b lbl_80360438
lbl_8036042C:
/* 8036042C 0035D36C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80360430 0035D370  40 80 00 08 */	bge lbl_80360438
/* 80360434 0035D374  FF E0 08 90 */	fmr f31, f1
lbl_80360438:
/* 80360438 0035D378  FC 60 F8 90 */	fmr f3, f31
/* 8036043C 0035D37C  4B E0 A2 05 */	bl "CLBCalcRatio<f>__Ffff"
/* 80360440 0035D380  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 80360444 0035D384  A8 64 00 18 */	lha r3, 0x18(r4)
/* 80360448 0035D388  A8 84 00 1A */	lha r4, 0x1a(r4)
/* 8036044C 0035D38C  4B FF 5B 81 */	bl "CLBLinearInbetween<s>__Fssf"
/* 80360450 0035D390  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80360454 0035D394  7C 65 1B 78 */	mr r5, r3
/* 80360458 0035D398  FC 20 F8 90 */	fmr f1, f31
/* 8036045C 0035D39C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80360460 0035D3A0  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 80360464 0035D3A4  38 9F 00 98 */	addi r4, r31, 0x98
/* 80360468 0035D3A8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8036046C 0035D3AC  38 C0 00 00 */	li r6, 0
/* 80360470 0035D3B0  D0 1F 00 90 */	stfs f0, 0x90(r31)
/* 80360474 0035D3B4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80360478 0035D3B8  D0 1F 00 94 */	stfs f0, 0x94(r31)
/* 8036047C 0035D3BC  4B FF 80 D1 */	bl CLBPolarToCross__FRC3VecP3Vecfss
lbl_80360480:
/* 80360480 0035D3C0  7F E3 FB 78 */	mr r3, r31
/* 80360484 0035D3C4  4B FF 35 25 */	bl calcPosAndAt___15CPolarSubCameraFv
/* 80360488 0035D3C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8036048C 0035D3CC  CB E1 00 58 */	lfd f31, 0x58(r1)
/* 80360490 0035D3D0  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 80360494 0035D3D4  7C 08 03 A6 */	mtlr r0
/* 80360498 0035D3D8  38 21 00 60 */	addi r1, r1, 0x60
/* 8036049C 0035D3DC  4E 80 00 20 */	blr 

.global "removeMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3<f>"
"removeMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3<f>":
/* 803604A0 0035D3E0  80 E3 02 BC */	lwz r7, 0x2bc(r3)
/* 803604A4 0035D3E4  28 07 00 00 */	cmplwi r7, 0
/* 803604A8 0035D3E8  40 82 00 0C */	bne lbl_803604B4
/* 803604AC 0035D3EC  38 60 00 00 */	li r3, 0
/* 803604B0 0035D3F0  4E 80 00 20 */	blr 
lbl_803604B4:
/* 803604B4 0035D3F4  38 60 00 00 */	li r3, 0
/* 803604B8 0035D3F8  80 A7 00 04 */	lwz r5, 4(r7)
/* 803604BC 0035D3FC  7C 66 1B 78 */	mr r6, r3
/* 803604C0 0035D400  48 00 00 54 */	b lbl_80360514
lbl_803604C4:
/* 803604C4 0035D404  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803604C8 0035D408  28 00 00 01 */	cmplwi r0, 1
/* 803604CC 0035D40C  41 82 00 18 */	beq lbl_803604E4
/* 803604D0 0035D410  28 00 00 00 */	cmplwi r0, 0
/* 803604D4 0035D414  40 82 00 38 */	bne lbl_8036050C
/* 803604D8 0035D418  80 05 00 00 */	lwz r0, 0(r5)
/* 803604DC 0035D41C  7C 00 20 40 */	cmplw r0, r4
/* 803604E0 0035D420  40 82 00 2C */	bne lbl_8036050C
lbl_803604E4:
/* 803604E4 0035D424  38 08 FF FF */	addi r0, r8, -1
/* 803604E8 0035D428  7C 06 00 00 */	cmpw r6, r0
/* 803604EC 0035D42C  41 82 00 1C */	beq lbl_80360508
/* 803604F0 0035D430  80 65 00 0C */	lwz r3, 0xc(r5)
/* 803604F4 0035D434  80 05 00 10 */	lwz r0, 0x10(r5)
/* 803604F8 0035D438  90 65 00 00 */	stw r3, 0(r5)
/* 803604FC 0035D43C  90 05 00 04 */	stw r0, 4(r5)
/* 80360500 0035D440  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80360504 0035D444  90 05 00 08 */	stw r0, 8(r5)
lbl_80360508:
/* 80360508 0035D448  38 60 00 01 */	li r3, 1
lbl_8036050C:
/* 8036050C 0035D44C  38 C6 00 01 */	addi r6, r6, 1
/* 80360510 0035D450  38 A5 00 0C */	addi r5, r5, 0xc
lbl_80360514:
/* 80360514 0035D454  89 07 00 01 */	lbz r8, 1(r7)
/* 80360518 0035D458  7C 06 40 00 */	cmpw r6, r8
/* 8036051C 0035D45C  41 80 FF A8 */	blt lbl_803604C4
/* 80360520 0035D460  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80360524 0035D464  28 00 00 01 */	cmplwi r0, 1
/* 80360528 0035D468  4C 82 00 20 */	bnelr 
/* 8036052C 0035D46C  38 08 FF FF */	addi r0, r8, -1
/* 80360530 0035D470  98 07 00 01 */	stb r0, 1(r7)
/* 80360534 0035D474  4E 80 00 20 */	blr 

.global "addMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3<f>ff"
"addMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3<f>ff":
/* 80360538 0035D478  80 A3 02 BC */	lwz r5, 0x2bc(r3)
/* 8036053C 0035D47C  28 05 00 00 */	cmplwi r5, 0
/* 80360540 0035D480  40 82 00 0C */	bne lbl_8036054C
/* 80360544 0035D484  38 60 00 00 */	li r3, 0
/* 80360548 0035D488  4E 80 00 20 */	blr 
lbl_8036054C:
/* 8036054C 0035D48C  88 65 00 01 */	lbz r3, 1(r5)
/* 80360550 0035D490  88 05 00 00 */	lbz r0, 0(r5)
/* 80360554 0035D494  7C 03 00 40 */	cmplw r3, r0
/* 80360558 0035D498  41 80 00 0C */	blt lbl_80360564
/* 8036055C 0035D49C  38 80 00 00 */	li r4, 0
/* 80360560 0035D4A0  48 00 00 2C */	b lbl_8036058C
lbl_80360564:
/* 80360564 0035D4A4  1C 03 00 0C */	mulli r0, r3, 0xc
/* 80360568 0035D4A8  80 65 00 04 */	lwz r3, 4(r5)
/* 8036056C 0035D4AC  7C 63 02 14 */	add r3, r3, r0
/* 80360570 0035D4B0  90 83 00 00 */	stw r4, 0(r3)
/* 80360574 0035D4B4  38 80 00 01 */	li r4, 1
/* 80360578 0035D4B8  D0 23 00 04 */	stfs f1, 4(r3)
/* 8036057C 0035D4BC  D0 43 00 08 */	stfs f2, 8(r3)
/* 80360580 0035D4C0  88 65 00 01 */	lbz r3, 1(r5)
/* 80360584 0035D4C4  38 03 00 01 */	addi r0, r3, 1
/* 80360588 0035D4C8  98 05 00 01 */	stb r0, 1(r5)
lbl_8036058C:
/* 8036058C 0035D4CC  7C 83 23 78 */	mr r3, r4
/* 80360590 0035D4D0  4E 80 00 20 */	blr 

.global createMultiPlayer__15CPolarSubCameraFUc
createMultiPlayer__15CPolarSubCameraFUc:
/* 80360594 0035D4D4  7C 08 02 A6 */	mflr r0
/* 80360598 0035D4D8  90 01 00 04 */	stw r0, 4(r1)
/* 8036059C 0035D4DC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 803605A0 0035D4E0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 803605A4 0035D4E4  3B E4 00 00 */	addi r31, r4, 0
/* 803605A8 0035D4E8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 803605AC 0035D4EC  7C 7E 1B 78 */	mr r30, r3
/* 803605B0 0035D4F0  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 803605B4 0035D4F4  80 03 02 BC */	lwz r0, 0x2bc(r3)
/* 803605B8 0035D4F8  28 00 00 00 */	cmplwi r0, 0
/* 803605BC 0035D4FC  40 82 00 54 */	bne lbl_80360610
/* 803605C0 0035D500  38 60 00 08 */	li r3, 8
/* 803605C4 0035D504  4B CA C2 ED */	bl __nw__FUl
/* 803605C8 0035D508  7C 7D 1B 79 */	or. r29, r3, r3
/* 803605CC 0035D50C  41 82 00 40 */	beq lbl_8036060C
/* 803605D0 0035D510  9B FD 00 00 */	stb r31, 0(r29)
/* 803605D4 0035D514  57 FF 06 3E */	clrlwi r31, r31, 0x18
/* 803605D8 0035D518  38 00 00 00 */	li r0, 0
/* 803605DC 0035D51C  98 1D 00 01 */	stb r0, 1(r29)
/* 803605E0 0035D520  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 803605E4 0035D524  90 1D 00 04 */	stw r0, 4(r29)
/* 803605E8 0035D528  38 63 00 08 */	addi r3, r3, 8
/* 803605EC 0035D52C  4B CA C3 C5 */	bl __nwa__FUl
/* 803605F0 0035D530  3C 80 80 36 */	lis r4, __ct__16TMultiPlayerDataFv@ha
/* 803605F4 0035D534  38 84 06 2C */	addi r4, r4, __ct__16TMultiPlayerDataFv@l
/* 803605F8 0035D538  38 FF 00 00 */	addi r7, r31, 0
/* 803605FC 0035D53C  38 A0 00 00 */	li r5, 0
/* 80360600 0035D540  38 C0 00 0C */	li r6, 0xc
/* 80360604 0035D544  4B D2 23 E9 */	bl __construct_new_array
/* 80360608 0035D548  90 7D 00 04 */	stw r3, 4(r29)
lbl_8036060C:
/* 8036060C 0035D54C  93 BE 02 BC */	stw r29, 0x2bc(r30)
lbl_80360610:
/* 80360610 0035D550  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80360614 0035D554  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80360618 0035D558  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8036061C 0035D55C  7C 08 03 A6 */	mtlr r0
/* 80360620 0035D560  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80360624 0035D564  38 21 00 28 */	addi r1, r1, 0x28
/* 80360628 0035D568  4E 80 00 20 */	blr 

.global __ct__16TMultiPlayerDataFv
__ct__16TMultiPlayerDataFv:
/* 8036062C 0035D56C  38 00 00 00 */	li r0, 0
/* 80360630 0035D570  90 03 00 00 */	stw r0, 0(r3)
/* 80360634 0035D574  C0 02 08 10 */	lfs f0, "@1758"@sda21(r2)
/* 80360638 0035D578  D0 03 00 04 */	stfs f0, 4(r3)
/* 8036063C 0035D57C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80360640 0035D580  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@1758":
  .4byte 0
"@1759":
	.4byte 0x3F800000
"@1760":
	.4byte 0x3FE00000
	.4byte 0
"@1761":
	.4byte 0x40080000
	.4byte 0
"@1762":
	.4byte 0x43960000
"@1763":
	.4byte 0x3FC00000
"@1765":
	.4byte 0x43300000
	.4byte 0x80000000
