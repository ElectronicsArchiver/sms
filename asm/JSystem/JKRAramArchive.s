.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__14JKRAramArchiveFlQ210JKRArchive15EMountDirection
__ct__14JKRAramArchiveFlQ210JKRArchive15EMountDirection:
/* 80005E1C 00002D5C  7C 08 02 A6 */	mflr r0
/* 80005E20 00002D60  90 01 00 04 */	stw r0, 4(r1)
/* 80005E24 00002D64  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80005E28 00002D68  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80005E2C 00002D6C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80005E30 00002D70  3B C5 00 00 */	addi r30, r5, 0
/* 80005E34 00002D74  38 A0 00 02 */	li r5, 2
/* 80005E38 00002D78  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80005E3C 00002D7C  3B A4 00 00 */	addi r29, r4, 0
/* 80005E40 00002D80  90 61 00 08 */	stw r3, 8(r1)
/* 80005E44 00002D84  80 61 00 08 */	lwz r3, 8(r1)
/* 80005E48 00002D88  4B FF F8 71 */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 80005E4C 00002D8C  83 E1 00 08 */	lwz r31, 8(r1)
/* 80005E50 00002D90  3C 60 80 3B */	lis r3, __vt__14JKRAramArchive@ha
/* 80005E54 00002D94  38 03 83 A0 */	addi r0, r3, __vt__14JKRAramArchive@l
/* 80005E58 00002D98  90 1F 00 00 */	stw r0, 0(r31)
/* 80005E5C 00002D9C  38 7F 00 00 */	addi r3, r31, 0
/* 80005E60 00002DA0  38 9D 00 00 */	addi r4, r29, 0
/* 80005E64 00002DA4  93 DF 00 5C */	stw r30, 0x5c(r31)
/* 80005E68 00002DA8  7F C5 F3 78 */	mr r5, r30
/* 80005E6C 00002DAC  48 00 01 F5 */	bl open__14JKRAramArchiveFlQ210JKRArchive15EMountDirection
/* 80005E70 00002DB0  3C 60 52 41 */	lis r3, 0x52415243@ha
/* 80005E74 00002DB4  38 03 52 43 */	addi r0, r3, 0x52415243@l
/* 80005E78 00002DB8  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80005E7C 00002DBC  3C 60 80 40 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80005E80 00002DC0  38 63 0B B0 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 80005E84 00002DC4  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 80005E88 00002DC8  38 9F 00 18 */	addi r4, r31, 0x18
/* 80005E8C 00002DCC  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 80005E90 00002DD0  80 05 00 04 */	lwz r0, 4(r5)
/* 80005E94 00002DD4  7C 06 02 14 */	add r0, r6, r0
/* 80005E98 00002DD8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80005E9C 00002DDC  48 00 8E 69 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 80005EA0 00002DE0  38 00 00 01 */	li r0, 1
/* 80005EA4 00002DE4  98 1F 00 30 */	stb r0, 0x30(r31)
/* 80005EA8 00002DE8  7F E3 FB 78 */	mr r3, r31
/* 80005EAC 00002DEC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80005EB0 00002DF0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80005EB4 00002DF4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80005EB8 00002DF8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80005EBC 00002DFC  38 21 00 28 */	addi r1, r1, 0x28
/* 80005EC0 00002E00  7C 08 03 A6 */	mtlr r0
/* 80005EC4 00002E04  4E 80 00 20 */	blr 

.global __dt__14JKRAramArchiveFv
__dt__14JKRAramArchiveFv:
/* 80005EC8 00002E08  7C 08 02 A6 */	mflr r0
/* 80005ECC 00002E0C  90 01 00 04 */	stw r0, 4(r1)
/* 80005ED0 00002E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80005ED4 00002E14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80005ED8 00002E18  3B E4 00 00 */	addi r31, r4, 0
/* 80005EDC 00002E1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80005EE0 00002E20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80005EE4 00002E24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80005EE8 00002E28  93 81 00 10 */	stw r28, 0x10(r1)
/* 80005EEC 00002E2C  41 82 00 EC */	beq lbl_80005FD8
/* 80005EF0 00002E30  3C 60 80 3B */	lis r3, __vt__14JKRAramArchive@ha
/* 80005EF4 00002E34  38 03 83 A0 */	addi r0, r3, __vt__14JKRAramArchive@l
/* 80005EF8 00002E38  90 1E 00 00 */	stw r0, 0(r30)
/* 80005EFC 00002E3C  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80005F00 00002E40  28 00 00 01 */	cmplwi r0, 1
/* 80005F04 00002E44  40 82 00 B8 */	bne lbl_80005FBC
/* 80005F08 00002E48  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 80005F0C 00002E4C  28 00 00 00 */	cmplwi r0, 0
/* 80005F10 00002E50  41 82 00 4C */	beq lbl_80005F5C
/* 80005F14 00002E54  83 BE 00 4C */	lwz r29, 0x4c(r30)
/* 80005F18 00002E58  3B 80 00 00 */	li r28, 0
/* 80005F1C 00002E5C  48 00 00 20 */	b lbl_80005F3C
lbl_80005F20:
/* 80005F20 00002E60  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80005F24 00002E64  28 03 00 00 */	cmplwi r3, 0
/* 80005F28 00002E68  41 82 00 0C */	beq lbl_80005F34
/* 80005F2C 00002E6C  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80005F30 00002E70  48 00 65 95 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_80005F34:
/* 80005F34 00002E74  3B BD 00 14 */	addi r29, r29, 0x14
/* 80005F38 00002E78  3B 9C 00 01 */	addi r28, r28, 1
lbl_80005F3C:
/* 80005F3C 00002E7C  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 80005F40 00002E80  80 03 00 08 */	lwz r0, 8(r3)
/* 80005F44 00002E84  7C 1C 00 40 */	cmplw r28, r0
/* 80005F48 00002E88  41 80 FF D8 */	blt lbl_80005F20
/* 80005F4C 00002E8C  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80005F50 00002E90  48 00 65 75 */	bl free__7JKRHeapFPvP7JKRHeap
/* 80005F54 00002E94  38 00 00 00 */	li r0, 0
/* 80005F58 00002E98  90 1E 00 44 */	stw r0, 0x44(r30)
lbl_80005F5C:
/* 80005F5C 00002E9C  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80005F60 00002EA0  28 03 00 00 */	cmplwi r3, 0
/* 80005F64 00002EA4  41 82 00 1C */	beq lbl_80005F80
/* 80005F68 00002EA8  41 82 00 18 */	beq lbl_80005F80
/* 80005F6C 00002EAC  81 83 00 00 */	lwz r12, 0(r3)
/* 80005F70 00002EB0  38 80 00 01 */	li r4, 1
/* 80005F74 00002EB4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80005F78 00002EB8  7D 88 03 A6 */	mtlr r12
/* 80005F7C 00002EBC  4E 80 00 21 */	blrl 
lbl_80005F80:
/* 80005F80 00002EC0  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80005F84 00002EC4  28 03 00 00 */	cmplwi r3, 0
/* 80005F88 00002EC8  41 82 00 1C */	beq lbl_80005FA4
/* 80005F8C 00002ECC  41 82 00 18 */	beq lbl_80005FA4
/* 80005F90 00002ED0  81 83 00 00 */	lwz r12, 0(r3)
/* 80005F94 00002ED4  38 80 00 01 */	li r4, 1
/* 80005F98 00002ED8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80005F9C 00002EDC  7D 88 03 A6 */	mtlr r12
/* 80005FA0 00002EE0  4E 80 00 21 */	blrl 
lbl_80005FA4:
/* 80005FA4 00002EE4  3C 60 80 40 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80005FA8 00002EE8  38 63 0B B0 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 80005FAC 00002EEC  38 9E 00 18 */	addi r4, r30, 0x18
/* 80005FB0 00002EF0  48 00 8F ED */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 80005FB4 00002EF4  38 00 00 00 */	li r0, 0
/* 80005FB8 00002EF8  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_80005FBC:
/* 80005FBC 00002EFC  38 7E 00 00 */	addi r3, r30, 0
/* 80005FC0 00002F00  38 80 00 00 */	li r4, 0
/* 80005FC4 00002F04  4B FF F7 AD */	bl __dt__10JKRArchiveFv
/* 80005FC8 00002F08  7F E0 07 35 */	extsh. r0, r31
/* 80005FCC 00002F0C  40 81 00 0C */	ble lbl_80005FD8
/* 80005FD0 00002F10  7F C3 F3 78 */	mr r3, r30
/* 80005FD4 00002F14  48 00 6A DD */	bl __dl__FPv
lbl_80005FD8:
/* 80005FD8 00002F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80005FDC 00002F1C  7F C3 F3 78 */	mr r3, r30
/* 80005FE0 00002F20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80005FE4 00002F24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80005FE8 00002F28  7C 08 03 A6 */	mtlr r0
/* 80005FEC 00002F2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80005FF0 00002F30  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80005FF4 00002F34  38 21 00 20 */	addi r1, r1, 0x20
/* 80005FF8 00002F38  4E 80 00 20 */	blr 

.global __dt__7JKRFileFv
__dt__7JKRFileFv:
/* 80005FFC 00002F3C  7C 08 02 A6 */	mflr r0
/* 80006000 00002F40  90 01 00 04 */	stw r0, 4(r1)
/* 80006004 00002F44  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80006008 00002F48  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000600C 00002F4C  3B E4 00 00 */	addi r31, r4, 0
/* 80006010 00002F50  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80006014 00002F54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80006018 00002F58  41 82 00 2C */	beq lbl_80006044
/* 8000601C 00002F5C  3C 60 80 3B */	lis r3, __vt__7JKRFile@ha
/* 80006020 00002F60  38 03 83 80 */	addi r0, r3, __vt__7JKRFile@l
/* 80006024 00002F64  90 1E 00 00 */	stw r0, 0(r30)
/* 80006028 00002F68  38 7E 00 00 */	addi r3, r30, 0
/* 8000602C 00002F6C  38 80 00 00 */	li r4, 0
/* 80006030 00002F70  48 00 2C FD */	bl __dt__11JKRDisposerFv
/* 80006034 00002F74  7F E0 07 35 */	extsh. r0, r31
/* 80006038 00002F78  40 81 00 0C */	ble lbl_80006044
/* 8000603C 00002F7C  7F C3 F3 78 */	mr r3, r30
/* 80006040 00002F80  48 00 6A 71 */	bl __dl__FPv
lbl_80006044:
/* 80006044 00002F84  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80006048 00002F88  7F C3 F3 78 */	mr r3, r30
/* 8000604C 00002F8C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80006050 00002F90  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80006054 00002F94  7C 08 03 A6 */	mtlr r0
/* 80006058 00002F98  38 21 00 18 */	addi r1, r1, 0x18
/* 8000605C 00002F9C  4E 80 00 20 */	blr 

.global open__14JKRAramArchiveFlQ210JKRArchive15EMountDirection
open__14JKRAramArchiveFlQ210JKRArchive15EMountDirection:
/* 80006060 00002FA0  7C 08 02 A6 */	mflr r0
/* 80006064 00002FA4  90 01 00 04 */	stw r0, 4(r1)
/* 80006068 00002FA8  38 00 00 00 */	li r0, 0
/* 8000606C 00002FAC  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80006070 00002FB0  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80006074 00002FB4  7C 7F 1B 78 */	mr r31, r3
/* 80006078 00002FB8  93 C1 00 30 */	stw r30, 0x30(r1)
/* 8000607C 00002FBC  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80006080 00002FC0  3B A4 00 00 */	addi r29, r4, 0
/* 80006084 00002FC4  93 81 00 28 */	stw r28, 0x28(r1)
/* 80006088 00002FC8  90 A3 00 5C */	stw r5, 0x5c(r3)
/* 8000608C 00002FCC  38 A0 00 00 */	li r5, 0
/* 80006090 00002FD0  90 03 00 44 */	stw r0, 0x44(r3)
/* 80006094 00002FD4  38 60 00 F8 */	li r3, 0xf8
/* 80006098 00002FD8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8000609C 00002FDC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 800060A0 00002FE0  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800060A4 00002FE4  90 1F 00 60 */	stw r0, 0x60(r31)
/* 800060A8 00002FE8  80 8D 8D 68 */	lwz r4, sSystemHeap__7JKRHeap@sda21(r13)
/* 800060AC 00002FEC  48 00 68 99 */	bl __nw__FUlP7JKRHeapi
/* 800060B0 00002FF0  28 03 00 00 */	cmplwi r3, 0
/* 800060B4 00002FF4  41 82 00 0C */	beq lbl_800060C0
/* 800060B8 00002FF8  7F A4 EB 78 */	mr r4, r29
/* 800060BC 00002FFC  48 00 36 7D */	bl __ct__10JKRDvdFileFl
lbl_800060C0:
/* 800060C0 00003000  90 7F 00 64 */	stw r3, 0x64(r31)
/* 800060C4 00003004  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 800060C8 00003008  28 00 00 00 */	cmplwi r0, 0
/* 800060CC 0000300C  40 82 00 14 */	bne lbl_800060E0
/* 800060D0 00003010  38 00 00 00 */	li r0, 0
/* 800060D4 00003014  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 800060D8 00003018  38 60 00 00 */	li r3, 0
/* 800060DC 0000301C  48 00 01 8C */	b lbl_80006268
lbl_800060E0:
/* 800060E0 00003020  80 6D 8D 68 */	lwz r3, sSystemHeap__7JKRHeap@sda21(r13)
/* 800060E4 00003024  38 80 00 20 */	li r4, 0x20
/* 800060E8 00003028  38 A0 FF E0 */	li r5, -32
/* 800060EC 0000302C  81 83 00 00 */	lwz r12, 0(r3)
/* 800060F0 00003030  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800060F4 00003034  7D 88 03 A6 */	mtlr r12
/* 800060F8 00003038  4E 80 00 21 */	blrl 
/* 800060FC 0000303C  28 03 00 00 */	cmplwi r3, 0
/* 80006100 00003040  3B C3 00 00 */	addi r30, r3, 0
/* 80006104 00003044  40 82 00 10 */	bne lbl_80006114
/* 80006108 00003048  38 00 00 00 */	li r0, 0
/* 8000610C 0000304C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 80006110 00003050  48 00 01 20 */	b lbl_80006230
lbl_80006114:
/* 80006114 00003054  38 7D 00 00 */	addi r3, r29, 0
/* 80006118 00003058  38 9E 00 00 */	addi r4, r30, 0
/* 8000611C 0000305C  39 5F 00 58 */	addi r10, r31, 0x58
/* 80006120 00003060  38 A0 00 01 */	li r5, 1
/* 80006124 00003064  38 C0 00 20 */	li r6, 0x20
/* 80006128 00003068  38 E0 00 00 */	li r7, 0
/* 8000612C 0000306C  39 00 00 01 */	li r8, 1
/* 80006130 00003070  39 20 00 00 */	li r9, 0
/* 80006134 00003074  48 02 E3 E1 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 80006138 00003078  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 8000613C 0000307C  2C 00 00 01 */	cmpwi r0, 1
/* 80006140 00003080  40 82 00 0C */	bne lbl_8000614C
/* 80006144 00003084  38 00 00 20 */	li r0, 0x20
/* 80006148 00003088  48 00 00 08 */	b lbl_80006150
lbl_8000614C:
/* 8000614C 0000308C  38 00 FF E0 */	li r0, -32
lbl_80006150:
/* 80006150 00003090  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80006154 00003094  7C 04 03 78 */	mr r4, r0
/* 80006158 00003098  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 8000615C 0000309C  38 03 00 1F */	addi r0, r3, 0x1f
/* 80006160 000030A0  54 1C 00 34 */	rlwinm r28, r0, 0, 0, 0x1a
/* 80006164 000030A4  38 7C 00 00 */	addi r3, r28, 0
/* 80006168 000030A8  48 00 62 E5 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 8000616C 000030AC  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80006170 000030B0  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80006174 000030B4  28 04 00 00 */	cmplwi r4, 0
/* 80006178 000030B8  40 82 00 10 */	bne lbl_80006188
/* 8000617C 000030BC  38 00 00 00 */	li r0, 0
/* 80006180 000030C0  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 80006184 000030C4  48 00 00 AC */	b lbl_80006230
lbl_80006188:
/* 80006188 000030C8  38 7D 00 00 */	addi r3, r29, 0
/* 8000618C 000030CC  38 DC 00 00 */	addi r6, r28, 0
/* 80006190 000030D0  38 A0 00 01 */	li r5, 1
/* 80006194 000030D4  38 E0 00 00 */	li r7, 0
/* 80006198 000030D8  39 00 00 01 */	li r8, 1
/* 8000619C 000030DC  39 20 00 20 */	li r9, 0x20
/* 800061A0 000030E0  39 40 00 00 */	li r10, 0
/* 800061A4 000030E4  48 02 E3 71 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 800061A8 000030E8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 800061AC 000030EC  38 A0 00 00 */	li r5, 0
/* 800061B0 000030F0  80 03 00 04 */	lwz r0, 4(r3)
/* 800061B4 000030F4  7C 03 02 14 */	add r0, r3, r0
/* 800061B8 000030F8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 800061BC 000030FC  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 800061C0 00003100  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800061C4 00003104  7C 03 02 14 */	add r0, r3, r0
/* 800061C8 00003108  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 800061CC 0000310C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 800061D0 00003110  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800061D4 00003114  7C 03 02 14 */	add r0, r3, r0
/* 800061D8 00003118  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800061DC 0000311C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 800061E0 00003120  80 6D 8D 08 */	lwz r3, sAramObject__7JKRAram@sda21(r13)
/* 800061E4 00003124  38 04 00 1F */	addi r0, r4, 0x1f
/* 800061E8 00003128  80 63 00 78 */	lwz r3, 0x78(r3)
/* 800061EC 0000312C  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 800061F0 00003130  48 00 05 D5 */	bl alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
/* 800061F4 00003134  90 7F 00 60 */	stw r3, 0x60(r31)
/* 800061F8 00003138  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 800061FC 0000313C  28 04 00 00 */	cmplwi r4, 0
/* 80006200 00003140  40 82 00 10 */	bne lbl_80006210
/* 80006204 00003144  38 00 00 00 */	li r0, 0
/* 80006208 00003148  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 8000620C 0000314C  48 00 00 24 */	b lbl_80006230
lbl_80006210:
/* 80006210 00003150  80 DE 00 08 */	lwz r6, 8(r30)
/* 80006214 00003154  7F A3 EB 78 */	mr r3, r29
/* 80006218 00003158  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8000621C 0000315C  38 A0 00 01 */	li r5, 1
/* 80006220 00003160  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80006224 00003164  7C C6 02 14 */	add r6, r6, r0
/* 80006228 00003168  38 E0 00 00 */	li r7, 0
/* 8000622C 0000316C  48 02 F5 75 */	bl loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUl
lbl_80006230:
/* 80006230 00003170  28 1E 00 00 */	cmplwi r30, 0
/* 80006234 00003174  41 82 00 1C */	beq lbl_80006250
/* 80006238 00003178  80 6D 8D 68 */	lwz r3, sSystemHeap__7JKRHeap@sda21(r13)
/* 8000623C 0000317C  7F C4 F3 78 */	mr r4, r30
/* 80006240 00003180  81 83 00 00 */	lwz r12, 0(r3)
/* 80006244 00003184  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80006248 00003188  7D 88 03 A6 */	mtlr r12
/* 8000624C 0000318C  4E 80 00 21 */	blrl 
lbl_80006250:
/* 80006250 00003190  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 80006254 00003194  28 00 00 00 */	cmplwi r0, 0
/* 80006258 00003198  40 82 00 0C */	bne lbl_80006264
/* 8000625C 0000319C  38 60 00 00 */	li r3, 0
/* 80006260 000031A0  48 00 00 08 */	b lbl_80006268
lbl_80006264:
/* 80006264 000031A4  38 60 00 01 */	li r3, 1
lbl_80006268:
/* 80006268 000031A8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8000626C 000031AC  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80006270 000031B0  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80006274 000031B4  7C 08 03 A6 */	mtlr r0
/* 80006278 000031B8  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8000627C 000031BC  83 81 00 28 */	lwz r28, 0x28(r1)
/* 80006280 000031C0  38 21 00 38 */	addi r1, r1, 0x38
/* 80006284 000031C4  4E 80 00 20 */	blr 

.global fetchResource__14JKRAramArchiveFPQ210JKRArchive12SDIFileEntryPUl
fetchResource__14JKRAramArchiveFPQ210JKRArchive12SDIFileEntryPUl:
/* 80006288 000031C8  7C 08 02 A6 */	mflr r0
/* 8000628C 000031CC  90 01 00 04 */	stw r0, 4(r1)
/* 80006290 000031D0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80006294 000031D4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80006298 000031D8  3B E5 00 00 */	addi r31, r5, 0
/* 8000629C 000031DC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800062A0 000031E0  7C 9E 23 78 */	mr r30, r4
/* 800062A4 000031E4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800062A8 000031E8  28 00 00 00 */	cmplwi r0, 0
/* 800062AC 000031EC  41 82 00 18 */	beq lbl_800062C4
/* 800062B0 000031F0  28 1F 00 00 */	cmplwi r31, 0
/* 800062B4 000031F4  41 82 00 70 */	beq lbl_80006324
/* 800062B8 000031F8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800062BC 000031FC  90 1F 00 00 */	stw r0, 0(r31)
/* 800062C0 00003200  48 00 00 64 */	b lbl_80006324
lbl_800062C4:
/* 800062C4 00003204  80 1E 00 04 */	lwz r0, 4(r30)
/* 800062C8 00003208  54 04 46 3E */	srwi r4, r0, 0x18
/* 800062CC 0000320C  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 800062D0 00003210  40 82 00 0C */	bne lbl_800062DC
/* 800062D4 00003214  38 C0 00 00 */	li r6, 0
/* 800062D8 00003218  48 00 00 18 */	b lbl_800062F0
lbl_800062DC:
/* 800062DC 0000321C  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 800062E0 00003220  41 82 00 0C */	beq lbl_800062EC
/* 800062E4 00003224  38 C0 00 02 */	li r6, 2
/* 800062E8 00003228  48 00 00 08 */	b lbl_800062F0
lbl_800062EC:
/* 800062EC 0000322C  38 C0 00 01 */	li r6, 1
lbl_800062F0:
/* 800062F0 00003230  80 83 00 60 */	lwz r4, 0x60(r3)
/* 800062F4 00003234  38 E1 00 1C */	addi r7, r1, 0x1c
/* 800062F8 00003238  80 1E 00 08 */	lwz r0, 8(r30)
/* 800062FC 0000323C  81 04 00 14 */	lwz r8, 0x14(r4)
/* 80006300 00003240  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80006304 00003244  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80006308 00003248  7C 60 42 14 */	add r3, r0, r8
/* 8000630C 0000324C  48 00 01 C5 */	bl fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc
/* 80006310 00003250  28 1F 00 00 */	cmplwi r31, 0
/* 80006314 00003254  41 82 00 08 */	beq lbl_8000631C
/* 80006318 00003258  90 7F 00 00 */	stw r3, 0(r31)
lbl_8000631C:
/* 8000631C 0000325C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80006320 00003260  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_80006324:
/* 80006324 00003264  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80006328 00003268  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8000632C 0000326C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80006330 00003270  7C 08 03 A6 */	mtlr r0
/* 80006334 00003274  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80006338 00003278  38 21 00 28 */	addi r1, r1, 0x28
/* 8000633C 0000327C  4E 80 00 20 */	blr 

.global fetchResource__14JKRAramArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
fetchResource__14JKRAramArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl:
/* 80006340 00003280  7C 08 02 A6 */	mflr r0
/* 80006344 00003284  39 05 00 00 */	addi r8, r5, 0
/* 80006348 00003288  90 01 00 04 */	stw r0, 4(r1)
/* 8000634C 0000328C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80006350 00003290  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80006354 00003294  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80006358 00003298  3B C7 00 00 */	addi r30, r7, 0
/* 8000635C 0000329C  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80006360 000032A0  3B A4 00 00 */	addi r29, r4, 0
/* 80006364 000032A4  80 06 00 0C */	lwz r0, 0xc(r6)
/* 80006368 000032A8  7C 00 40 40 */	cmplw r0, r8
/* 8000636C 000032AC  7C 1F 03 78 */	mr r31, r0
/* 80006370 000032B0  40 81 00 08 */	ble lbl_80006378
/* 80006374 000032B4  7D 1F 43 78 */	mr r31, r8
lbl_80006378:
/* 80006378 000032B8  80 86 00 10 */	lwz r4, 0x10(r6)
/* 8000637C 000032BC  28 04 00 00 */	cmplwi r4, 0
/* 80006380 000032C0  41 82 00 14 */	beq lbl_80006394
/* 80006384 000032C4  38 7D 00 00 */	addi r3, r29, 0
/* 80006388 000032C8  38 BF 00 00 */	addi r5, r31, 0
/* 8000638C 000032CC  48 00 64 65 */	bl copyMemory__7JKRHeapFPvPvUl
/* 80006390 000032D0  48 00 00 58 */	b lbl_800063E8
lbl_80006394:
/* 80006394 000032D4  80 06 00 04 */	lwz r0, 4(r6)
/* 80006398 000032D8  54 04 46 3E */	srwi r4, r0, 0x18
/* 8000639C 000032DC  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 800063A0 000032E0  40 82 00 0C */	bne lbl_800063AC
/* 800063A4 000032E4  38 00 00 00 */	li r0, 0
/* 800063A8 000032E8  48 00 00 18 */	b lbl_800063C0
lbl_800063AC:
/* 800063AC 000032EC  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 800063B0 000032F0  41 82 00 0C */	beq lbl_800063BC
/* 800063B4 000032F4  38 00 00 02 */	li r0, 2
/* 800063B8 000032F8  48 00 00 08 */	b lbl_800063C0
lbl_800063BC:
/* 800063BC 000032FC  38 00 00 01 */	li r0, 1
lbl_800063C0:
/* 800063C0 00003300  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800063C4 00003304  7C 07 03 78 */	mr r7, r0
/* 800063C8 00003308  80 06 00 08 */	lwz r0, 8(r6)
/* 800063CC 0000330C  7F E4 FB 78 */	mr r4, r31
/* 800063D0 00003310  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800063D4 00003314  38 BD 00 00 */	addi r5, r29, 0
/* 800063D8 00003318  38 C8 00 00 */	addi r6, r8, 0
/* 800063DC 0000331C  7C 60 1A 14 */	add r3, r0, r3
/* 800063E0 00003320  48 00 00 35 */	bl fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli
/* 800063E4 00003324  7C 7F 1B 78 */	mr r31, r3
lbl_800063E8:
/* 800063E8 00003328  28 1E 00 00 */	cmplwi r30, 0
/* 800063EC 0000332C  41 82 00 08 */	beq lbl_800063F4
/* 800063F0 00003330  93 FE 00 00 */	stw r31, 0(r30)
lbl_800063F4:
/* 800063F4 00003334  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800063F8 00003338  7F A3 EB 78 */	mr r3, r29
/* 800063FC 0000333C  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80006400 00003340  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80006404 00003344  7C 08 03 A6 */	mtlr r0
/* 80006408 00003348  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8000640C 0000334C  38 21 00 38 */	addi r1, r1, 0x38
/* 80006410 00003350  4E 80 00 20 */	blr 

.global fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli
fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli:
/* 80006414 00003354  7C 08 02 A6 */	mflr r0
/* 80006418 00003358  2C 07 00 00 */	cmpwi r7, 0
/* 8000641C 0000335C  90 01 00 04 */	stw r0, 4(r1)
/* 80006420 00003360  38 04 00 1F */	addi r0, r4, 0x1f
/* 80006424 00003364  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 80006428 00003368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000642C 0000336C  54 C6 00 34 */	rlwinm r6, r6, 0, 0, 0x1a
/* 80006430 00003370  41 82 00 14 */	beq lbl_80006444
/* 80006434 00003374  41 80 00 6C */	blt lbl_800064A0
/* 80006438 00003378  2C 07 00 03 */	cmpwi r7, 3
/* 8000643C 0000337C  40 80 00 64 */	bge lbl_800064A0
/* 80006440 00003380  48 00 00 38 */	b lbl_80006478
lbl_80006444:
/* 80006444 00003384  7C 00 30 40 */	cmplw r0, r6
/* 80006448 00003388  40 81 00 08 */	ble lbl_80006450
/* 8000644C 0000338C  7C C0 33 78 */	mr r0, r6
lbl_80006450:
/* 80006450 00003390  38 85 00 00 */	addi r4, r5, 0
/* 80006454 00003394  38 E6 00 00 */	addi r7, r6, 0
/* 80006458 00003398  7C 05 03 78 */	mr r5, r0
/* 8000645C 0000339C  39 41 00 1C */	addi r10, r1, 0x1c
/* 80006460 000033A0  38 C0 00 00 */	li r6, 0
/* 80006464 000033A4  39 00 00 00 */	li r8, 0
/* 80006468 000033A8  39 20 FF FF */	li r9, -1
/* 8000646C 000033AC  48 00 0A AD */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 80006470 000033B0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80006474 000033B4  48 00 00 4C */	b lbl_800064C0
lbl_80006478:
/* 80006478 000033B8  38 85 00 00 */	addi r4, r5, 0
/* 8000647C 000033BC  38 E6 00 00 */	addi r7, r6, 0
/* 80006480 000033C0  7C 05 03 78 */	mr r5, r0
/* 80006484 000033C4  39 41 00 1C */	addi r10, r1, 0x1c
/* 80006488 000033C8  38 C0 00 01 */	li r6, 1
/* 8000648C 000033CC  39 00 00 00 */	li r8, 0
/* 80006490 000033D0  39 20 FF FF */	li r9, -1
/* 80006494 000033D4  48 00 0A 85 */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 80006498 000033D8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8000649C 000033DC  48 00 00 24 */	b lbl_800064C0
lbl_800064A0:
/* 800064A0 000033E0  3C 60 80 37 */	lis r3, $$21727@ha
/* 800064A4 000033E4  4C C6 31 82 */	crclr 6
/* 800064A8 000033E8  3C 80 80 37 */	lis r4, $$21728@ha
/* 800064AC 000033EC  38 A4 FF B4 */	addi r5, r4, $$21728@l
/* 800064B0 000033F0  38 63 FF A0 */	addi r3, r3, $$21727@l
/* 800064B4 000033F4  38 80 02 1E */	li r4, 0x21e
/* 800064B8 000033F8  48 08 8B 2D */	bl OSPanic
/* 800064BC 000033FC  38 60 00 00 */	li r3, 0
lbl_800064C0:
/* 800064C0 00003400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800064C4 00003404  38 21 00 20 */	addi r1, r1, 0x20
/* 800064C8 00003408  7C 08 03 A6 */	mtlr r0
/* 800064CC 0000340C  4E 80 00 20 */	blr 

.global fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc
fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc:
/* 800064D0 00003410  7C 08 02 A6 */	mflr r0
/* 800064D4 00003414  2C 06 00 00 */	cmpwi r6, 0
/* 800064D8 00003418  90 01 00 04 */	stw r0, 4(r1)
/* 800064DC 0000341C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800064E0 00003420  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 800064E4 00003424  3B 44 00 00 */	addi r26, r4, 0
/* 800064E8 00003428  38 1A 00 1F */	addi r0, r26, 0x1f
/* 800064EC 0000342C  3B 83 00 00 */	addi r28, r3, 0
/* 800064F0 00003430  3B A5 00 00 */	addi r29, r5, 0
/* 800064F4 00003434  3B C7 00 00 */	addi r30, r7, 0
/* 800064F8 00003438  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 800064FC 0000343C  41 82 00 14 */	beq lbl_80006510
/* 80006500 00003440  41 80 01 04 */	blt lbl_80006604
/* 80006504 00003444  2C 06 00 03 */	cmpwi r6, 3
/* 80006508 00003448  40 80 00 FC */	bge lbl_80006604
/* 8000650C 0000344C  48 00 00 48 */	b lbl_80006554
lbl_80006510:
/* 80006510 00003450  38 7F 00 00 */	addi r3, r31, 0
/* 80006514 00003454  38 BD 00 00 */	addi r5, r29, 0
/* 80006518 00003458  38 80 00 20 */	li r4, 0x20
/* 8000651C 0000345C  48 00 5F 31 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80006520 00003460  3B 63 00 00 */	addi r27, r3, 0
/* 80006524 00003464  38 7C 00 00 */	addi r3, r28, 0
/* 80006528 00003468  38 9B 00 00 */	addi r4, r27, 0
/* 8000652C 0000346C  38 BF 00 00 */	addi r5, r31, 0
/* 80006530 00003470  38 FF 00 00 */	addi r7, r31, 0
/* 80006534 00003474  38 C0 00 00 */	li r6, 0
/* 80006538 00003478  39 00 00 00 */	li r8, 0
/* 8000653C 0000347C  39 20 FF FF */	li r9, -1
/* 80006540 00003480  39 40 00 00 */	li r10, 0
/* 80006544 00003484  48 00 09 D5 */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 80006548 00003488  93 7E 00 00 */	stw r27, 0(r30)
/* 8000654C 0000348C  7F 43 D3 78 */	mr r3, r26
/* 80006550 00003490  48 00 00 D4 */	b lbl_80006624
lbl_80006554:
/* 80006554 00003494  38 BD 00 00 */	addi r5, r29, 0
/* 80006558 00003498  38 60 00 20 */	li r3, 0x20
/* 8000655C 0000349C  38 80 00 20 */	li r4, 0x20
/* 80006560 000034A0  48 00 5E ED */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80006564 000034A4  3B 63 00 00 */	addi r27, r3, 0
/* 80006568 000034A8  38 7C 00 00 */	addi r3, r28, 0
/* 8000656C 000034AC  38 9B 00 00 */	addi r4, r27, 0
/* 80006570 000034B0  38 A0 00 20 */	li r5, 0x20
/* 80006574 000034B4  38 C0 00 00 */	li r6, 0
/* 80006578 000034B8  38 E0 00 00 */	li r7, 0
/* 8000657C 000034BC  39 00 00 00 */	li r8, 0
/* 80006580 000034C0  39 20 FF FF */	li r9, -1
/* 80006584 000034C4  39 40 00 00 */	li r10, 0
/* 80006588 000034C8  48 00 09 91 */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 8000658C 000034CC  88 1B 00 05 */	lbz r0, 5(r27)
/* 80006590 000034D0  7F 63 DB 78 */	mr r3, r27
/* 80006594 000034D4  88 BB 00 04 */	lbz r5, 4(r27)
/* 80006598 000034D8  7F A4 EB 78 */	mr r4, r29
/* 8000659C 000034DC  54 00 80 1E */	slwi r0, r0, 0x10
/* 800065A0 000034E0  88 DB 00 06 */	lbz r6, 6(r27)
/* 800065A4 000034E4  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 800065A8 000034E8  88 FB 00 07 */	lbz r7, 7(r27)
/* 800065AC 000034EC  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 800065B0 000034F0  7C FB 03 78 */	or r27, r7, r0
/* 800065B4 000034F4  48 00 5F 11 */	bl free__7JKRHeapFPvP7JKRHeap
/* 800065B8 000034F8  38 1B 00 1F */	addi r0, r27, 0x1f
/* 800065BC 000034FC  54 1A 00 34 */	rlwinm r26, r0, 0, 0, 0x1a
/* 800065C0 00003500  38 7A 00 00 */	addi r3, r26, 0
/* 800065C4 00003504  38 BD 00 00 */	addi r5, r29, 0
/* 800065C8 00003508  38 80 00 20 */	li r4, 0x20
/* 800065CC 0000350C  48 00 5E 81 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 800065D0 00003510  3B 63 00 00 */	addi r27, r3, 0
/* 800065D4 00003514  38 7C 00 00 */	addi r3, r28, 0
/* 800065D8 00003518  38 9B 00 00 */	addi r4, r27, 0
/* 800065DC 0000351C  38 BF 00 00 */	addi r5, r31, 0
/* 800065E0 00003520  38 FA 00 00 */	addi r7, r26, 0
/* 800065E4 00003524  39 1D 00 00 */	addi r8, r29, 0
/* 800065E8 00003528  39 41 00 20 */	addi r10, r1, 0x20
/* 800065EC 0000352C  38 C0 00 01 */	li r6, 1
/* 800065F0 00003530  39 20 FF FF */	li r9, -1
/* 800065F4 00003534  48 00 09 25 */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 800065F8 00003538  93 7E 00 00 */	stw r27, 0(r30)
/* 800065FC 0000353C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80006600 00003540  48 00 00 24 */	b lbl_80006624
lbl_80006604:
/* 80006604 00003544  3C 60 80 37 */	lis r3, $$21727@ha
/* 80006608 00003548  4C C6 31 82 */	crclr 6
/* 8000660C 0000354C  3C 80 80 37 */	lis r4, $$21728@ha
/* 80006610 00003550  38 A4 FF B4 */	addi r5, r4, $$21728@l
/* 80006614 00003554  38 63 FF A0 */	addi r3, r3, $$21727@l
/* 80006618 00003558  38 80 02 55 */	li r4, 0x255
/* 8000661C 0000355C  48 08 89 C9 */	bl OSPanic
/* 80006620 00003560  38 60 00 00 */	li r3, 0
lbl_80006624:
/* 80006624 00003564  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 80006628 00003568  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8000662C 0000356C  38 21 00 40 */	addi r1, r1, 0x40
/* 80006630 00003570  7C 08 03 A6 */	mtlr r0
/* 80006634 00003574  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$21727:
	.incbin "baserom.dol", 0x36CFA0, 0x14
$$21728:
	.incbin "baserom.dol", 0x36CFB4, 0x1C

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__7JKRFile
__vt__7JKRFile:
  .4byte 0
  .4byte 0
  .4byte __dt__7JKRFileFv
  .4byte 0
  .4byte 0
  .4byte 0
  .4byte 0
  .4byte 0
.global __vt__14JKRAramArchive
__vt__14JKRAramArchive:
  .4byte 0
  .4byte 0
  .4byte __dt__14JKRAramArchiveFv
  .4byte unmount__13JKRFileLoaderFv
  .4byte becomeCurrent__10JKRArchiveFPCc
  .4byte getResource__10JKRArchiveFPCc
  .4byte getResource__10JKRArchiveFUlPCc
  .4byte readResource__10JKRArchiveFPvUlPCc
  .4byte readResource__10JKRArchiveFPvUlUlPCc
  .4byte removeResourceAll__10JKRArchiveFv
  .4byte removeResource__10JKRArchiveFPv
  .4byte detachResource__10JKRArchiveFPv
  .4byte getResSize__10JKRArchiveCFPCv
  .4byte countFile__10JKRArchiveCFPCc
  .4byte getFirstFile__10JKRArchiveCFPCc
  .4byte fetchResource__14JKRAramArchiveFPQ210JKRArchive12SDIFileEntryPUl
  .4byte fetchResource__14JKRAramArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
  .4byte 0
