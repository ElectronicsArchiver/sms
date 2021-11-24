.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global moveToDown__13TCameraOptionFv
moveToDown__13TCameraOptionFv:
/* 80361908 0035E848  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 8036190C 0035E84C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80361910 0035E850  D0 04 00 00 */	stfs f0, 0(r4)
/* 80361914 0035E854  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80361918 0035E858  D0 04 00 04 */	stfs f0, 4(r4)
/* 8036191C 0035E85C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80361920 0035E860  D0 04 00 08 */	stfs f0, 8(r4)
/* 80361924 0035E864  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80361928 0035E868  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8036192C 0035E86C  4E 80 00 20 */	blr 

.global moveToUp__13TCameraOptionFv
moveToUp__13TCameraOptionFv:
/* 80361930 0035E870  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 80361934 0035E874  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80361938 0035E878  D0 04 00 00 */	stfs f0, 0(r4)
/* 8036193C 0035E87C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80361940 0035E880  D0 04 00 04 */	stfs f0, 4(r4)
/* 80361944 0035E884  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80361948 0035E888  D0 04 00 08 */	stfs f0, 8(r4)
/* 8036194C 0035E88C  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80361950 0035E890  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80361954 0035E894  4E 80 00 20 */	blr 

.global moveToLoadFromTitle__13TCameraOptionFv
moveToLoadFromTitle__13TCameraOptionFv:
/* 80361958 0035E898  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 8036195C 0035E89C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80361960 0035E8A0  D0 04 00 00 */	stfs f0, 0(r4)
/* 80361964 0035E8A4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80361968 0035E8A8  D0 04 00 04 */	stfs f0, 4(r4)
/* 8036196C 0035E8AC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80361970 0035E8B0  D0 04 00 08 */	stfs f0, 8(r4)
/* 80361974 0035E8B4  A8 03 00 0C */	lha r0, 0xc(r3)
/* 80361978 0035E8B8  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8036197C 0035E8BC  88 03 00 00 */	lbz r0, 0(r3)
/* 80361980 0035E8C0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80361984 0035E8C4  98 03 00 00 */	stb r0, 0(r3)
/* 80361988 0035E8C8  4E 80 00 20 */	blr 

.global __ct__13TCameraOptionFQ29JGeometry8TVec3$$0f$$1PQ29JGeometry8TVec3$$0f$$1
__ct__13TCameraOptionFQ29JGeometry8TVec3$$0f$$1PQ29JGeometry8TVec3$$0f$$1:
/* 8036198C 0035E8CC  7C 08 02 A6 */	mflr r0
/* 80361990 0035E8D0  39 00 01 2C */	li r8, 0x12c
/* 80361994 0035E8D4  90 01 00 04 */	stw r0, 4(r1)
/* 80361998 0035E8D8  38 00 00 02 */	li r0, 2
/* 8036199C 0035E8DC  38 E0 00 78 */	li r7, 0x78
/* 803619A0 0035E8E0  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 803619A4 0035E8E4  38 C0 00 00 */	li r6, 0
/* 803619A8 0035E8E8  93 E1 00 34 */	stw r31, 0x34(r1)
/* 803619AC 0035E8EC  3B E3 00 00 */	addi r31, r3, 0
/* 803619B0 0035E8F0  93 C1 00 30 */	stw r30, 0x30(r1)
/* 803619B4 0035E8F4  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 803619B8 0035E8F8  3B A5 00 00 */	addi r29, r5, 0
/* 803619BC 0035E8FC  93 81 00 28 */	stw r28, 0x28(r1)
/* 803619C0 0035E900  7C 9C 23 78 */	mr r28, r4
/* 803619C4 0035E904  98 03 00 00 */	stb r0, 0(r3)
/* 803619C8 0035E908  38 60 00 50 */	li r3, 0x50
/* 803619CC 0035E90C  38 00 00 3C */	li r0, 0x3c
/* 803619D0 0035E910  C0 02 08 70 */	lfs f0, $$21704@sda21(r2)
/* 803619D4 0035E914  D0 1F 00 04 */	stfs f0, 4(r31)
/* 803619D8 0035E918  B1 1F 00 08 */	sth r8, 8(r31)
/* 803619DC 0035E91C  B1 1F 00 0A */	sth r8, 0xa(r31)
/* 803619E0 0035E920  B0 FF 00 0C */	sth r7, 0xc(r31)
/* 803619E4 0035E924  B0 DF 00 0E */	sth r6, 0xe(r31)
/* 803619E8 0035E928  B0 7F 00 10 */	sth r3, 0x10(r31)
/* 803619EC 0035E92C  B0 DF 00 12 */	sth r6, 0x12(r31)
/* 803619F0 0035E930  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 803619F4 0035E934  B0 DF 00 16 */	sth r6, 0x16(r31)
/* 803619F8 0035E938  C0 02 08 74 */	lfs f0, $$21705@sda21(r2)
/* 803619FC 0035E93C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80361A00 0035E940  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80361A04 0035E944  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80361A08 0035E948  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80361A0C 0035E94C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80361A10 0035E950  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80361A14 0035E954  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80361A18 0035E958  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80361A1C 0035E95C  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80361A20 0035E960  93 BF 00 3C */	stw r29, 0x3c(r31)
/* 80361A24 0035E964  C0 22 08 78 */	lfs f1, $$21706@sda21(r2)
/* 80361A28 0035E968  4B E0 B2 25 */	bl CLBRoundf$$0s$$1__Ff
/* 80361A2C 0035E96C  C0 22 08 7C */	lfs f1, $$21707@sda21(r2)
/* 80361A30 0035E970  7C 7E 1B 78 */	mr r30, r3
/* 80361A34 0035E974  4B E0 B2 19 */	bl CLBRoundf$$0s$$1__Ff
/* 80361A38 0035E978  C0 22 08 80 */	lfs f1, $$21708@sda21(r2)
/* 80361A3C 0035E97C  38 A3 00 00 */	addi r5, r3, 0
/* 80361A40 0035E980  38 7C 00 00 */	addi r3, r28, 0
/* 80361A44 0035E984  38 DE 00 00 */	addi r6, r30, 0
/* 80361A48 0035E988  38 9F 00 18 */	addi r4, r31, 0x18
/* 80361A4C 0035E98C  4B FF 6B 01 */	bl CLBPolarToCross__FRC3VecP3Vecfss
/* 80361A50 0035E990  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80361A54 0035E994  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80361A58 0035E998  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80361A5C 0035E99C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80361A60 0035E9A0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80361A64 0035E9A4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80361A68 0035E9A8  83 CD 8C E8 */	lwz r30, cLoadCamName@sda21(r13)
/* 80361A6C 0035E9AC  7F C3 F3 78 */	mr r3, r30
/* 80361A70 0035E9B0  4B CE 2C 1D */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 80361A74 0035E9B4  7C 64 1B 78 */	mr r4, r3
/* 80361A78 0035E9B8  80 6D A9 08 */	lwz r3, gpCamMapToolTable@sda21(r13)
/* 80361A7C 0035E9BC  7F C5 F3 78 */	mr r5, r30
/* 80361A80 0035E9C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80361A84 0035E9C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80361A88 0035E9C8  7D 88 03 A6 */	mtlr r12
/* 80361A8C 0035E9CC  4E 80 00 21 */	blrl 
/* 80361A90 0035E9D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80361A94 0035E9D4  41 82 00 48 */	beq lbl_80361ADC
/* 80361A98 0035E9D8  38 7E 00 00 */	addi r3, r30, 0
/* 80361A9C 0035E9DC  38 81 00 18 */	addi r4, r1, 0x18
/* 80361AA0 0035E9E0  38 BF 00 24 */	addi r5, r31, 0x24
/* 80361AA4 0035E9E4  4B FF DF B9 */	bl calcPosAndAt__14TCameraMapToolCFPQ29JGeometry8TVec3$$0f$$1PQ29JGeometry8TVec3$$0f$$1
/* 80361AA8 0035E9E8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80361AAC 0035E9EC  C0 02 08 84 */	lfs f0, $$21709@sda21(r2)
/* 80361AB0 0035E9F0  EC 20 00 72 */	fmuls f1, f0, f1
/* 80361AB4 0035E9F4  4B E0 B1 99 */	bl CLBRoundf$$0s$$1__Ff
/* 80361AB8 0035E9F8  C0 22 08 88 */	lfs f1, $$21710@sda21(r2)
/* 80361ABC 0035E9FC  7C 7E 1B 78 */	mr r30, r3
/* 80361AC0 0035EA00  4B E0 B1 8D */	bl CLBRoundf$$0s$$1__Ff
/* 80361AC4 0035EA04  C0 22 08 80 */	lfs f1, $$21708@sda21(r2)
/* 80361AC8 0035EA08  38 A3 00 00 */	addi r5, r3, 0
/* 80361ACC 0035EA0C  38 DE 00 00 */	addi r6, r30, 0
/* 80361AD0 0035EA10  38 61 00 18 */	addi r3, r1, 0x18
/* 80361AD4 0035EA14  38 9F 00 30 */	addi r4, r31, 0x30
/* 80361AD8 0035EA18  4B FF 6A 75 */	bl CLBPolarToCross__FRC3VecP3Vecfss
lbl_80361ADC:
/* 80361ADC 0035EA1C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80361AE0 0035EA20  7F E3 FB 78 */	mr r3, r31
/* 80361AE4 0035EA24  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80361AE8 0035EA28  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80361AEC 0035EA2C  7C 08 03 A6 */	mtlr r0
/* 80361AF0 0035EA30  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 80361AF4 0035EA34  83 81 00 28 */	lwz r28, 0x28(r1)
/* 80361AF8 0035EA38  38 21 00 38 */	addi r1, r1, 0x38
/* 80361AFC 0035EA3C  4E 80 00 20 */	blr 

.global ctrlOptionCamera___15CPolarSubCameraFv
ctrlOptionCamera___15CPolarSubCameraFv:
/* 80361B00 0035EA40  7C 08 02 A6 */	mflr r0
/* 80361B04 0035EA44  90 01 00 04 */	stw r0, 4(r1)
/* 80361B08 0035EA48  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80361B0C 0035EA4C  DB E1 00 68 */	stfd f31, 0x68(r1)
/* 80361B10 0035EA50  93 E1 00 64 */	stw r31, 0x64(r1)
/* 80361B14 0035EA54  7C 7F 1B 78 */	mr r31, r3
/* 80361B18 0035EA58  80 8D A9 10 */	lwz r4, gpCameraOption@sda21(r13)
/* 80361B1C 0035EA5C  A8 64 00 0A */	lha r3, 0xa(r4)
/* 80361B20 0035EA60  7C 60 07 35 */	extsh. r0, r3
/* 80361B24 0035EA64  40 81 00 94 */	ble lbl_80361BB8
/* 80361B28 0035EA68  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80361B2C 0035EA6C  C8 42 08 90 */	lfd f2, $$21767@sda21(r2)
/* 80361B30 0035EA70  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80361B34 0035EA74  3C 00 43 30 */	lis r0, 0x4330
/* 80361B38 0035EA78  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80361B3C 0035EA7C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80361B40 0035EA80  90 01 00 58 */	stw r0, 0x58(r1)
/* 80361B44 0035EA84  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80361B48 0035EA88  EF E0 10 28 */	fsubs f31, f0, f2
/* 80361B4C 0035EA8C  FC 40 F8 90 */	fmr f2, f31
/* 80361B50 0035EA90  4B E0 8B 19 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361B54 0035EA94  FC 40 F8 90 */	fmr f2, f31
/* 80361B58 0035EA98  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80361B5C 0035EA9C  38 7F 00 14 */	addi r3, r31, 0x14
/* 80361B60 0035EAA0  4B E0 8B 09 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361B64 0035EAA4  FC 40 F8 90 */	fmr f2, f31
/* 80361B68 0035EAA8  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80361B6C 0035EAAC  38 7F 00 18 */	addi r3, r31, 0x18
/* 80361B70 0035EAB0  4B E0 8A F9 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361B74 0035EAB4  FC 40 F8 90 */	fmr f2, f31
/* 80361B78 0035EAB8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80361B7C 0035EABC  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80361B80 0035EAC0  4B E0 8A E9 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361B84 0035EAC4  FC 40 F8 90 */	fmr f2, f31
/* 80361B88 0035EAC8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80361B8C 0035EACC  38 7F 00 40 */	addi r3, r31, 0x40
/* 80361B90 0035EAD0  4B E0 8A D9 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361B94 0035EAD4  FC 40 F8 90 */	fmr f2, f31
/* 80361B98 0035EAD8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80361B9C 0035EADC  38 7F 00 44 */	addi r3, r31, 0x44
/* 80361BA0 0035EAE0  4B E0 8A C9 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361BA4 0035EAE4  80 8D A9 10 */	lwz r4, gpCameraOption@sda21(r13)
/* 80361BA8 0035EAE8  A8 64 00 0A */	lha r3, 0xa(r4)
/* 80361BAC 0035EAEC  38 03 FF FF */	addi r0, r3, -1
/* 80361BB0 0035EAF0  B0 04 00 0A */	sth r0, 0xa(r4)
/* 80361BB4 0035EAF4  48 00 02 80 */	b lbl_80361E34
lbl_80361BB8:
/* 80361BB8 0035EAF8  A8 64 00 0E */	lha r3, 0xe(r4)
/* 80361BBC 0035EAFC  7C 60 07 35 */	extsh. r0, r3
/* 80361BC0 0035EB00  40 81 00 94 */	ble lbl_80361C54
/* 80361BC4 0035EB04  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80361BC8 0035EB08  C8 42 08 90 */	lfd f2, $$21767@sda21(r2)
/* 80361BCC 0035EB0C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80361BD0 0035EB10  3C 00 43 30 */	lis r0, 0x4330
/* 80361BD4 0035EB14  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80361BD8 0035EB18  38 7F 00 10 */	addi r3, r31, 0x10
/* 80361BDC 0035EB1C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80361BE0 0035EB20  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80361BE4 0035EB24  EF E0 10 28 */	fsubs f31, f0, f2
/* 80361BE8 0035EB28  FC 40 F8 90 */	fmr f2, f31
/* 80361BEC 0035EB2C  4B E0 8A 7D */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361BF0 0035EB30  FC 40 F8 90 */	fmr f2, f31
/* 80361BF4 0035EB34  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80361BF8 0035EB38  38 7F 00 14 */	addi r3, r31, 0x14
/* 80361BFC 0035EB3C  4B E0 8A 6D */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361C00 0035EB40  FC 40 F8 90 */	fmr f2, f31
/* 80361C04 0035EB44  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80361C08 0035EB48  38 7F 00 18 */	addi r3, r31, 0x18
/* 80361C0C 0035EB4C  4B E0 8A 5D */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361C10 0035EB50  FC 40 F8 90 */	fmr f2, f31
/* 80361C14 0035EB54  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80361C18 0035EB58  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80361C1C 0035EB5C  4B E0 8A 4D */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361C20 0035EB60  FC 40 F8 90 */	fmr f2, f31
/* 80361C24 0035EB64  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80361C28 0035EB68  38 7F 00 40 */	addi r3, r31, 0x40
/* 80361C2C 0035EB6C  4B E0 8A 3D */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361C30 0035EB70  FC 40 F8 90 */	fmr f2, f31
/* 80361C34 0035EB74  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80361C38 0035EB78  38 7F 00 44 */	addi r3, r31, 0x44
/* 80361C3C 0035EB7C  4B E0 8A 2D */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361C40 0035EB80  80 8D A9 10 */	lwz r4, gpCameraOption@sda21(r13)
/* 80361C44 0035EB84  A8 64 00 0E */	lha r3, 0xe(r4)
/* 80361C48 0035EB88  38 03 FF FF */	addi r0, r3, -1
/* 80361C4C 0035EB8C  B0 04 00 0E */	sth r0, 0xe(r4)
/* 80361C50 0035EB90  48 00 01 E4 */	b lbl_80361E34
lbl_80361C54:
/* 80361C54 0035EB94  88 04 00 00 */	lbz r0, 0(r4)
/* 80361C58 0035EB98  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80361C5C 0035EB9C  40 82 01 D8 */	bne lbl_80361E34
/* 80361C60 0035EBA0  80 CD 98 DC */	lwz r6, gpMarioPos@sda21(r13)
/* 80361C64 0035EBA4  38 81 00 48 */	addi r4, r1, 0x48
/* 80361C68 0035EBA8  C0 02 08 8C */	lfs f0, $$21765@sda21(r2)
/* 80361C6C 0035EBAC  80 A6 00 00 */	lwz r5, 0(r6)
/* 80361C70 0035EBB0  80 06 00 04 */	lwz r0, 4(r6)
/* 80361C74 0035EBB4  80 6D A8 D8 */	lwz r3, gpCubeCamera@sda21(r13)
/* 80361C78 0035EBB8  90 A1 00 48 */	stw r5, 0x48(r1)
/* 80361C7C 0035EBBC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80361C80 0035EBC0  80 06 00 08 */	lwz r0, 8(r6)
/* 80361C84 0035EBC4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80361C88 0035EBC8  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80361C8C 0035EBCC  EC 01 00 2A */	fadds f0, f1, f0
/* 80361C90 0035EBD0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80361C94 0035EBD4  4B FF DA 15 */	bl getInCubeNo__16TCubeManagerBaseCFRC3Vec
/* 80361C98 0035EBD8  2C 03 00 00 */	cmpwi r3, 0
/* 80361C9C 0035EBDC  41 80 00 60 */	blt lbl_80361CFC
/* 80361CA0 0035EBE0  80 8D A8 D8 */	lwz r4, gpCubeCamera@sda21(r13)
/* 80361CA4 0035EBE4  54 60 10 3A */	slwi r0, r3, 2
/* 80361CA8 0035EBE8  80 64 00 14 */	lwz r3, 0x14(r4)
/* 80361CAC 0035EBEC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80361CB0 0035EBF0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80361CB4 0035EBF4  80 C3 00 38 */	lwz r6, 0x38(r3)
/* 80361CB8 0035EBF8  28 06 00 00 */	cmplwi r6, 0
/* 80361CBC 0035EBFC  41 82 00 40 */	beq lbl_80361CFC
/* 80361CC0 0035EC00  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80361CC4 0035EC04  7C 06 00 40 */	cmplw r6, r0
/* 80361CC8 0035EC08  41 82 00 34 */	beq lbl_80361CFC
/* 80361CCC 0035EC0C  80 6D A9 10 */	lwz r3, gpCameraOption@sda21(r13)
/* 80361CD0 0035EC10  38 9F 00 80 */	addi r4, r31, 0x80
/* 80361CD4 0035EC14  38 BF 00 8C */	addi r5, r31, 0x8c
/* 80361CD8 0035EC18  88 03 00 00 */	lbz r0, 0(r3)
/* 80361CDC 0035EC1C  68 00 00 01 */	xori r0, r0, 1
/* 80361CE0 0035EC20  98 03 00 00 */	stb r0, 0(r3)
/* 80361CE4 0035EC24  90 DF 00 70 */	stw r6, 0x70(r31)
/* 80361CE8 0035EC28  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80361CEC 0035EC2C  4B FF DD 71 */	bl calcPosAndAt__14TCameraMapToolCFPQ29JGeometry8TVec3$$0f$$1PQ29JGeometry8TVec3$$0f$$1
/* 80361CF0 0035EC30  80 6D A9 10 */	lwz r3, gpCameraOption@sda21(r13)
/* 80361CF4 0035EC34  A8 03 00 10 */	lha r0, 0x10(r3)
/* 80361CF8 0035EC38  B0 03 00 12 */	sth r0, 0x12(r3)
lbl_80361CFC:
/* 80361CFC 0035EC3C  80 8D A9 10 */	lwz r4, gpCameraOption@sda21(r13)
/* 80361D00 0035EC40  A8 64 00 12 */	lha r3, 0x12(r4)
/* 80361D04 0035EC44  7C 60 07 35 */	extsh. r0, r3
/* 80361D08 0035EC48  40 81 00 94 */	ble lbl_80361D9C
/* 80361D0C 0035EC4C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80361D10 0035EC50  C8 42 08 90 */	lfd f2, $$21767@sda21(r2)
/* 80361D14 0035EC54  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80361D18 0035EC58  3C 00 43 30 */	lis r0, 0x4330
/* 80361D1C 0035EC5C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80361D20 0035EC60  38 7F 00 10 */	addi r3, r31, 0x10
/* 80361D24 0035EC64  90 01 00 58 */	stw r0, 0x58(r1)
/* 80361D28 0035EC68  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80361D2C 0035EC6C  EF E0 10 28 */	fsubs f31, f0, f2
/* 80361D30 0035EC70  FC 40 F8 90 */	fmr f2, f31
/* 80361D34 0035EC74  4B E0 89 35 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361D38 0035EC78  FC 40 F8 90 */	fmr f2, f31
/* 80361D3C 0035EC7C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80361D40 0035EC80  38 7F 00 14 */	addi r3, r31, 0x14
/* 80361D44 0035EC84  4B E0 89 25 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361D48 0035EC88  FC 40 F8 90 */	fmr f2, f31
/* 80361D4C 0035EC8C  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80361D50 0035EC90  38 7F 00 18 */	addi r3, r31, 0x18
/* 80361D54 0035EC94  4B E0 89 15 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361D58 0035EC98  FC 40 F8 90 */	fmr f2, f31
/* 80361D5C 0035EC9C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80361D60 0035ECA0  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80361D64 0035ECA4  4B E0 89 05 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361D68 0035ECA8  FC 40 F8 90 */	fmr f2, f31
/* 80361D6C 0035ECAC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80361D70 0035ECB0  38 7F 00 40 */	addi r3, r31, 0x40
/* 80361D74 0035ECB4  4B E0 88 F5 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361D78 0035ECB8  FC 40 F8 90 */	fmr f2, f31
/* 80361D7C 0035ECBC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80361D80 0035ECC0  38 7F 00 44 */	addi r3, r31, 0x44
/* 80361D84 0035ECC4  4B E0 88 E5 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361D88 0035ECC8  80 8D A9 10 */	lwz r4, gpCameraOption@sda21(r13)
/* 80361D8C 0035ECCC  A8 64 00 12 */	lha r3, 0x12(r4)
/* 80361D90 0035ECD0  38 03 FF FF */	addi r0, r3, -1
/* 80361D94 0035ECD4  B0 04 00 12 */	sth r0, 0x12(r4)
/* 80361D98 0035ECD8  48 00 00 9C */	b lbl_80361E34
lbl_80361D9C:
/* 80361D9C 0035ECDC  A8 64 00 16 */	lha r3, 0x16(r4)
/* 80361DA0 0035ECE0  7C 60 07 35 */	extsh. r0, r3
/* 80361DA4 0035ECE4  40 81 00 90 */	ble lbl_80361E34
/* 80361DA8 0035ECE8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80361DAC 0035ECEC  C8 42 08 90 */	lfd f2, $$21767@sda21(r2)
/* 80361DB0 0035ECF0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80361DB4 0035ECF4  3C 00 43 30 */	lis r0, 0x4330
/* 80361DB8 0035ECF8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80361DBC 0035ECFC  38 7F 00 10 */	addi r3, r31, 0x10
/* 80361DC0 0035ED00  90 01 00 58 */	stw r0, 0x58(r1)
/* 80361DC4 0035ED04  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80361DC8 0035ED08  EF E0 10 28 */	fsubs f31, f0, f2
/* 80361DCC 0035ED0C  FC 40 F8 90 */	fmr f2, f31
/* 80361DD0 0035ED10  4B E0 88 99 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361DD4 0035ED14  FC 40 F8 90 */	fmr f2, f31
/* 80361DD8 0035ED18  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80361DDC 0035ED1C  38 7F 00 14 */	addi r3, r31, 0x14
/* 80361DE0 0035ED20  4B E0 88 89 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361DE4 0035ED24  FC 40 F8 90 */	fmr f2, f31
/* 80361DE8 0035ED28  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80361DEC 0035ED2C  38 7F 00 18 */	addi r3, r31, 0x18
/* 80361DF0 0035ED30  4B E0 88 79 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361DF4 0035ED34  FC 40 F8 90 */	fmr f2, f31
/* 80361DF8 0035ED38  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80361DFC 0035ED3C  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80361E00 0035ED40  4B E0 88 69 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361E04 0035ED44  FC 40 F8 90 */	fmr f2, f31
/* 80361E08 0035ED48  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80361E0C 0035ED4C  38 7F 00 40 */	addi r3, r31, 0x40
/* 80361E10 0035ED50  4B E0 88 59 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361E14 0035ED54  FC 40 F8 90 */	fmr f2, f31
/* 80361E18 0035ED58  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80361E1C 0035ED5C  38 7F 00 44 */	addi r3, r31, 0x44
/* 80361E20 0035ED60  4B E0 88 49 */	bl CLBChaseConstantSpecifyFrame$$0f$$1__FPfff
/* 80361E24 0035ED64  80 8D A9 10 */	lwz r4, gpCameraOption@sda21(r13)
/* 80361E28 0035ED68  A8 64 00 16 */	lha r3, 0x16(r4)
/* 80361E2C 0035ED6C  38 03 FF FF */	addi r0, r3, -1
/* 80361E30 0035ED70  B0 04 00 16 */	sth r0, 0x16(r4)
lbl_80361E34:
/* 80361E34 0035ED74  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80361E38 0035ED78  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 80361E3C 0035ED7C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80361E40 0035ED80  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 80361E44 0035ED84  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80361E48 0035ED88  D0 1F 01 2C */	stfs f0, 0x12c(r31)
/* 80361E4C 0035ED8C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80361E50 0035ED90  D0 1F 01 48 */	stfs f0, 0x148(r31)
/* 80361E54 0035ED94  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80361E58 0035ED98  D0 1F 01 4C */	stfs f0, 0x14c(r31)
/* 80361E5C 0035ED9C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80361E60 0035EDA0  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 80361E64 0035EDA4  80 6D A9 10 */	lwz r3, gpCameraOption@sda21(r13)
/* 80361E68 0035EDA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80361E6C 0035EDAC  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80361E70 0035EDB0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80361E74 0035EDB4  CB E1 00 68 */	lfd f31, 0x68(r1)
/* 80361E78 0035EDB8  83 E1 00 64 */	lwz r31, 0x64(r1)
/* 80361E7C 0035EDBC  38 21 00 70 */	addi r1, r1, 0x70
/* 80361E80 0035EDC0  7C 08 03 A6 */	mtlr r0
/* 80361E84 0035EDC4  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x8036FFA0 - 0x803A8380
.balign 8
$$21490:
  .4byte 0
  .4byte 0
  .4byte 0
$$21526:
	.incbin "baserom.dol", 0x3A3CE4, 0x14
$$21650:
	.incbin "baserom.dol", 0x3A3CF8, 0x10

.section .sdata, "wa"  # 0x80408AC0 - 0x804097C0
cLoadCamName:
  .4byte $$21650

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
$$21704:
	.incbin "baserom.dol", 0x3EC570, 0x4
$$21705:
  .4byte 0
$$21706:
	.incbin "baserom.dol", 0x3EC578, 0x4
$$21707:
	.incbin "baserom.dol", 0x3EC57C, 0x4
$$21708:
	.incbin "baserom.dol", 0x3EC580, 0x4
$$21709:
	.incbin "baserom.dol", 0x3EC584, 0x4
$$21710:
	.incbin "baserom.dol", 0x3EC588, 0x4
$$21765:
	.incbin "baserom.dol", 0x3EC58C, 0x4
$$21767:
	.incbin "baserom.dol", 0x3EC590, 0x8

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global gpCameraOption
gpCameraOption:
	.skip 0x8
