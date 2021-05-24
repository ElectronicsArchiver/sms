.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__13J2DOrthoGraphFRC7JUTRect
__ct__13J2DOrthoGraphFRC7JUTRect:
/* 80036B38 00033A78  7C 08 02 A6 */	mflr r0
/* 80036B3C 00033A7C  90 01 00 04 */	stw r0, 4(r1)
/* 80036B40 00033A80  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80036B44 00033A84  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80036B48 00033A88  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80036B4C 00033A8C  7C 9E 23 78 */	mr r30, r4
/* 80036B50 00033A90  90 61 00 08 */	stw r3, 8(r1)
/* 80036B54 00033A94  80 61 00 08 */	lwz r3, 8(r1)
/* 80036B58 00033A98  4B FF E4 75 */	bl __ct__14J2DGrafContextFRC7JUTRect
/* 80036B5C 00033A9C  83 E1 00 08 */	lwz r31, 8(r1)
/* 80036B60 00033AA0  3C 60 80 3B */	lis r3, __vt__13J2DOrthoGraph@ha
/* 80036B64 00033AA4  38 03 9B B0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 80036B68 00033AA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80036B6C 00033AAC  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 80036B70 00033AB0  38 80 00 00 */	li r4, 0
/* 80036B74 00033AB4  38 A0 00 00 */	li r5, 0
/* 80036B78 00033AB8  38 C0 00 00 */	li r6, 0
/* 80036B7C 00033ABC  38 E0 00 00 */	li r7, 0
/* 80036B80 00033AC0  4B FD C6 9D */	bl set__7JUTRectFiiii
/* 80036B84 00033AC4  80 FE 00 04 */	lwz r7, 4(r30)
/* 80036B88 00033AC8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80036B8C 00033ACC  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 80036B90 00033AD0  38 80 00 00 */	li r4, 0
/* 80036B94 00033AD4  80 BE 00 00 */	lwz r5, 0(r30)
/* 80036B98 00033AD8  80 1E 00 08 */	lwz r0, 8(r30)
/* 80036B9C 00033ADC  7C E7 30 50 */	subf r7, r7, r6
/* 80036BA0 00033AE0  7C C5 00 50 */	subf r6, r5, r0
/* 80036BA4 00033AE4  38 A0 00 00 */	li r5, 0
/* 80036BA8 00033AE8  4B FD C6 75 */	bl set__7JUTRectFiiii
/* 80036BAC 00033AEC  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80036BB0 00033AF0  7F E3 FB 78 */	mr r3, r31
/* 80036BB4 00033AF4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80036BB8 00033AF8  90 9F 00 D8 */	stw r4, 0xd8(r31)
/* 80036BBC 00033AFC  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 80036BC0 00033B00  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80036BC4 00033B04  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80036BC8 00033B08  90 9F 00 E0 */	stw r4, 0xe0(r31)
/* 80036BCC 00033B0C  90 1F 00 E4 */	stw r0, 0xe4(r31)
/* 80036BD0 00033B10  C0 02 82 B0 */	lfs f0, $$2123@sda21(r2)
/* 80036BD4 00033B14  D0 1F 00 E8 */	stfs f0, 0xe8(r31)
/* 80036BD8 00033B18  C0 02 82 B4 */	lfs f0, $$2124@sda21(r2)
/* 80036BDC 00033B1C  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 80036BE0 00033B20  81 9F 00 00 */	lwz r12, 0(r31)
/* 80036BE4 00033B24  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80036BE8 00033B28  7D 88 03 A6 */	mtlr r12
/* 80036BEC 00033B2C  4E 80 00 21 */	blrl 
/* 80036BF0 00033B30  38 00 00 01 */	li r0, 1
/* 80036BF4 00033B34  90 1F 00 04 */	stw r0, 4(r31)
/* 80036BF8 00033B38  7F E3 FB 78 */	mr r3, r31
/* 80036BFC 00033B3C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80036C00 00033B40  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80036C04 00033B44  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80036C08 00033B48  38 21 00 38 */	addi r1, r1, 0x38
/* 80036C0C 00033B4C  7C 08 03 A6 */	mtlr r0
/* 80036C10 00033B50  4E 80 00 20 */	blr 

.global __ct__13J2DOrthoGraphFiiii
__ct__13J2DOrthoGraphFiiii:
/* 80036C14 00033B54  7C 08 02 A6 */	mflr r0
/* 80036C18 00033B58  90 01 00 04 */	stw r0, 4(r1)
/* 80036C1C 00033B5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80036C20 00033B60  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80036C24 00033B64  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80036C28 00033B68  7C FE 3B 78 */	mr r30, r7
/* 80036C2C 00033B6C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80036C30 00033B70  7C DD 33 78 */	mr r29, r6
/* 80036C34 00033B74  90 61 00 08 */	stw r3, 8(r1)
/* 80036C38 00033B78  80 61 00 08 */	lwz r3, 8(r1)
/* 80036C3C 00033B7C  4B FF E4 4D */	bl __ct__14J2DGrafContextFiiii
/* 80036C40 00033B80  83 E1 00 08 */	lwz r31, 8(r1)
/* 80036C44 00033B84  3C 60 80 3B */	lis r3, __vt__13J2DOrthoGraph@ha
/* 80036C48 00033B88  38 03 9B B0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 80036C4C 00033B8C  90 1F 00 00 */	stw r0, 0(r31)
/* 80036C50 00033B90  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 80036C54 00033B94  38 80 00 00 */	li r4, 0
/* 80036C58 00033B98  38 A0 00 00 */	li r5, 0
/* 80036C5C 00033B9C  38 C0 00 00 */	li r6, 0
/* 80036C60 00033BA0  38 E0 00 00 */	li r7, 0
/* 80036C64 00033BA4  4B FD C5 B9 */	bl set__7JUTRectFiiii
/* 80036C68 00033BA8  38 DD 00 00 */	addi r6, r29, 0
/* 80036C6C 00033BAC  38 FE 00 00 */	addi r7, r30, 0
/* 80036C70 00033BB0  38 61 00 20 */	addi r3, r1, 0x20
/* 80036C74 00033BB4  38 80 00 00 */	li r4, 0
/* 80036C78 00033BB8  38 A0 00 00 */	li r5, 0
/* 80036C7C 00033BBC  4B FD C5 A1 */	bl set__7JUTRectFiiii
/* 80036C80 00033BC0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80036C84 00033BC4  7F E3 FB 78 */	mr r3, r31
/* 80036C88 00033BC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80036C8C 00033BCC  90 9F 00 D8 */	stw r4, 0xd8(r31)
/* 80036C90 00033BD0  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 80036C94 00033BD4  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80036C98 00033BD8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80036C9C 00033BDC  90 9F 00 E0 */	stw r4, 0xe0(r31)
/* 80036CA0 00033BE0  90 1F 00 E4 */	stw r0, 0xe4(r31)
/* 80036CA4 00033BE4  C0 02 82 B0 */	lfs f0, $$2123@sda21(r2)
/* 80036CA8 00033BE8  D0 1F 00 E8 */	stfs f0, 0xe8(r31)
/* 80036CAC 00033BEC  C0 02 82 B4 */	lfs f0, $$2124@sda21(r2)
/* 80036CB0 00033BF0  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 80036CB4 00033BF4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80036CB8 00033BF8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80036CBC 00033BFC  7D 88 03 A6 */	mtlr r12
/* 80036CC0 00033C00  4E 80 00 21 */	blrl 
/* 80036CC4 00033C04  38 00 00 01 */	li r0, 1
/* 80036CC8 00033C08  90 1F 00 04 */	stw r0, 4(r31)
/* 80036CCC 00033C0C  7F E3 FB 78 */	mr r3, r31
/* 80036CD0 00033C10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80036CD4 00033C14  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80036CD8 00033C18  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80036CDC 00033C1C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80036CE0 00033C20  38 21 00 40 */	addi r1, r1, 0x40
/* 80036CE4 00033C24  7C 08 03 A6 */	mtlr r0
/* 80036CE8 00033C28  4E 80 00 20 */	blr 

.global setPort__13J2DOrthoGraphFv
setPort__13J2DOrthoGraphFv:
/* 80036CEC 00033C2C  7C 08 02 A6 */	mflr r0
/* 80036CF0 00033C30  90 01 00 04 */	stw r0, 4(r1)
/* 80036CF4 00033C34  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80036CF8 00033C38  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80036CFC 00033C3C  7C 7F 1B 78 */	mr r31, r3
/* 80036D00 00033C40  4B FF E4 5D */	bl setPort__14J2DGrafContextFv
/* 80036D04 00033C44  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80036D08 00033C48  3C A0 43 30 */	lis r5, 0x4330
/* 80036D0C 00033C4C  80 9F 00 DC */	lwz r4, 0xdc(r31)
/* 80036D10 00033C50  38 7F 00 44 */	addi r3, r31, 0x44
/* 80036D14 00033C54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80036D18 00033C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80036D1C 00033C5C  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 80036D20 00033C60  80 9F 00 D8 */	lwz r4, 0xd8(r31)
/* 80036D24 00033C64  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80036D28 00033C68  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80036D2C 00033C6C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80036D30 00033C70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80036D34 00033C74  C8 82 82 C0 */	lfd f4, $$2132@sda21(r2)
/* 80036D38 00033C78  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80036D3C 00033C7C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80036D40 00033C80  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80036D44 00033C84  EC 00 20 28 */	fsubs f0, f0, f4
/* 80036D48 00033C88  C0 22 82 B8 */	lfs f1, $$2130@sda21(r2)
/* 80036D4C 00033C8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80036D50 00033C90  C0 BF 00 E8 */	lfs f5, 0xe8(r31)
/* 80036D54 00033C94  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80036D58 00033C98  EC 41 00 2A */	fadds f2, f1, f0
/* 80036D5C 00033C9C  C0 DF 00 EC */	lfs f6, 0xec(r31)
/* 80036D60 00033CA0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80036D64 00033CA4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80036D68 00033CA8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80036D6C 00033CAC  C8 61 00 18 */	lfd f3, 0x18(r1)
/* 80036D70 00033CB0  EC 20 20 28 */	fsubs f1, f0, f4
/* 80036D74 00033CB4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80036D78 00033CB8  EC 63 20 28 */	fsubs f3, f3, f4
/* 80036D7C 00033CBC  EC 80 20 28 */	fsubs f4, f0, f4
/* 80036D80 00033CC0  48 05 E0 75 */	bl C_MTXOrtho
/* 80036D84 00033CC4  38 7F 00 44 */	addi r3, r31, 0x44
/* 80036D88 00033CC8  38 80 00 01 */	li r4, 1
/* 80036D8C 00033CCC  48 07 67 C9 */	bl GXSetProjection
/* 80036D90 00033CD0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80036D94 00033CD4  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80036D98 00033CD8  38 21 00 38 */	addi r1, r1, 0x38
/* 80036D9C 00033CDC  7C 08 03 A6 */	mtlr r0
/* 80036DA0 00033CE0  4E 80 00 20 */	blr 

.global setLookat__13J2DOrthoGraphFv
setLookat__13J2DOrthoGraphFv:
/* 80036DA4 00033CE4  7C 08 02 A6 */	mflr r0
/* 80036DA8 00033CE8  90 01 00 04 */	stw r0, 4(r1)
/* 80036DAC 00033CEC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80036DB0 00033CF0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80036DB4 00033CF4  3B E3 00 00 */	addi r31, r3, 0
/* 80036DB8 00033CF8  38 7F 00 84 */	addi r3, r31, 0x84
/* 80036DBC 00033CFC  48 05 D4 F5 */	bl PSMTXIdentity
/* 80036DC0 00033D00  38 7F 00 84 */	addi r3, r31, 0x84
/* 80036DC4 00033D04  38 80 00 00 */	li r4, 0
/* 80036DC8 00033D08  48 07 69 65 */	bl GXLoadPosMtxImm
/* 80036DCC 00033D0C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80036DD0 00033D10  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80036DD4 00033D14  38 21 00 18 */	addi r1, r1, 0x18
/* 80036DD8 00033D18  7C 08 03 A6 */	mtlr r0
/* 80036DDC 00033D1C  4E 80 00 20 */	blr 

.global scissorBounds__13J2DOrthoGraphFP7JUTRectP7JUTRect
scissorBounds__13J2DOrthoGraphFP7JUTRectP7JUTRect:
/* 80036DE0 00033D20  94 21 FF 18 */	stwu r1, -0xe8(r1)
/* 80036DE4 00033D24  81 43 00 08 */	lwz r10, 8(r3)
/* 80036DE8 00033D28  3C 00 43 30 */	lis r0, 0x4330
/* 80036DEC 00033D2C  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 80036DF0 00033D30  81 23 00 D8 */	lwz r9, 0xd8(r3)
/* 80036DF4 00033D34  6D 48 80 00 */	xoris r8, r10, 0x8000
/* 80036DF8 00033D38  80 C3 00 E0 */	lwz r6, 0xe0(r3)
/* 80036DFC 00033D3C  7C EA 38 50 */	subf r7, r10, r7
/* 80036E00 00033D40  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 80036E04 00033D44  7C C9 30 50 */	subf r6, r9, r6
/* 80036E08 00033D48  90 E1 00 D4 */	stw r7, 0xd4(r1)
/* 80036E0C 00033D4C  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80036E10 00033D50  80 E5 00 00 */	lwz r7, 0(r5)
/* 80036E14 00033D54  90 C1 00 CC */	stw r6, 0xcc(r1)
/* 80036E18 00033D58  C8 22 82 C0 */	lfd f1, $$2132@sda21(r2)
/* 80036E1C 00033D5C  7C C9 38 50 */	subf r6, r9, r7
/* 80036E20 00033D60  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80036E24 00033D64  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80036E28 00033D68  C0 42 82 C8 */	lfs f2, $$2164@sda21(r2)
/* 80036E2C 00033D6C  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80036E30 00033D70  C8 61 00 D0 */	lfd f3, 0xd0(r1)
/* 80036E34 00033D74  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80036E38 00033D78  EC 63 08 28 */	fsubs f3, f3, f1
/* 80036E3C 00033D7C  90 C1 00 DC */	stw r6, 0xdc(r1)
/* 80036E40 00033D80  EC 00 08 28 */	fsubs f0, f0, f1
/* 80036E44 00033D84  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80036E48 00033D88  EC 03 00 24 */	fdivs f0, f3, f0
/* 80036E4C 00033D8C  91 01 00 E4 */	stw r8, 0xe4(r1)
/* 80036E50 00033D90  C8 61 00 D8 */	lfd f3, 0xd8(r1)
/* 80036E54 00033D94  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80036E58 00033D98  C8 81 00 E0 */	lfd f4, 0xe0(r1)
/* 80036E5C 00033D9C  EC 63 08 28 */	fsubs f3, f3, f1
/* 80036E60 00033DA0  EC 84 08 28 */	fsubs f4, f4, f1
/* 80036E64 00033DA4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80036E68 00033DA8  EC 04 00 2A */	fadds f0, f4, f0
/* 80036E6C 00033DAC  EC 02 00 2A */	fadds f0, f2, f0
/* 80036E70 00033DB0  FC 00 00 1E */	fctiwz f0, f0
/* 80036E74 00033DB4  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80036E78 00033DB8  80 C1 00 C4 */	lwz r6, 0xc4(r1)
/* 80036E7C 00033DBC  90 C4 00 00 */	stw r6, 0(r4)
/* 80036E80 00033DC0  81 43 00 08 */	lwz r10, 8(r3)
/* 80036E84 00033DC4  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 80036E88 00033DC8  81 23 00 D8 */	lwz r9, 0xd8(r3)
/* 80036E8C 00033DCC  6D 48 80 00 */	xoris r8, r10, 0x8000
/* 80036E90 00033DD0  80 C3 00 E0 */	lwz r6, 0xe0(r3)
/* 80036E94 00033DD4  7C EA 38 50 */	subf r7, r10, r7
/* 80036E98 00033DD8  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 80036E9C 00033DDC  7C C9 30 50 */	subf r6, r9, r6
/* 80036EA0 00033DE0  90 E1 00 AC */	stw r7, 0xac(r1)
/* 80036EA4 00033DE4  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80036EA8 00033DE8  80 E5 00 08 */	lwz r7, 8(r5)
/* 80036EAC 00033DEC  90 C1 00 A4 */	stw r6, 0xa4(r1)
/* 80036EB0 00033DF0  7C C9 38 50 */	subf r6, r9, r7
/* 80036EB4 00033DF4  C0 02 82 CC */	lfs f0, $$2165@sda21(r2)
/* 80036EB8 00033DF8  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80036EBC 00033DFC  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80036EC0 00033E00  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80036EC4 00033E04  C8 81 00 A8 */	lfd f4, 0xa8(r1)
/* 80036EC8 00033E08  C8 61 00 A0 */	lfd f3, 0xa0(r1)
/* 80036ECC 00033E0C  90 C1 00 B4 */	stw r6, 0xb4(r1)
/* 80036ED0 00033E10  EC 84 08 28 */	fsubs f4, f4, f1
/* 80036ED4 00033E14  EC 63 08 28 */	fsubs f3, f3, f1
/* 80036ED8 00033E18  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80036EDC 00033E1C  91 01 00 BC */	stw r8, 0xbc(r1)
/* 80036EE0 00033E20  EC 64 18 24 */	fdivs f3, f4, f3
/* 80036EE4 00033E24  C8 81 00 B0 */	lfd f4, 0xb0(r1)
/* 80036EE8 00033E28  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80036EEC 00033E2C  C8 A1 00 B8 */	lfd f5, 0xb8(r1)
/* 80036EF0 00033E30  EC 84 08 28 */	fsubs f4, f4, f1
/* 80036EF4 00033E34  EC A5 08 28 */	fsubs f5, f5, f1
/* 80036EF8 00033E38  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80036EFC 00033E3C  EC 65 18 2A */	fadds f3, f5, f3
/* 80036F00 00033E40  EC 60 18 2A */	fadds f3, f0, f3
/* 80036F04 00033E44  FC 60 18 1E */	fctiwz f3, f3
/* 80036F08 00033E48  D8 61 00 98 */	stfd f3, 0x98(r1)
/* 80036F0C 00033E4C  80 C1 00 9C */	lwz r6, 0x9c(r1)
/* 80036F10 00033E50  90 C4 00 08 */	stw r6, 8(r4)
/* 80036F14 00033E54  81 43 00 0C */	lwz r10, 0xc(r3)
/* 80036F18 00033E58  80 E3 00 14 */	lwz r7, 0x14(r3)
/* 80036F1C 00033E5C  81 23 00 DC */	lwz r9, 0xdc(r3)
/* 80036F20 00033E60  6D 48 80 00 */	xoris r8, r10, 0x8000
/* 80036F24 00033E64  80 C3 00 E4 */	lwz r6, 0xe4(r3)
/* 80036F28 00033E68  7C EA 38 50 */	subf r7, r10, r7
/* 80036F2C 00033E6C  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 80036F30 00033E70  7C C9 30 50 */	subf r6, r9, r6
/* 80036F34 00033E74  90 E1 00 84 */	stw r7, 0x84(r1)
/* 80036F38 00033E78  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80036F3C 00033E7C  80 E5 00 04 */	lwz r7, 4(r5)
/* 80036F40 00033E80  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 80036F44 00033E84  7C C9 38 50 */	subf r6, r9, r7
/* 80036F48 00033E88  90 01 00 80 */	stw r0, 0x80(r1)
/* 80036F4C 00033E8C  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80036F50 00033E90  90 01 00 78 */	stw r0, 0x78(r1)
/* 80036F54 00033E94  C8 81 00 80 */	lfd f4, 0x80(r1)
/* 80036F58 00033E98  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 80036F5C 00033E9C  90 C1 00 8C */	stw r6, 0x8c(r1)
/* 80036F60 00033EA0  EC 84 08 28 */	fsubs f4, f4, f1
/* 80036F64 00033EA4  EC 63 08 28 */	fsubs f3, f3, f1
/* 80036F68 00033EA8  90 01 00 88 */	stw r0, 0x88(r1)
/* 80036F6C 00033EAC  91 01 00 94 */	stw r8, 0x94(r1)
/* 80036F70 00033EB0  EC 64 18 24 */	fdivs f3, f4, f3
/* 80036F74 00033EB4  C8 81 00 88 */	lfd f4, 0x88(r1)
/* 80036F78 00033EB8  90 01 00 90 */	stw r0, 0x90(r1)
/* 80036F7C 00033EBC  C8 A1 00 90 */	lfd f5, 0x90(r1)
/* 80036F80 00033EC0  EC 84 08 28 */	fsubs f4, f4, f1
/* 80036F84 00033EC4  EC A5 08 28 */	fsubs f5, f5, f1
/* 80036F88 00033EC8  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80036F8C 00033ECC  EC 65 18 2A */	fadds f3, f5, f3
/* 80036F90 00033ED0  EC 42 18 2A */	fadds f2, f2, f3
/* 80036F94 00033ED4  FC 40 10 1E */	fctiwz f2, f2
/* 80036F98 00033ED8  D8 41 00 70 */	stfd f2, 0x70(r1)
/* 80036F9C 00033EDC  80 C1 00 74 */	lwz r6, 0x74(r1)
/* 80036FA0 00033EE0  90 C4 00 04 */	stw r6, 4(r4)
/* 80036FA4 00033EE4  81 23 00 0C */	lwz r9, 0xc(r3)
/* 80036FA8 00033EE8  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80036FAC 00033EEC  81 03 00 DC */	lwz r8, 0xdc(r3)
/* 80036FB0 00033EF0  6D 27 80 00 */	xoris r7, r9, 0x8000
/* 80036FB4 00033EF4  80 63 00 E4 */	lwz r3, 0xe4(r3)
/* 80036FB8 00033EF8  7C C9 30 50 */	subf r6, r9, r6
/* 80036FBC 00033EFC  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80036FC0 00033F00  7C 68 18 50 */	subf r3, r8, r3
/* 80036FC4 00033F04  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 80036FC8 00033F08  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80036FCC 00033F0C  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 80036FD0 00033F10  90 61 00 54 */	stw r3, 0x54(r1)
/* 80036FD4 00033F14  7C 68 28 50 */	subf r3, r8, r5
/* 80036FD8 00033F18  90 01 00 58 */	stw r0, 0x58(r1)
/* 80036FDC 00033F1C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80036FE0 00033F20  90 01 00 50 */	stw r0, 0x50(r1)
/* 80036FE4 00033F24  C8 61 00 58 */	lfd f3, 0x58(r1)
/* 80036FE8 00033F28  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 80036FEC 00033F2C  EC 63 08 28 */	fsubs f3, f3, f1
/* 80036FF0 00033F30  90 61 00 64 */	stw r3, 0x64(r1)
/* 80036FF4 00033F34  EC 42 08 28 */	fsubs f2, f2, f1
/* 80036FF8 00033F38  90 01 00 60 */	stw r0, 0x60(r1)
/* 80036FFC 00033F3C  EC 43 10 24 */	fdivs f2, f3, f2
/* 80037000 00033F40  90 E1 00 6C */	stw r7, 0x6c(r1)
/* 80037004 00033F44  C8 61 00 60 */	lfd f3, 0x60(r1)
/* 80037008 00033F48  90 01 00 68 */	stw r0, 0x68(r1)
/* 8003700C 00033F4C  C8 81 00 68 */	lfd f4, 0x68(r1)
/* 80037010 00033F50  EC 63 08 28 */	fsubs f3, f3, f1
/* 80037014 00033F54  EC 84 08 28 */	fsubs f4, f4, f1
/* 80037018 00033F58  EC 23 00 B2 */	fmuls f1, f3, f2
/* 8003701C 00033F5C  EC 24 08 2A */	fadds f1, f4, f1
/* 80037020 00033F60  EC 00 08 2A */	fadds f0, f0, f1
/* 80037024 00033F64  FC 00 00 1E */	fctiwz f0, f0
/* 80037028 00033F68  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8003702C 00033F6C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80037030 00033F70  90 04 00 0C */	stw r0, 0xc(r4)
/* 80037034 00033F74  38 21 00 E8 */	addi r1, r1, 0xe8
/* 80037038 00033F78  4E 80 00 20 */	blr 

.global J2DFillBox__FiiiiQ28JUtility6TColor
J2DFillBox__FiiiiQ28JUtility6TColor:
/* 8003703C 00033F7C  7C 08 02 A6 */	mflr r0
/* 80037040 00033F80  39 23 00 00 */	addi r9, r3, 0
/* 80037044 00033F84  90 01 00 04 */	stw r0, 4(r1)
/* 80037048 00033F88  39 04 00 00 */	addi r8, r4, 0
/* 8003704C 00033F8C  38 89 00 00 */	addi r4, r9, 0
/* 80037050 00033F90  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80037054 00033F94  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80037058 00033F98  3B E1 00 1C */	addi r31, r1, 0x1c
/* 8003705C 00033F9C  38 61 00 20 */	addi r3, r1, 0x20
/* 80037060 00033FA0  80 07 00 00 */	lwz r0, 0(r7)
/* 80037064 00033FA4  38 E5 00 00 */	addi r7, r5, 0
/* 80037068 00033FA8  38 A8 00 00 */	addi r5, r8, 0
/* 8003706C 00033FAC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80037070 00033FB0  38 06 00 00 */	addi r0, r6, 0
/* 80037074 00033FB4  7C C9 3A 14 */	add r6, r9, r7
/* 80037078 00033FB8  7C E8 02 14 */	add r7, r8, r0
/* 8003707C 00033FBC  4B FD C1 A1 */	bl set__7JUTRectFiiii
/* 80037080 00033FC0  38 61 00 20 */	addi r3, r1, 0x20
/* 80037084 00033FC4  38 9F 00 00 */	addi r4, r31, 0
/* 80037088 00033FC8  48 00 00 19 */	bl J2DFillBox__F7JUTRectQ28JUtility6TColor
/* 8003708C 00033FCC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80037090 00033FD0  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80037094 00033FD4  38 21 00 38 */	addi r1, r1, 0x38
/* 80037098 00033FD8  7C 08 03 A6 */	mtlr r0
/* 8003709C 00033FDC  4E 80 00 20 */	blr 

.global J2DFillBox__F7JUTRectQ28JUtility6TColor
J2DFillBox__F7JUTRectQ28JUtility6TColor:
/* 800370A0 00033FE0  7C 08 02 A6 */	mflr r0
/* 800370A4 00033FE4  38 A0 00 00 */	li r5, 0
/* 800370A8 00033FE8  90 01 00 04 */	stw r0, 4(r1)
/* 800370AC 00033FEC  38 C0 00 00 */	li r6, 0
/* 800370B0 00033FF0  38 E0 00 00 */	li r7, 0
/* 800370B4 00033FF4  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 800370B8 00033FF8  BF 61 01 1C */	stmw r27, 0x11c(r1)
/* 800370BC 00033FFC  3B C1 00 28 */	addi r30, r1, 0x28
/* 800370C0 00034000  3B 84 00 00 */	addi r28, r4, 0
/* 800370C4 00034004  3B 63 00 00 */	addi r27, r3, 0
/* 800370C8 00034008  38 80 00 00 */	li r4, 0
/* 800370CC 0003400C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800370D0 00034010  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800370D4 00034014  4B FF DF B5 */	bl __ct__14J2DGrafContextFiiii
/* 800370D8 00034018  83 A1 00 20 */	lwz r29, 0x20(r1)
/* 800370DC 0003401C  3C 60 80 3B */	lis r3, __vt__13J2DOrthoGraph@ha
/* 800370E0 00034020  3B E3 9B B0 */	addi r31, r3, __vt__13J2DOrthoGraph@l
/* 800370E4 00034024  93 FD 00 00 */	stw r31, 0(r29)
/* 800370E8 00034028  38 7D 00 D8 */	addi r3, r29, 0xd8
/* 800370EC 0003402C  38 80 00 00 */	li r4, 0
/* 800370F0 00034030  38 A0 00 00 */	li r5, 0
/* 800370F4 00034034  38 C0 00 00 */	li r6, 0
/* 800370F8 00034038  38 E0 00 00 */	li r7, 0
/* 800370FC 0003403C  4B FD C1 21 */	bl set__7JUTRectFiiii
/* 80037100 00034040  81 9D 00 00 */	lwz r12, 0(r29)
/* 80037104 00034044  7F A3 EB 78 */	mr r3, r29
/* 80037108 00034048  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8003710C 0003404C  7D 88 03 A6 */	mtlr r12
/* 80037110 00034050  4E 80 00 21 */	blrl 
/* 80037114 00034054  38 00 00 01 */	li r0, 1
/* 80037118 00034058  90 1D 00 04 */	stw r0, 4(r29)
/* 8003711C 0003405C  38 E1 00 1C */	addi r7, r1, 0x1c
/* 80037120 00034060  38 C1 00 18 */	addi r6, r1, 0x18
/* 80037124 00034064  80 1C 00 00 */	lwz r0, 0(r28)
/* 80037128 00034068  38 A1 00 14 */	addi r5, r1, 0x14
/* 8003712C 0003406C  38 81 00 10 */	addi r4, r1, 0x10
/* 80037130 00034070  90 01 00 24 */	stw r0, 0x24(r1)
/* 80037134 00034074  7F C3 F3 78 */	mr r3, r30
/* 80037138 00034078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003713C 0003407C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80037140 00034080  90 01 00 18 */	stw r0, 0x18(r1)
/* 80037144 00034084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037148 00034088  90 01 00 10 */	stw r0, 0x10(r1)
/* 8003714C 0003408C  4B FF E3 A9 */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80037150 00034090  38 7E 00 00 */	addi r3, r30, 0
/* 80037154 00034094  38 9B 00 00 */	addi r4, r27, 0
/* 80037158 00034098  4B FF E4 85 */	bl fillBox__14J2DGrafContextFRC7JUTRect
/* 8003715C 0003409C  3C 60 80 3B */	lis r3, __vt__14J2DGrafContext@ha
/* 80037160 000340A0  93 E1 00 28 */	stw r31, 0x28(r1)
/* 80037164 000340A4  38 03 9B 48 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 80037168 000340A8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8003716C 000340AC  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80037170 000340B0  BB 61 01 1C */	lmw r27, 0x11c(r1)
/* 80037174 000340B4  38 21 01 30 */	addi r1, r1, 0x130
/* 80037178 000340B8  7C 08 03 A6 */	mtlr r0
/* 8003717C 000340BC  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__13J2DOrthoGraph
__vt__13J2DOrthoGraph:
  .4byte 0
  .4byte 0
  .4byte __dt__13J2DOrthoGraphFv
  .4byte place__14J2DGrafContextFRC7JUTRect
  .4byte place__14J2DGrafContextFiiii
  .4byte setPort__13J2DOrthoGraphFv
  .4byte setup2D__14J2DGrafContextFv
  .4byte setScissor__14J2DGrafContextFv
  .4byte setLookat__13J2DOrthoGraphFv
  .4byte 0

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2123:
	.incbin "baserom.dol", 0x3E3FB0, 0x4
$$2124:
	.incbin "baserom.dol", 0x3E3FB4, 0x4
$$2130:
	.incbin "baserom.dol", 0x3E3FB8, 0x8
$$2132:
	.incbin "baserom.dol", 0x3E3FC0, 0x8
$$2164:
	.incbin "baserom.dol", 0x3E3FC8, 0x4
$$2165:
	.incbin "baserom.dol", 0x3E3FCC, 0x4
