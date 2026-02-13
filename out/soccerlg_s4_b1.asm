;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s4_b1
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _VGM_Stop
	.globl _PSG_Mute
	.globl _InitPonPonGirls
	.globl _SetPlayerBallPossession
	.globl _V9990_PrintLayerAStringAtPos
	.globl _V9990_InitPalette
	.globl _IsTeamJoystickTriggerPressed
	.globl _GetJoystickDirection
	.globl _PlayPcm
	.globl _Trampoline_VOID_RETURN
	.globl _Trampoline_VOID_P1
	.globl _Trampoline_VOID
	.globl _V9990_LoadButtonsImageData
	.globl _V9990_LoadSprites
	.globl _V9990_LoadP1LayerB
	.globl _V9990_LoadP1LayerA
	.globl _V9990_LoadMenuTeamsData
	.globl _V9990_WaitSynch
	.globl _V9_SetPaletteEntry
	.globl _V9_SetScrollingBY
	.globl _V9_SetScrollingY
	.globl _V9_Poke16_CurrentAddr
	.globl _V9_WriteVRAM_CurrentAddr
	.globl _V9_FillVRAM_CurrentAddr
	.globl _V9_SetWriteAddress
	.globl _V9_GetRegister
	.globl _V9_SetRegister
	.globl _g_SLTSL
	.globl _g_GRPACY
	.globl _g_GRPACX
	.globl _g_LOGOPR
	.globl _g_CMASK
	.globl _g_CLOC
	.globl _g_FNKSTR
	.globl _g_ATRBYT
	.globl _g_BDRCLR
	.globl _g_BAKCLR
	.globl _g_FORCLR
	.globl _g_CSRX
	.globl _g_CSRY
	.globl _g_CLIKSW
	.globl _g_MLTPAT
	.globl _g_MLTATR
	.globl _g_MLTCGP
	.globl _g_MLTCOL
	.globl _g_MLTNAM
	.globl _g_GRPPAT
	.globl _g_GRPATR
	.globl _g_GRPCGP
	.globl _g_GRPCOL
	.globl _g_GRPNAM
	.globl _g_T32PAT
	.globl _g_T32ATR
	.globl _g_T32CGP
	.globl _g_T32COL
	.globl _g_T32NAM
	.globl _g_TXTPAT
	.globl _g_TXTATR
	.globl _g_TXTCGP
	.globl _g_TXTCOL
	.globl _g_TXTNAM
	.globl _g_CLMLST
	.globl _g_CRTCNT
	.globl _g_LINLEN
	.globl _g_LINL32
	.globl _g_LINL40
	.globl _g_Data_Palette_Team_BRA
	.globl _g_Data_Palette_Team_GBR
	.globl _g_Data_Palette_Team_GER
	.globl _g_Data_Palette_Team_FRA
	.globl _g_Data_Palette_Team_AUS
	.globl _g_Data_Palette_Team_ITA
	.globl _g_BDOS
	.globl _g_MASTER
	.globl _g_RAMAD3
	.globl _g_RAMAD2
	.globl _g_RAMAD1
	.globl _g_RAMAD0
	.globl _g_BREAKV
	.globl _g_DISKVE
	.globl _g_KANJTABLE
	.globl _g_STRSRC
	.globl _g_SUBRID
	.globl _g_CHAR_16
	.globl _g_MSXMID
	.globl _g_MSXVER
	.globl _g_ROMVersion
	.globl _g_BASRVN
	.globl _g_VDP_DW
	.globl _g_VDP_DR
	.globl _g_CGTABL
	.globl _g_SVFFFD
	.globl _g_RG27SAV
	.globl _g_RG26SAV
	.globl _g_RG25SAV
	.globl _g_SVFFF8
	.globl _g_MINROM
	.globl _g_RG23SAV
	.globl _g_RG22SAV
	.globl _g_RG21SAV
	.globl _g_RG20SAV
	.globl _g_RG19SAV
	.globl _g_RG18SAV
	.globl _g_RG17SAV
	.globl _g_RG16SAV
	.globl _g_RG15SAV
	.globl _g_RG14SAV
	.globl _g_RG13SAV
	.globl _g_RG12SAV
	.globl _g_RG11SAV
	.globl _g_RG10SAV
	.globl _g_RG09SAV
	.globl _g_RG08SAV
	.globl _g_PROCNM
	.globl _g_SLTWRK
	.globl _g_SLTATR
	.globl _g_SLTTBL
	.globl _g_EXPTBL
	.globl _g_MNROM
	.globl _g_DRWANG
	.globl _g_DRWSCL
	.globl _g_DRWFLG
	.globl _g_GYPOS
	.globl _g_GXPOS
	.globl _g_BRDATR
	.globl _g_CASPRV
	.globl _g_OLDSCR
	.globl _g_SCRMOD
	.globl _g_FLBMEM
	.globl _g_KANAMD
	.globl _g_KANAST
	.globl _g_CAPST
	.globl _g_CSTYLE
	.globl _g_CSRSW
	.globl _g_INSFLG
	.globl _g_ESCCNT
	.globl _g_GRPHED
	.globl _g_WINWID
	.globl _g_LOWLIM
	.globl _g_INTCNT
	.globl _g_INTVAL
	.globl _g_JIFFY
	.globl _g_PADX
	.globl _g_PADY
	.globl _g_INTFLG
	.globl _g_RTYCNT
	.globl _g_TRPTBL
	.globl _g_HIMEM
	.globl _g_BOTTOM
	.globl _g_PATWRK
	.globl _g_LINWRK
	.globl _g_KEYBUF
	.globl _g_NEWKEY
	.globl _g_OLDKEY
	.globl _g_CLIKFL
	.globl _g_ONGSBF
	.globl _g_FNKFLG
	.globl _g_FNKSWI
	.globl _g_CODSAV
	.globl _g_FSTPOS
	.globl _g_LINTTB
	.globl _g_BASROM
	.globl _g_ENSTOP
	.globl _g_VCBC
	.globl _g_VCBB
	.globl _g_VCBA
	.globl _g_PLYCNT
	.globl _g_MUSICF
	.globl _g_QUEUEN
	.globl _g_MCLPTR
	.globl _g_MCLLEN
	.globl _g_SAVVOL
	.globl _g_VOICEN
	.globl _g_SAVSP
	.globl _g_PRSCNT
	.globl _g_LSTMOD
	.globl _g_LSTCOM
	.globl _g_COMMSK
	.globl _g_ESTBLS
	.globl _g_FLAGS
	.globl _g_ERRORS
	.globl _g_DATCNT
	.globl _g_DEVNUM
	.globl _g_OLDINT
	.globl _g_OLDSTT
	.globl _g_MEXBIh
	.globl _g_RSIQLN
	.globl _g_RSFCB
	.globl _g_TOCNT
	.globl _g_RSTMP
	.globl _g_YSAVE
	.globl _g_XSAVE
	.globl _g_NORUSE
	.globl _g_MODE
	.globl _g_ROMA
	.globl _g_CHRCNT
	.globl _g_EXBRSA
	.globl _g_AVCSAV
	.globl _g_ACPAGE
	.globl _g_DPPAGE
	.globl _g_RS2IQ
	.globl _g_VOICCQ
	.globl _g_VOICBQ
	.globl _g_VOICAQ
	.globl _g_QUEBAK
	.globl _g_QUETAB
	.globl _g_ASPCT2
	.globl _g_ASPCT1
	.globl _g_HEADER
	.globl _g_HIGH
	.globl _g_LOW
	.globl _g_CS240
	.globl _g_CS120
	.globl _g_GETPNT
	.globl _g_PUTPNT
	.globl _g_REPCNT
	.globl _g_SCNCNT
	.globl _g_FRCNEW
	.globl _g_QUEUES
	.globl _g_MINUPD
	.globl _g_MAXUPD
	.globl _g_TRGFLG
	.globl _g_STATFL
	.globl _g_RG7SAV
	.globl _g_RG6SAV
	.globl _g_RG5SAV
	.globl _g_RG4SAV
	.globl _g_RG3SAV
	.globl _g_RG2SAV
	.globl _g_RG1SAV
	.globl _g_RG0SAV
	.globl _g_CNSDFG
	.globl _g_USRTAB
	.globl _g_CLPRIM
	.globl _g_WRPRIM
	.globl _g_RDPRIM
	.globl _SelectTeam
	.globl _MenuSpriteBlinking
	.globl _ResetPlayersInfo
	.globl _ShowMenu
	.globl _SetTeam1Palette
	.globl _SetTeam2Palette
	.globl _GetTeamPaletteById
	.globl _GameStart
	.globl _PrintTeamName
	.globl _GetNumberString
	.globl _ShowHeaderInfo
	.globl _ShowFieldZone
	.globl _SetTeamsPresentationSpritesPosition
	.globl _ResetBallInfo
	.globl _SetPlayerTarget
	.globl _ShowField
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_g_PortPrimarySlot	=	0x00a8
_g_PortReadKeyboard	=	0x00a9
_g_PortAccessKeyboard	=	0x00aa
_g_PortControl	=	0x00ab
_g_VDP_DataPort	=	0x0098
_g_VDP_RegPort	=	0x0099
_g_VDP_AddrPort	=	0x0099
_g_VDP_StatPort	=	0x0099
_g_PSG_RegPort	=	0x00a0
_g_PSG_DataPort	=	0x00a1
_g_PSG_StatPort	=	0x00a2
_g_PSG_Ext_RegPort	=	0x0010
_g_PSG_Ext_DataPort	=	0x0011
_g_PSG_Ext_StatPort	=	0x0012
_g_MSXMusic_IndexPort	=	0x007c
_g_MSXMusic_DataPort	=	0x007d
_g_MSXAudio_IndexPort	=	0x00c0
_g_MSXAudio_DataPort	=	0x00c1
_g_MSXAudio_IndexPort2	=	0x00c2
_g_MSXAudio_DataPort2	=	0x00c3
_g_RTC_AddrPort	=	0x00b4
_g_RTC_DataPort	=	0x00b5
_g_V9_VRAMPort	=	0x0060
_g_V9_PalettePort	=	0x0061
_g_V9_CmdDataPort	=	0x0062
_g_V9_RegDataPort	=	0x0063
_g_V9_RegSelectPort	=	0x0064
_g_V9_SatusPort	=	0x0065
_g_V9_IntFlagPort	=	0x0066
_g_V9_SysCtrlPort	=	0x0067
_g_V9_KanjiAddrLPort	=	0x0068
_g_V9_KanjiAddrHPort	=	0x0069
_g_V9_KanjiDataPort	=	0x0069
_g_V9_Kanji2AddrLPort	=	0x006a
_g_V9_Kanji2AddrHPort	=	0x006b
_g_V9_Kanji2DataPort	=	0x006b
_g_V9_OutputCtrPort	=	0x006f
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_LINL40	=	0xf3ae
_g_LINL32	=	0xf3af
_g_LINLEN	=	0xf3b0
_g_CRTCNT	=	0xf3b1
_g_CLMLST	=	0xf3b2
_g_TXTNAM	=	0xf3b3
_g_TXTCOL	=	0xf3b5
_g_TXTCGP	=	0xf3b7
_g_TXTATR	=	0xf3b9
_g_TXTPAT	=	0xf3bb
_g_T32NAM	=	0xf3bd
_g_T32COL	=	0xf3bf
_g_T32CGP	=	0xf3c1
_g_T32ATR	=	0xf3c3
_g_T32PAT	=	0xf3c5
_g_GRPNAM	=	0xf3c7
_g_GRPCOL	=	0xf3c9
_g_GRPCGP	=	0xf3cb
_g_GRPATR	=	0xf3cd
_g_GRPPAT	=	0xf3cf
_g_MLTNAM	=	0xf3d1
_g_MLTCOL	=	0xf3d3
_g_MLTCGP	=	0xf3d5
_g_MLTATR	=	0xf3d7
_g_MLTPAT	=	0xf3d9
_g_CLIKSW	=	0xf3db
_g_CSRY	=	0xf3dc
_g_CSRX	=	0xf3dd
_g_FORCLR	=	0xf3e9
_g_BAKCLR	=	0xf3ea
_g_BDRCLR	=	0xf3eb
_g_ATRBYT	=	0xf3f2
_g_FNKSTR	=	0xf87f
_g_CLOC	=	0xf92a
_g_CMASK	=	0xf92c
_g_LOGOPR	=	0xfb02
_g_GRPACX	=	0xfcb7
_g_GRPACY	=	0xfcb9
_g_SLTSL	=	0xffff
_GetNumberString_str_65536_1406:
	.ds 5
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _SEG4
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:157: u8 SelectTeam(u8 cursorPatternId, u8 excludeIndex) {
;	---------------------------------
; Function SelectTeam
; ---------------------------------
_SelectTeam::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-10
	add	iy, sp
	ld	sp, iy
	ld	-1 (ix), a
	ld	-2 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:159: u8 currentIdx = 0;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:160: if (currentIdx == excludeIndex) currentIdx++;
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00102$
	ld	-6 (ix), #0x01
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:163: u8 oldDir = DIRECTION_NONE;
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:165: bool oldTrigger = true; // Force release first
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:167: while (true) {
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:168: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:169: dir=Trampoline_VOID_RETURN(2,GetJoystickDirection);
	ld	de, #_GetJoystickDirection
	ld	a, #0x02
	call	_Trampoline_VOID_RETURN
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:171: trigger=Trampoline_VOID_RETURN(2,IsTeamJoystickTriggerPressed);
	push	bc
	ld	de, #_IsTeamJoystickTriggerPressed
	ld	a, #0x02
	call	_Trampoline_VOID_RETURN
	pop	bc
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:173: if (dir != DIRECTION_NONE && dir != oldDir) {
	ld	a, c
	or	a, a
	jp	Z, 00137$
	ld	a, c
	sub	a, -3 (ix)
	jp	Z,00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:174: u8 nextIdx = currentIdx;
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:176: if (dir == DIRECTION_RIGHT) {
	ld	a, c
	sub	a, #0x03
	ld	a, #0x01
	jr	Z, 00248$
	xor	a, a
00248$:
	ld	-3 (ix), a
	or	a, a
	jr	Z, 00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:177: if ((currentIdx % 3) < 2) nextIdx++;
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0003
	call	__modsint
	pop	bc
	ld	a, e
	sub	a, #0x02
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00121$
	ld	b, -6 (ix)
	inc	b
	jp	00121$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:178: } else if (dir == DIRECTION_LEFT) {
	ld	a, c
	sub	a, #0x07
	jr	NZ, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:179: if ((currentIdx % 3) > 0) nextIdx--;
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0003
	call	__modsint
	pop	bc
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00251$
	xor	a, #0x80
00251$:
	jp	P, 00121$
	ld	b, -6 (ix)
	dec	b
	jp	00121$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:180: } else if (dir == DIRECTION_UP) {
	ld	a, c
	dec	a
	jr	NZ, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:181: if (currentIdx >= 3) nextIdx -= 3;
	ld	a, -6 (ix)
	sub	a, #0x03
	jr	C, 00121$
	ld	a, -6 (ix)
	add	a, #0xfd
	ld	b, a
	jp	00121$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:182: } else if (dir == DIRECTION_DOWN) {
	ld	a, c
	sub	a, #0x05
	jr	NZ, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:183: if (currentIdx < 3) nextIdx += 3;
	ld	a, -6 (ix)
	sub	a, #0x03
	jr	NC, 00121$
	ld	a, -6 (ix)
	add	a, #0x03
	ld	b, a
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:186: if (nextIdx == excludeIndex) {
	ld	a, -2 (ix)
	sub	a, b
	jr	NZ, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:187: if (dir == DIRECTION_RIGHT) {
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00132$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:188: if ((nextIdx % 3) < 2) nextIdx++; else nextIdx = currentIdx;
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0003
	call	__modsint
	pop	bc
	ld	a, e
	sub	a, #0x02
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00123$
	inc	b
	jp	00135$
00123$:
	ld	b, -6 (ix)
	jp	00135$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:189: } else if (dir == DIRECTION_LEFT) {
	ld	a, c
	sub	a, #0x07
	jr	NZ, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:190: if ((nextIdx % 3) > 0) nextIdx--; else nextIdx = currentIdx;
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0003
	call	__modsint
	pop	bc
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00260$
	xor	a, #0x80
00260$:
	jp	P, 00126$
	dec	b
	jp	00135$
00126$:
	ld	b, -6 (ix)
	jp	00135$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:192: nextIdx = currentIdx;
	ld	b, -6 (ix)
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:195: currentIdx = nextIdx;
	ld	-6 (ix), b
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:197: oldDir = dir;
	ld	-3 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:199: if (trigger && !oldTrigger) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00140$
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:200: PlayPcm(PCM_TEAM_SELECTION);
	ld	a, #0x05
	call	_PlayPcm
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:201: return currentIdx;
	ld	a, -6 (ix)
	jp	00147$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:203: oldTrigger = trigger;
	ld	a, -4 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:206: attr.Y = g_TeamPos[currentIdx].y;
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	bc,#_g_TeamPos
	add	hl,bc
	ex	de, hl
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (bc)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:207: attr.X = g_TeamPos[currentIdx].x;
	ex	de,hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #2
	add	hl, sp
	ld	(hl), c
	inc	hl
	ld	a, b
	and	a, #0x03
	ld	e,a
	ld	a, (hl)
	and	a, #0xfc
	or	a, e
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:208: attr.Pattern = cursorPatternId;
	ld	a, -1 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:209: attr.P = 0; 
	ld	hl, #3
	add	hl, sp
	res	5, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:210: attr.SC = 0;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:211: attr.D = 0;
	ld	hl, #3
	add	hl, sp
	res	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:212: V9_SetSpriteP1(0, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe00
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:212: V9_SetSpriteP1(0, &attr);
	jp	00143$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:214: }
	ld	sp, ix
	pop	ix
	ret
_g_RDPRIM	=	0xf380
_g_WRPRIM	=	0xf385
_g_CLPRIM	=	0xf38c
_g_USRTAB	=	0xf39a
_g_CNSDFG	=	0xf3de
_g_RG0SAV	=	0xf3df
_g_RG1SAV	=	0xf3e0
_g_RG2SAV	=	0xf3e1
_g_RG3SAV	=	0xf3e2
_g_RG4SAV	=	0xf3e3
_g_RG5SAV	=	0xf3e4
_g_RG6SAV	=	0xf3e5
_g_RG7SAV	=	0xf3e6
_g_STATFL	=	0xf3e7
_g_TRGFLG	=	0xf3e8
_g_MAXUPD	=	0xf3ec
_g_MINUPD	=	0xf3ef
_g_QUEUES	=	0xf3f3
_g_FRCNEW	=	0xf3f5
_g_SCNCNT	=	0xf3f6
_g_REPCNT	=	0xf3f7
_g_PUTPNT	=	0xf3f8
_g_GETPNT	=	0xf3fa
_g_CS120	=	0xf3fc
_g_CS240	=	0xf401
_g_LOW	=	0xf406
_g_HIGH	=	0xf408
_g_HEADER	=	0xf40a
_g_ASPCT1	=	0xf40b
_g_ASPCT2	=	0xf40d
_g_QUETAB	=	0xf959
_g_QUEBAK	=	0xf971
_g_VOICAQ	=	0xf975
_g_VOICBQ	=	0xf9f5
_g_VOICCQ	=	0xfa75
_g_RS2IQ	=	0xfaf5
_g_DPPAGE	=	0xfaf5
_g_ACPAGE	=	0xfaf6
_g_AVCSAV	=	0xfaf7
_g_EXBRSA	=	0xfaf8
_g_CHRCNT	=	0xfaf9
_g_ROMA	=	0xfafa
_g_MODE	=	0xfafc
_g_NORUSE	=	0xfafd
_g_XSAVE	=	0xfafe
_g_YSAVE	=	0xfb00
_g_RSTMP	=	0xfb03
_g_TOCNT	=	0xfb03
_g_RSFCB	=	0xfb04
_g_RSIQLN	=	0xfb06
_g_MEXBIh	=	0xfb07
_g_OLDSTT	=	0xfb0c
_g_OLDINT	=	0xfb0c
_g_DEVNUM	=	0xfb16
_g_DATCNT	=	0xfb17
_g_ERRORS	=	0xfb1a
_g_FLAGS	=	0xfb1b
_g_ESTBLS	=	0xfb1c
_g_COMMSK	=	0xfb1d
_g_LSTCOM	=	0xfb1e
_g_LSTMOD	=	0xfb1f
_g_PRSCNT	=	0xfb35
_g_SAVSP	=	0xfb36
_g_VOICEN	=	0xfb38
_g_SAVVOL	=	0xfb39
_g_MCLLEN	=	0xfb3b
_g_MCLPTR	=	0xfb3c
_g_QUEUEN	=	0xfb3e
_g_MUSICF	=	0xfb3f
_g_PLYCNT	=	0xfb40
_g_VCBA	=	0xfb41
_g_VCBB	=	0xfb66
_g_VCBC	=	0xfb8b
_g_ENSTOP	=	0xfbb0
_g_BASROM	=	0xfbb1
_g_LINTTB	=	0xfbb2
_g_FSTPOS	=	0xfbca
_g_CODSAV	=	0xfbcc
_g_FNKSWI	=	0xfbcd
_g_FNKFLG	=	0xfbce
_g_ONGSBF	=	0xfbd8
_g_CLIKFL	=	0xfbd9
_g_OLDKEY	=	0xfbda
_g_NEWKEY	=	0xfbe5
_g_KEYBUF	=	0xfbf0
_g_LINWRK	=	0xfc18
_g_PATWRK	=	0xfc40
_g_BOTTOM	=	0xfc48
_g_HIMEM	=	0xfc4a
_g_TRPTBL	=	0xfc4c
_g_RTYCNT	=	0xfc9a
_g_INTFLG	=	0xfc9b
_g_PADY	=	0xfc9c
_g_PADX	=	0xfc9d
_g_JIFFY	=	0xfc9e
_g_INTVAL	=	0xfca0
_g_INTCNT	=	0xfca2
_g_LOWLIM	=	0xfca4
_g_WINWID	=	0xfca5
_g_GRPHED	=	0xfca6
_g_ESCCNT	=	0xfca7
_g_INSFLG	=	0xfca8
_g_CSRSW	=	0xfca9
_g_CSTYLE	=	0xfcaa
_g_CAPST	=	0xfcab
_g_KANAST	=	0xfcac
_g_KANAMD	=	0xfcad
_g_FLBMEM	=	0xfcae
_g_SCRMOD	=	0xfcaf
_g_OLDSCR	=	0xfcb0
_g_CASPRV	=	0xfcb1
_g_BRDATR	=	0xfcb2
_g_GXPOS	=	0xfcb3
_g_GYPOS	=	0xfcb5
_g_DRWFLG	=	0xfcbb
_g_DRWSCL	=	0xfcbc
_g_DRWANG	=	0xfcbd
_g_MNROM	=	0xfcc1
_g_EXPTBL	=	0xfcc1
_g_SLTTBL	=	0xfcc5
_g_SLTATR	=	0xfcc9
_g_SLTWRK	=	0xfd09
_g_PROCNM	=	0xfd89
_g_RG08SAV	=	0xffe7
_g_RG09SAV	=	0xffe8
_g_RG10SAV	=	0xffe9
_g_RG11SAV	=	0xffea
_g_RG12SAV	=	0xffeb
_g_RG13SAV	=	0xffec
_g_RG14SAV	=	0xffed
_g_RG15SAV	=	0xffee
_g_RG16SAV	=	0xffef
_g_RG17SAV	=	0xfff0
_g_RG18SAV	=	0xfff1
_g_RG19SAV	=	0xfff2
_g_RG20SAV	=	0xfff3
_g_RG21SAV	=	0xfff4
_g_RG22SAV	=	0xfff5
_g_RG23SAV	=	0xfff6
_g_MINROM	=	0xfff7
_g_SVFFF8	=	0xfff8
_g_RG25SAV	=	0xfffa
_g_RG26SAV	=	0xfffb
_g_RG27SAV	=	0xfffc
_g_SVFFFD	=	0xfffd
_g_CGTABL	=	0x0004
_g_VDP_DR	=	0x0006
_g_VDP_DW	=	0x0007
_g_BASRVN	=	0x002b
_g_ROMVersion	=	0x002b
_g_MSXVER	=	0x002d
_g_MSXMID	=	0x002e
_g_CHAR_16	=	0x0034
_g_SUBRID	=	0x0000
_g_STRSRC	=	0x0002
_g_KANJTABLE	=	0xf30f
_g_DISKVE	=	0xf323
_g_BREAKV	=	0xf325
_g_RAMAD0	=	0xf341
_g_RAMAD1	=	0xf342
_g_RAMAD2	=	0xf343
_g_RAMAD3	=	0xf344
_g_MASTER	=	0xf348
_g_BDOS	=	0xf37d
_g_Data_Palette_Team_ITA:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x09	; 9
	.db #0x16	; 22
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Data_Palette_Team_AUS:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Data_Palette_Team_FRA:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Data_Palette_Team_GER:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Data_Palette_Team_GBR:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Data_Palette_Team_BRA:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x03	; 3
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_TeamPos:
	.dw #0x0021
	.dw #0x006d
	.dw #0x0072
	.dw #0x006d
	.dw #0x00c5
	.dw #0x006d
	.dw #0x0021
	.dw #0x00c0
	.dw #0x0072
	.dw #0x00c0
	.dw #0x00c5
	.dw #0x00c0
_g_TeamGrayPos:
	.dw #0x0001
	.dw #0x0005
	.dw #0x000b
	.dw #0x0005
	.dw #0x0015
	.dw #0x0005
	.dw #0x0001
	.dw #0x000f
	.dw #0x000b
	.dw #0x000f
	.dw #0x0015
	.dw #0x000f
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:216: void MenuSpriteBlinking(){
;	---------------------------------
; Function MenuSpriteBlinking
; ---------------------------------
_MenuSpriteBlinking::
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:217: u8 ms=g_MatchStatus;
	ld	a, (_g_MatchStatus+0)
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	6, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:221: g_MatchStatus=MATCH_PRESENTATION;
	ld	a, #0x0f
	ld	(#_g_MatchStatus), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:223: g_Timer=0;  
	xor	a, a
	ld	(#_g_Timer), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:224: while (g_Timer<=20)
00101$:
	ld	a, #0x14
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	C, 00134$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:226: ResetPlayersInfo();
	call	_ResetPlayersInfo
	jp	00101$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:730: inline void V9_SetSpriteEnable(bool enable) { V9_SetFlag(8, V9_R08_SPD_OFF, enable ? 0 : V9_R08_SPD_OFF); }
00134$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:232: g_Timer=0;  
	xor	a, a
	ld	(#_g_Timer), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:233: while (g_Timer<=20)
00104$:
	ld	a, #0x14
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	C, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:235: ResetPlayersInfo();
	call	_ResetPlayersInfo
	jp	00104$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:730: inline void V9_SetSpriteEnable(bool enable) { V9_SetFlag(8, V9_R08_SPD_OFF, enable ? 0 : V9_R08_SPD_OFF); }
00135$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	6, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:240: g_Timer=0;  
	xor	a, a
	ld	(#_g_Timer), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:241: while (g_Timer<=20)
00107$:
	ld	a, #0x14
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	C, 00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:243: ResetPlayersInfo();
	call	_ResetPlayersInfo
	jp	00107$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:730: inline void V9_SetSpriteEnable(bool enable) { V9_SetFlag(8, V9_R08_SPD_OFF, enable ? 0 : V9_R08_SPD_OFF); }
00138$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:247: g_Timer=0;  
	xor	a, a
	ld	(#_g_Timer), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:248: while (g_Timer<=20)
00110$:
	ld	a, #0x14
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	C, 00139$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:250: ResetPlayersInfo();
	call	_ResetPlayersInfo
	jp	00110$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:730: inline void V9_SetSpriteEnable(bool enable) { V9_SetFlag(8, V9_R08_SPD_OFF, enable ? 0 : V9_R08_SPD_OFF); }
00139$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	6, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:255: g_Timer=0;  
	xor	a, a
	ld	(#_g_Timer), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:256: while (g_Timer<=20)
00113$:
	ld	a, #0x14
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	C, 00142$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:258: ResetPlayersInfo();
	call	_ResetPlayersInfo
	jp	00113$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:730: inline void V9_SetSpriteEnable(bool enable) { V9_SetFlag(8, V9_R08_SPD_OFF, enable ? 0 : V9_R08_SPD_OFF); }
00142$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:261: g_MatchStatus=ms;
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	ld	(_g_MatchStatus+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:263: }
	inc	sp
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:266: void ResetPlayersInfo(){
;	---------------------------------
; Function ResetPlayersInfo
; ---------------------------------
_ResetPlayersInfo::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:267: Trampoline_VOID_P1(3,SetPlayerBallPossession,NO_VALUE);
	ld	a, #0xff
	push	af
	inc	sp
	ld	de, #_SetPlayerBallPossession
	ld	a, #0x03
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:268: for(u8 i=0;i<14;i++){
	ld	c, #0x00
00103$:
	ld	a, c
	sub	a, #0x0e
	jr	NC, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:269: g_Players[i].Direction=DIRECTION_NONE;
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ex	de, hl
	ld	hl, #0x000a
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:270: g_Players[i].PreviousDirection=g_Players[i].Direction;
	ld	a, e
	add	a, #0x0b
	ld	b, a
	ld	a, d
	adc	a, #0x00
	push	af
	ld	a, (hl)
	ld	-1 (ix), a
	pop	af
	ld	l, b
	ld	h, a
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:271: g_Players[i].LastPose=0;
	ld	hl, #0x000c
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:272: g_Players[i].Status=PLAYER_STATUS_NONE;
	ld	hl, #0x0012
	add	hl, de
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	dec	hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:273: g_Players[i].Status=PLAYER_STATUS_NONE;
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:268: for(u8 i=0;i<14;i++){
	inc	c
	jp	00103$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:275: }
	inc	sp
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:278: void ShowMenu(){
;	---------------------------------
; Function ShowMenu
; ---------------------------------
_ShowMenu::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:280: for(u8 i=0;i<32;i++){
	ld	c, #0x00
00155$:
	ld	a, c
	sub	a, #0x20
	jr	NC, 00101$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:282: attr.D = 1;
	ld	hl, #7
	add	hl, sp
	set	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:283: V9_SetSpriteP1(i, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xfe
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x03
	ld	e, a
	jr	NC, 00371$
	inc	d
00371$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #6
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:280: for(u8 i=0;i<32;i++){
	inc	c
	jp	00155$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:286: V9_SetScrollingBY(1);
	ld	hl, #0x0001
	call	_V9_SetScrollingBY
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:353: inline void V9_FillVRAM(u32 addr, u8 value, u16 count) { V9_SetWriteAddress(addr); V9_FillVRAM_CurrentAddr(value, count); }
	ld	de, #0x0000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x6a00
	xor	a, a
	call	_V9_FillVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:291: V9990_LoadMenuTeamsData();
	call	_V9990_LoadMenuTeamsData
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1047: inline void V9_SelectPaletteP1(u8 a, u8 b) { V9_SetRegister(13, ((b & 0x3) << 2) + (a & 0x3)); }
	ld	a, #0x01
	and	a, #0x03
	add	a, a
	add	a, a
	ld	c, a
	xor	a, a
	and	a, #0x03
	add	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0d
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:293: for (u8 y=0;y<64;y++){
	ld	-1 (ix), #0x00
00161$:
	ld	a, -1 (ix)
	sub	a, #0x40
	jr	NC, 00103$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:294: for (u8 x=0;x<64;x++){
	ld	c, #0x00
00158$:
	ld	a, c
	sub	a, #0x40
	jr	NC, 00162$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, c
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00372$
	inc	d
00372$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	ld	hl, #0x0020
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:294: for (u8 x=0;x<64;x++){
	inc	c
	jp	00158$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:293: for (u8 y=0;y<64;y++){
	inc	-1 (ix)
	jp	00161$
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:298: for (u8 y=5;y<25;y++){
	ld	c, #0x05
00167$:
	ld	a, c
	sub	a, #0x19
	jp	NC, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:299: u16 tileId=256+32*(y-5);
	ld	-4 (ix), c
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	add	a, #0xfb
	ld	b, a
	ld	a, -3 (ix)
	adc	a, #0xff
	ld	l, b
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, h
	inc	a
	ld	-2 (ix), l
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:300: for (u8 x=1;x<31;x++){
	ld	b, #0x01
00164$:
	ld	a, b
	sub	a, #0x1f
	jr	NC, 00168$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, b
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ex	de, hl
	ld	a, d
	rlca
	sbc	hl, hl
	ld	-12 (ix), e
	ld	a, d
	add	a, #0xc0
	ld	-11 (ix), a
	ld	a, l
	adc	a, #0x07
	ld	-10 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-9 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	hl
	push	bc
	push	de
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_SetWriteAddress
	pop	de
	pop	bc
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_Poke16_CurrentAddr
	pop	hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1437: inline u32 V9_CellAddrP1B(u8 x, u8 y) { return V9_P1_PNT_B + (((64 * y) + x) * 2); }
	ld	a, d
	add	a, #0xe0
	ld	d, a
	push	de
	ld	de, #0x0007
	adc	hl, de
	pop	de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	bc
	call	_V9_SetWriteAddress
	pop	bc
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:303: tileId++;
	inc	-2 (ix)
	jr	NZ, 00373$
	inc	-1 (ix)
00373$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:300: for (u8 x=1;x<31;x++){
	inc	b
	jp	00164$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:298: for (u8 y=5;y<25;y++){
	inc	c
	jp	00167$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:306: V9990_LoadSprites();
	call	_V9990_LoadSprites
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	7, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:310: V9990_PrintLayerAStringAtPos(4,0,"    PLAYER TEAM SELECT");
	ld	hl, #___str_0
	push	hl
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x04
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:311: g_MatchStatus=MATCH_SHOW_MENU;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:312: g_Team1PaletteId = SelectTeam(SPRITE_PLAYER, NO_VALUE);
	ld	l, #0xff
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xf5
	call	_SelectTeam
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:315: for(u8 y=g_TeamGrayPos[g_Team1PaletteId].y;y<g_TeamGrayPos[g_Team1PaletteId].y+9;y++){
	ld	(_g_Team1PaletteId+0), a
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #_g_TeamGrayPos
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	-1 (ix), a
00173$:
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0009
	add	hl, bc
	ex	de, hl
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	sbc	hl, de
	jr	NC, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:316: for(u8 x=g_TeamGrayPos[g_Team1PaletteId].x;x<g_TeamGrayPos[g_Team1PaletteId].x+10;x++){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	b, (hl)
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:315: for(u8 y=g_TeamGrayPos[g_Team1PaletteId].y;y<g_TeamGrayPos[g_Team1PaletteId].y+9;y++){
	ld	a, (_g_Team1PaletteId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	a, l
	add	a, #<(_g_TeamGrayPos)
	ld	-3 (ix), a
	ld	a, h
	adc	a, #>(_g_TeamGrayPos)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:316: for(u8 x=g_TeamGrayPos[g_Team1PaletteId].x;x<g_TeamGrayPos[g_Team1PaletteId].x+10;x++){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x000a
	add	hl, de
	ex	de, hl
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	sbc	hl, de
	jr	NC, 00174$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, b
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00374$
	inc	d
00374$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	ex	de, hl
	call	_V9_SetWriteAddress
	ld	hl, #0x0000
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:316: for(u8 x=g_TeamGrayPos[g_Team1PaletteId].x;x<g_TeamGrayPos[g_Team1PaletteId].x+10;x++){
	inc	b
	jp	00170$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:315: for(u8 y=g_TeamGrayPos[g_Team1PaletteId].y;y<g_TeamGrayPos[g_Team1PaletteId].y+9;y++){
	inc	-1 (ix)
	jp	00173$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:321: MenuSpriteBlinking();
	call	_MenuSpriteBlinking
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:324: V9990_PrintLayerAStringAtPos(4,0,"     CPU TEAM SELECT   ");
	ld	hl, #___str_1
	push	hl
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x04
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:326: g_Team2PaletteId = SelectTeam(SPRITE_CPU, g_Team1PaletteId);
	ld	a, (_g_Team1PaletteId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xf5
	call	_SelectTeam
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:329: for(u8 y=g_TeamGrayPos[g_Team2PaletteId].y;y<g_TeamGrayPos[g_Team2PaletteId].y+9;y++){
	ld	(_g_Team2PaletteId+0), a
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #_g_TeamGrayPos
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	-1 (ix), a
00179$:
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0009
	add	hl, bc
	ex	de, hl
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	sbc	hl, de
	jr	NC, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:330: for(u8 x=g_TeamGrayPos[g_Team2PaletteId].x;x<g_TeamGrayPos[g_Team2PaletteId].x+10;x++){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	b, (hl)
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:329: for(u8 y=g_TeamGrayPos[g_Team2PaletteId].y;y<g_TeamGrayPos[g_Team2PaletteId].y+9;y++){
	ld	a, (_g_Team2PaletteId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	a, l
	add	a, #<(_g_TeamGrayPos)
	ld	-3 (ix), a
	ld	a, h
	adc	a, #>(_g_TeamGrayPos)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:330: for(u8 x=g_TeamGrayPos[g_Team2PaletteId].x;x<g_TeamGrayPos[g_Team2PaletteId].x+10;x++){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x000a
	add	hl, de
	ex	de, hl
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	sbc	hl, de
	jr	NC, 00180$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, b
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00375$
	inc	d
00375$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	ex	de, hl
	call	_V9_SetWriteAddress
	ld	hl, #0x0000
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:330: for(u8 x=g_TeamGrayPos[g_Team2PaletteId].x;x<g_TeamGrayPos[g_Team2PaletteId].x+10;x++){
	inc	b
	jp	00176$
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:329: for(u8 y=g_TeamGrayPos[g_Team2PaletteId].y;y<g_TeamGrayPos[g_Team2PaletteId].y+9;y++){
	inc	-1 (ix)
	jp	00179$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:336: MenuSpriteBlinking();
	call	_MenuSpriteBlinking
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:339: attr.D = 1; 
	ld	hl, #7
	add	hl, sp
	set	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:340: V9_SetSpriteP1(0, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe00
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #4
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	6, l
	ld	a, #0x08
	call	_V9_SetRegister
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:349: if(g_ShowButtonsInfo){
	ld	a, (_g_ShowButtonsInfo+0)
	or	a, a
	jp	Z, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:350: g_ShowButtonsInfo=false;
	ld	hl, #_g_ShowButtonsInfo
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:353: inline void V9_FillVRAM(u32 addr, u8 value, u16 count) { V9_SetWriteAddress(addr); V9_FillVRAM_CurrentAddr(value, count); }
	ld	de, #0x0000
	ld	(hl), e
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	ld	de, #0x6a00
	xor	a, a
	call	_V9_FillVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:352: V9990_LoadButtonsImageData();
	call	_V9990_LoadButtonsImageData
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1047: inline void V9_SelectPaletteP1(u8 a, u8 b) { V9_SetRegister(13, ((b & 0x3) << 2) + (a & 0x3)); }
	ld	a, #0x01
	and	a, #0x03
	add	a, a
	add	a, a
	ld	c, a
	xor	a, a
	and	a, #0x03
	add	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0d
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:354: u16 tileId=0;
	ld	bc, #0x0000
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:356: for (u8 y=0;y<64;y++){
	ld	-2 (ix), #0x00
00185$:
	ld	a, -2 (ix)
	sub	a, #0x40
	jr	NC, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:357: for (u8 x=0;x<32;x++){
	ld	-1 (ix), #0x00
00182$:
	ld	a, -1 (ix)
	sub	a, #0x20
	jr	NC, 00240$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:358: V9_Poke16(V9_CellAddrP1A(x,y), tileId++);
	ld	-4 (ix), c
	ld	-3 (ix), b
	inc	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, -1 (ix)
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00376$
	inc	d
00376$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:357: for (u8 x=0;x<32;x++){
	inc	-1 (ix)
	jp	00182$
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:356: for (u8 y=0;y<64;y++){
	inc	-2 (ix)
	jp	00185$
00111$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	7, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:363: bool joyTriggered=FALSE;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:364: while(!joyTriggered){
00112$:
	ld	a, c
	or	a, a
	jr	NZ, 00199$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:365: joyTriggered=Trampoline_VOID_RETURN(2,IsTeamJoystickTriggerPressed);
	ld	de, #_IsTeamJoystickTriggerPressed
	ld	a, #0x02
	call	_Trampoline_VOID_RETURN
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:366: V9990_WaitSynch();
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	jp	00112$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:473: inline void V9_SetDisplayEnable(bool enable) { V9_SetFlag(8, V9_R08_DISP_ON, enable ? V9_R08_DISP_ON : 0); }
00199$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:369: V9_SetDisplayEnable(FALSE);
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:371: VGM_Stop();
	call	_VGM_Stop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:372: PSG_Mute();
	call	_PSG_Mute
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:373: g_MatchStatus=MATCH_NOT_STARTED;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:377: V9990_LoadP1LayerA();
	call	_V9990_LoadP1LayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:378: V9990_LoadP1LayerB();
	call	_V9990_LoadP1LayerB
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:382: Trampoline_VOID(3,V9990_InitPalette);
	ld	de, #_V9990_InitPalette
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:385: ShowField();
	call	_ShowField
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	7, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:392: GameStart();
	call	_GameStart
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:393: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "    PLAYER TEAM SELECT"
	.db 0x00
___str_1:
	.ascii "     CPU TEAM SELECT   "
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:395: void SetTeam1Palette(){
;	---------------------------------
; Function SetTeam1Palette
; ---------------------------------
_SetTeam1Palette::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:396: V9_SetPalette(32, 16, GetTeamPaletteById(g_Team1PaletteId));
	ld	a, (_g_Team1PaletteId+0)
	call	_GetTeamPaletteById
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1028: ERROR: no line number 1028 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	bc, #0x20
00104$:
	ld	a, b
	sub	a, #0x10
	ret	NC
	push	iy
	ex	(sp), hl
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ex	(sp), hl
	pop	iy
	inc	c
	push	hl
	push	bc
	ld	e, l
	ld	d, h
	push	iy
	ex	(sp), hl
	ld	a, l
	ex	(sp), hl
	pop	iy
	call	_V9_SetPaletteEntry
	pop	bc
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	inc	b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:396: ERROR: no line number 396 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:397: ERROR: no line number 397 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	jp	00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:399: ERROR: no line number 399 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function SetTeam2Palette
; ---------------------------------
_SetTeam2Palette::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:400: ERROR: no line number 400 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (_g_Team2PaletteId+0)
	call	_GetTeamPaletteById
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1028: ERROR: no line number 1028 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	bc, #0x30
00104$:
	ld	a, b
	sub	a, #0x10
	ret	NC
	push	iy
	ex	(sp), hl
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ex	(sp), hl
	pop	iy
	inc	c
	push	hl
	push	bc
	ld	e, l
	ld	d, h
	push	iy
	ex	(sp), hl
	ld	a, l
	ex	(sp), hl
	pop	iy
	call	_V9_SetPaletteEntry
	pop	bc
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	inc	b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:400: ERROR: no line number 400 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:401: ERROR: no line number 401 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	jp	00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:402: ERROR: no line number 402 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function GetTeamPaletteById
; ---------------------------------
_GetTeamPaletteById::
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:403: ERROR: no line number 403 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, #_g_Data_Palette_Team_ITA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:404: ERROR: no line number 404 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, #0x05
	sub	a, c
	ret	C
	ld	b, #0x00
	ld	hl, #00115$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00115$:
	jp	00101$
	jp	00105$
	jp	00103$
	jp	00102$
	jp	00106$
	jp	00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:405: ERROR: no line number 405 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:406: ERROR: no line number 406 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, #_g_Data_Palette_Team_AUS
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:407: ERROR: no line number 407 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:408: ERROR: no line number 408 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:409: ERROR: no line number 409 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, #_g_Data_Palette_Team_BRA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:410: ERROR: no line number 410 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:411: ERROR: no line number 411 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:412: ERROR: no line number 412 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, #_g_Data_Palette_Team_ITA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:413: ERROR: no line number 413 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:414: ERROR: no line number 414 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:415: ERROR: no line number 415 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, #_g_Data_Palette_Team_GBR
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:416: ERROR: no line number 416 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:417: ERROR: no line number 417 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:418: ERROR: no line number 418 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, #_g_Data_Palette_Team_GER
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:419: ERROR: no line number 419 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:420: ERROR: no line number 420 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:421: ERROR: no line number 421 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, #_g_Data_Palette_Team_FRA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:423: ERROR: no line number 423 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:424: ERROR: no line number 424 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:425: ERROR: no line number 425 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:428: ERROR: no line number 428 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function GameStart
; ---------------------------------
_GameStart::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:429: ERROR: no line number 429 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #_g_PassTargetPlayer
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:430: ERROR: no line number 430 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #_g_Team1ActivePlayer
	ld	(hl), #0xff
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: ERROR: no line number 258 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:432: ERROR: no line number 432 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #_g_SecondsToEndOfMatch
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:433: ERROR: no line number 433 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #_g_RestartKickTeamId
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:434: ERROR: no line number 434 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #_g_FieldScrollSpeed
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:435: ERROR: no line number 435 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:436: ERROR: no line number 436 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x0001
	ld	(_g_FieldCurrentYPosition), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:437: ERROR: no line number 437 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	xor	a, a
	ld	(#_g_Team1Score), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:438: ERROR: no line number 438 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	xor	a, a
	ld	(#_g_Team2Score), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:439: ERROR: no line number 439 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	l, h
	call	_V9_SetScrollingY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:440: ERROR: no line number 440 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x0001
	call	_V9_SetScrollingBY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:441: ERROR: no line number 441 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	call	_SetTeam1Palette
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:442: ERROR: no line number 442 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	call	_SetTeam2Palette
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:443: ERROR: no line number 443 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	call	_SetTeamsPresentationSpritesPosition
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:444: ERROR: no line number 444 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, #0x01
	call	_ShowFieldZone
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:445: ERROR: no line number 445 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	call	_ShowHeaderInfo
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:446: ERROR: no line number 446 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, #_InitPonPonGirls
	ld	a, #0x03
	call	_Trampoline_VOID
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: ERROR: no line number 258 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	a, #0x08
	call	_V9_GetRegister
	res	7, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	7, l
	ld	a, #0x08
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:447: ERROR: no line number 447 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:448: ERROR: no line number 448 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	jp	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:451: ERROR: no line number 451 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function PrintTeamName
; ---------------------------------
_PrintTeamName::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	c, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:456: ERROR: no line number 456 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, #0x05
	sub	a, c
	jr	C, 00107$
	ld	b, #0x00
	ld	hl, #00127$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00127$:
	jp	00101$
	jp	00106$
	jp	00103$
	jp	00102$
	jp	00104$
	jp	00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:458: ERROR: no line number 458 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00101$:
	ld	de, #___str_2
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:459: ERROR: no line number 459 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00102$:
	ld	de, #___str_3
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:460: ERROR: no line number 460 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00103$:
	ld	de, #___str_4
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:461: ERROR: no line number 461 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00104$:
	ld	de, #___str_5
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:462: ERROR: no line number 462 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00105$:
	ld	de, #___str_6
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:463: ERROR: no line number 463 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00106$:
	ld	de, #___str_7
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:464: ERROR: no line number 464 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00107$:
	ld	de, #___str_8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:465: ERROR: no line number 465 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:467: ERROR: no line number 467 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	push	de
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	call	_V9990_PrintLayerAStringAtPos
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:469: ERROR: no line number 469 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (de)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:470: ERROR: no line number 470 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	c, e
	ld	b, d
	inc	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:471: ERROR: no line number 471 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	de
	inc	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:468: ERROR: no line number 468 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:469: ERROR: no line number 469 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #_g_History1
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:470: ERROR: no line number 470 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	hl
	ld	a, (bc)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:471: ERROR: no line number 471 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	bc, #_g_History1 + 2
	ld	a, (de)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:472: ERROR: no line number 472 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History1 + 3)
	ld	(hl), #0x3a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:473: ERROR: no line number 473 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History1 + 4)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:474: ERROR: no line number 474 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History1 + 5)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:475: ERROR: no line number 475 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History1 + 6)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:476: ERROR: no line number 476 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History1 + 7)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:477: ERROR: no line number 477 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History1 + 8)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:478: ERROR: no line number 478 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History1 + 9)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:479: ERROR: no line number 479 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History1 + 10)
	ld	(hl), #0x00
	jp	00114$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:482: ERROR: no line number 482 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #_g_History2
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:483: ERROR: no line number 483 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (bc)
	ld	(#(_g_History2 + 1)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:484: ERROR: no line number 484 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (de)
	ld	(#(_g_History2 + 2)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:485: ERROR: no line number 485 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History2 + 3)
	ld	(hl), #0x3a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:486: ERROR: no line number 486 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History2 + 4)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:487: ERROR: no line number 487 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History2 + 5)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:488: ERROR: no line number 488 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History2 + 6)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:489: ERROR: no line number 489 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History2 + 7)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:490: ERROR: no line number 490 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History2 + 8)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:491: ERROR: no line number 491 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History2 + 9)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:492: ERROR: no line number 492 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_History2 + 10)
	ld	(hl), #0x00
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:494: ERROR: no line number 494 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "AUS"
	.db 0x00
___str_3:
	.ascii "BRA"
	.db 0x00
___str_4:
	.ascii "ITA"
	.db 0x00
___str_5:
	.ascii "FRA"
	.db 0x00
___str_6:
	.ascii "GBR"
	.db 0x00
___str_7:
	.ascii "GER"
	.db 0x00
___str_8:
	.ascii "   "
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:496: ERROR: no line number 496 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function GetNumberString
; ---------------------------------
_GetNumberString::
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:500: ERROR: no line number 500 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	c, e
	ld	b, d
	ld	a, c
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:501: ERROR: no line number 501 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	bc, #_GetNumberString_str_65536_1406+0
	ld	a, e
	add	a, #0x30
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:502: ERROR: no line number 502 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00103$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:504: ERROR: no line number 504 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	push	bc
	ld	de, #0x000a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	pop	bc
	ld	a, e
	add	a, #0x30
	ld	(#_GetNumberString_str_65536_1406),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:505: ERROR: no line number 505 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, #0x000a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__moduint
	ld	a, e
	add	a, #0x30
	ld	(#(_GetNumberString_str_65536_1406 + 1)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:506: ERROR: no line number 506 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_GetNumberString_str_65536_1406 + 2)
	ld	(hl), #0x00
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:509: ERROR: no line number 509 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, #_GetNumberString_str_65536_1406
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:510: ERROR: no line number 510 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:512: ERROR: no line number 512 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function ShowHeaderInfo
; ---------------------------------
_ShowHeaderInfo::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:513: ERROR: no line number 513 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (_g_Team1Score+0)
	sub	a, #0x0a
	jr	C, 00106$
	ld	bc, #0x0004
	jp	00107$
00106$:
	ld	bc, #0x0005
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:514: ERROR: no line number 514 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (_g_Team2Score+0)
	sub	a, #0x0a
	jr	C, 00108$
	ld	de, #0x0009
	jp	00109$
00108$:
	ld	de, #0x000a
00109$:
	ld	-1 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:516: ERROR: no line number 516 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	push	bc
	ld	a, (_g_Team1PaletteId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	call	_PrintTeamName
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:518: ERROR: no line number 518 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (_g_Team1Score+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	call	_GetNumberString
	pop	bc
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:519: ERROR: no line number 519 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #___str_9
	push	hl
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x07
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:520: ERROR: no line number 520 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (_g_Team2Score+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	call	_GetNumberString
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:522: ERROR: no line number 522 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (_g_Team2PaletteId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_PrintTeamName
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:523: ERROR: no line number 523 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (_g_SecondsToEndOfMatch+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x003c
	call	__divsint
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:524: ERROR: no line number 524 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, e
	ld	c, a
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	sub	a, c
	add	a, a
	add	a, a
	ld	c, a
	ld	a, (_g_SecondsToEndOfMatch+0)
	sub	a, c
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:525: ERROR: no line number 525 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	d, #0x00
	push	bc
	ex	de, hl
	call	_GetNumberString
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x1c
	call	_V9990_PrintLayerAStringAtPos
	ld	hl, #___str_10
	push	hl
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x1d
	call	_V9990_PrintLayerAStringAtPos
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:528: ERROR: no line number 528 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:527: ERROR: no line number 527 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, c
	sub	a, #0x0a
	jr	C, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:528: ERROR: no line number 528 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	call	_GetNumberString
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x1e
	call	_V9990_PrintLayerAStringAtPos
	jp	00104$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:531: ERROR: no line number 531 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	bc, #___str_11+0
	push	hl
	push	bc
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x1e
	call	_V9990_PrintLayerAStringAtPos
	pop	hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:532: ERROR: no line number 532 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	call	_GetNumberString
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x1f
	call	_V9990_PrintLayerAStringAtPos
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:534: ERROR: no line number 534 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	sp
	pop	ix
	ret
___str_9:
	.ascii "-"
	.db 0x00
___str_10:
	.ascii ":"
	.db 0x00
___str_11:
	.ascii "0"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:536: ERROR: no line number 536 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function ShowFieldZone
; ---------------------------------
_ShowFieldZone::
	ld	(_g_FieldScrollingActionInProgress+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:537: ERROR: no line number 537 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:538: ERROR: no line number 538 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:540: ERROR: no line number 540 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function SetTeamsPresentationSpritesPosition
; ---------------------------------
_SetTeamsPresentationSpritesPosition::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:541: ERROR: no line number 541 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #_g_MatchStatus
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:542: ERROR: no line number 542 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	(hl), #0x00
	ld	c, (hl)
00105$:
	ld	a, c
	sub	a, #0x07
	jr	NC, 00101$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:543: ERROR: no line number 543 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ex	(sp), hl
	pop	hl
	push	hl
	ld	(hl), #0xe6
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:544: ERROR: no line number 544 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, -4 (ix)
	add	a, #0x02
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	e, c
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ld	de, #0x0048
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:545: ERROR: no line number 545 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	pop	hl
	push	hl
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:546: ERROR: no line number 546 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	pop	hl
	push	hl
	ld	de, #0x0009
	add	hl, de
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:542: ERROR: no line number 542 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	c
	jp	00105$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:549: ERROR: no line number 549 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	c, #0x07
00108$:
	ld	a, c
	sub	a, #0x0e
	jr	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:550: ERROR: no line number 550 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_g_Players
	add	hl, de
	ld	e, l
	ld	d, h
	ld	(hl), #0xfa
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:551: ERROR: no line number 551 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x0002
	add	hl, de
	ex	(sp), hl
	ld	a, c
	ld	b, #0x00
	add	a, #0xf9
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	ld	a, l
	add	a, #0x48
	ld	b, a
	ld	a, h
	adc	a, #0x00
	ld	-2 (ix), b
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:552: ERROR: no line number 552 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x0008
	add	hl, de
	ld	(hl), #0x11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:553: ERROR: no line number 553 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x0009
	add	hl, de
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:549: ERROR: no line number 549 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	c
	jp	00108$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:555: ERROR: no line number 555 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x00f3
	ld	((_g_Players + 294)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:556: ERROR: no line number 556 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	l, #0x1e
	ld	((_g_Players + 296)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:557: ERROR: no line number 557 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_Players + 302)
	ld	(hl), #0x9d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:558: ERROR: no line number 558 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_Players + 303)
	ld	(hl), #0x0e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:559: ERROR: no line number 559 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_Players + 306)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:560: ERROR: no line number 560 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:561: ERROR: no line number 561 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_Players + 307)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:562: ERROR: no line number 562 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x0000
	ld	((_g_Players + 312)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:563: ERROR: no line number 563 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	call	_ResetPlayersInfo
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:564: ERROR: no line number 564 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, #0x0e
	call	_SetPlayerTarget
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:572: ERROR: no line number 572 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	c, #0x00
00111$:
	ld	a, c
	sub	a, #0x0e
	jr	NC, 00103$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:573: ERROR: no line number 573 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ex	de, hl
	ld	hl, #0x0014
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:574: ERROR: no line number 574 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x000d
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0007
	call	__modsint
	pop	bc
	ld	hl, #_SetTeamsPresentationSpritesPosition_k_PlayerRoles_65537_1420
	add	hl, de
	ld	a, (hl)
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:572: ERROR: no line number 572 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	c
	jp	00111$
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:576: ERROR: no line number 576 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x0078
	ld	((_g_Ball + 2)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:577: ERROR: no line number 577 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	l, #0xf3
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:578: ERROR: no line number 578 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	bc, (#_g_Ball + 0)
	ld	((_g_Ball + 7)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:579: ERROR: no line number 579 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, #0x01
	call	_ResetBallInfo
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:580: ERROR: no line number 580 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	sp, ix
	pop	ix
	ret
_SetTeamsPresentationSpritesPosition_k_PlayerRoles_65537_1420:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x06	; 6
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:582: ERROR: no line number 582 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function ResetBallInfo
; ---------------------------------
_ResetBallInfo::
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:583: ERROR: no line number 583 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	de, (#_g_Ball + 0)
	ld	((_g_Ball + 7)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:584: ERROR: no line number 584 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:585: ERROR: no line number 585 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:586: ERROR: no line number 586 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_Ball + 5)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:587: ERROR: no line number 587 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, c
	or	a, a
	ret	Z
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:588: ERROR: no line number 588 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:590: ERROR: no line number 590 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:592: ERROR: no line number 592 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function SetPlayerTarget
; ---------------------------------
_SetPlayerTarget::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-15
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:593: ERROR: no line number 593 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (_g_MatchStatus+0)
	dec	a
	ld	a, #0x01
	jr	Z, 00188$
	xor	a, a
00188$:
	ld	-2 (ix), a
	ld	a, (_g_FieldScrollingActionInProgress+0)
	inc	a
	jr	Z, 00102$
	bit	0, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:594: ERROR: no line number 594 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	jp	Z,00121$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:596: ERROR: no line number 596 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:618: ERROR: no line number 618 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	bc, #_g_Players+0
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ex	de, hl
	push	de
	pop	iy
	ld	a, 9 (iy)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:620: ERROR: no line number 620 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x0010
	add	hl, de
	ld	-12 (ix), l
	ld	-11 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:621: ERROR: no line number 621 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #0x000e
	add	hl, de
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:618: ERROR: no line number 618 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, -13 (ix)
	sub	a, #0x0e
	jr	NZ, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:620: ERROR: no line number 620 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), #0x5a
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:621: ERROR: no line number 621 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0xcb
	inc	hl
	ld	(hl), #0x00
	jp	00121$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:624: ERROR: no line number 624 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	hl, #13
	add	hl, de
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:625: ERROR: no line number 625 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, #0x06
	sub	a, -8 (ix)
	jr	NC, 00106$
	ld	-8 (ix), #0x00
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:627: ERROR: no line number 627 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, -13 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00193$
	xor	a, a
00193$:
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:630: ERROR: no line number 630 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	bc, #_SetPlayerTarget_k_KO_X_196608_1430+0
	ld	l, -8 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	-2 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:631: ERROR: no line number 631 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, -8 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	sla	-3 (ix)
	rl	-2 (ix)
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00123$
	ld	bc, #_SetPlayerTarget_k_KO_Y_T1_196608_1430+0
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	add	hl, bc
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	jp	00124$
00123$:
	ld	a, -3 (ix)
	add	a, #<(_SetPlayerTarget_k_KO_Y_T2_196608_1430)
	ld	c, a
	ld	a, -2 (ix)
	adc	a, #>(_SetPlayerTarget_k_KO_Y_T2_196608_1430)
	ld	b, a
	ld	a, (bc)
	ld	-15 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-14 (ix), a
00124$:
	ld	a, -15 (ix)
	ld	-4 (ix), a
	ld	a, -14 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:634: ERROR: no line number 634 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00108$
	ld	a, -8 (ix)
	sub	a, #0x04
	jr	NZ, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:635: ERROR: no line number 635 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	-6 (ix), #0x52
	ld	-5 (ix), #0
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:639: ERROR: no line number 639 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, -8 (ix)
	sub	a, #0x03
	ld	a, #0x01
	jr	Z, 00198$
	xor	a, a
00198$:
	ld	-2 (ix), a
	or	a, a
	jr	NZ, 00116$
	ld	a, -8 (ix)
	sub	a, #0x04
	jr	NZ, 00114$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:640: ERROR: no line number 640 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, -13 (ix)
	jr	NZ, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:642: ERROR: no line number 642 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00125$
	ld	-4 (ix), #0xf3
	ld	-3 (ix), #0
	jp	00126$
00125$:
	ld	-4 (ix), #0xe9
	ld	-3 (ix), #0
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:643: ERROR: no line number 643 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00111$
	ld	-6 (ix), #0x71
	ld	-5 (ix), #0
	jp	00114$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:644: ERROR: no line number 644 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	-6 (ix), #0x7f
	ld	-5 (ix), #0
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:647: ERROR: no line number 647 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:648: ERROR: no line number 648 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:652: ERROR: no line number 652 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:653: ERROR: no line number 653 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	sp, ix
	pop	ix
	ret
_SetPlayerTarget_k_KO_X_196608_1430:
	.db #0x78	; 120	'x'
	.db #0x28	; 40
	.db #0xc6	; 198
	.db #0x8c	; 140
	.db #0x62	; 98	'b'
	.db #0x28	; 40
	.db #0xc6	; 198
_SetPlayerTarget_k_KO_Y_T1_196608_1430:
	.dw #0x01a8
	.dw #0x0176
	.dw #0x0176
	.dw #0x0144
	.dw #0x0144
	.dw #0x011c
	.dw #0x011c
_SetPlayerTarget_k_KO_Y_T2_196608_1430:
	.dw #0x0032
	.dw #0x0082
	.dw #0x0082
	.dw #0x00b4
	.dw #0x00b4
	.dw #0x00dc
	.dw #0x00dc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:655: ERROR: no line number 655 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
;	---------------------------------
; Function ShowField
; ---------------------------------
_ShowField::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:657: ERROR: no line number 657 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	bc, #0x0000
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:659: ERROR: no line number 659 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	-2 (ix), #0x00
00116$:
	ld	a, -2 (ix)
	sub	a, #0x40
	jr	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:660: ERROR: no line number 660 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	-1 (ix), #0x00
00113$:
	ld	a, -1 (ix)
	sub	a, #0x20
	jr	NC, 00139$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:661: ERROR: no line number 661 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	sp
	inc	sp
	push	bc
	inc	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1437: ERROR: no line number 1437 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, -1 (ix)
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xe0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00184$
	inc	d
00184$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: ERROR: no line number 396 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	pop	hl
	push	hl
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:660: ERROR: no line number 660 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	-1 (ix)
	jp	00113$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:659: ERROR: no line number 659 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	-2 (ix)
	jp	00116$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:665: ERROR: no line number 665 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	c, #0x00
00122$:
	ld	a, c
	sub	a, #0x40
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:666: ERROR: no line number 666 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	b, #0x00
00119$:
	ld	a, b
	sub	a, #0x20
	jr	NC, 00123$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: ERROR: no line number 1426 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, b
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00185$
	inc	d
00185$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: ERROR: no line number 396 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	ld	hl, #0x0000
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:666: ERROR: no line number 666 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	b
	jp	00119$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:665: ERROR: no line number 665 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	c
	jp	00122$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:670: ERROR: no line number 670 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	c, #0x00
00125$:
	ld	a, c
	sub	a, #0x40
	jr	NC, 00127$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: ERROR: no line number 1426 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00186$
	inc	d
00186$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: ERROR: no line number 396 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	ld	hl, #0x0020
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:670: ERROR: no line number 670 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	inc	c
	jp	00125$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:673: ERROR: no line number 673 in file E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c
	ld	sp, ix
	pop	ix
	ret
	.area _SEG4
	.area _INITIALIZER
	.area _CABS (ABS)
