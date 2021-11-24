.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global isMarioClimb__16TCameraMarioDataCFUl
isMarioClimb__16TCameraMarioDataCFUl:
/* 803589D0 00355910  3C 60 18 10 */	lis r3, 0x18100340@ha
/* 803589D4 00355914  38 03 03 40 */	addi r0, r3, 0x18100340@l
/* 803589D8 00355918  7C 04 00 00 */	cmpw r4, r0
/* 803589DC 0035591C  38 60 00 00 */	li r3, 0
/* 803589E0 00355920  41 82 00 24 */	beq lbl_80358A04
/* 803589E4 00355924  4C 80 00 20 */	bgelr 
/* 803589E8 00355928  3C A0 10 10 */	lis r5, 0x10100344@ha
/* 803589EC 0035592C  38 05 03 44 */	addi r0, r5, 0x10100344@l
/* 803589F0 00355930  7C 04 00 00 */	cmpw r4, r0
/* 803589F4 00355934  4C 80 00 20 */	bgelr 
/* 803589F8 00355938  38 05 03 41 */	addi r0, r5, 0x341
/* 803589FC 0035593C  7C 04 00 00 */	cmpw r4, r0
/* 80358A00 00355940  4D 80 00 20 */	bltlr 
lbl_80358A04:
/* 80358A04 00355944  38 60 00 01 */	li r3, 1
/* 80358A08 00355948  4E 80 00 20 */	blr 

.global isMarioLeanMirror__16TCameraMarioDataCFv
isMarioLeanMirror__16TCameraMarioDataCFv:
/* 80358A0C 0035594C  7C 08 02 A6 */	mflr r0
/* 80358A10 00355950  90 01 00 04 */	stw r0, 4(r1)
/* 80358A14 00355954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80358A18 00355958  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80358A1C 0035595C  3B E0 00 00 */	li r31, 0
/* 80358A20 00355960  4B DF 9F 8D */	bl SMS_GetMarioGrPlane__Fv
/* 80358A24 00355964  28 03 00 00 */	cmplwi r3, 0
/* 80358A28 00355968  41 82 00 28 */	beq lbl_80358A50
/* 80358A2C 0035596C  4B DF 9F 81 */	bl SMS_GetMarioGrPlane__Fv
/* 80358A30 00355970  80 63 00 44 */	lwz r3, 0x44(r3)
/* 80358A34 00355974  28 03 00 00 */	cmplwi r3, 0
/* 80358A38 00355978  41 82 00 18 */	beq lbl_80358A50
/* 80358A3C 0035597C  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 80358A40 00355980  3C 03 C0 00 */	addis r0, r3, 0xc000
/* 80358A44 00355984  28 00 00 CF */	cmplwi r0, 0xcf
/* 80358A48 00355988  40 82 00 08 */	bne lbl_80358A50
/* 80358A4C 0035598C  3B E0 00 01 */	li r31, 1
lbl_80358A50:
/* 80358A50 00355990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358A54 00355994  7F E3 FB 78 */	mr r3, r31
/* 80358A58 00355998  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358A5C 0035599C  38 21 00 20 */	addi r1, r1, 0x20
/* 80358A60 003559A0  7C 08 03 A6 */	mtlr r0
/* 80358A64 003559A4  4E 80 00 20 */	blr 

.global isMarioSlider__16TCameraMarioDataCFv
isMarioSlider__16TCameraMarioDataCFv:
/* 80358A68 003559A8  7C 08 02 A6 */	mflr r0
/* 80358A6C 003559AC  90 01 00 04 */	stw r0, 4(r1)
/* 80358A70 003559B0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80358A74 003559B4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80358A78 003559B8  3B E0 00 00 */	li r31, 0
/* 80358A7C 003559BC  4B DF 9F 31 */	bl SMS_GetMarioGrPlane__Fv
/* 80358A80 003559C0  28 03 00 00 */	cmplwi r3, 0
/* 80358A84 003559C4  41 82 00 34 */	beq lbl_80358AB8
/* 80358A88 003559C8  4B DF 9F 25 */	bl SMS_GetMarioGrPlane__Fv
/* 80358A8C 003559CC  A0 03 00 00 */	lhz r0, 0(r3)
/* 80358A90 003559D0  28 00 00 0C */	cmplwi r0, 0xc
/* 80358A94 003559D4  41 82 00 14 */	beq lbl_80358AA8
/* 80358A98 003559D8  28 00 80 0C */	cmplwi r0, 0x800c
/* 80358A9C 003559DC  41 82 00 0C */	beq lbl_80358AA8
/* 80358AA0 003559E0  28 00 A0 0C */	cmplwi r0, 0xa00c
/* 80358AA4 003559E4  40 82 00 0C */	bne lbl_80358AB0
lbl_80358AA8:
/* 80358AA8 003559E8  38 00 00 01 */	li r0, 1
/* 80358AAC 003559EC  48 00 00 08 */	b lbl_80358AB4
lbl_80358AB0:
/* 80358AB0 003559F0  38 00 00 00 */	li r0, 0
lbl_80358AB4:
/* 80358AB4 003559F4  7C 1F 03 78 */	mr r31, r0
lbl_80358AB8:
/* 80358AB8 003559F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80358ABC 003559FC  7F E3 FB 78 */	mr r3, r31
/* 80358AC0 00355A00  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80358AC4 00355A04  38 21 00 18 */	addi r1, r1, 0x18
/* 80358AC8 00355A08  7C 08 03 A6 */	mtlr r0
/* 80358ACC 00355A0C  4E 80 00 20 */	blr 

.global isMarioIndoor__16TCameraMarioDataCFv
isMarioIndoor__16TCameraMarioDataCFv:
/* 80358AD0 00355A10  7C 08 02 A6 */	mflr r0
/* 80358AD4 00355A14  90 01 00 04 */	stw r0, 4(r1)
/* 80358AD8 00355A18  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80358ADC 00355A1C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80358AE0 00355A20  3B E0 00 00 */	li r31, 0
/* 80358AE4 00355A24  4B DF 9E C9 */	bl SMS_GetMarioGrPlane__Fv
/* 80358AE8 00355A28  28 03 00 00 */	cmplwi r3, 0
/* 80358AEC 00355A2C  41 82 00 3C */	beq lbl_80358B28
/* 80358AF0 00355A30  4B DF 9E BD */	bl SMS_GetMarioGrPlane__Fv
/* 80358AF4 00355A34  A0 63 00 00 */	lhz r3, 0(r3)
/* 80358AF8 00355A38  28 03 01 06 */	cmplwi r3, 0x106
/* 80358AFC 00355A3C  41 82 00 1C */	beq lbl_80358B18
/* 80358B00 00355A40  28 03 01 05 */	cmplwi r3, 0x105
/* 80358B04 00355A44  41 82 00 14 */	beq lbl_80358B18
/* 80358B08 00355A48  38 03 FE F8 */	addi r0, r3, -264
/* 80358B0C 00355A4C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80358B10 00355A50  28 00 00 01 */	cmplwi r0, 1
/* 80358B14 00355A54  41 81 00 0C */	bgt lbl_80358B20
lbl_80358B18:
/* 80358B18 00355A58  38 00 00 01 */	li r0, 1
/* 80358B1C 00355A5C  48 00 00 08 */	b lbl_80358B24
lbl_80358B20:
/* 80358B20 00355A60  38 00 00 00 */	li r0, 0
lbl_80358B24:
/* 80358B24 00355A64  7C 1F 03 78 */	mr r31, r0
lbl_80358B28:
/* 80358B28 00355A68  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80358B2C 00355A6C  7F E3 FB 78 */	mr r3, r31
/* 80358B30 00355A70  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80358B34 00355A74  38 21 00 18 */	addi r1, r1, 0x18
/* 80358B38 00355A78  7C 08 03 A6 */	mtlr r0
/* 80358B3C 00355A7C  4E 80 00 20 */	blr 

.global isMarioRocketing__16TCameraMarioDataCFv
isMarioRocketing__16TCameraMarioDataCFv:
/* 80358B40 00355A80  7C 08 02 A6 */	mflr r0
/* 80358B44 00355A84  90 01 00 04 */	stw r0, 4(r1)
/* 80358B48 00355A88  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80358B4C 00355A8C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80358B50 00355A90  3B E0 00 00 */	li r31, 0
/* 80358B54 00355A94  4B DF 9E 65 */	bl SMS_GetMarioStatus__Fv
/* 80358B58 00355A98  2C 03 08 8C */	cmpwi r3, 0x88c
/* 80358B5C 00355A9C  41 82 00 20 */	beq lbl_80358B7C
/* 80358B60 00355AA0  40 80 00 10 */	bge lbl_80358B70
/* 80358B64 00355AA4  2C 03 08 8B */	cmpwi r3, 0x88b
/* 80358B68 00355AA8  40 80 00 10 */	bge lbl_80358B78
/* 80358B6C 00355AAC  48 00 00 10 */	b lbl_80358B7C
lbl_80358B70:
/* 80358B70 00355AB0  2C 03 08 8E */	cmpwi r3, 0x88e
/* 80358B74 00355AB4  40 80 00 08 */	bge lbl_80358B7C
lbl_80358B78:
/* 80358B78 00355AB8  3B E0 00 01 */	li r31, 1
lbl_80358B7C:
/* 80358B7C 00355ABC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80358B80 00355AC0  7F E3 FB 78 */	mr r3, r31
/* 80358B84 00355AC4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80358B88 00355AC8  38 21 00 18 */	addi r1, r1, 0x18
/* 80358B8C 00355ACC  7C 08 03 A6 */	mtlr r0
/* 80358B90 00355AD0  4E 80 00 20 */	blr 

.global isMarioGoDown__16TCameraMarioDataCFv
isMarioGoDown__16TCameraMarioDataCFv:
/* 80358B94 00355AD4  C0 42 05 98 */	lfs f2, $$22149@sda21(r2)
/* 80358B98 00355AD8  38 00 00 00 */	li r0, 0
/* 80358B9C 00355ADC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80358BA0 00355AE0  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80358BA4 00355AE4  41 82 00 24 */	beq lbl_80358BC8
/* 80358BA8 00355AE8  80 8D 98 DC */	lwz r4, gpMarioPos@sda21(r13)
/* 80358BAC 00355AEC  80 6D 98 B8 */	lwz r3, gpMarioOriginal@sda21(r13)
/* 80358BB0 00355AF0  C0 24 00 04 */	lfs f1, 4(r4)
/* 80358BB4 00355AF4  C0 03 02 A0 */	lfs f0, 0x2a0(r3)
/* 80358BB8 00355AF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80358BBC 00355AFC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80358BC0 00355B00  40 80 00 08 */	bge lbl_80358BC8
/* 80358BC4 00355B04  38 00 00 01 */	li r0, 1
lbl_80358BC8:
/* 80358BC8 00355B08  7C 03 03 78 */	mr r3, r0
/* 80358BCC 00355B0C  4E 80 00 20 */	blr 

.global calcAndSetMarioData__16TCameraMarioDataFv
calcAndSetMarioData__16TCameraMarioDataFv:
/* 80358BD0 00355B10  7C 08 02 A6 */	mflr r0
/* 80358BD4 00355B14  90 01 00 04 */	stw r0, 4(r1)
/* 80358BD8 00355B18  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80358BDC 00355B1C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80358BE0 00355B20  7C 7F 1B 78 */	mr r31, r3
/* 80358BE4 00355B24  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80358BE8 00355B28  4B DF 9D D1 */	bl SMS_GetMarioStatus__Fv
/* 80358BEC 00355B2C  3C 80 38 00 */	lis r4, 0x3800034B@ha
/* 80358BF0 00355B30  38 04 03 4B */	addi r0, r4, 0x3800034B@l
/* 80358BF4 00355B34  7C 03 00 00 */	cmpw r3, r0
/* 80358BF8 00355B38  41 82 00 1C */	beq lbl_80358C14
/* 80358BFC 00355B3C  40 80 00 28 */	bge lbl_80358C24
/* 80358C00 00355B40  3C 80 30 00 */	lis r4, 0x3000054C@ha
/* 80358C04 00355B44  38 04 05 4C */	addi r0, r4, 0x3000054C@l
/* 80358C08 00355B48  7C 03 00 00 */	cmpw r3, r0
/* 80358C0C 00355B4C  41 82 00 08 */	beq lbl_80358C14
/* 80358C10 00355B50  48 00 00 14 */	b lbl_80358C24
lbl_80358C14:
/* 80358C14 00355B54  C0 02 05 98 */	lfs f0, $$22149@sda21(r2)
/* 80358C18 00355B58  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80358C1C 00355B5C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80358C20 00355B60  48 00 00 70 */	b lbl_80358C90
lbl_80358C24:
/* 80358C24 00355B64  80 8D 98 B8 */	lwz r4, gpMarioOriginal@sda21(r13)
/* 80358C28 00355B68  80 AD 98 DC */	lwz r5, gpMarioPos@sda21(r13)
/* 80358C2C 00355B6C  38 84 02 9C */	addi r4, r4, 0x29c
/* 80358C30 00355B70  C0 25 00 08 */	lfs f1, 8(r5)
/* 80358C34 00355B74  C0 04 00 08 */	lfs f0, 8(r4)
/* 80358C38 00355B78  C0 65 00 00 */	lfs f3, 0(r5)
/* 80358C3C 00355B7C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80358C40 00355B80  C0 04 00 00 */	lfs f0, 0(r4)
/* 80358C44 00355B84  C0 45 00 04 */	lfs f2, 4(r5)
/* 80358C48 00355B88  C0 24 00 04 */	lfs f1, 4(r4)
/* 80358C4C 00355B8C  EC 63 00 28 */	fsubs f3, f3, f0
/* 80358C50 00355B90  EC 04 01 32 */	fmuls f0, f4, f4
/* 80358C54 00355B94  EC 42 08 28 */	fsubs f2, f2, f1
/* 80358C58 00355B98  EC 23 00 FA */	fmadds f1, f3, f3, f0
/* 80358C5C 00355B9C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80358C60 00355BA0  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 80358C64 00355BA4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80358C68 00355BA8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80358C6C 00355BAC  C0 02 05 9C */	lfs f0, $$22190@sda21(r2)
/* 80358C70 00355BB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80358C74 00355BB4  40 81 00 08 */	ble lbl_80358C7C
/* 80358C78 00355BB8  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80358C7C:
/* 80358C7C 00355BBC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80358C80 00355BC0  C0 02 05 9C */	lfs f0, $$22190@sda21(r2)
/* 80358C84 00355BC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80358C88 00355BC8  40 81 00 08 */	ble lbl_80358C90
/* 80358C8C 00355BCC  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_80358C90:
/* 80358C90 00355BD0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80358C94 00355BD4  7C 00 18 40 */	cmplw r0, r3
/* 80358C98 00355BD8  41 82 00 14 */	beq lbl_80358CAC
/* 80358C9C 00355BDC  90 7F 00 14 */	stw r3, 0x14(r31)
/* 80358CA0 00355BE0  38 00 00 00 */	li r0, 0
/* 80358CA4 00355BE4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80358CA8 00355BE8  48 00 00 10 */	b lbl_80358CB8
lbl_80358CAC:
/* 80358CAC 00355BEC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80358CB0 00355BF0  38 03 00 01 */	addi r0, r3, 1
/* 80358CB4 00355BF4  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80358CB8:
/* 80358CB8 00355BF8  4B DF 9F 4D */	bl SMS_GetMarioWaterGun__Fv
/* 80358CBC 00355BFC  4B DF 00 11 */	bl getCurrentNozzle__9TWaterGunCFv
/* 80358CC0 00355C00  AB C3 01 BC */	lha r30, 0x1bc(r3)
/* 80358CC4 00355C04  4B DF 9F 41 */	bl SMS_GetMarioWaterGun__Fv
/* 80358CC8 00355C08  4B DF 00 05 */	bl getCurrentNozzle__9TWaterGunCFv
/* 80358CCC 00355C0C  81 83 03 64 */	lwz r12, 0x364(r3)
/* 80358CD0 00355C10  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80358CD4 00355C14  7D 88 03 A6 */	mtlr r12
/* 80358CD8 00355C18  4E 80 00 21 */	blrl 
/* 80358CDC 00355C1C  38 A3 00 00 */	addi r5, r3, 0
/* 80358CE0 00355C20  38 9E 00 00 */	addi r4, r30, 0
/* 80358CE4 00355C24  38 60 00 00 */	li r3, 0
/* 80358CE8 00355C28  4B DA 37 11 */	bl CLBCalcRatio$$0s$$1__Fsss
/* 80358CEC 00355C2C  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80358CF0 00355C30  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80358CF4 00355C34  C0 02 05 A0 */	lfs f0, $$22191@sda21(r2)
/* 80358CF8 00355C38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80358CFC 00355C3C  40 81 00 0C */	ble lbl_80358D08
/* 80358D00 00355C40  FC 20 00 90 */	fmr f1, f0
/* 80358D04 00355C44  48 00 00 14 */	b lbl_80358D18
lbl_80358D08:
/* 80358D08 00355C48  C0 02 05 98 */	lfs f0, $$22149@sda21(r2)
/* 80358D0C 00355C4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80358D10 00355C50  40 80 00 08 */	bge lbl_80358D18
/* 80358D14 00355C54  FC 20 00 90 */	fmr f1, f0
lbl_80358D18:
/* 80358D18 00355C58  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80358D1C 00355C5C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80358D20 00355C60  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80358D24 00355C64  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80358D28 00355C68  7C 08 03 A6 */	mtlr r0
/* 80358D2C 00355C6C  38 21 00 50 */	addi r1, r1, 0x50
/* 80358D30 00355C70  4E 80 00 20 */	blr 

.global __ct__16TCameraMarioDataFv
__ct__16TCameraMarioDataFv:
/* 80358D34 00355C74  C0 02 05 98 */	lfs f0, $$22149@sda21(r2)
/* 80358D38 00355C78  38 00 00 00 */	li r0, 0
/* 80358D3C 00355C7C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80358D40 00355C80  D0 03 00 04 */	stfs f0, 4(r3)
/* 80358D44 00355C84  D0 03 00 08 */	stfs f0, 8(r3)
/* 80358D48 00355C88  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80358D4C 00355C8C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80358D50 00355C90  90 03 00 14 */	stw r0, 0x14(r3)
/* 80358D54 00355C94  90 03 00 18 */	stw r0, 0x18(r3)
/* 80358D58 00355C98  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80358D5C 00355C9C  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
$$22149:
  .4byte 0
$$22190:
	.incbin "baserom.dol", 0x3EC29C, 0x4
$$22191:
	.incbin "baserom.dol", 0x3EC2A0, 0x8

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global gpCameraMario
gpCameraMario:
	.skip 0x8
