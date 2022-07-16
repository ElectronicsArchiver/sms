.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global OSGetConsoleType
OSGetConsoleType:
/* 8008C528 00089468  80 6D 92 C0 */	lwz r3, BootInfo@sda21(r13)
/* 8008C52C 0008946C  28 03 00 00 */	cmplwi r3, 0
/* 8008C530 00089470  41 82 00 10 */	beq lbl_8008C540
/* 8008C534 00089474  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8008C538 00089478  28 03 00 00 */	cmplwi r3, 0
/* 8008C53C 0008947C  40 82 00 10 */	bne lbl_8008C54C
lbl_8008C540:
/* 8008C540 00089480  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 8008C544 00089484  38 63 00 02 */	addi r3, r3, 0x10000002@l
/* 8008C548 00089488  48 00 00 04 */	b lbl_8008C54C
lbl_8008C54C:
/* 8008C54C 0008948C  4E 80 00 20 */	blr 

.global ClearArena
ClearArena:
/* 8008C550 00089490  7C 08 02 A6 */	mflr r0
/* 8008C554 00089494  90 01 00 04 */	stw r0, 4(r1)
/* 8008C558 00089498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008C55C 0008949C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008C560 000894A0  48 00 54 75 */	bl OSGetResetCode
/* 8008C564 000894A4  3C 03 80 00 */	addis r0, r3, 0x8000
/* 8008C568 000894A8  28 00 00 00 */	cmplwi r0, 0
/* 8008C56C 000894AC  41 82 00 34 */	beq lbl_8008C5A0
/* 8008C570 000894B0  38 00 00 00 */	li r0, 0
/* 8008C574 000894B4  90 0D 92 DC */	stw r0, __OSSavedRegionStart@sda21(r13)
/* 8008C578 000894B8  90 0D 92 D8 */	stw r0, __OSSavedRegionEnd@sda21(r13)
/* 8008C57C 000894BC  48 00 17 39 */	bl OSGetArenaHi
/* 8008C580 000894C0  7C 7F 1B 78 */	mr r31, r3
/* 8008C584 000894C4  48 00 17 39 */	bl OSGetArenaLo
/* 8008C588 000894C8  7F E3 F8 50 */	subf r31, r3, r31
/* 8008C58C 000894CC  48 00 17 31 */	bl OSGetArenaLo
/* 8008C590 000894D0  7F E5 FB 78 */	mr r5, r31
/* 8008C594 000894D4  38 80 00 00 */	li r4, 0
/* 8008C598 000894D8  4B F7 6B 69 */	bl memset
/* 8008C59C 000894DC  48 00 00 C8 */	b lbl_8008C664
lbl_8008C5A0:
/* 8008C5A0 000894E0  3C 80 81 30 */	lis r4, 0x812FDFF0@ha
/* 8008C5A4 000894E4  80 64 DF F0 */	lwz r3, 0x812FDFF0@l(r4)
/* 8008C5A8 000894E8  80 04 DF EC */	lwz r0, -0x2014(r4)
/* 8008C5AC 000894EC  28 03 00 00 */	cmplwi r3, 0
/* 8008C5B0 000894F0  90 6D 92 DC */	stw r3, __OSSavedRegionStart@sda21(r13)
/* 8008C5B4 000894F4  90 0D 92 D8 */	stw r0, __OSSavedRegionEnd@sda21(r13)
/* 8008C5B8 000894F8  40 82 00 28 */	bne lbl_8008C5E0
/* 8008C5BC 000894FC  48 00 16 F9 */	bl OSGetArenaHi
/* 8008C5C0 00089500  7C 7F 1B 78 */	mr r31, r3
/* 8008C5C4 00089504  48 00 16 F9 */	bl OSGetArenaLo
/* 8008C5C8 00089508  7F E3 F8 50 */	subf r31, r3, r31
/* 8008C5CC 0008950C  48 00 16 F1 */	bl OSGetArenaLo
/* 8008C5D0 00089510  7F E5 FB 78 */	mr r5, r31
/* 8008C5D4 00089514  38 80 00 00 */	li r4, 0
/* 8008C5D8 00089518  4B F7 6B 29 */	bl memset
/* 8008C5DC 0008951C  48 00 00 88 */	b lbl_8008C664
lbl_8008C5E0:
/* 8008C5E0 00089520  48 00 16 DD */	bl OSGetArenaLo
/* 8008C5E4 00089524  80 0D 92 DC */	lwz r0, __OSSavedRegionStart@sda21(r13)
/* 8008C5E8 00089528  7C 03 00 40 */	cmplw r3, r0
/* 8008C5EC 0008952C  40 80 00 78 */	bge lbl_8008C664
/* 8008C5F0 00089530  48 00 16 C5 */	bl OSGetArenaHi
/* 8008C5F4 00089534  80 0D 92 DC */	lwz r0, __OSSavedRegionStart@sda21(r13)
/* 8008C5F8 00089538  7C 03 00 40 */	cmplw r3, r0
/* 8008C5FC 0008953C  41 81 00 28 */	bgt lbl_8008C624
/* 8008C600 00089540  48 00 16 B5 */	bl OSGetArenaHi
/* 8008C604 00089544  7C 7F 1B 78 */	mr r31, r3
/* 8008C608 00089548  48 00 16 B5 */	bl OSGetArenaLo
/* 8008C60C 0008954C  7F E3 F8 50 */	subf r31, r3, r31
/* 8008C610 00089550  48 00 16 AD */	bl OSGetArenaLo
/* 8008C614 00089554  7F E5 FB 78 */	mr r5, r31
/* 8008C618 00089558  38 80 00 00 */	li r4, 0
/* 8008C61C 0008955C  4B F7 6A E5 */	bl memset
/* 8008C620 00089560  48 00 00 44 */	b lbl_8008C664
lbl_8008C624:
/* 8008C624 00089564  48 00 16 99 */	bl OSGetArenaLo
/* 8008C628 00089568  80 0D 92 DC */	lwz r0, __OSSavedRegionStart@sda21(r13)
/* 8008C62C 0008956C  7F E3 00 50 */	subf r31, r3, r0
/* 8008C630 00089570  48 00 16 8D */	bl OSGetArenaLo
/* 8008C634 00089574  7F E5 FB 78 */	mr r5, r31
/* 8008C638 00089578  38 80 00 00 */	li r4, 0
/* 8008C63C 0008957C  4B F7 6A C5 */	bl memset
/* 8008C640 00089580  48 00 16 75 */	bl OSGetArenaHi
/* 8008C644 00089584  83 ED 92 D8 */	lwz r31, __OSSavedRegionEnd@sda21(r13)
/* 8008C648 00089588  7C 03 F8 40 */	cmplw r3, r31
/* 8008C64C 0008958C  40 81 00 18 */	ble lbl_8008C664
/* 8008C650 00089590  48 00 16 65 */	bl OSGetArenaHi
/* 8008C654 00089594  7C BF 18 50 */	subf r5, r31, r3
/* 8008C658 00089598  7F E3 FB 78 */	mr r3, r31
/* 8008C65C 0008959C  38 80 00 00 */	li r4, 0
/* 8008C660 000895A0  4B F7 6A A1 */	bl memset
lbl_8008C664:
/* 8008C664 000895A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008C668 000895A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008C66C 000895AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8008C670 000895B0  7C 08 03 A6 */	mtlr r0
/* 8008C674 000895B4  4E 80 00 20 */	blr 

.global InquiryCallback
InquiryCallback:
/* 8008C678 000895B8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8008C67C 000895BC  2C 00 00 00 */	cmpwi r0, 0
/* 8008C680 000895C0  41 82 00 08 */	beq lbl_8008C688
/* 8008C684 000895C4  48 00 00 20 */	b lbl_8008C6A4
lbl_8008C688:
/* 8008C688 000895C8  3C 60 80 3F */	lis r3, DriveInfo@ha
/* 8008C68C 000895CC  38 63 B0 80 */	addi r3, r3, DriveInfo@l
/* 8008C690 000895D0  A0 03 00 02 */	lhz r0, 2(r3)
/* 8008C694 000895D4  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 8008C698 000895D8  60 00 80 00 */	ori r0, r0, 0x8000
/* 8008C69C 000895DC  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
/* 8008C6A0 000895E0  48 00 00 10 */	b lbl_8008C6B0
lbl_8008C6A4:
/* 8008C6A4 000895E4  38 00 00 01 */	li r0, 1
/* 8008C6A8 000895E8  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 8008C6AC 000895EC  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
lbl_8008C6B0:
/* 8008C6B0 000895F0  4E 80 00 20 */	blr 

.global OSInit
OSInit:
/* 8008C6B4 000895F4  7C 08 02 A6 */	mflr r0
/* 8008C6B8 000895F8  90 01 00 04 */	stw r0, 4(r1)
/* 8008C6BC 000895FC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8008C6C0 00089600  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8008C6C4 00089604  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8008C6C8 00089608  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8008C6CC 0008960C  80 0D 92 D0 */	lwz r0, AreWeInitialized@sda21(r13)
/* 8008C6D0 00089610  3C 80 80 3F */	lis r4, DriveInfo@ha
/* 8008C6D4 00089614  3C 60 80 3B */	lis r3, "@84"@ha
/* 8008C6D8 00089618  2C 00 00 00 */	cmpwi r0, 0
/* 8008C6DC 0008961C  3B C4 B0 80 */	addi r30, r4, DriveInfo@l
/* 8008C6E0 00089620  3B E3 F0 C0 */	addi r31, r3, "@84"@l
/* 8008C6E4 00089624  40 82 03 6C */	bne lbl_8008CA50
/* 8008C6E8 00089628  38 00 00 01 */	li r0, 1
/* 8008C6EC 0008962C  90 0D 92 D0 */	stw r0, AreWeInitialized@sda21(r13)
/* 8008C6F0 00089630  48 00 77 29 */	bl __OSGetSystemTime
/* 8008C6F4 00089634  90 8D 92 EC */	stw r4, lbl_80409DAC@sda21(r13)
/* 8008C6F8 00089638  90 6D 92 E8 */	stw r3, __OSStartTime@sda21(r13)
/* 8008C6FC 0008963C  48 00 3A D1 */	bl OSDisableInterrupts
/* 8008C700 00089640  4B FF FD 0D */	bl PPCDisableSpeculation
/* 8008C704 00089644  4B FF FD 31 */	bl PPCSetFpNonIEEEMode
/* 8008C708 00089648  38 00 00 00 */	li r0, 0
/* 8008C70C 0008964C  3C 80 80 00 */	lis r4, 0x800000F4@ha
/* 8008C710 00089650  90 0D 92 C4 */	stw r0, BI2DebugFlag@sda21(r13)
/* 8008C714 00089654  90 8D 92 C0 */	stw r4, BootInfo@sda21(r13)
/* 8008C718 00089658  90 0D 93 DC */	stw r0, __DVDLongFileNameFlag@sda21(r13)
/* 8008C71C 0008965C  80 64 00 F4 */	lwz r3, 0x800000F4@l(r4)
/* 8008C720 00089660  28 03 00 00 */	cmplwi r3, 0
/* 8008C724 00089664  41 82 00 34 */	beq lbl_8008C758
/* 8008C728 00089668  38 03 00 0C */	addi r0, r3, 0xc
/* 8008C72C 0008966C  90 0D 92 C4 */	stw r0, BI2DebugFlag@sda21(r13)
/* 8008C730 00089670  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8008C734 00089674  80 6D 92 C4 */	lwz r3, BI2DebugFlag@sda21(r13)
/* 8008C738 00089678  90 0D 94 B4 */	stw r0, __PADSpec@sda21(r13)
/* 8008C73C 0008967C  80 03 00 00 */	lwz r0, 0(r3)
/* 8008C740 00089680  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8008C744 00089684  98 04 30 E8 */	stb r0, 0x30e8(r4)
/* 8008C748 00089688  80 0D 94 B4 */	lwz r0, __PADSpec@sda21(r13)
/* 8008C74C 0008968C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8008C750 00089690  98 04 30 E9 */	stb r0, 0x30e9(r4)
/* 8008C754 00089694  48 00 00 28 */	b lbl_8008C77C
lbl_8008C758:
/* 8008C758 00089698  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8008C75C 0008969C  28 00 00 00 */	cmplwi r0, 0
/* 8008C760 000896A0  41 82 00 1C */	beq lbl_8008C77C
/* 8008C764 000896A4  88 64 30 E8 */	lbz r3, 0x30e8(r4)
/* 8008C768 000896A8  38 0D 92 C8 */	addi r0, r13, BI2DebugFlagHolder@sda21
/* 8008C76C 000896AC  90 6D 92 C8 */	stw r3, BI2DebugFlagHolder@sda21(r13)
/* 8008C770 000896B0  90 0D 92 C4 */	stw r0, BI2DebugFlag@sda21(r13)
/* 8008C774 000896B4  88 04 30 E9 */	lbz r0, 0x30e9(r4)
/* 8008C778 000896B8  90 0D 94 B4 */	stw r0, __PADSpec@sda21(r13)
lbl_8008C77C:
/* 8008C77C 000896BC  38 00 00 01 */	li r0, 1
/* 8008C780 000896C0  80 6D 92 C0 */	lwz r3, BootInfo@sda21(r13)
/* 8008C784 000896C4  90 0D 93 DC */	stw r0, __DVDLongFileNameFlag@sda21(r13)
/* 8008C788 000896C8  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8008C78C 000896CC  28 03 00 00 */	cmplwi r3, 0
/* 8008C790 000896D0  40 82 00 10 */	bne lbl_8008C7A0
/* 8008C794 000896D4  3C 60 80 42 */	lis r3, 0x80426020@ha
/* 8008C798 000896D8  38 63 60 20 */	addi r3, r3, 0x80426020@l
/* 8008C79C 000896DC  48 00 00 04 */	b lbl_8008C7A0
lbl_8008C7A0:
/* 8008C7A0 000896E0  48 00 15 2D */	bl OSSetArenaLo
/* 8008C7A4 000896E4  80 6D 92 C0 */	lwz r3, BootInfo@sda21(r13)
/* 8008C7A8 000896E8  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8008C7AC 000896EC  28 00 00 00 */	cmplwi r0, 0
/* 8008C7B0 000896F0  40 82 00 30 */	bne lbl_8008C7E0
/* 8008C7B4 000896F4  80 6D 92 C4 */	lwz r3, BI2DebugFlag@sda21(r13)
/* 8008C7B8 000896F8  28 03 00 00 */	cmplwi r3, 0
/* 8008C7BC 000896FC  41 82 00 24 */	beq lbl_8008C7E0
/* 8008C7C0 00089700  80 03 00 00 */	lwz r0, 0(r3)
/* 8008C7C4 00089704  28 00 00 02 */	cmplwi r0, 2
/* 8008C7C8 00089708  40 80 00 18 */	bge lbl_8008C7E0
/* 8008C7CC 0008970C  3C 60 80 42 */	lis r3, 0x80424008@ha
/* 8008C7D0 00089710  38 63 40 08 */	addi r3, r3, 0x80424008@l
/* 8008C7D4 00089714  38 03 00 1F */	addi r0, r3, 0x1f
/* 8008C7D8 00089718  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8008C7DC 0008971C  48 00 14 F1 */	bl OSSetArenaLo
lbl_8008C7E0:
/* 8008C7E0 00089720  80 6D 92 C0 */	lwz r3, BootInfo@sda21(r13)
/* 8008C7E4 00089724  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8008C7E8 00089728  28 03 00 00 */	cmplwi r3, 0
/* 8008C7EC 0008972C  40 82 00 10 */	bne lbl_8008C7FC
/* 8008C7F0 00089730  3C 60 81 70 */	lis r3, 0x81700000@ha
/* 8008C7F4 00089734  38 63 00 00 */	addi r3, r3, 0x81700000@l
/* 8008C7F8 00089738  48 00 00 04 */	b lbl_8008C7FC
lbl_8008C7FC:
/* 8008C7FC 0008973C  48 00 14 C9 */	bl OSSetArenaHi
/* 8008C800 00089740  48 00 02 6D */	bl OSExceptionInit
/* 8008C804 00089744  48 00 62 E9 */	bl __OSInitSystemCall
/* 8008C808 00089748  48 00 06 7D */	bl OSInitAlarm
/* 8008C80C 0008974C  48 00 42 2D */	bl __OSModuleInit
/* 8008C810 00089750  48 00 3A 39 */	bl __OSInterruptInit
/* 8008C814 00089754  3C 60 80 09 */	lis r3, __OSResetSWInterruptHandler@ha
/* 8008C818 00089758  38 83 1A 04 */	addi r4, r3, __OSResetSWInterruptHandler@l
/* 8008C81C 0008975C  38 60 00 16 */	li r3, 0x16
/* 8008C820 00089760  48 00 39 F9 */	bl __OSSetInterruptHandler
/* 8008C824 00089764  48 00 25 CD */	bl __OSContextInit
/* 8008C828 00089768  48 00 1C B5 */	bl __OSCacheInit
/* 8008C82C 0008976C  48 02 8E 21 */	bl EXIInit
/* 8008C830 00089770  48 02 6C FD */	bl SIInit
/* 8008C834 00089774  48 00 56 F5 */	bl __OSInitSram
/* 8008C838 00089778  48 00 63 19 */	bl __OSThreadInit
/* 8008C83C 0008977C  48 00 14 99 */	bl __OSInitAudioSystem
/* 8008C840 00089780  4B FF FB B5 */	bl PPCMfhid2
/* 8008C844 00089784  54 63 00 80 */	rlwinm r3, r3, 0, 2, 0
/* 8008C848 00089788  4B FF FB B5 */	bl PPCMthid2
/* 8008C84C 0008978C  80 6D 92 C0 */	lwz r3, BootInfo@sda21(r13)
/* 8008C850 00089790  38 83 00 2C */	addi r4, r3, 0x2c
/* 8008C854 00089794  80 04 00 00 */	lwz r0, 0(r4)
/* 8008C858 00089798  54 00 00 C6 */	rlwinm r0, r0, 0, 3, 3
/* 8008C85C 0008979C  28 00 00 00 */	cmplwi r0, 0
/* 8008C860 000897A0  41 82 00 14 */	beq lbl_8008C874
/* 8008C864 000897A4  3C 60 10 00 */	lis r3, 0x10000004@ha
/* 8008C868 000897A8  38 03 00 04 */	addi r0, r3, 0x10000004@l
/* 8008C86C 000897AC  90 04 00 00 */	stw r0, 0(r4)
/* 8008C870 000897B0  48 00 00 0C */	b lbl_8008C87C
lbl_8008C874:
/* 8008C874 000897B4  38 00 00 01 */	li r0, 1
/* 8008C878 000897B8  90 04 00 00 */	stw r0, 0(r4)
lbl_8008C87C:
/* 8008C87C 000897BC  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8008C880 000897C0  80 8D 92 C0 */	lwz r4, BootInfo@sda21(r13)
/* 8008C884 000897C4  38 63 30 00 */	addi r3, r3, 0xCC003000@l
/* 8008C888 000897C8  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8008C88C 000897CC  80 64 00 2C */	lwz r3, 0x2c(r4)
/* 8008C890 000897D0  54 00 00 06 */	rlwinm r0, r0, 0, 0, 3
/* 8008C894 000897D4  54 00 27 3E */	srwi r0, r0, 0x1c
/* 8008C898 000897D8  7C 03 02 14 */	add r0, r3, r0
/* 8008C89C 000897DC  90 04 00 2C */	stw r0, 0x2c(r4)
/* 8008C8A0 000897E0  80 0D 92 E0 */	lwz r0, __OSInIPL@sda21(r13)
/* 8008C8A4 000897E4  2C 00 00 00 */	cmpwi r0, 0
/* 8008C8A8 000897E8  40 82 00 08 */	bne lbl_8008C8B0
/* 8008C8AC 000897EC  48 00 46 2D */	bl __OSInitMemoryProtection
lbl_8008C8B0:
/* 8008C8B0 000897F0  7F E3 FB 78 */	mr r3, r31
/* 8008C8B4 000897F4  4C C6 31 82 */	crclr 6
/* 8008C8B8 000897F8  48 00 26 AD */	bl OSReport
/* 8008C8BC 000897FC  38 7F 00 20 */	addi r3, r31, 0x20
/* 8008C8C0 00089800  4C C6 31 82 */	crclr 6
/* 8008C8C4 00089804  38 9F 00 38 */	addi r4, r31, 0x38
/* 8008C8C8 00089808  38 BF 00 44 */	addi r5, r31, 0x44
/* 8008C8CC 0008980C  48 00 26 99 */	bl OSReport
/* 8008C8D0 00089810  38 7F 00 50 */	addi r3, r31, 0x50
/* 8008C8D4 00089814  4C C6 31 82 */	crclr 6
/* 8008C8D8 00089818  48 00 26 8D */	bl OSReport
/* 8008C8DC 0008981C  80 6D 92 C0 */	lwz r3, BootInfo@sda21(r13)
/* 8008C8E0 00089820  28 03 00 00 */	cmplwi r3, 0
/* 8008C8E4 00089824  41 82 00 10 */	beq lbl_8008C8F4
/* 8008C8E8 00089828  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8008C8EC 0008982C  28 04 00 00 */	cmplwi r4, 0
/* 8008C8F0 00089830  40 82 00 10 */	bne lbl_8008C900
lbl_8008C8F4:
/* 8008C8F4 00089834  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 8008C8F8 00089838  38 83 00 02 */	addi r4, r3, 0x10000002@l
/* 8008C8FC 0008983C  48 00 00 04 */	b lbl_8008C900
lbl_8008C900:
/* 8008C900 00089840  54 80 00 C6 */	rlwinm r0, r4, 0, 3, 3
/* 8008C904 00089844  28 00 00 00 */	cmplwi r0, 0
/* 8008C908 00089848  40 82 00 14 */	bne lbl_8008C91C
/* 8008C90C 0008984C  4C C6 31 82 */	crclr 6
/* 8008C910 00089850  38 7F 00 60 */	addi r3, r31, 0x60
/* 8008C914 00089854  48 00 26 51 */	bl OSReport
/* 8008C918 00089858  48 00 00 8C */	b lbl_8008C9A4
lbl_8008C91C:
/* 8008C91C 0008985C  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 8008C920 00089860  38 03 00 02 */	addi r0, r3, 0x10000002@l
/* 8008C924 00089864  7C 04 00 00 */	cmpw r4, r0
/* 8008C928 00089868  41 82 00 48 */	beq lbl_8008C970
/* 8008C92C 0008986C  40 80 00 14 */	bge lbl_8008C940
/* 8008C930 00089870  7C 04 18 00 */	cmpw r4, r3
/* 8008C934 00089874  41 82 00 1C */	beq lbl_8008C950
/* 8008C938 00089878  40 80 00 28 */	bge lbl_8008C960
/* 8008C93C 0008987C  48 00 00 54 */	b lbl_8008C990
lbl_8008C940:
/* 8008C940 00089880  38 03 00 04 */	addi r0, r3, 4
/* 8008C944 00089884  7C 04 00 00 */	cmpw r4, r0
/* 8008C948 00089888  40 80 00 48 */	bge lbl_8008C990
/* 8008C94C 0008988C  48 00 00 34 */	b lbl_8008C980
lbl_8008C950:
/* 8008C950 00089890  38 7F 00 6C */	addi r3, r31, 0x6c
/* 8008C954 00089894  4C C6 31 82 */	crclr 6
/* 8008C958 00089898  48 00 26 0D */	bl OSReport
/* 8008C95C 0008989C  48 00 00 48 */	b lbl_8008C9A4
lbl_8008C960:
/* 8008C960 000898A0  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8008C964 000898A4  4C C6 31 82 */	crclr 6
/* 8008C968 000898A8  48 00 25 FD */	bl OSReport
/* 8008C96C 000898AC  48 00 00 38 */	b lbl_8008C9A4
lbl_8008C970:
/* 8008C970 000898B0  38 7F 00 8C */	addi r3, r31, 0x8c
/* 8008C974 000898B4  4C C6 31 82 */	crclr 6
/* 8008C978 000898B8  48 00 25 ED */	bl OSReport
/* 8008C97C 000898BC  48 00 00 28 */	b lbl_8008C9A4
lbl_8008C980:
/* 8008C980 000898C0  38 7F 00 9C */	addi r3, r31, 0x9c
/* 8008C984 000898C4  4C C6 31 82 */	crclr 6
/* 8008C988 000898C8  48 00 25 DD */	bl OSReport
/* 8008C98C 000898CC  48 00 00 18 */	b lbl_8008C9A4
lbl_8008C990:
/* 8008C990 000898D0  3C 84 F0 00 */	addis r4, r4, 0xf000
/* 8008C994 000898D4  4C C6 31 82 */	crclr 6
/* 8008C998 000898D8  38 7F 00 AC */	addi r3, r31, 0xac
/* 8008C99C 000898DC  38 84 FF FD */	addi r4, r4, -3
/* 8008C9A0 000898E0  48 00 25 C5 */	bl OSReport
lbl_8008C9A4:
/* 8008C9A4 000898E4  80 8D 92 C0 */	lwz r4, BootInfo@sda21(r13)
/* 8008C9A8 000898E8  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8008C9AC 000898EC  4C C6 31 82 */	crclr 6
/* 8008C9B0 000898F0  80 04 00 28 */	lwz r0, 0x28(r4)
/* 8008C9B4 000898F4  54 04 65 3E */	srwi r4, r0, 0x14
/* 8008C9B8 000898F8  48 00 25 AD */	bl OSReport
/* 8008C9BC 000898FC  48 00 12 F9 */	bl OSGetArenaHi
/* 8008C9C0 00089900  7C 7D 1B 78 */	mr r29, r3
/* 8008C9C4 00089904  48 00 12 F9 */	bl OSGetArenaLo
/* 8008C9C8 00089908  7C 64 1B 78 */	mr r4, r3
/* 8008C9CC 0008990C  4C C6 31 82 */	crclr 6
/* 8008C9D0 00089910  7F A5 EB 78 */	mr r5, r29
/* 8008C9D4 00089914  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 8008C9D8 00089918  48 00 25 8D */	bl OSReport
/* 8008C9DC 0008991C  80 6D 92 C4 */	lwz r3, BI2DebugFlag@sda21(r13)
/* 8008C9E0 00089920  28 03 00 00 */	cmplwi r3, 0
/* 8008C9E4 00089924  41 82 00 14 */	beq lbl_8008C9F8
/* 8008C9E8 00089928  80 03 00 00 */	lwz r0, 0(r3)
/* 8008C9EC 0008992C  28 00 00 02 */	cmplwi r0, 2
/* 8008C9F0 00089930  41 80 00 08 */	blt lbl_8008C9F8
/* 8008C9F4 00089934  4B FF F0 B5 */	bl EnableMetroTRKInterrupts
lbl_8008C9F8:
/* 8008C9F8 00089938  4B FF FB 59 */	bl ClearArena
/* 8008C9FC 0008993C  48 00 37 E5 */	bl OSEnableInterrupts
/* 8008CA00 00089940  80 0D 92 E0 */	lwz r0, __OSInIPL@sda21(r13)
/* 8008CA04 00089944  2C 00 00 00 */	cmpwi r0, 0
/* 8008CA08 00089948  40 82 00 48 */	bne lbl_8008CA50
/* 8008CA0C 0008994C  48 00 9E E1 */	bl DVDInit
/* 8008CA10 00089950  80 0D 92 CC */	lwz r0, __OSIsGcam@sda21(r13)
/* 8008CA14 00089954  2C 00 00 00 */	cmpwi r0, 0
/* 8008CA18 00089958  41 82 00 18 */	beq lbl_8008CA30
/* 8008CA1C 0008995C  3C 60 00 01 */	lis r3, 0x00009000@ha
/* 8008CA20 00089960  38 03 90 00 */	addi r0, r3, 0x00009000@l
/* 8008CA24 00089964  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 8008CA28 00089968  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
/* 8008CA2C 0008996C  48 00 00 24 */	b lbl_8008CA50
lbl_8008CA30:
/* 8008CA30 00089970  7F C3 F3 78 */	mr r3, r30
/* 8008CA34 00089974  38 80 00 20 */	li r4, 0x20
/* 8008CA38 00089978  48 00 15 45 */	bl DCInvalidateRange
/* 8008CA3C 0008997C  3C 60 80 09 */	lis r3, InquiryCallback@ha
/* 8008CA40 00089980  38 A3 C6 78 */	addi r5, r3, InquiryCallback@l
/* 8008CA44 00089984  7F C4 F3 78 */	mr r4, r30
/* 8008CA48 00089988  38 7E 00 20 */	addi r3, r30, 0x20
/* 8008CA4C 0008998C  48 00 BE B9 */	bl DVDInquiryAsync
lbl_8008CA50:
/* 8008CA50 00089990  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8008CA54 00089994  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8008CA58 00089998  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8008CA5C 0008999C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8008CA60 000899A0  38 21 00 18 */	addi r1, r1, 0x18
/* 8008CA64 000899A4  7C 08 03 A6 */	mtlr r0
/* 8008CA68 000899A8  4E 80 00 20 */	blr 

.global OSExceptionInit
OSExceptionInit:
/* 8008CA6C 000899AC  7C 08 02 A6 */	mflr r0
/* 8008CA70 000899B0  90 01 00 04 */	stw r0, 4(r1)
/* 8008CA74 000899B4  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8008CA78 000899B8  BE 81 00 08 */	stmw r20, 8(r1)
/* 8008CA7C 000899BC  3C 60 80 00 */	lis r3, 0x80000060@ha
/* 8008CA80 000899C0  80 03 00 60 */	lwz r0, 0x80000060@l(r3)
/* 8008CA84 000899C4  3C 80 80 09 */	lis r4, lbl_8008CDAC@ha
/* 8008CA88 000899C8  3B C4 CD AC */	addi r30, r4, lbl_8008CDAC@l
/* 8008CA8C 000899CC  3C A0 80 09 */	lis r5, OSExceptionVector@ha
/* 8008CA90 000899D0  83 3E 00 00 */	lwz r25, 0(r30)
/* 8008CA94 000899D4  3C 80 80 09 */	lis r4, lbl_8008CDDC@ha
/* 8008CA98 000899D8  38 A5 CD 44 */	addi r5, r5, OSExceptionVector@l
/* 8008CA9C 000899DC  38 84 CD DC */	addi r4, r4, lbl_8008CDDC@l
/* 8008CAA0 000899E0  3C C0 80 3B */	lis r6, "@84"@ha
/* 8008CAA4 000899E4  28 00 00 00 */	cmplwi r0, 0
/* 8008CAA8 000899E8  7C B8 2B 78 */	mr r24, r5
/* 8008CAAC 000899EC  3B A6 F0 C0 */	addi r29, r6, "@84"@l
/* 8008CAB0 000899F0  7E E5 20 50 */	subf r23, r5, r4
/* 8008CAB4 000899F4  3A 83 00 60 */	addi r20, r3, 0x60
/* 8008CAB8 000899F8  40 82 00 4C */	bne lbl_8008CB04
/* 8008CABC 000899FC  38 7D 01 24 */	addi r3, r29, 0x124
/* 8008CAC0 00089A00  4C C6 31 82 */	crclr 6
/* 8008CAC4 00089A04  4B FF FA 15 */	bl DBPrintf
/* 8008CAC8 00089A08  3C 80 80 09 */	lis r4, __OSDBIntegrator@ha
/* 8008CACC 00089A0C  3C 60 80 09 */	lis r3, __OSDBJump@ha
/* 8008CAD0 00089A10  38 03 CD 10 */	addi r0, r3, __OSDBJump@l
/* 8008CAD4 00089A14  38 84 CC EC */	addi r4, r4, __OSDBIntegrator@l
/* 8008CAD8 00089A18  7E A4 00 50 */	subf r21, r4, r0
/* 8008CADC 00089A1C  7E 83 A3 78 */	mr r3, r20
/* 8008CAE0 00089A20  7E A5 AB 78 */	mr r5, r21
/* 8008CAE4 00089A24  4B F7 67 11 */	bl memcpy
/* 8008CAE8 00089A28  7E 83 A3 78 */	mr r3, r20
/* 8008CAEC 00089A2C  7E A4 AB 78 */	mr r4, r21
/* 8008CAF0 00089A30  48 00 15 25 */	bl DCFlushRangeNoSync
/* 8008CAF4 00089A34  7C 00 04 AC */	sync 0
/* 8008CAF8 00089A38  7E 83 A3 78 */	mr r3, r20
/* 8008CAFC 00089A3C  7E A4 AB 78 */	mr r4, r21
/* 8008CB00 00089A40  48 00 15 75 */	bl ICInvalidateRange
lbl_8008CB04:
/* 8008CB04 00089A44  3C 80 80 09 */	lis r4, __OSDBJump@ha
/* 8008CB08 00089A48  3C 60 80 09 */	lis r3, __OSSetExceptionHandler@ha
/* 8008CB0C 00089A4C  3B E4 CD 10 */	addi r31, r4, __OSDBJump@l
/* 8008CB10 00089A50  38 03 CD 14 */	addi r0, r3, __OSSetExceptionHandler@l
/* 8008CB14 00089A54  3B 9D 00 E8 */	addi r28, r29, 0xe8
/* 8008CB18 00089A58  7F 7F 00 50 */	subf r27, r31, r0
/* 8008CB1C 00089A5C  3B 40 00 00 */	li r26, 0
/* 8008CB20 00089A60  48 00 00 04 */	b lbl_8008CB24
lbl_8008CB24:
/* 8008CB24 00089A64  3C 60 80 09 */	lis r3, lbl_8008CD9C@ha
/* 8008CB28 00089A68  3A A3 CD 9C */	addi r21, r3, lbl_8008CD9C@l
/* 8008CB2C 00089A6C  3E C0 60 00 */	lis r22, 0x6000
/* 8008CB30 00089A70  48 00 00 04 */	b lbl_8008CB34
lbl_8008CB34:
/* 8008CB34 00089A74  48 00 01 48 */	b lbl_8008CC7C
lbl_8008CB38:
/* 8008CB38 00089A78  80 6D 92 C4 */	lwz r3, BI2DebugFlag@sda21(r13)
/* 8008CB3C 00089A7C  28 03 00 00 */	cmplwi r3, 0
/* 8008CB40 00089A80  41 82 00 34 */	beq lbl_8008CB74
/* 8008CB44 00089A84  80 03 00 00 */	lwz r0, 0(r3)
/* 8008CB48 00089A88  28 00 00 02 */	cmplwi r0, 2
/* 8008CB4C 00089A8C  41 80 00 28 */	blt lbl_8008CB74
/* 8008CB50 00089A90  7F 43 D3 78 */	mr r3, r26
/* 8008CB54 00089A94  4B FF F9 69 */	bl __DBIsExceptionMarked
/* 8008CB58 00089A98  2C 03 00 00 */	cmpwi r3, 0
/* 8008CB5C 00089A9C  41 82 00 18 */	beq lbl_8008CB74
/* 8008CB60 00089AA0  38 7D 01 40 */	addi r3, r29, 0x140
/* 8008CB64 00089AA4  4C C6 31 82 */	crclr 6
/* 8008CB68 00089AA8  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 8008CB6C 00089AAC  4B FF F9 6D */	bl DBPrintf
/* 8008CB70 00089AB0  48 00 01 04 */	b lbl_8008CC74
lbl_8008CB74:
/* 8008CB74 00089AB4  57 54 06 3E */	clrlwi r20, r26, 0x18
/* 8008CB78 00089AB8  7F 20 A3 78 */	or r0, r25, r20
/* 8008CB7C 00089ABC  90 1E 00 00 */	stw r0, 0(r30)
/* 8008CB80 00089AC0  7F 43 D3 78 */	mr r3, r26
/* 8008CB84 00089AC4  4B FF F9 39 */	bl __DBIsExceptionMarked
/* 8008CB88 00089AC8  2C 03 00 00 */	cmpwi r3, 0
/* 8008CB8C 00089ACC  41 82 00 28 */	beq lbl_8008CBB4
/* 8008CB90 00089AD0  7E 84 A3 78 */	mr r4, r20
/* 8008CB94 00089AD4  4C C6 31 82 */	crclr 6
/* 8008CB98 00089AD8  38 7D 01 70 */	addi r3, r29, 0x170
/* 8008CB9C 00089ADC  4B FF F9 3D */	bl DBPrintf
/* 8008CBA0 00089AE0  7E A3 AB 78 */	mr r3, r21
/* 8008CBA4 00089AE4  7F E4 FB 78 */	mr r4, r31
/* 8008CBA8 00089AE8  7F 65 DB 78 */	mr r5, r27
/* 8008CBAC 00089AEC  4B F7 66 49 */	bl memcpy
/* 8008CBB0 00089AF0  48 00 00 90 */	b lbl_8008CC40
lbl_8008CBB4:
/* 8008CBB4 00089AF4  7E A4 AB 78 */	mr r4, r21
/* 8008CBB8 00089AF8  48 00 00 04 */	b lbl_8008CBBC
lbl_8008CBBC:
/* 8008CBBC 00089AFC  28 1B 00 00 */	cmplwi r27, 0
/* 8008CBC0 00089B00  38 7B 00 03 */	addi r3, r27, 3
/* 8008CBC4 00089B04  54 63 F0 BE */	srwi r3, r3, 2
/* 8008CBC8 00089B08  40 81 00 78 */	ble lbl_8008CC40
/* 8008CBCC 00089B0C  54 60 E8 FE */	srwi r0, r3, 3
/* 8008CBD0 00089B10  28 00 00 00 */	cmplwi r0, 0
/* 8008CBD4 00089B14  7C 09 03 A6 */	mtctr r0
/* 8008CBD8 00089B18  41 82 00 54 */	beq lbl_8008CC2C
/* 8008CBDC 00089B1C  48 00 00 04 */	b lbl_8008CBE0
lbl_8008CBE0:
/* 8008CBE0 00089B20  92 C4 00 00 */	stw r22, 0(r4)
/* 8008CBE4 00089B24  38 84 00 04 */	addi r4, r4, 4
/* 8008CBE8 00089B28  92 C4 00 00 */	stw r22, 0(r4)
/* 8008CBEC 00089B2C  38 84 00 04 */	addi r4, r4, 4
/* 8008CBF0 00089B30  92 C4 00 00 */	stw r22, 0(r4)
/* 8008CBF4 00089B34  38 84 00 04 */	addi r4, r4, 4
/* 8008CBF8 00089B38  92 C4 00 00 */	stw r22, 0(r4)
/* 8008CBFC 00089B3C  38 84 00 04 */	addi r4, r4, 4
/* 8008CC00 00089B40  92 C4 00 00 */	stw r22, 0(r4)
/* 8008CC04 00089B44  38 84 00 04 */	addi r4, r4, 4
/* 8008CC08 00089B48  92 C4 00 00 */	stw r22, 0(r4)
/* 8008CC0C 00089B4C  38 84 00 04 */	addi r4, r4, 4
/* 8008CC10 00089B50  92 C4 00 00 */	stw r22, 0(r4)
/* 8008CC14 00089B54  38 84 00 04 */	addi r4, r4, 4
/* 8008CC18 00089B58  92 C4 00 00 */	stw r22, 0(r4)
/* 8008CC1C 00089B5C  38 84 00 04 */	addi r4, r4, 4
/* 8008CC20 00089B60  42 00 FF C0 */	bdnz lbl_8008CBE0
/* 8008CC24 00089B64  70 63 00 07 */	andi. r3, r3, 7
/* 8008CC28 00089B68  41 82 00 18 */	beq lbl_8008CC40
lbl_8008CC2C:
/* 8008CC2C 00089B6C  7C 69 03 A6 */	mtctr r3
/* 8008CC30 00089B70  48 00 00 04 */	b lbl_8008CC34
lbl_8008CC34:
/* 8008CC34 00089B74  92 C4 00 00 */	stw r22, 0(r4)
/* 8008CC38 00089B78  38 84 00 04 */	addi r4, r4, 4
/* 8008CC3C 00089B7C  42 00 FF F8 */	bdnz lbl_8008CC34
lbl_8008CC40:
/* 8008CC40 00089B80  80 7C 00 00 */	lwz r3, 0(r28)
/* 8008CC44 00089B84  7F 04 C3 78 */	mr r4, r24
/* 8008CC48 00089B88  7E E5 BB 78 */	mr r5, r23
/* 8008CC4C 00089B8C  3E 83 80 00 */	addis r20, r3, 0x8000
/* 8008CC50 00089B90  7E 83 A3 78 */	mr r3, r20
/* 8008CC54 00089B94  4B F7 65 A1 */	bl memcpy
/* 8008CC58 00089B98  7E 83 A3 78 */	mr r3, r20
/* 8008CC5C 00089B9C  7E E4 BB 78 */	mr r4, r23
/* 8008CC60 00089BA0  48 00 13 B5 */	bl DCFlushRangeNoSync
/* 8008CC64 00089BA4  7C 00 04 AC */	sync 0
/* 8008CC68 00089BA8  7E 83 A3 78 */	mr r3, r20
/* 8008CC6C 00089BAC  7E E4 BB 78 */	mr r4, r23
/* 8008CC70 00089BB0  48 00 14 05 */	bl ICInvalidateRange
lbl_8008CC74:
/* 8008CC74 00089BB4  3B 9C 00 04 */	addi r28, r28, 4
/* 8008CC78 00089BB8  3B 5A 00 01 */	addi r26, r26, 1
lbl_8008CC7C:
/* 8008CC7C 00089BBC  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8008CC80 00089BC0  28 00 00 0F */	cmplwi r0, 0xf
/* 8008CC84 00089BC4  41 80 FE B4 */	blt lbl_8008CB38
/* 8008CC88 00089BC8  3C 60 80 00 */	lis r3, 0x80003000@ha
/* 8008CC8C 00089BCC  38 03 30 00 */	addi r0, r3, 0x80003000@l
/* 8008CC90 00089BD0  90 0D 92 D4 */	stw r0, OSExceptionTable@sda21(r13)
/* 8008CC94 00089BD4  3A 80 00 00 */	li r20, 0
/* 8008CC98 00089BD8  48 00 00 04 */	b lbl_8008CC9C
lbl_8008CC9C:
/* 8008CC9C 00089BDC  3C 60 80 09 */	lis r3, OSDefaultExceptionHandler@ha
/* 8008CCA0 00089BE0  3A E3 CD E0 */	addi r23, r3, OSDefaultExceptionHandler@l
/* 8008CCA4 00089BE4  48 00 00 04 */	b lbl_8008CCA8
lbl_8008CCA8:
/* 8008CCA8 00089BE8  48 00 00 14 */	b lbl_8008CCBC
lbl_8008CCAC:
/* 8008CCAC 00089BEC  7E 83 A3 78 */	mr r3, r20
/* 8008CCB0 00089BF0  7E E4 BB 78 */	mr r4, r23
/* 8008CCB4 00089BF4  48 00 00 61 */	bl __OSSetExceptionHandler
/* 8008CCB8 00089BF8  3A 94 00 01 */	addi r20, r20, 1
lbl_8008CCBC:
/* 8008CCBC 00089BFC  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 8008CCC0 00089C00  28 00 00 0F */	cmplwi r0, 0xf
/* 8008CCC4 00089C04  41 80 FF E8 */	blt lbl_8008CCAC
/* 8008CCC8 00089C08  93 3E 00 00 */	stw r25, 0(r30)
/* 8008CCCC 00089C0C  38 7D 01 A0 */	addi r3, r29, 0x1a0
/* 8008CCD0 00089C10  4C C6 31 82 */	crclr 6
/* 8008CCD4 00089C14  4B FF F8 05 */	bl DBPrintf
/* 8008CCD8 00089C18  BA 81 00 08 */	lmw r20, 8(r1)
/* 8008CCDC 00089C1C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8008CCE0 00089C20  38 21 00 38 */	addi r1, r1, 0x38
/* 8008CCE4 00089C24  7C 08 03 A6 */	mtlr r0
/* 8008CCE8 00089C28  4E 80 00 20 */	blr 

.global __OSDBIntegrator
__OSDBIntegrator:
/* 8008CCEC 00089C2C  38 A0 00 40 */	li r5, 0x40
/* 8008CCF0 00089C30  7C 68 02 A6 */	mflr r3
/* 8008CCF4 00089C34  90 65 00 0C */	stw r3, 0xc(r5)
/* 8008CCF8 00089C38  80 65 00 08 */	lwz r3, 8(r5)
/* 8008CCFC 00089C3C  64 63 80 00 */	oris r3, r3, 0x8000
/* 8008CD00 00089C40  7C 68 03 A6 */	mtlr r3
/* 8008CD04 00089C44  38 60 00 30 */	li r3, 0x30
/* 8008CD08 00089C48  7C 60 01 24 */	mtmsr r3
/* 8008CD0C 00089C4C  4E 80 00 20 */	blr 

.global __OSDBJump
__OSDBJump:
/* 8008CD10 00089C50  48 00 00 63 */	bla 0x60

.global __OSSetExceptionHandler
__OSSetExceptionHandler:
/* 8008CD14 00089C54  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8008CD18 00089C58  80 6D 92 D4 */	lwz r3, OSExceptionTable@sda21(r13)
/* 8008CD1C 00089C5C  54 00 10 3A */	slwi r0, r0, 2
/* 8008CD20 00089C60  7C A3 02 14 */	add r5, r3, r0
/* 8008CD24 00089C64  80 65 00 00 */	lwz r3, 0(r5)
/* 8008CD28 00089C68  90 85 00 00 */	stw r4, 0(r5)
/* 8008CD2C 00089C6C  4E 80 00 20 */	blr 

.global __OSGetExceptionHandler
__OSGetExceptionHandler:
/* 8008CD30 00089C70  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8008CD34 00089C74  80 6D 92 D4 */	lwz r3, OSExceptionTable@sda21(r13)
/* 8008CD38 00089C78  54 00 10 3A */	slwi r0, r0, 2
/* 8008CD3C 00089C7C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8008CD40 00089C80  4E 80 00 20 */	blr 

.global OSExceptionVector
OSExceptionVector:
/* 8008CD44 00089C84  7C 90 43 A6 */	mtspr 0x110, r4
/* 8008CD48 00089C88  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 8008CD4C 00089C8C  90 64 00 0C */	stw r3, 0xc(r4)
/* 8008CD50 00089C90  7C 70 42 A6 */	mfspr r3, 0x110
/* 8008CD54 00089C94  90 64 00 10 */	stw r3, 0x10(r4)
/* 8008CD58 00089C98  90 A4 00 14 */	stw r5, 0x14(r4)
/* 8008CD5C 00089C9C  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 8008CD60 00089CA0  60 63 00 02 */	ori r3, r3, 2
/* 8008CD64 00089CA4  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 8008CD68 00089CA8  7C 60 00 26 */	mfcr r3
/* 8008CD6C 00089CAC  90 64 00 80 */	stw r3, 0x80(r4)
/* 8008CD70 00089CB0  7C 68 02 A6 */	mflr r3
/* 8008CD74 00089CB4  90 64 00 84 */	stw r3, 0x84(r4)
/* 8008CD78 00089CB8  7C 69 02 A6 */	mfctr r3
/* 8008CD7C 00089CBC  90 64 00 88 */	stw r3, 0x88(r4)
/* 8008CD80 00089CC0  7C 61 02 A6 */	mfxer r3
/* 8008CD84 00089CC4  90 64 00 8C */	stw r3, 0x8c(r4)
/* 8008CD88 00089CC8  7C 7A 02 A6 */	mfspr r3, 0x1a
/* 8008CD8C 00089CCC  90 64 01 98 */	stw r3, 0x198(r4)
/* 8008CD90 00089CD0  7C 7B 02 A6 */	mfspr r3, 0x1b
/* 8008CD94 00089CD4  90 64 01 9C */	stw r3, 0x19c(r4)
/* 8008CD98 00089CD8  7C 65 1B 78 */	mr r5, r3
lbl_8008CD9C:
/* 8008CD9C 00089CDC  60 00 00 00 */	nop 
/* 8008CDA0 00089CE0  7C 60 00 A6 */	mfmsr r3
/* 8008CDA4 00089CE4  60 63 00 30 */	ori r3, r3, 0x30
/* 8008CDA8 00089CE8  7C 7B 03 A6 */	mtspr 0x1b, r3
lbl_8008CDAC:
/* 8008CDAC 00089CEC  38 60 00 00 */	li r3, 0
/* 8008CDB0 00089CF0  80 80 00 D4 */	lwz r4, 0xd4(0)
/* 8008CDB4 00089CF4  54 A5 07 BD */	rlwinm. r5, r5, 0, 0x1e, 0x1e
/* 8008CDB8 00089CF8  40 82 00 14 */	bne lbl_8008CDCC
/* 8008CDBC 00089CFC  3C A0 80 09 */	lis r5, OSDefaultExceptionHandler@ha
/* 8008CDC0 00089D00  38 A5 CD E0 */	addi r5, r5, OSDefaultExceptionHandler@l
/* 8008CDC4 00089D04  7C BA 03 A6 */	mtspr 0x1a, r5
/* 8008CDC8 00089D08  4C 00 00 64 */	rfi 
lbl_8008CDCC:
/* 8008CDCC 00089D0C  54 65 15 BA */	rlwinm r5, r3, 2, 0x16, 0x1d
/* 8008CDD0 00089D10  80 A5 30 00 */	lwz r5, 0x3000(r5)
/* 8008CDD4 00089D14  7C BA 03 A6 */	mtspr 0x1a, r5
/* 8008CDD8 00089D18  4C 00 00 64 */	rfi 
lbl_8008CDDC:
/* 8008CDDC 00089D1C  60 00 00 00 */	nop 

.global OSDefaultExceptionHandler
OSDefaultExceptionHandler:
/* 8008CDE0 00089D20  90 04 00 00 */	stw r0, 0(r4)
/* 8008CDE4 00089D24  90 24 00 04 */	stw r1, 4(r4)
/* 8008CDE8 00089D28  90 44 00 08 */	stw r2, 8(r4)
/* 8008CDEC 00089D2C  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 8008CDF0 00089D30  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8008CDF4 00089D34  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 8008CDF8 00089D38  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8008CDFC 00089D3C  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 8008CE00 00089D40  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8008CE04 00089D44  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 8008CE08 00089D48  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8008CE0C 00089D4C  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 8008CE10 00089D50  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8008CE14 00089D54  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 8008CE18 00089D58  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8008CE1C 00089D5C  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 8008CE20 00089D60  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8008CE24 00089D64  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 8008CE28 00089D68  7C B2 02 A6 */	mfdsisr r5
/* 8008CE2C 00089D6C  7C D3 02 A6 */	mfdar r6
/* 8008CE30 00089D70  94 21 FF F8 */	stwu r1, -8(r1)
/* 8008CE34 00089D74  48 00 22 F8 */	b __OSUnhandledException

.global __OSPSInit
__OSPSInit:
/* 8008CE38 00089D78  7C 08 02 A6 */	mflr r0
/* 8008CE3C 00089D7C  90 01 00 04 */	stw r0, 4(r1)
/* 8008CE40 00089D80  94 21 FF F8 */	stwu r1, -8(r1)
/* 8008CE44 00089D84  4B FF F5 B1 */	bl PPCMfhid2
/* 8008CE48 00089D88  64 63 A0 00 */	oris r3, r3, 0xa000
/* 8008CE4C 00089D8C  4B FF F5 B1 */	bl PPCMthid2
/* 8008CE50 00089D90  48 00 12 5D */	bl ICFlashInvalidate
/* 8008CE54 00089D94  7C 00 04 AC */	sync 0
/* 8008CE58 00089D98  38 60 00 00 */	li r3, 0
/* 8008CE5C 00089D9C  7C 70 E3 A6 */	mtspr 0x390, r3
/* 8008CE60 00089DA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8008CE64 00089DA4  38 21 00 08 */	addi r1, r1, 8
/* 8008CE68 00089DA8  7C 08 03 A6 */	mtlr r0
/* 8008CE6C 00089DAC  4E 80 00 20 */	blr 

.global __OSGetDIConfig
__OSGetDIConfig:
/* 8008CE70 00089DB0  3C 60 CC 00 */	lis r3, 0xCC006000@ha
/* 8008CE74 00089DB4  38 63 60 00 */	addi r3, r3, 0xCC006000@l
/* 8008CE78 00089DB8  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8008CE7C 00089DBC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8008CE80 00089DC0  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
    .balign 8
"@84":
    .asciz "\nDolphin OS $Revision: 54 $.\n"
    .balign 8
"@85":
	.asciz "Kernel built : %s %s\n"
    .balign 8
"@86":
	.asciz "Jun  5 2002"
    .balign 4
"@87":
    .asciz "02:09:12"
    .balign 8
"@88":
	.asciz "Console Type : "
    .balign 8
"@89":
    .asciz "Retail %d\n"
	.balign 4
"@90":
    .asciz "Mac Emulator\n"
    .balign 4
"@91":
    .asciz "PC Emulator\n"
    .balign 4
"@92":
    .asciz "EPPC Arthur\n"
	.balign 4
"@93":
    .asciz "EPPC Minnow\n"
    .balign 4
"@94":
    .asciz "Development HW%d\n"
    .balign 4
"@95":
    .asciz "Memory %d MB\n"
	.balign 4
"@96":
    .asciz "Arena : 0x%x - 0x%x\n"
	.balign 4
__OSExceptionLocations:
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
"@130":
    .asciz "Installing OSDBIntegrator\n"
	.balign 4
"@131":
    .asciz ">>> OSINIT: exception %d commandeered by TRK\n"
	.balign 4
"@132":
    .asciz ">>> OSINIT: exception %d vectored to debugger\n"
	.balign 4
"@133":
    .asciz "Exceptions initialized...\n"
	.balign 8

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
DriveInfo:
	.skip 0x20
DriveBlock:
	.skip 0x30

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
BootInfo:
	.skip 0x4
BI2DebugFlag:
	.skip 0x4
BI2DebugFlagHolder:
	.skip 0x4
__OSIsGcam:
	.skip 0x4
AreWeInitialized:
	.skip 0x4
OSExceptionTable:
	.skip 0x4
__OSSavedRegionEnd:
	.skip 0x4
__OSSavedRegionStart:
	.skip 0x4
__OSInIPL:
	.skip 0x8
.global __OSStartTime
__OSStartTime:
	.skip 0x4
.global lbl_80409DAC
lbl_80409DAC:
	.skip 0x4
