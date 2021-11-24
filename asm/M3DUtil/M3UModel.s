.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global setMtxCalc__8M3UModelFRC17M3UMtxCalcSetInfo
setMtxCalc__8M3UModelFRC17M3UMtxCalcSetInfo:
/* 800D2C0C 000CFB4C  4E 80 00 20 */	blr 

.global perform__8M3UModelFUlPQ26JDrama9TGraphics
perform__8M3UModelFUlPQ26JDrama9TGraphics:
/* 800D2C10 000CFB50  7C 08 02 A6 */	mflr r0
/* 800D2C14 000CFB54  90 01 00 04 */	stw r0, 4(r1)
/* 800D2C18 000CFB58  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 800D2C1C 000CFB5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D2C20 000CFB60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D2C24 000CFB64  3B E4 00 00 */	addi r31, r4, 0
/* 800D2C28 000CFB68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D2C2C 000CFB6C  3B C3 00 00 */	addi r30, r3, 0
/* 800D2C30 000CFB70  41 82 00 40 */	beq lbl_800D2C70
/* 800D2C34 000CFB74  7F C3 F3 78 */	mr r3, r30
/* 800D2C38 000CFB78  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D2C3C 000CFB7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800D2C40 000CFB80  7D 88 03 A6 */	mtlr r12
/* 800D2C44 000CFB84  4E 80 00 21 */	blrl 
/* 800D2C48 000CFB88  80 7E 00 08 */	lwz r3, 8(r30)
/* 800D2C4C 000CFB8C  81 83 00 00 */	lwz r12, 0(r3)
/* 800D2C50 000CFB90  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800D2C54 000CFB94  7D 88 03 A6 */	mtlr r12
/* 800D2C58 000CFB98  4E 80 00 21 */	blrl 
/* 800D2C5C 000CFB9C  7F C3 F3 78 */	mr r3, r30
/* 800D2C60 000CFBA0  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D2C64 000CFBA4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800D2C68 000CFBA8  7D 88 03 A6 */	mtlr r12
/* 800D2C6C 000CFBAC  4E 80 00 21 */	blrl 
lbl_800D2C70:
/* 800D2C70 000CFBB0  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 800D2C74 000CFBB4  41 82 00 18 */	beq lbl_800D2C8C
/* 800D2C78 000CFBB8  80 7E 00 08 */	lwz r3, 8(r30)
/* 800D2C7C 000CFBBC  81 83 00 00 */	lwz r12, 0(r3)
/* 800D2C80 000CFBC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800D2C84 000CFBC4  7D 88 03 A6 */	mtlr r12
/* 800D2C88 000CFBC8  4E 80 00 21 */	blrl 
lbl_800D2C8C:
/* 800D2C8C 000CFBCC  57 E0 05 AD */	rlwinm. r0, r31, 0, 0x16, 0x16
/* 800D2C90 000CFBD0  41 82 00 40 */	beq lbl_800D2CD0
/* 800D2C94 000CFBD4  7F C3 F3 78 */	mr r3, r30
/* 800D2C98 000CFBD8  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D2C9C 000CFBDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800D2CA0 000CFBE0  7D 88 03 A6 */	mtlr r12
/* 800D2CA4 000CFBE4  4E 80 00 21 */	blrl 
/* 800D2CA8 000CFBE8  80 7E 00 08 */	lwz r3, 8(r30)
/* 800D2CAC 000CFBEC  81 83 00 00 */	lwz r12, 0(r3)
/* 800D2CB0 000CFBF0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800D2CB4 000CFBF4  7D 88 03 A6 */	mtlr r12
/* 800D2CB8 000CFBF8  4E 80 00 21 */	blrl 
/* 800D2CBC 000CFBFC  7F C3 F3 78 */	mr r3, r30
/* 800D2CC0 000CFC00  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D2CC4 000CFC04  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800D2CC8 000CFC08  7D 88 03 A6 */	mtlr r12
/* 800D2CCC 000CFC0C  4E 80 00 21 */	blrl 
lbl_800D2CD0:
/* 800D2CD0 000CFC10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D2CD4 000CFC14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D2CD8 000CFC18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D2CDC 000CFC1C  7C 08 03 A6 */	mtlr r0
/* 800D2CE0 000CFC20  38 21 00 20 */	addi r1, r1, 0x20
/* 800D2CE4 000CFC24  4E 80 00 20 */	blr 

.global entryOut__8M3UModelFv
entryOut__8M3UModelFv:
/* 800D2CE8 000CFC28  7C 08 02 A6 */	mflr r0
/* 800D2CEC 000CFC2C  90 01 00 04 */	stw r0, 4(r1)
/* 800D2CF0 000CFC30  94 21 FF F8 */	stwu r1, -8(r1)
/* 800D2CF4 000CFC34  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 800D2CF8 000CFC38  28 04 00 00 */	cmplwi r4, 0
/* 800D2CFC 000CFC3C  41 82 00 2C */	beq lbl_800D2D28
/* 800D2D00 000CFC40  88 04 00 00 */	lbz r0, 0(r4)
/* 800D2D04 000CFC44  28 00 00 FF */	cmplwi r0, 0xff
/* 800D2D08 000CFC48  41 82 00 20 */	beq lbl_800D2D28
/* 800D2D0C 000CFC4C  80 83 00 04 */	lwz r4, 4(r3)
/* 800D2D10 000CFC50  54 00 10 3A */	slwi r0, r0, 2
/* 800D2D14 000CFC54  80 63 00 08 */	lwz r3, 8(r3)
/* 800D2D18 000CFC58  80 84 00 08 */	lwz r4, 8(r4)
/* 800D2D1C 000CFC5C  80 63 00 04 */	lwz r3, 4(r3)
/* 800D2D20 000CFC60  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D2D24 000CFC64  4B F5 46 09 */	bl removeTexNoAnimator__12J3DModelDataFP16J3DAnmTexPattern
lbl_800D2D28:
/* 800D2D28 000CFC68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D2D2C 000CFC6C  38 21 00 08 */	addi r1, r1, 8
/* 800D2D30 000CFC70  7C 08 03 A6 */	mtlr r0
/* 800D2D34 000CFC74  4E 80 00 20 */	blr 

.global entryIn__8M3UModelFv
entryIn__8M3UModelFv:
/* 800D2D38 000CFC78  7C 08 02 A6 */	mflr r0
/* 800D2D3C 000CFC7C  90 01 00 04 */	stw r0, 4(r1)
/* 800D2D40 000CFC80  94 21 FF F8 */	stwu r1, -8(r1)
/* 800D2D44 000CFC84  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 800D2D48 000CFC88  28 06 00 00 */	cmplwi r6, 0
/* 800D2D4C 000CFC8C  41 82 00 58 */	beq lbl_800D2DA4
/* 800D2D50 000CFC90  88 06 00 01 */	lbz r0, 1(r6)
/* 800D2D54 000CFC94  88 E6 00 00 */	lbz r7, 0(r6)
/* 800D2D58 000CFC98  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800D2D5C 000CFC9C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 800D2D60 000CFCA0  28 07 00 FF */	cmplwi r7, 0xff
/* 800D2D64 000CFCA4  7C A4 02 14 */	add r5, r4, r0
/* 800D2D68 000CFCA8  41 82 00 3C */	beq lbl_800D2DA4
/* 800D2D6C 000CFCAC  80 83 00 04 */	lwz r4, 4(r3)
/* 800D2D70 000CFCB0  54 E0 10 3A */	slwi r0, r7, 2
/* 800D2D74 000CFCB4  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 800D2D78 000CFCB8  80 84 00 08 */	lwz r4, 8(r4)
/* 800D2D7C 000CFCBC  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D2D80 000CFCC0  D0 04 00 04 */	stfs f0, 4(r4)
/* 800D2D84 000CFCC4  80 A3 00 04 */	lwz r5, 4(r3)
/* 800D2D88 000CFCC8  88 06 00 00 */	lbz r0, 0(r6)
/* 800D2D8C 000CFCCC  80 63 00 08 */	lwz r3, 8(r3)
/* 800D2D90 000CFCD0  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 800D2D94 000CFCD4  54 00 10 3A */	slwi r0, r0, 2
/* 800D2D98 000CFCD8  80 63 00 04 */	lwz r3, 4(r3)
/* 800D2D9C 000CFCDC  7C A5 00 2E */	lwzx r5, r5, r0
/* 800D2DA0 000CFCE0  4B F5 48 61 */	bl setTexNoAnimator__12J3DModelDataFP16J3DAnmTexPatternP11J3DTexNoAnm
lbl_800D2DA4:
/* 800D2DA4 000CFCE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D2DA8 000CFCE8  38 21 00 08 */	addi r1, r1, 8
/* 800D2DAC 000CFCEC  7C 08 03 A6 */	mtlr r0
/* 800D2DB0 000CFCF0  4E 80 00 20 */	blr 

.global updateOut__8M3UModelFv
updateOut__8M3UModelFv:
/* 800D2DB4 000CFCF4  38 80 00 00 */	li r4, 0
/* 800D2DB8 000CFCF8  38 E4 00 00 */	addi r7, r4, 0
/* 800D2DBC 000CFCFC  39 00 00 00 */	li r8, 0
/* 800D2DC0 000CFD00  48 00 00 2C */	b lbl_800D2DEC
lbl_800D2DC4:
/* 800D2DC4 000CFD04  80 C3 00 08 */	lwz r6, 8(r3)
/* 800D2DC8 000CFD08  39 08 00 01 */	addi r8, r8, 1
/* 800D2DCC 000CFD0C  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 800D2DD0 000CFD10  80 C6 00 04 */	lwz r6, 4(r6)
/* 800D2DD4 000CFD14  7C 05 22 2E */	lhzx r0, r5, r4
/* 800D2DD8 000CFD18  38 84 00 06 */	addi r4, r4, 6
/* 800D2DDC 000CFD1C  80 A6 00 20 */	lwz r5, 0x20(r6)
/* 800D2DE0 000CFD20  54 00 10 3A */	slwi r0, r0, 2
/* 800D2DE4 000CFD24  7C A5 00 2E */	lwzx r5, r5, r0
/* 800D2DE8 000CFD28  90 E5 00 58 */	stw r7, 0x58(r5)
lbl_800D2DEC:
/* 800D2DEC 000CFD2C  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 800D2DF0 000CFD30  7C 08 00 00 */	cmpw r8, r0
/* 800D2DF4 000CFD34  41 80 FF D0 */	blt lbl_800D2DC4
/* 800D2DF8 000CFD38  4E 80 00 20 */	blr 

.global updateIn__8M3UModelFv
updateIn__8M3UModelFv:
/* 800D2DFC 000CFD3C  7C 08 02 A6 */	mflr r0
/* 800D2E00 000CFD40  90 01 00 04 */	stw r0, 4(r1)
/* 800D2E04 000CFD44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D2E08 000CFD48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D2E0C 000CFD4C  7C 7F 1B 78 */	mr r31, r3
/* 800D2E10 000CFD50  48 00 00 75 */	bl updateInMotion__8M3UModelFv
/* 800D2E14 000CFD54  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800D2E18 000CFD58  28 03 00 00 */	cmplwi r3, 0
/* 800D2E1C 000CFD5C  41 82 00 18 */	beq lbl_800D2E34
/* 800D2E20 000CFD60  88 03 00 01 */	lbz r0, 1(r3)
/* 800D2E24 000CFD64  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 800D2E28 000CFD68  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800D2E2C 000CFD6C  7C 63 02 14 */	add r3, r3, r0
/* 800D2E30 000CFD70  4B F5 84 35 */	bl update__12J3DFrameCtrlFv
lbl_800D2E34:
/* 800D2E34 000CFD74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D2E38 000CFD78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D2E3C 000CFD7C  38 21 00 20 */	addi r1, r1, 0x20
/* 800D2E40 000CFD80  7C 08 03 A6 */	mtlr r0
/* 800D2E44 000CFD84  4E 80 00 20 */	blr 

.global updateInTexPatternAnm__8M3UModelFv
updateInTexPatternAnm__8M3UModelFv:
/* 800D2E48 000CFD88  7C 08 02 A6 */	mflr r0
/* 800D2E4C 000CFD8C  90 01 00 04 */	stw r0, 4(r1)
/* 800D2E50 000CFD90  94 21 FF F8 */	stwu r1, -8(r1)
/* 800D2E54 000CFD94  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 800D2E58 000CFD98  28 04 00 00 */	cmplwi r4, 0
/* 800D2E5C 000CFD9C  41 82 00 18 */	beq lbl_800D2E74
/* 800D2E60 000CFDA0  88 04 00 01 */	lbz r0, 1(r4)
/* 800D2E64 000CFDA4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800D2E68 000CFDA8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800D2E6C 000CFDAC  7C 63 02 14 */	add r3, r3, r0
/* 800D2E70 000CFDB0  4B F5 83 F5 */	bl update__12J3DFrameCtrlFv
lbl_800D2E74:
/* 800D2E74 000CFDB4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D2E78 000CFDB8  38 21 00 08 */	addi r1, r1, 8
/* 800D2E7C 000CFDBC  7C 08 03 A6 */	mtlr r0
/* 800D2E80 000CFDC0  4E 80 00 20 */	blr 

.global updateInMotion__8M3UModelFv
updateInMotion__8M3UModelFv:
/* 800D2E84 000CFDC4  7C 08 02 A6 */	mflr r0
/* 800D2E88 000CFDC8  90 01 00 04 */	stw r0, 4(r1)
/* 800D2E8C 000CFDCC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800D2E90 000CFDD0  BF 21 00 64 */	stmw r25, 0x64(r1)
/* 800D2E94 000CFDD4  3B 63 00 00 */	addi r27, r3, 0
/* 800D2E98 000CFDD8  3B C0 00 00 */	li r30, 0
/* 800D2E9C 000CFDDC  3B 40 00 00 */	li r26, 0
/* 800D2EA0 000CFDE0  48 00 00 E8 */	b lbl_800D2F88
lbl_800D2EA4:
/* 800D2EA4 000CFDE4  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 800D2EA8 000CFDE8  80 7B 00 04 */	lwz r3, 4(r27)
/* 800D2EAC 000CFDEC  7F A0 D2 14 */	add r29, r0, r26
/* 800D2EB0 000CFDF0  80 BB 00 0C */	lwz r5, 0xc(r27)
/* 800D2EB4 000CFDF4  88 9D 00 05 */	lbz r4, 5(r29)
/* 800D2EB8 000CFDF8  88 1D 00 04 */	lbz r0, 4(r29)
/* 800D2EBC 000CFDFC  1C 84 00 14 */	mulli r4, r4, 0x14
/* 800D2EC0 000CFE00  80 63 00 04 */	lwz r3, 4(r3)
/* 800D2EC4 000CFE04  54 00 10 3A */	slwi r0, r0, 2
/* 800D2EC8 000CFE08  7F 25 22 14 */	add r25, r5, r4
/* 800D2ECC 000CFE0C  7F 83 00 2E */	lwzx r28, r3, r0
/* 800D2ED0 000CFE10  7F 23 CB 78 */	mr r3, r25
/* 800D2ED4 000CFE14  4B F5 83 91 */	bl update__12J3DFrameCtrlFv
/* 800D2ED8 000CFE18  80 9B 00 08 */	lwz r4, 8(r27)
/* 800D2EDC 000CFE1C  A0 7D 00 00 */	lhz r3, 0(r29)
/* 800D2EE0 000CFE20  80 84 00 04 */	lwz r4, 4(r4)
/* 800D2EE4 000CFE24  88 1D 00 03 */	lbz r0, 3(r29)
/* 800D2EE8 000CFE28  54 63 10 3A */	slwi r3, r3, 2
/* 800D2EEC 000CFE2C  80 84 00 20 */	lwz r4, 0x20(r4)
/* 800D2EF0 000CFE30  28 00 00 FF */	cmplwi r0, 0xff
/* 800D2EF4 000CFE34  7F E4 18 2E */	lwzx r31, r4, r3
/* 800D2EF8 000CFE38  40 82 00 10 */	bne lbl_800D2F08
/* 800D2EFC 000CFE3C  38 00 00 00 */	li r0, 0
/* 800D2F00 000CFE40  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800D2F04 000CFE44  48 00 00 7C */	b lbl_800D2F80
lbl_800D2F08:
/* 800D2F08 000CFE48  C0 19 00 10 */	lfs f0, 0x10(r25)
/* 800D2F0C 000CFE4C  D0 1C 00 04 */	stfs f0, 4(r28)
/* 800D2F10 000CFE50  88 1D 00 02 */	lbz r0, 2(r29)
/* 800D2F14 000CFE54  2C 00 00 01 */	cmpwi r0, 1
/* 800D2F18 000CFE58  41 82 00 30 */	beq lbl_800D2F48
/* 800D2F1C 000CFE5C  40 80 00 44 */	bge lbl_800D2F60
/* 800D2F20 000CFE60  2C 00 00 00 */	cmpwi r0, 0
/* 800D2F24 000CFE64  40 80 00 08 */	bge lbl_800D2F2C
/* 800D2F28 000CFE68  48 00 00 38 */	b lbl_800D2F60
lbl_800D2F2C:
/* 800D2F2C 000CFE6C  88 1D 00 03 */	lbz r0, 3(r29)
/* 800D2F30 000CFE70  80 9B 00 04 */	lwz r4, 4(r27)
/* 800D2F34 000CFE74  1C 60 00 70 */	mulli r3, r0, 0x70
/* 800D2F38 000CFE78  80 84 00 10 */	lwz r4, 0x10(r4)
/* 800D2F3C 000CFE7C  38 03 00 58 */	addi r0, r3, 0x58
/* 800D2F40 000CFE80  7F 84 01 2E */	stwx r28, r4, r0
/* 800D2F44 000CFE84  48 00 00 1C */	b lbl_800D2F60
lbl_800D2F48:
/* 800D2F48 000CFE88  88 1D 00 03 */	lbz r0, 3(r29)
/* 800D2F4C 000CFE8C  80 9B 00 04 */	lwz r4, 4(r27)
/* 800D2F50 000CFE90  1C 60 00 70 */	mulli r3, r0, 0x70
/* 800D2F54 000CFE94  80 84 00 14 */	lwz r4, 0x14(r4)
/* 800D2F58 000CFE98  38 03 00 58 */	addi r0, r3, 0x58
/* 800D2F5C 000CFE9C  7F 84 01 2E */	stwx r28, r4, r0
lbl_800D2F60:
/* 800D2F60 000CFEA0  80 7B 00 04 */	lwz r3, 4(r27)
/* 800D2F64 000CFEA4  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 800D2F68 000CFEA8  81 83 00 00 */	lwz r12, 0(r3)
/* 800D2F6C 000CFEAC  7C 80 D2 14 */	add r4, r0, r26
/* 800D2F70 000CFEB0  81 8C 00 08 */	lwz r12, 8(r12)
/* 800D2F74 000CFEB4  7D 88 03 A6 */	mtlr r12
/* 800D2F78 000CFEB8  4E 80 00 21 */	blrl 
/* 800D2F7C 000CFEBC  90 7F 00 58 */	stw r3, 0x58(r31)
lbl_800D2F80:
/* 800D2F80 000CFEC0  3B DE 00 01 */	addi r30, r30, 1
/* 800D2F84 000CFEC4  3B 5A 00 06 */	addi r26, r26, 6
lbl_800D2F88:
/* 800D2F88 000CFEC8  A0 1B 00 10 */	lhz r0, 0x10(r27)
/* 800D2F8C 000CFECC  7C 1E 00 00 */	cmpw r30, r0
/* 800D2F90 000CFED0  41 80 FF 14 */	blt lbl_800D2EA4
/* 800D2F94 000CFED4  BB 21 00 64 */	lmw r25, 0x64(r1)
/* 800D2F98 000CFED8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800D2F9C 000CFEDC  38 21 00 80 */	addi r1, r1, 0x80
/* 800D2FA0 000CFEE0  7C 08 03 A6 */	mtlr r0
/* 800D2FA4 000CFEE4  4E 80 00 20 */	blr 

.global changeAnmTexPattern__8M3UModelFiUc
changeAnmTexPattern__8M3UModelFiUc:
/* 800D2FA8 000CFEE8  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 800D2FAC 000CFEEC  54 80 08 3C */	slwi r0, r4, 1
/* 800D2FB0 000CFEF0  7C C6 02 14 */	add r6, r6, r0
/* 800D2FB4 000CFEF4  98 A6 00 00 */	stb r5, 0(r6)
/* 800D2FB8 000CFEF8  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 800D2FBC 000CFEFC  80 83 00 04 */	lwz r4, 4(r3)
/* 800D2FC0 000CFF00  88 A6 00 01 */	lbz r5, 1(r6)
/* 800D2FC4 000CFF04  80 84 00 08 */	lwz r4, 8(r4)
/* 800D2FC8 000CFF08  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 800D2FCC 000CFF0C  1C A5 00 14 */	mulli r5, r5, 0x14
/* 800D2FD0 000CFF10  7C 64 00 2E */	lwzx r3, r4, r0
/* 800D2FD4 000CFF14  A8 03 00 02 */	lha r0, 2(r3)
/* 800D2FD8 000CFF18  7C 66 2A 14 */	add r3, r6, r5
/* 800D2FDC 000CFF1C  B0 03 00 08 */	sth r0, 8(r3)
/* 800D2FE0 000CFF20  C0 02 8E F0 */	lfs f0, $$21716@sda21(r2)
/* 800D2FE4 000CFF24  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800D2FE8 000CFF28  4E 80 00 20 */	blr 

.global changeMtxCalcAnmTransform__8M3UModelFiUc
changeMtxCalcAnmTransform__8M3UModelFiUc:
/* 800D2FEC 000CFF2C  1C 04 00 06 */	mulli r0, r4, 6
/* 800D2FF0 000CFF30  80 83 00 14 */	lwz r4, 0x14(r3)
/* 800D2FF4 000CFF34  7C C4 02 14 */	add r6, r4, r0
/* 800D2FF8 000CFF38  98 A6 00 04 */	stb r5, 4(r6)
/* 800D2FFC 000CFF3C  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 800D3000 000CFF40  80 83 00 04 */	lwz r4, 4(r3)
/* 800D3004 000CFF44  88 A6 00 05 */	lbz r5, 5(r6)
/* 800D3008 000CFF48  80 84 00 04 */	lwz r4, 4(r4)
/* 800D300C 000CFF4C  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 800D3010 000CFF50  1C A5 00 14 */	mulli r5, r5, 0x14
/* 800D3014 000CFF54  7C 64 00 2E */	lwzx r3, r4, r0
/* 800D3018 000CFF58  A8 03 00 02 */	lha r0, 2(r3)
/* 800D301C 000CFF5C  7C 66 2A 14 */	add r3, r6, r5
/* 800D3020 000CFF60  B0 03 00 08 */	sth r0, 8(r3)
/* 800D3024 000CFF64  C0 02 8E F0 */	lfs f0, $$21716@sda21(r2)
/* 800D3028 000CFF68  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800D302C 000CFF6C  4E 80 00 20 */	blr 

.global getMtxCalc__14M3UModelCommonFRC17M3UMtxCalcSetInfo
getMtxCalc__14M3UModelCommonFRC17M3UMtxCalcSetInfo:
/* 800D3030 000CFF70  88 04 00 02 */	lbz r0, 2(r4)
/* 800D3034 000CFF74  2C 00 00 01 */	cmpwi r0, 1
/* 800D3038 000CFF78  41 82 00 30 */	beq lbl_800D3068
/* 800D303C 000CFF7C  40 80 00 48 */	bge lbl_800D3084
/* 800D3040 000CFF80  2C 00 00 00 */	cmpwi r0, 0
/* 800D3044 000CFF84  40 80 00 08 */	bge lbl_800D304C
/* 800D3048 000CFF88  48 00 00 3C */	b lbl_800D3084
lbl_800D304C:
/* 800D304C 000CFF8C  88 04 00 03 */	lbz r0, 3(r4)
/* 800D3050 000CFF90  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800D3054 000CFF94  1C 00 00 70 */	mulli r0, r0, 0x70
/* 800D3058 000CFF98  7C 63 02 15 */	add. r3, r3, r0
/* 800D305C 000CFF9C  4D 82 00 20 */	beqlr 
/* 800D3060 000CFFA0  80 63 00 00 */	lwz r3, 0(r3)
/* 800D3064 000CFFA4  4E 80 00 20 */	blr 
lbl_800D3068:
/* 800D3068 000CFFA8  88 04 00 03 */	lbz r0, 3(r4)
/* 800D306C 000CFFAC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800D3070 000CFFB0  1C 00 00 70 */	mulli r0, r0, 0x70
/* 800D3074 000CFFB4  7C 63 02 15 */	add. r3, r3, r0
/* 800D3078 000CFFB8  4D 82 00 20 */	beqlr 
/* 800D307C 000CFFBC  80 63 00 00 */	lwz r3, 0(r3)
/* 800D3080 000CFFC0  4E 80 00 20 */	blr 
lbl_800D3084:
/* 800D3084 000CFFC4  38 60 00 00 */	li r3, 0
/* 800D3088 000CFFC8  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__8M3UModel
__vt__8M3UModel:
  .4byte 0
  .4byte 0
  .4byte changeMtxCalcAnmTransform__8M3UModelFiUc
  .4byte changeAnmTexPattern__8M3UModelFiUc
  .4byte setMtxCalc__8M3UModelFRC17M3UMtxCalcSetInfo
  .4byte updateIn__8M3UModelFv
  .4byte updateOut__8M3UModelFv
  .4byte entryIn__8M3UModelFv
  .4byte entryOut__8M3UModelFv
.global __vt__14M3UModelCommon
__vt__14M3UModelCommon:
  .4byte 0
  .4byte 0
  .4byte getMtxCalc__14M3UModelCommonFRC17M3UMtxCalcSetInfo

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
$$21716:
  .4byte 0
  .4byte 0
