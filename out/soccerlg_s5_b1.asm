;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s5_b1
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PenaltyShots
	.globl _PerformShot
	.globl _ShowHeaderInfo
	.globl _ShowMenu
	.globl _UpdateSpritesPositions
	.globl _V9990_PrintLayerAStringAtPos
	.globl _GetJoystickDirection
	.globl _IsJoystickTriggerPressed
	.globl _PerformPass
	.globl _IsOffside
	.globl _PutBallOnPlayerFeet
	.globl _GetClosestPlayerToBall
	.globl _Math_Abs32
	.globl _GetTeamStats
	.globl _V9990_ClearTextFromLayerA
	.globl _Trampoline_U8_P2
	.globl _Trampoline_BOOL_P1
	.globl _Trampoline_VOID_16_P2
	.globl _Trampoline_U8
	.globl _Trampoline_VOID_P1
	.globl _Trampoline_VOID
	.globl _V9990_WaitSynch
	.globl _V9_SetScrollingBY
	.globl _V9_WriteVRAM_CurrentAddr
	.globl _V9_SetWriteAddress
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
	.globl _TickAI
	.globl _TimeUp
	.globl _TeamVictory
	.globl _GetOffsideLineY
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
	.area _SEG5
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:23: void TickAI(u8 playerId){
;	---------------------------------
; Function TickAI
; ---------------------------------
_TickAI::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-38
	add	hl, sp
	ld	sp, hl
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:24: if(g_MatchStatus==MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER){
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jr	Z, 00703$
	sub	a, #0x0d
	jp	NZ,00718$
00703$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:30: u16 refX = g_Players[playerId].X;
	ld	c, -3 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:27: if (playerId == REFEREE) {
	ld	a, -3 (ix)
	sub	a, #0x0e
	jp	NZ,00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:28: u16 ballX = g_Ball.X;
	ld	bc, (#_g_Ball + 2)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:29: u16 ballY = g_Ball.Y;
	ld	de, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:30: u16 refX = g_Players[playerId].X;
	ld	a, #<(_g_Players)
	add	a, -2 (ix)
	ld	-15 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -1 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0x02
	ld	-13 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:31: u16 refY = g_Players[playerId].Y;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:35: u16 targetY = ballY;
	ld	-7 (ix), e
	ld	-6 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:38: if (ballY > 230 && ballY < 260 && ballX > 110 && ballX < 140) {
	ld	-5 (ix), c
	ld	-4 (ix), b
	ld	a, #0xe6
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00107$
	ld	a, e
	sub	a, #0x04
	ld	a, d
	sbc	a, #0x01
	jr	NC, 00107$
	ld	a, #0x6e
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jr	NC, 00107$
	ld	a, -5 (ix)
	sub	a, #0x8c
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:39: targetY = ballY - 40; 
	ld	a, e
	add	a, #0xd8
	ld	c, a
	ld	a, d
	adc	a, #0xff
	ld	-7 (ix), c
	ld	-6 (ix), a
	jp	00108$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:42: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#_g_Ball + 6)
	cp	a, #0xff
	jr	Z, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:43: if (g_Players[g_Ball.PossessionPlayerId].TeamId == TEAM_1) targetY = ballY - 20;
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #_g_Players
	add	hl, bc
	ld	bc, #0x0009
	add	hl, bc
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
	ld	a, e
	add	a, #0xec
	ld	c, a
	ld	a, d
	adc	a, #0xff
	ld	-7 (ix), c
	ld	-6 (ix), a
	jp	00108$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:44: else targetY = ballY + 20;
	ld	hl, #0x0014
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:55: if (ballX < 128) targetX = ballX + 60; // Ball Left -> Ref Right
	ld	a, -5 (ix)
	sub	a, #0x80
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00113$
	ld	a, -5 (ix)
	add	a, #0x3c
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	b, a
	jp	00114$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:56: else targetX = ballX - 60;             // Ball Right -> Ref Left
	ld	a, -5 (ix)
	add	a, #0xc4
	ld	-2 (ix), a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	c, -2 (ix)
	ld	b, -1 (ix)
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:59: if (targetX < FIELD_BOUND_X_LEFT + 10) targetX = FIELD_BOUND_X_LEFT + 10;
	ld	a, c
	sub	a, #0x14
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00116$
	ld	bc, #0x0014
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:60: if (targetX > FIELD_BOUND_X_RIGHT - 10) targetX = FIELD_BOUND_X_RIGHT - 10;
	ld	a, #0xe2
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00118$
	ld	bc, #0x00e2
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:65: u8 moveDir = DIRECTION_NONE;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:66: i16 diffY = (i16)targetY - (i16)refY;
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	cp	a, a
	sbc	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:67: i16 diffX = (i16)targetX - (i16)refX;
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:70: if (diffY < -8) moveDir = DIRECTION_UP;
	ld	a, e
	sub	a, #0xf8
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00122$
	ld	-1 (ix), #0x01
	jp	00123$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:71: else if (diffY > 8) moveDir = DIRECTION_DOWN;
	ld	a, #0x08
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 02244$
	xor	a, #0x80
02244$:
	jp	P, 00123$
	ld	-1 (ix), #0x05
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:74: bool moveX = false;
	ld	e, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:75: if (diffX < -16) moveX = true; // Need to go Left
	ld	a, c
	sub	a, #0xf0
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00127$
	ld	e, #0x01
	jp	00128$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:76: else if (diffX > 16) moveX = true; // Need to go Right
	ld	d, c
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x10
	cp	a, d
	ld	a, #0x00
	sbc	a, l
	jp	PO, 02245$
	xor	a, #0x80
02245$:
	jp	P, 00128$
	ld	e, #0x01
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:78: if (moveX) {
	ld	a, e
	or	a, a
	jr	Z, 00145$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:76: else if (diffX > 16) moveX = true; // Need to go Right
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:80: if (diffX > 0) moveDir = DIRECTION_UP_RIGHT;
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 02246$
	xor	a, #0x80
02246$:
	rlca
	and	a,#0x01
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:79: if (moveDir == DIRECTION_UP) {
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00142$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:80: if (diffX > 0) moveDir = DIRECTION_UP_RIGHT;
	ld	a, c
	or	a, a
	jr	Z, 00130$
	ld	-1 (ix), #0x02
	jp	00145$
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:81: else moveDir = DIRECTION_UP_LEFT;
	ld	-1 (ix), #0x08
	jp	00145$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:82: } else if (moveDir == DIRECTION_DOWN) {
	ld	a, -1 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:83: if (diffX > 0) moveDir = DIRECTION_DOWN_RIGHT;
	sub	a,#0x05
	jr	NZ, 00139$
	or	a,c
	jr	Z, 00133$
	ld	-1 (ix), #0x04
	jp	00145$
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:84: else moveDir = DIRECTION_DOWN_LEFT;
	ld	-1 (ix), #0x06
	jp	00145$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:86: if (diffX > 0) moveDir = DIRECTION_RIGHT;
	ld	a, c
	or	a, a
	jr	Z, 00136$
	ld	-1 (ix), #0x03
	jp	00145$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:87: else moveDir = DIRECTION_LEFT;
	ld	-1 (ix), #0x07
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:91: g_Players[playerId].Direction = moveDir;
	ld	a, -15 (ix)
	add	a, #0x0a
	ld	c, a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, -1 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:94: if (g_Players[playerId].Direction == DIRECTION_UP ||
	ld	(bc), a
	ld	e, a
	ld	a, -1 (ix)
	dec	a
	jr	Z, 00146$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:95: g_Players[playerId].Direction == DIRECTION_UP_RIGHT ||
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:96: g_Players[playerId].Direction == DIRECTION_UP_LEFT) {
	ld	a,e
	cp	a,#0x02
	jr	Z, 00146$
	sub	a, #0x08
	jr	NZ, 00147$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:97: g_Players[playerId].Y--;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	de
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:94: if (g_Players[playerId].Direction == DIRECTION_UP ||
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:99: if (g_Players[playerId].Direction == DIRECTION_DOWN ||
	cp	a, #0x05
	jr	Z, 00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:100: g_Players[playerId].Direction == DIRECTION_DOWN_RIGHT ||
	cp	a, #0x04
	jr	Z, 00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:101: g_Players[playerId].Direction == DIRECTION_DOWN_LEFT) {
	sub	a, #0x06
	jr	NZ, 00151$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:102: g_Players[playerId].Y++;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:94: if (g_Players[playerId].Direction == DIRECTION_UP ||
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:104: if (g_Players[playerId].Direction == DIRECTION_LEFT ||
	cp	a, #0x07
	jr	Z, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:105: g_Players[playerId].Direction == DIRECTION_UP_LEFT ||
	cp	a, #0x08
	jr	Z, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:106: g_Players[playerId].Direction == DIRECTION_DOWN_LEFT) {
	sub	a, #0x06
	jr	NZ, 00155$
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:107: g_Players[playerId].X--;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	de
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:94: if (g_Players[playerId].Direction == DIRECTION_UP ||
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:109: if (g_Players[playerId].Direction == DIRECTION_RIGHT ||
	cp	a, #0x03
	jr	Z, 00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:110: g_Players[playerId].Direction == DIRECTION_UP_RIGHT ||
	cp	a, #0x02
	jr	Z, 00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:111: g_Players[playerId].Direction == DIRECTION_DOWN_RIGHT) {
	sub	a, #0x04
	jr	NZ, 00159$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:112: g_Players[playerId].X++;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:116: if(g_Players[playerId].Y < FIELD_BOUND_Y_TOP) g_Players[playerId].Y = FIELD_BOUND_Y_TOP;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x32
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00163$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:117: if(g_Players[playerId].Y > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].Y = FIELD_BOUND_Y_BOTTOM;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xae
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00165$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0xae
	inc	hl
	ld	(hl), #0x01
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:118: if(g_Players[playerId].X < FIELD_BOUND_X_LEFT) g_Players[playerId].X = FIELD_BOUND_X_LEFT;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00167$
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:119: if(g_Players[playerId].X > FIELD_BOUND_X_RIGHT) g_Players[playerId].X = FIELD_BOUND_X_RIGHT;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00169$
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0xec
	inc	hl
	ld	(hl), #0x00
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:125: g_Players[playerId].Status = PLAYER_STATUS_NONE; // Force not positioned
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	de, #0x0012
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:124: if (moveDir != DIRECTION_NONE) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:125: g_Players[playerId].Status = PLAYER_STATUS_NONE; // Force not positioned
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00718$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:127: g_Players[playerId].Status = PLAYER_STATUS_POSITIONED; // Allow rest
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:130: return;
	jp	00718$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:132: u8 playerTeamId = g_Players[playerId].TeamId;
	ld	a, #<(_g_Players)
	add	a, -2 (ix)
	ld	-38 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -1 (ix)
	ld	-37 (ix), a
	pop	bc
	push	bc
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
	ld	-36 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:133: bool ballPossessionByPlayerTeam = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:134: const TeamStats* stats = GetTeamStats(playerTeamId);
	ld	a, -36 (ix)
	call	_GetTeamStats
	ld	-35 (ix), e
	ld	-34 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:136: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jr	NZ, 00187$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:139: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#(_g_Ball + 6) + 0)
	ld	-1 (ix), a
	inc	a
	jp	Z,00188$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:140: if (g_Players[g_Ball.PossessionPlayerId].TeamId == playerTeamId) ballPossessionByPlayerTeam = true;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, #<(_g_Players)
	add	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -4 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a,-36 (ix)
	sub	a,(hl)
	jr	NZ, 00188$
	ld	-6 (ix), #0x01
	jp	00188$
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:144: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#_g_Ball + 6)
	ld	-1 (ix), a
	inc	a
	jr	Z, 00184$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:145: if (g_Players[g_Ball.PossessionPlayerId].TeamId == playerTeamId) {
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, #<(_g_Players)
	add	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -4 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a,-36 (ix)
	sub	a,(hl)
	jr	NZ, 00188$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:146: ballPossessionByPlayerTeam = true;
	ld	-6 (ix), #0x01
	jp	00188$
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:150: if (g_Ball.LastTouchTeamId == playerTeamId) {
	ld	hl, #_g_Ball + 14
	ld	a,-36 (ix)
	sub	a,(hl)
	jr	NZ, 00188$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:151: ballPossessionByPlayerTeam = true;
	ld	-6 (ix), #0x01
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:158: if (ballPossessionByPlayerTeam) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00491$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:161: if (g_Ball.PossessionPlayerId == playerId) {
	ld	a, (#_g_Ball + 6)
	ld	-1 (ix), a
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jp	NZ,00370$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:164: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) return;
	pop	bc
	push	bc
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	ld	-33 (ix), a
	or	a, a
	jp	Z,00718$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:170: if (playerTeamId == TEAM_1) { 
	ld	a, -36 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 02280$
	xor	a, a
02280$:
	ld	-32 (ix), a
	or	a, a
	jr	Z, 00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:171: targetY_Goal = goalTopY - 20; 
	ld	-31 (ix), #0x37
	ld	-30 (ix), #0
	jp	00193$
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:173: targetY_Goal = goalBottomY + 20;
	ld	-31 (ix), #0xa9
	ld	-30 (ix), #0x01
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:177: targetX_Goal = g_Players[playerId].X;
	ld	a, -38 (ix)
	add	a, #0x02
	ld	-29 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-28 (ix), a
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	ld	-27 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-26 (ix), a
	ld	a, -27 (ix)
	ld	-25 (ix), a
	ld	a, -26 (ix)
	ld	-24 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:178: if (targetX_Goal > 100 && targetX_Goal < 156) {
	ld	c, -25 (ix)
	ld	b, -24 (ix)
	ld	a, #0x64
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00198$
	ld	a, c
	sub	a, #0x9c
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00198$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:179: if ((g_Players[playerId].Role % 2) != 0) targetX_Goal = 60; // Go Left
	bit	0, -33 (ix)
	jr	Z, 00195$
	ld	-25 (ix), #0x3c
	ld	-24 (ix), #0
	jp	00198$
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:180: else targetX_Goal = 190; // Go Right
	ld	-25 (ix), #0xbe
	ld	-24 (ix), #0
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:183: if (targetX_Goal < FIELD_BOUND_X_LEFT + 20) targetX_Goal = FIELD_BOUND_X_LEFT + 20;
	ld	a, -25 (ix)
	sub	a, #0x1e
	ld	a, -24 (ix)
	sbc	a, #0x00
	jr	NC, 00201$
	ld	-25 (ix), #0x1e
	ld	-24 (ix), #0
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:184: if (targetX_Goal > FIELD_BOUND_X_RIGHT - 20) targetX_Goal = FIELD_BOUND_X_RIGHT - 20;
	ld	a, #0xd8
	cp	a, -25 (ix)
	ld	a, #0x00
	sbc	a, -24 (ix)
	jr	NC, 00203$
	ld	-25 (ix), #0xd8
	ld	-24 (ix), #0
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:188: bool obstacleRight = false;
	ld	-23 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:189: bool obstacleLeft = false;
	ld	-22 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:190: bool obstacleFront = false;
	ld	-21 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:191: bool obstacleFrontNonGK = false;
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:192: bool dangerousOpponent = false;
	ld	-19 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:195: for(i=0; i<14; i++) { 
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-18 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-17 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00706$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:196: if (g_Players[i].TeamId == playerTeamId) continue;
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, -5 (ix)
	add	a, #<(_g_Players)
	ld	-16 (ix), a
	ld	a, -4 (ix)
	adc	a, #>(_g_Players)
	ld	-15 (ix), a
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	hl, #9
	add	hl, bc
	ld	a,-36 (ix)
	sub	a,(hl)
	jp	Z,00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:197: if (g_Players[i].Status == PLAYER_STATUS_NONE) continue;
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	hl, #18
	add	hl, bc
	ld	a, (hl)
	inc	hl
	or	a, (hl)
	jp	Z, 00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:198: if (i == playerId) continue;
	ld	c, -3 (ix)
	ld	b, #0x00
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	cp	a, a
	sbc	hl, bc
	jp	Z,00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:200: i16 relX = (i16)g_Players[i].X - (i16)g_Players[playerId].X;
	ld	l, -16 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ex	de, hl
	ld	c, -27 (ix)
	ld	b, -26 (ix)
	cp	a, a
	sbc	hl, bc
	ld	-14 (ix), l
	ld	-13 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:201: i16 relY = (i16)g_Players[i].Y - (i16)g_Players[playerId].Y;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ex	de, hl
	ld	c, -18 (ix)
	ld	b, -17 (ix)
	cp	a, a
	sbc	hl, bc
	ld	-12 (ix), l
	ld	-11 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:207: bool isFront = false;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:208: bool isBehind = false;
	ld	-4 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:211: if (relY < 0 && relY > -obstacleDetDist) isFront = true;
	ld	a, -12 (ix)
	ld	-9 (ix), a
	ld	a, -11 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:210: if (playerTeamId == TEAM_1) { // Moving UP (Y decreases)
	ld	a, -32 (ix)
	or	a, a
	jr	Z, 00221$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:211: if (relY < 0 && relY > -obstacleDetDist) isFront = true;
	ld	a, -8 (ix)
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00211$
	ld	a, #0xe0
	cp	a, -9 (ix)
	ld	a, #0xff
	sbc	a, -8 (ix)
	jp	PO, 02284$
	xor	a, #0x80
02284$:
	jp	P, 00211$
	ld	-10 (ix), #0x01
00211$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:212: if (relY >= 0) isBehind = true;
	bit	0, c
	jr	NZ, 00222$
	ld	-4 (ix), #0x01
	jp	00222$
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:214: if (relY > 0 && relY < obstacleDetDist) isFront = true;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 02285$
	xor	a, #0x80
02285$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00216$
	ld	a, -12 (ix)
	sub	a, #0x20
	ld	a, -11 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00216$
	ld	-10 (ix), #0x01
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:215: if (relY <= 0) isBehind = true;
	bit	0, c
	jr	NZ, 00222$
	ld	-4 (ix), #0x01
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:220: u8 safeDist = isBehind ? 12 : 16; 
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00720$
	ld	bc, #0x000c
	jp	00721$
00720$:
	ld	bc, #0x0010
00721$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:221: if (relX > -safeDist && relX < safeDist && relY > -safeDist && relY < safeDist) {
	ld	a, c
	ld	b, #0x00
	neg
	ld	-7 (ix), a
	sbc	a, a
	sub	a, b
	ld	-6 (ix), a
	ld	a, -14 (ix)
	ld	-5 (ix), a
	ld	a, -13 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	jp	PO, 02286$
	xor	a, #0x80
02286$:
	jp	P, 00224$
	ld	b, #0x00
	ld	a, -14 (ix)
	sub	a, c
	ld	a, -13 (ix)
	sbc	a, b
	jp	PO, 02287$
	xor	a, #0x80
02287$:
	jp	P, 00224$
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	jp	PO, 02288$
	xor	a, #0x80
02288$:
	jp	P, 00224$
	ld	a, -12 (ix)
	sub	a, c
	ld	a, -11 (ix)
	sbc	a, b
	jp	PO, 02289$
	xor	a, #0x80
02289$:
	jp	P, 00224$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:222: dangerousOpponent = true;
	ld	-19 (ix), #0x01
00224$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:226: if (isFront && relX > -10 && relX < 10) {
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00231$
	ld	a, #0xf6
	cp	a, -14 (ix)
	ld	a, #0xff
	sbc	a, -13 (ix)
	jp	PO, 02290$
	xor	a, #0x80
02290$:
	jp	P, 00231$
	ld	a, -5 (ix)
	sub	a, #0x0a
	ld	a, -4 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00231$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:227: obstacleFront = true;
	ld	-21 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:228: if (g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) obstacleFrontNonGK = true;
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jr	Z, 00231$
	ld	-20 (ix), #0x01
00231$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:231: if (isFront || (relY < 18 && relY > -18)) { 
	ld	a, -10 (ix)
	or	a, a
	jr	NZ, 00240$
	ld	a, -9 (ix)
	sub	a, #0x12
	ld	a, -8 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00244$
	ld	a, #0xee
	cp	a, -12 (ix)
	ld	a, #0xff
	sbc	a, -11 (ix)
	jp	PO, 02291$
	xor	a, #0x80
02291$:
	jp	P, 00244$
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:232: if (relX >= 0 && relX < 24) obstacleRight = true; // Obstacle is to my right
	ld	a, -4 (ix)
	rlca
	and	a,#0x01
	ld	-6 (ix), a
	bit	0, -6 (ix)
	jr	NZ, 00235$
	ld	a, -5 (ix)
	sub	a, #0x18
	ld	a, -4 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00235$
	ld	-23 (ix), #0x01
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:233: if (relX < 0 && relX > -24) obstacleLeft = true; // Obstacle is to my left
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00244$
	ld	a, #0xe8
	cp	a, -14 (ix)
	ld	a, #0xff
	sbc	a, -13 (ix)
	jp	PO, 02292$
	xor	a, #0x80
02292$:
	jp	P, 00244$
	ld	-22 (ix), #0x01
00244$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:195: for(i=0; i<14; i++) { 
	inc	-2 (ix)
	jr	NZ, 02293$
	inc	-1 (ix)
02293$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00706$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:242: bool isHumanControlled = false;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:243: if ((playerTeamId == TEAM_1 && g_Team1ActivePlayer == playerId) || 
	ld	a, -32 (ix)
	or	a, a
	jr	Z, 00258$
	ld	a, (_g_Team1ActivePlayer+0)
	sub	a, -3 (ix)
	jr	Z, 00253$
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:244: (playerTeamId == TEAM_2 && g_GameWith2Players && g_Team2ActivePlayer == playerId)) {
	ld	a, -36 (ix)
	sub	a, #0x02
	jr	NZ, 00254$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00254$
	ld	a, (_g_Team2ActivePlayer+0)
	sub	a, -3 (ix)
	jr	NZ, 00254$
00253$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:245: isHumanControlled = true;
	ld	-2 (ix), #0x01
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:248: if (!isHumanControlled) {
	ld	a, -2 (ix)
	or	a, a
	jp	NZ, 00296$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:250: bool inRealShootingRange = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:251: bool inDangerousZone = false;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:254: if (playerTeamId == TEAM_1) {
	ld	a, -32 (ix)
	or	a, a
	jr	Z, 00268$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:258: if (g_Players[playerId].Y < (FIELD_BOUND_Y_TOP + 90)) inRealShootingRange = true;
	ld	a, -18 (ix)
	ld	-5 (ix), a
	ld	a, -17 (ix)
	ld	-4 (ix), a
	ld	a, -18 (ix)
	sub	a, #0x8c
	ld	a, -17 (ix)
	sbc	a, #0x00
	jr	NC, 00260$
	ld	-6 (ix), #0x01
00260$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:261: if (g_Players[playerId].Y < (FIELD_BOUND_Y_TOP + 60)) inDangerousZone = true; 
	ld	a, -5 (ix)
	sub	a, #0x6e
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00262$
	ld	-1 (ix), #0x01
00262$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:262: goalTargetY = FIELD_BOUND_Y_TOP - 40; 
	ld	-5 (ix), #0x0a
	ld	-4 (ix), #0
	jp	00269$
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:266: if (g_Players[playerId].Y > (FIELD_BOUND_Y_BOTTOM - 90)) inRealShootingRange = true;
	ld	a, -18 (ix)
	ld	-5 (ix), a
	ld	a, -17 (ix)
	ld	-4 (ix), a
	ld	a, #0x54
	cp	a, -5 (ix)
	ld	a, #0x01
	sbc	a, -4 (ix)
	jr	NC, 00264$
	ld	-6 (ix), #0x01
00264$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:269: if (g_Players[playerId].Y > (FIELD_BOUND_Y_BOTTOM - 60)) inDangerousZone = true;
	ld	a, #0x72
	cp	a, -5 (ix)
	ld	a, #0x01
	sbc	a, -4 (ix)
	jr	NC, 00266$
	ld	-1 (ix), #0x01
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:270: goalTargetY = FIELD_BOUND_Y_BOTTOM + 40; 
	ld	-5 (ix), #0xd6
	ld	-4 (ix), #0x01
00269$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:274: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -33 (ix)
	or	a, a
	jr	NZ, 00271$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:275: inRealShootingRange = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:276: inDangerousZone = false;
	ld	-1 (ix), #0x00
00271$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:279: if (inRealShootingRange) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00296$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:288: bool clearShot = !obstacleFrontNonGK;
	ld	a, -20 (ix)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:291: if (inDangerousZone) clearShot = true;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00273$
	ld	-6 (ix), #0x01
00273$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:294: if (playerTeamId == TEAM_1) {
	ld	a, -32 (ix)
	or	a, a
	jr	Z, 00285$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:295: if (g_Players[playerId].Y < (FIELD_BOUND_Y_TOP + 20)) {
	ld	a, -18 (ix)
	sub	a, #0x46
	ld	a, -17 (ix)
	sbc	a, #0x00
	jr	NC, 00286$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:296: if (g_Players[playerId].X < (GOAL_X_MIN - 5) || g_Players[playerId].X > (GOAL_X_MAX + 5)) clearShot = false;
	ld	a, -27 (ix)
	sub	a, #0x5b
	ld	a, -26 (ix)
	sbc	a, #0x00
	jr	C, 00274$
	ld	a, #0x95
	cp	a, -27 (ix)
	ld	a, #0x00
	sbc	a, -26 (ix)
	jr	NC, 00286$
00274$:
	ld	-6 (ix), #0x00
	jp	00286$
00285$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:299: if (g_Players[playerId].Y > (FIELD_BOUND_Y_BOTTOM - 20)) {
	ld	a, -18 (ix)
	ld	-8 (ix), a
	ld	a, -17 (ix)
	ld	-7 (ix), a
	ld	a, #0x9a
	cp	a, -8 (ix)
	ld	a, #0x01
	sbc	a, -7 (ix)
	jr	NC, 00286$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:300: if (g_Players[playerId].X < (GOAL_X_MIN - 5) || g_Players[playerId].X > (GOAL_X_MAX + 5)) clearShot = false;
	ld	a, -27 (ix)
	sub	a, #0x5b
	ld	a, -26 (ix)
	sbc	a, #0x00
	jr	C, 00279$
	ld	a, #0x95
	cp	a, -27 (ix)
	ld	a, #0x00
	sbc	a, -26 (ix)
	jr	NC, 00286$
00279$:
	ld	-6 (ix), #0x00
00286$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:306: if (clearShot) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00296$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:308: if ((g_FrameCounter % 10) > stats->ShotFreq) return;
	ld	a, (_g_FrameCounter+0)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	de, #0x000a
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -35 (ix)
	ld	-2 (ix), a
	ld	a, -34 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -2 (ix)
	sub	a, -7 (ix)
	ld	a, -1 (ix)
	sbc	a, -6 (ix)
	jp	PO, 02299$
	xor	a, #0x80
02299$:
	jp	P, 00288$
	jp	00718$
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:310: u16 shotX = 86 + ((g_FrameCounter + playerId * 13) % 68);
	ld	a, -3 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, -7 (ix)
	add	a, -9 (ix)
	ld	-2 (ix), a
	ld	a, -6 (ix)
	adc	a, -8 (ix)
	ld	-1 (ix), a
	ld	de, #0x0044
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	add	a, #0x56
	ld	-2 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:311: Trampoline_VOID_16_P2(4,PerformShot,shotX, goalTargetY);
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #_PerformShot
	ld	a, #0x04
	call	_Trampoline_VOID_16_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:312: return;
	jp	00718$
00296$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:318: bool shouldPass = false;
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:319: bool isPanicPass = false;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:325: bool checkPassing = false;
	ld	-4 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:327: if (dangerousOpponent) {
	ld	a, -19 (ix)
	or	a, a
	jr	Z, 00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:329: shouldPass = true;
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:330: isPanicPass = true;
	ld	-1 (ix), #0x01
	jp	00308$
00307$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:332: else if (obstacleFront) {
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00304$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:335: bool canGoRight = (g_Players[playerId].X < FIELD_BOUND_X_RIGHT - 20) && !obstacleRight;
	ld	a, -27 (ix)
	sub	a, #0xd8
	ld	a, -26 (ix)
	sbc	a, #0x00
	jr	NC, 00722$
	ld	a, -23 (ix)
	or	a, a
	jr	Z, 00723$
00722$:
	ld	-5 (ix), #0x00
	jp	00724$
00723$:
	ld	-5 (ix), #0x01
00724$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:336: bool canGoLeft = (g_Players[playerId].X > FIELD_BOUND_X_LEFT + 20) && !obstacleLeft;
	ld	a, #0x1e
	cp	a, -27 (ix)
	ld	a, #0x00
	sbc	a, -26 (ix)
	jr	NC, 00725$
	ld	a, -22 (ix)
	or	a, a
	jr	Z, 00726$
00725$:
	ld	-6 (ix), #0x00
	jp	00727$
00726$:
	ld	-6 (ix), #0x01
00727$:
	ld	c, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:338: if (canGoRight || canGoLeft) {
	ld	a, -5 (ix)
	or	a,a
	jr	NZ, 00297$
	or	a,c
	jr	Z, 00298$
00297$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:340: shouldPass = false;
	ld	-5 (ix), #0x00
	jp	00308$
00298$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:343: shouldPass = true;
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:344: isPanicPass = true;
	ld	-1 (ix), #0x01
	jp	00308$
00304$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:350: if ((g_FrameCounter % 10) < stats->PassFreq) checkPassing = true;
	ld	a, (_g_FrameCounter+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	de, #0x000a
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-9 (ix), e
	ld	-8 (ix), d
	ld	a, -35 (ix)
	ld	-7 (ix), a
	ld	a, -34 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	jp	PO, 02300$
	xor	a, #0x80
02300$:
	jp	P, 00308$
	ld	-4 (ix), #0x01
00308$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:353: if (checkPassing) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00310$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:356: shouldPass = true; 
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:357: isPanicPass = false;
	ld	-1 (ix), #0x00
00310$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:360: if (shouldPass) {
	ld	a, -5 (ix)
	or	a, a
	jp	Z, 00357$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:361: if (!isHumanControlled) {
	ld	a, -2 (ix)
	or	a, a
	jp	NZ, 00357$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:362: u8 bestT = NO_VALUE;
	ld	-2 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:363: i16 bestScore = -30000;
	ld	-9 (ix), #0xd0
	ld	-8 (ix), #0x8a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:365: for(t=0; t<14; t++) {
	ld	a, -35 (ix)
	add	a, #0x03
	ld	-7 (ix), a
	ld	a, -34 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	xor	a, a
	ld	-5 (ix), a
	ld	-4 (ix), a
00707$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:366: if(g_Players[t].TeamId != playerTeamId) continue;
	ld	c, -5 (ix)
	ld	b, -4 (ix)
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
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	c, l
	ld	b, h
	ld	hl, #9
	add	hl, bc
	ld	a,-36 (ix)
	sub	a,(hl)
	jp	NZ,00346$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:367: if(t == playerId) continue;
	ld	c, -3 (ix)
	ld	b, #0x00
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	cp	a, a
	sbc	hl, bc
	jp	Z,00346$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:369: if (stats->PassFreq < 8) {
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	sub	a, #0x08
	jr	NC, 00318$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:370: if(g_Players[t].Status == PLAYER_STATUS_NONE) continue;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	hl, #18
	add	hl, bc
	ld	a, (hl)
	inc	hl
	or	a, (hl)
	jp	Z, 00346$
00318$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:372: if(g_Players[t].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00346$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:375: bool isOffside=Trampoline_BOOL_P1(2,IsOffside,t);
	ld	a, -5 (ix)
	ld	-16 (ix), a
	push	af
	inc	sp
	ld	de, #_IsOffside
	ld	a, #0x02
	call	_Trampoline_BOOL_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:376: if (isOffside) continue;
	or	a, a
	jp	NZ, 00346$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:378: i16 dx = (i16)g_Players[t].X - (i16)g_Players[playerId].X;
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:379: i16 dy = (i16)g_Players[t].Y - (i16)g_Players[playerId].Y;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	e, -15 (ix)
	ld	d, -14 (ix)
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	-13 (ix), e
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:380: u16 adx = (dx < 0) ? -dx : dx;
	ld	e, c
	ld	d, b
	bit	7, d
	jr	Z, 00728$
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	jp	00729$
00728$:
	ld	a, b
00729$:
	ld	-11 (ix), c
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:381: u16 ady = (dy < 0) ? -dy : dy;
	ld	b, -12 (ix)
	bit	7, b
	jr	Z, 00730$
	xor	a, a
	sub	a, -13 (ix)
	ld	-18 (ix), a
	sbc	a, a
	sub	a, -12 (ix)
	ld	-17 (ix), a
	jp	00731$
00730$:
	ld	a, -13 (ix)
	ld	-18 (ix), a
	ld	a, -12 (ix)
	ld	-17 (ix), a
00731$:
	ld	c, -18 (ix)
	ld	b, -17 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:382: if (adx < 40 && ady < 40) continue; // Minimum pass distance
	ld	a, -11 (ix)
	sub	a, #0x28
	ld	a, -10 (ix)
	sbc	a, #0x00
	jr	NC, 00324$
	ld	a, c
	sub	a, #0x28
	ld	a, b
	sbc	a, #0x00
	jp	C, 00346$
00324$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:385: if (g_Players[t].Y < g_FieldCurrentYPosition - 40 || 
	ld	a, (_g_FieldCurrentYPosition+0)
	add	a, #0xd8
	ld	e, a
	ld	a, (_g_FieldCurrentYPosition+1)
	adc	a, #0xff
	ld	d, a
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	C, 00346$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:386: g_Players[t].Y > (g_FieldCurrentYPosition + 252)) continue;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00fc
	add	hl, de
	xor	a, a
	sbc	hl, bc
	jp	C, 00346$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:388: i16 advanceScore = (playerTeamId == TEAM_1) ? -dy : dy;
	ld	a, -32 (ix)
	or	a, a
	jr	Z, 00732$
	xor	a, a
	sub	a, -13 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -12 (ix)
	jp	00733$
00732$:
	ld	c, -13 (ix)
	ld	a, -12 (ix)
00733$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:391: if (!isPanicPass) {
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00339$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:392: bool allowSwitch = (stats->PassFreq >= 8 && adx > 80); // Strong teams switch play
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	sub	a, #0x08
	jr	C, 00734$
	ld	a, #0x50
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	C, 00735$
00734$:
	xor	a, a
	jp	00736$
00735$:
	ld	a, #0x01
00736$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:393: if (allowSwitch) {
	or	a, a
	jr	Z, 00334$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:394: if (advanceScore < -10) continue; // Allow flat/slight back for wide balls
	ld	a, c
	sub	a, #0xf6
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00340$
	jp	00346$
00334$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:396: if (advanceScore < 40) continue; // Must gain at least 40px ground
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0x28
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00346$
	jp	00340$
00339$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:400: if (advanceScore < -150) continue;
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0x6a
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00346$
00340$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:404: if (stats->PassFreq >= 8) {
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	l, (hl)
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:405: score = advanceScore + (adx/4); // Reward width (Switch play)
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	srl	d
	rr	e
	srl	d
	rr	e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:404: if (stats->PassFreq >= 8) {
	ld	a, l
	sub	a, #0x08
	jr	C, 00342$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:405: score = advanceScore + (adx/4); // Reward width (Switch play)
	ld	l, c
	ld	h, b
	add	hl, de
	ld	c, l
	ld	b, h
	jp	00343$
00342$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:407: score = advanceScore - (adx/4); // Penalize width (Direct play)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
00343$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:410: if (score > bestScore) {
	ld	a, -9 (ix)
	sub	a, c
	ld	a, -8 (ix)
	sbc	a, b
	jp	PO, 02304$
	xor	a, #0x80
02304$:
	jp	P, 00346$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:411: bestScore = score;
	ld	-9 (ix), c
	ld	-8 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:412: bestT = t;
	ld	a, -16 (ix)
	ld	-2 (ix), a
00346$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:365: for(t=0; t<14; t++) {
	inc	-5 (ix)
	jr	NZ, 02305$
	inc	-4 (ix)
02305$:
	ld	a, -5 (ix)
	sub	a, #0x0e
	ld	a, -4 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00707$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:417: if (bestT != NO_VALUE) {
	ld	a, -2 (ix)
	inc	a
	jr	Z, 00357$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:420: i16 threshold = isPanicPass ? -80 : 10;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00737$
	ld	-5 (ix), #0xb0
	ld	-4 (ix), #0xff
	jp	00738$
00737$:
	ld	-5 (ix), #0x0a
	ld	-4 (ix), #0
00738$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:422: if (bestScore > threshold) {
	ld	a, -5 (ix)
	sub	a, -9 (ix)
	ld	a, -4 (ix)
	sbc	a, -8 (ix)
	jp	PO, 02307$
	xor	a, #0x80
02307$:
	jp	P, 00357$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:423: if (g_Ball.PossessionTimer < 15) return; // Wait 15 frames before passing
	ld	a, (#_g_Ball + 28)
	ld	-1 (ix), a
	sub	a, #0x0f
	jp	C,00718$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:424: Trampoline_VOID_P1(2,PerformPass,bestT);
	ld	a, -2 (ix)
	push	af
	inc	sp
	ld	de, #_PerformPass
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:425: return; // End tick
	jp	00718$
00357$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:431: u16 finalTargetX = targetX_Goal;
	ld	a, -25 (ix)
	ld	-2 (ix), a
	ld	a, -24 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:432: u16 finalTargetY = targetY_Goal;
	ld	a, -31 (ix)
	ld	-5 (ix), a
	ld	a, -30 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:434: if (obstacleFront) {
	ld	a, -21 (ix)
	or	a, a
	jp	Z, 00368$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:435: if (!obstacleRight) {
	ld	a, -23 (ix)
	or	a, a
	jr	NZ, 00365$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:436: finalTargetX = g_Players[playerId].X + 24;
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-7 (ix), a
	ld	a, -1 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, #0x18
	ld	-2 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:437: if (finalTargetX > FIELD_BOUND_X_RIGHT) finalTargetX = FIELD_BOUND_X_RIGHT;
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00368$
	ld	-2 (ix), #0xec
	ld	-1 (ix), #0
	jp	00368$
00365$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:438: } else if (!obstacleLeft) {
	ld	a, -22 (ix)
	or	a, a
	jr	NZ, 00368$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:439: finalTargetX = g_Players[playerId].X - 24; 
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-7 (ix), a
	ld	a, -1 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, #0xe8
	ld	-2 (ix), a
	ld	a, -6 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:440: if (finalTargetX < FIELD_BOUND_X_LEFT) finalTargetX = FIELD_BOUND_X_LEFT;
	ld	a, -2 (ix)
	ld	b, -1 (ix)
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00368$
	ld	-2 (ix), #0x0a
	ld	-1 (ix), #0
00368$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:443: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	-7 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:444: g_Players[playerId].TargetX = finalTargetX;
	ld	a, -38 (ix)
	add	a, #0x10
	ld	-5 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:445: return; // IMPORTANT: Ball Carrier handled. Stop.
	jp	00718$
00370$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:451: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, -1 (ix)
	inc	a
	jr	NZ, 00374$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:453: u8 closestId=Trampoline_U8_P2(2,GetClosestPlayerToBall,playerTeamId,NO_VALUE);
	ld	h, #0xff
	ld	l, -36 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:454: if (closestId == playerId) {
	ld	a, -3 (ix)
	sub	a, c
	jr	NZ, 00374$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:455: g_Players[playerId].TargetX = g_Ball.X;
	ld	a, -38 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 2)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:456: g_Players[playerId].TargetY = g_Ball.Y;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 0)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:457: return;
	jp	00718$
00374$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:164: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) return;
	ld	a, -38 (ix)
	add	a, #0x0d
	ld	-9 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:490: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER || 
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:464: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jp	NZ,00408$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:443: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:467: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 160;
	ld	a, -2 (ix)
	sub	a, #0x05
	ld	a, #0x00
	rla
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:466: if (playerTeamId == TEAM_1) { // Moving UP
	ld	a, -36 (ix)
	dec	a
	jr	NZ, 00388$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:467: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 160;
	bit	0, -1 (ix)
	jr	NZ, 00379$
	ld	a, #0xa0
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00389$
00379$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:468: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetY = 240;
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	C, 00376$
	ld	a, #0xf0
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00389$
00376$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:469: else g_Players[playerId].TargetY = 350;
	ld	a, #0x5e
	ld	(bc), a
	inc	bc
	ld	a, #0x01
	ld	(bc), a
	jp	00389$
00388$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:471: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 320;
	bit	0, -1 (ix)
	jr	NZ, 00385$
	ld	a, #0x40
	ld	(bc), a
	inc	bc
	ld	a, #0x01
	ld	(bc), a
	jp	00389$
00385$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:472: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetY = 240;
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	C, 00382$
	ld	a, #0xf0
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00389$
00382$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:473: else g_Players[playerId].TargetY = 130;
	ld	a, #0x82
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
00389$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:477: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	cp	a, #0x05
	jr	NZ, 00405$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x40
	inc	hl
	ld	(hl), #0x00
	jp	00718$
00405$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:478: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_STRIKER) g_Players[playerId].TargetX = 192;
	cp	a, #0x06
	jr	NZ, 00402$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xc0
	inc	hl
	ld	(hl), #0x00
	jp	00718$
00402$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:479: else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	cp	a, #0x03
	jr	NZ, 00399$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x00
	jp	00718$
00399$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:480: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_HALFFIELDER) g_Players[playerId].TargetX = 208;
	cp	a, #0x04
	jr	NZ, 00396$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x00
	jp	00718$
00396$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:481: else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) g_Players[playerId].TargetX = 80;
	cp	a, #0x01
	jr	NZ, 00393$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x50
	inc	hl
	ld	(hl), #0x00
	jp	00718$
00393$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:482: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_DEFENDER) g_Players[playerId].TargetX = 176;
	sub	a, #0x02
	jp	NZ,00718$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xb0
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:484: return;
	jp	00718$
00408$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:490: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER || 
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	Z, 00458$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:491: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_STRIKER) {
	ld	a, -2 (ix)
	sub	a, #0x06
	jr	NZ, 00459$
00458$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:443: g_Players[playerId].TargetY = finalTargetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:494: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = GK_BOX_Y_TOP_MAX - 10;
	ld	a, -36 (ix)
	dec	a
	jr	NZ, 00410$
	ld	(hl), #0x41
	inc	hl
	ld	(hl), #0x00
	jp	00411$
00410$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:495: else g_Players[playerId].TargetY = GK_BOX_Y_BOTTOM_MIN + 10;
	ld	(hl), #0x9f
	inc	hl
	ld	(hl), #0x01
00411$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:497: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:444: g_Players[playerId].TargetX = finalTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:497: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	a, c
	sub	a, #0x05
	jr	NZ, 00413$
	ld	(hl), #0x40
	inc	hl
	ld	(hl), #0x00
	jp	00940$
00413$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:498: else g_Players[playerId].TargetX = 192;
	ld	(hl), #0xc0
	inc	hl
	ld	(hl), #0x00
	jp	00940$
00459$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:500: } else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER || 
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	Z, 00454$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:501: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
	ld	a, -2 (ix)
	sub	a, #0x04
	jp	NZ,00455$
00454$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:443: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	-5 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:456: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:508: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	-2 (ix), l
	ld	-1 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:505: if (playerTeamId == TEAM_1) {
	ld	a, -36 (ix)
	dec	a
	jr	NZ, 00420$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:508: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	a, -2 (ix)
	add	a, #0xd8
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0xff
	ld	b, a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:509: if (g_Players[playerId].TargetY < limitY) g_Players[playerId].TargetY = limitY;
	ld	a, c
	sub	a, #0x6a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00421$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00421$
00420$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:513: g_Players[playerId].TargetY = g_Ball.Y + 40;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0028
	add	hl, de
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:514: if (g_Players[playerId].TargetY > limitY) g_Players[playerId].TargetY = limitY;
	ld	a, #0x3e
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00421$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
00421$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:517: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:444: g_Players[playerId].TargetX = finalTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:517: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00423$
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x00
	jp	00940$
00423$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:518: else g_Players[playerId].TargetX = 208;
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x00
	jp	00940$
00455$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:520: } else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER || 
	ld	a, -2 (ix)
	dec	a
	jr	Z, 00450$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:521: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_DEFENDER) {
	ld	a, -2 (ix)
	sub	a, #0x02
	jp	NZ,00451$
00450$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:443: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	-7 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:456: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:508: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:524: if (playerTeamId == TEAM_1) { // Attacking UP
	ld	a, -36 (ix)
	dec	a
	jr	NZ, 00440$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:525: g_Players[playerId].TargetY = g_Ball.Y + 30;
	ld	a, -5 (ix)
	add	a, #0x1e
	ld	-2 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:527: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:529: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	c, -2 (ix)
	ld	b, -1 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:527: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	dec	a
	jr	NZ, 00430$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:529: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	a, c
	sub	a, #0x3e
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00441$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
	jp	00441$
00430$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:532: if (g_Players[playerId].TargetY < 190) g_Players[playerId].TargetY = 190;
	ld	a, c
	sub	a, #0xbe
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00441$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xbe
	inc	hl
	ld	(hl), #0x00
	jp	00441$
00440$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:536: g_Players[playerId].TargetY = g_Ball.Y - 30;
	ld	a, -5 (ix)
	add	a, #0xe2
	ld	-2 (ix), a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:538: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:529: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:538: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	dec	a
	jr	NZ, 00437$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:540: if (g_Players[playerId].TargetY > 106) g_Players[playerId].TargetY = 106;
	ld	a, #0x6a
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00441$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00441$
00437$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:543: if (g_Players[playerId].TargetY > 234) g_Players[playerId].TargetY = 234;
	ld	a, #0xea
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00441$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xea
	inc	hl
	ld	(hl), #0x00
00441$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:549: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) defTargetX = 80;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	dec	a
	jr	NZ, 00443$
	ld	-7 (ix), #0x50
	ld	-6 (ix), #0
	jp	00444$
00443$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:550: else defTargetX = 176;
	ld	-7 (ix), #0xb0
	ld	-6 (ix), #0
00444$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:553: defTargetX = (defTargetX + g_Ball.X) / 2;
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, -7 (ix)
	ld	-2 (ix), a
	ld	a, -4 (ix)
	adc	a, -6 (ix)
	ld	-1 (ix), a
	srl	-1 (ix)
	rr	-2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:554: g_Players[playerId].TargetX = defTargetX;
	ld	a, -38 (ix)
	add	a, #0x10
	ld	-5 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	jp	00940$
00451$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:556: } else if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00940$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:557: g_Players[playerId].TargetX = FIELD_POS_X_CENTER;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:443: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	-2 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:558: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = GK_BOX_Y_BOTTOM_MIN + 20;
	ld	a, -36 (ix)
	dec	a
	jr	NZ, 00446$
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0xa9
	inc	hl
	ld	(hl), #0x01
	jp	00718$
00446$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:559: else g_Players[playerId].TargetY = GK_BOX_Y_TOP_MAX - 20;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x37
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:560: return; // GK Done
	jp	00718$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:564: for(u8 i=0; i<14; i++) {
00940$:
	ld	-1 (ix), #0x00
00709$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00482$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:565: if (i == playerId) continue;
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jp	Z,00481$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:566: if (g_Players[i].Status == PLAYER_STATUS_NONE) continue;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, -7 (ix)
	add	a, #<(_g_Players)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, #>(_g_Players)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	or	a, -7 (ix)
	jp	Z, 00481$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:567: if (g_Players[i].TeamId != playerTeamId) continue;
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	hl, #9
	add	hl, bc
	ld	a,-36 (ix)
	sub	a,(hl)
	jp	NZ,00481$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:568: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00481$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:570: i16 dx = (i16)g_Players[playerId].TargetX - (i16)g_Players[i].X;
	ld	a, -38 (ix)
	add	a, #0x10
	ld	-17 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:571: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	-11 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	ld	-4 (ix), a
	ld	e, -5 (ix)
	ld	d, -4 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:572: if (dx > -75 && dx < 75 && dy > -75 && dy < 75) {
	ld	a, #0xb5
	cp	a, -13 (ix)
	ld	a, #0xff
	sbc	a, -12 (ix)
	jp	PO, 02358$
	xor	a, #0x80
02358$:
	jp	P, 00481$
	ld	a, -13 (ix)
	ld	b, -12 (ix)
	sub	a, #0x4b
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00481$
	ld	a, #0xb5
	cp	a, e
	ld	a, #0xff
	sbc	a, d
	jp	PO, 02359$
	xor	a, #0x80
02359$:
	jp	P, 00481$
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	sub	a, #0x4b
	ld	a, -6 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00481$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:573: if (dx >= 0) g_Players[playerId].TargetX += 12; else g_Players[playerId].TargetX -= 12;
	ld	a, -15 (ix)
	ld	-5 (ix), a
	ld	a, -14 (ix)
	ld	-4 (ix), a
	bit	7, b
	jr	NZ, 00471$
	ld	a, -5 (ix)
	add	a, #0x0c
	ld	-9 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	ld	-4 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
	jp	00472$
00471$:
	ld	a, -5 (ix)
	add	a, #0xf4
	ld	-9 (ix), a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-8 (ix), a
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00472$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:571: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:574: if (dy >= 0) g_Players[playerId].TargetY += 12; else g_Players[playerId].TargetY -= 12;
	bit	7, -6 (ix)
	jr	NZ, 00474$
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00481$
00474$:
	ld	a, c
	add	a, #0xf4
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00481$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:564: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00709$
00482$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:579: u16 offsideY = GetOffsideLineY(playerTeamId);
	ld	a, -36 (ix)
	call	_GetOffsideLineY
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:443: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	-2 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:456: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:529: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), c
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:582: if (playerTeamId == TEAM_1) { // Attacking UP (TargetY decreases)
	ld	a, -36 (ix)
	dec	a
	jr	NZ, 00488$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:586: effectiveLimit = (g_Ball.Y < offsideY) ? g_Ball.Y : offsideY;
	ld	a, -9 (ix)
	sub	a, -5 (ix)
	ld	a, -8 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00739$
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	jp	00740$
00739$:
	ld	e, -5 (ix)
	ld	d, -4 (ix)
00740$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:588: if (g_Players[playerId].TargetY < (effectiveLimit + 30)) { 
	ld	hl, #0x001e
	add	hl, de
	ex	de, hl
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jp	NC,00718$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:589: g_Players[playerId].TargetY = effectiveLimit + 30;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00718$
00488$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:593: effectiveLimit = (g_Ball.Y > offsideY) ? g_Ball.Y : offsideY;
	ld	a, -5 (ix)
	sub	a, -9 (ix)
	ld	a, -4 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00741$
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	jp	00742$
00741$:
	ld	e, -5 (ix)
	ld	d, -4 (ix)
00742$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:595: if (g_Players[playerId].TargetY > (effectiveLimit - 30)) {
	ld	a, e
	add	a, #0xe2
	ld	c, a
	ld	a, d
	adc	a, #0xff
	ld	b, a
	ld	a, c
	sub	a, -7 (ix)
	ld	a, b
	sbc	a, -6 (ix)
	jp	NC,00718$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:596: g_Players[playerId].TargetY = effectiveLimit - 30;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:601: return; 
	jp	00718$
00491$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:610: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -38 (ix)
	add	a, #0x0d
	ld	-7 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	or	a, a
	jp	NZ, 00516$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:612: if (g_Ball.ShotActive) return;
	ld	a, (#_g_Ball + 27)
	or	a, a
	jp	NZ,00718$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:619: if (playerTeamId == TEAM_1) { 
	ld	a, -36 (ix)
	dec	a
	jr	NZ, 00495$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:620: gkTargetY = FIELD_POS_Y_TEAM1_GOALKEEPER;
	ld	bc, #0x01a8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:621: boxYMin = GK_BOX_Y_BOTTOM_MIN; boxYMax = GK_BOX_Y_BOTTOM_MAX;
	ld	-5 (ix), #0x95
	ld	-4 (ix), #0x01
	ld	-2 (ix), #0xb3
	ld	-1 (ix), #0x01
	jp	00496$
00495$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:623: gkTargetY = FIELD_POS_Y_TEAM2_GOALKEEPER;
	ld	bc, #0x0032
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:624: boxYMin = GK_BOX_Y_TOP_MIN; boxYMax = GK_BOX_Y_TOP_MAX;
	ld	-5 (ix), #0x23
	ld	-4 (ix), #0
	ld	-2 (ix), #0x4b
	ld	-1 (ix), #0
00496$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:626: u8 closestId =Trampoline_U8_P2(2,GetClosestPlayerToBall,playerTeamId,NO_VALUE);
	push	bc
	ld	h, #0xff
	ld	l, -36 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	pop	bc
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:627: bool ballInBox = (g_Ball.X > (boxXMin-5) && g_Ball.X < (boxXMax+5) && 
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #0x4b
	cp	a, -8 (ix)
	ld	a, #0x00
	sbc	a, -7 (ix)
	jr	NC, 00743$
	ld	a, -8 (ix)
	sub	a, #0xa5
	ld	a, -7 (ix)
	sbc	a, #0x00
	jr	NC, 00743$
	ld	hl, (#_g_Ball + 0)
	ld	a, -5 (ix)
	ld	d, -4 (ix)
	add	a, #0xfb
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00743$
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
	xor	a, a
	sbc	hl, de
	jr	C, 00744$
00743$:
	ld	-6 (ix), #0x00
	jp	00745$
00744$:
	ld	-6 (ix), #0x01
00745$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:630: if (ballInBox && closestId == playerId) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00504$
	ld	a, -3 (ix)
	sub	a, -11 (ix)
	jr	NZ, 00504$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:631: gkTargetX = g_Ball.X;
	ld	a, -10 (ix)
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	-7 (ix), a
	ld	-6 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:632: gkTargetY = g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	jp	00505$
00504$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:634: if (g_Ball.X > gkTargetX + 24) gkTargetX += 16;
	ld	a, #0x90
	cp	a, -8 (ix)
	ld	a, #0x00
	sbc	a, -7 (ix)
	jr	NC, 00501$
	ld	-7 (ix), #0x88
	ld	-6 (ix), #0
	jp	00505$
00501$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:635: else if (g_Ball.X < gkTargetX - 24) gkTargetX -= 16;
	ld	a, -8 (ix)
	sub	a, #0x60
	ld	a, -7 (ix)
	sbc	a, #0x00
	jr	NC, 00498$
	ld	-7 (ix), #0x68
	ld	-6 (ix), #0
	jp	00505$
00498$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:636: else gkTargetX = g_Ball.X; 
	ld	a, -10 (ix)
	ld	e, -9 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), e
00505$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:639: if (gkTargetX < boxXMin) gkTargetX = boxXMin;
	ld	a, -7 (ix)
	sub	a, #0x50
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	NC, 00508$
	ld	-7 (ix), #0x50
	ld	-6 (ix), #0
00508$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:640: if (gkTargetX > boxXMax) gkTargetX = boxXMax;
	ld	a, #0xa0
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	NC, 00510$
	ld	-7 (ix), #0xa0
	ld	-6 (ix), #0
00510$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:641: if (gkTargetY < boxYMin) gkTargetY = boxYMin;
	ld	a, c
	sub	a, -5 (ix)
	ld	a, b
	sbc	a, -4 (ix)
	jr	NC, 00512$
	ld	c, -5 (ix)
	ld	b, -4 (ix)
00512$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:642: if (gkTargetY > boxYMax) gkTargetY = boxYMax;
	ld	a, -2 (ix)
	sub	a, c
	ld	a, -1 (ix)
	sbc	a, b
	jr	NC, 00514$
	ld	c, -2 (ix)
	ld	b, -1 (ix)
00514$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:644: g_Players[playerId].TargetX = gkTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:645: g_Players[playerId].TargetY = gkTargetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:646: return; 
	jp	00718$
00516$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:650: u8 playerClosesestToBallId =Trampoline_U8_P2(2,GetClosestPlayerToBall,playerTeamId,NO_VALUE); 
	ld	h, #0xff
	ld	l, -36 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:651: bool amIEffectiveChaser = (playerClosesestToBallId == playerId);
	ld	a, -3 (ix)
	sub	a, b
	ld	a, #0x01
	jr	Z, 02367$
	xor	a, a
02367$:
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:653: if (g_Players[playerClosesestToBallId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	e, b
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_g_Players
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
	ex	de,hl
	ld	hl, #13
	add	hl, de
	ld	a, (hl)
	or	a, a
	jp	NZ, 00528$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:654: u16 limitY = (playerTeamId == TEAM_1) ? GK_BOX_Y_BOTTOM_MIN : GK_BOX_Y_TOP_MAX;
	ld	a, -36 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 02369$
	xor	a, a
02369$:
	ld	c, a
	or	a, a
	jr	Z, 00752$
	ld	de, #0x0195
	jp	00753$
00752$:
	ld	de, #0x004b
00753$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:655: bool ballFar = false;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:656: if (playerTeamId == TEAM_1 && g_Ball.Y < limitY - 10) ballFar = true;
	ld	a, c
	or	a, a
	jr	Z, 00518$
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, e
	ld	c, d
	add	a, #0xf6
	ld	-11 (ix), a
	ld	a, c
	adc	a, #0xff
	ld	-10 (ix), a
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00518$
	ld	-2 (ix), #0x01
00518$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:657: if (playerTeamId == TEAM_2 && g_Ball.Y > limitY + 10) ballFar = true;
	ld	a, -36 (ix)
	sub	a, #0x02
	jr	NZ, 00521$
	ld	hl, (#_g_Ball + 0)
	ld	a, e
	add	a, #0x0a
	ld	c, a
	jr	NC, 02372$
	inc	d
02372$:
	ld	a, c
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00521$
	ld	-2 (ix), #0x01
00521$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:659: if (ballFar) {
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00528$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:660: u8 nextClosest =Trampoline_U8_P2(2,GetClosestPlayerToBall,playerTeamId,playerClosesestToBallId);
	push	bc
	push	bc
	inc	sp
	ld	a, -36 (ix)
	push	af
	inc	sp
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	pop	bc
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:661: if (nextClosest == playerId) amIEffectiveChaser = true;
	ld	a, -3 (ix)
	sub	a, c
	jr	NZ, 00528$
	ld	-1 (ix), #0x01
00528$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:665: if (amIEffectiveChaser) {
	ld	a, -1 (ix)
	or	a, a
	jp	Z, 00701$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:667: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	hl, #_g_Ball + 6
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:668: g_Players[playerId].TargetX = g_Ball.X;
	ld	bc, (#_g_Ball + 2)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:667: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	inc	e
	jr	NZ, 00556$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:668: g_Players[playerId].TargetX = g_Ball.X;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:669: g_Players[playerId].TargetY = g_Ball.Y;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 0)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00718$
00556$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:675: i16 dx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	-7 (ix), e
	ld	-6 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:676: i16 dy = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	-2 (ix), e
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:677: i16 range = stats->Aggression;
	ld	l, -35 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -34 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:678: if (dx > -range && dx < range && dy > -range && dy < range) {
	xor	a, a
	ld	d, a
	sub	a, e
	ld	-9 (ix), a
	sbc	a, a
	sub	a, d
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	jp	PO, 02377$
	xor	a, #0x80
02377$:
	jp	P, 00540$
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jp	PO, 02378$
	xor	a, #0x80
02378$:
	jp	P, 00540$
	ld	a, -9 (ix)
	sub	a, -2 (ix)
	ld	a, -8 (ix)
	sbc	a, -1 (ix)
	jp	PO, 02379$
	xor	a, #0x80
02379$:
	jp	P, 00540$
	ld	a, -2 (ix)
	sub	a, e
	ld	a, -1 (ix)
	sbc	a, d
	jp	PO, 02380$
	xor	a, #0x80
02380$:
	jp	P, 00540$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:683: bool isHumanControlled = false;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:684: if ((playerTeamId == TEAM_1 && g_Team1ActivePlayer == playerId) || 
	ld	a, -36 (ix)
	dec	a
	jr	NZ, 00534$
	ld	a, (_g_Team1ActivePlayer+0)
	sub	a, -3 (ix)
	jr	Z, 00529$
00534$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:685: (playerTeamId == TEAM_2 && g_GameWith2Players && g_Team2ActivePlayer == playerId)) {
	ld	a, -36 (ix)
	sub	a, #0x02
	jr	NZ, 00530$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00530$
	ld	a, (_g_Team2ActivePlayer+0)
	sub	a, -3 (ix)
	jr	NZ, 00530$
00529$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:686: isHumanControlled = true;
	ld	-1 (ix), #0x01
00530$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:689: if (!isHumanControlled) {
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00540$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:692: if ((g_FrameCounter % 4) == 0) {
	ld	a, (_g_FrameCounter+0)
	and	a, #0x03
	jr	NZ, 00540$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:693: Trampoline_VOID_P1(2,PutBallOnPlayerFeet,playerId);
	ld	a, -3 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:694: return;
	jp	00718$
00540$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:701: i16 targetX = g_Ball.X;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:702: i16 targetY = g_Ball.Y;
	ld	a, -5 (ix)
	ld	e, -4 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:704: if (g_Ball.KickMoveState != 0) {
	ld	a, (#_g_Ball + 13)
	or	a, a
	jp	Z, 00554$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:706: switch(g_Ball.Direction) {
	ld	hl, #_g_Ball + 5
	ld	e, (hl)
	ld	a, #0x08
	sub	a, e
	jp	C, 00554$
	ld	d, #0x00
	ld	hl, #02390$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
02390$:
	jp	00554$
	jp	00544$
	jp	00548$
	jp	00547$
	jp	00550$
	jp	00545$
	jp	00551$
	jp	00546$
	jp	00549$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:707: case DIRECTION_UP: targetY -= 16; break;
00544$:
	ld	a, -2 (ix)
	ld	d, -1 (ix)
	add	a, #0xf0
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	-2 (ix), e
	ld	-1 (ix), a
	jp	00554$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:708: case DIRECTION_DOWN: targetY += 16; break;
00545$:
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	hl, #0x0010
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	jp	00554$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:709: case DIRECTION_LEFT: targetX -= 16; break;
00546$:
	ld	a, c
	add	a, #0xf0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	jp	00554$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:710: case DIRECTION_RIGHT: targetX += 16; break;
00547$:
	ld	hl, #0x0010
	add	hl, bc
	ld	c, l
	ld	b, h
	jp	00554$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:711: case DIRECTION_UP_RIGHT: targetY -= 12; targetX += 12; break;
00548$:
	ld	a, -2 (ix)
	ld	d, -1 (ix)
	add	a, #0xf4
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	-2 (ix), e
	ld	-1 (ix), a
	ld	hl, #0x000c
	add	hl, bc
	ld	c, l
	ld	b, h
	jp	00554$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:712: case DIRECTION_UP_LEFT: targetY -= 12; targetX -= 12; break;
00549$:
	ld	a, -2 (ix)
	ld	d, -1 (ix)
	add	a, #0xf4
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	-2 (ix), e
	ld	-1 (ix), a
	ld	a, c
	add	a, #0xf4
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	jp	00554$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:713: case DIRECTION_DOWN_RIGHT: targetY += 12; targetX += 12; break;
00550$:
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	hl, #0x000c
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	hl, #0x000c
	add	hl, bc
	ld	c, l
	ld	b, h
	jp	00554$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:714: case DIRECTION_DOWN_LEFT: targetY += 12; targetX -= 12; break;
00551$:
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	hl, #0x000c
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, c
	add	a, #0xf4
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:715: }
00554$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:717: g_Players[playerId].TargetX = targetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:718: g_Players[playerId].TargetY = targetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	jp	00718$
00701$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:723: u16 defGoalY = (playerTeamId == TEAM_1) ? FIELD_BOUND_Y_BOTTOM : FIELD_BOUND_Y_TOP;
	ld	a, -36 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 02392$
	xor	a, a
02392$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:724: bool chaserBeaten = false;
	ld	-9 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:725: bool opponentHasBall = (g_Ball.PossessionPlayerId != NO_VALUE && g_Players[g_Ball.PossessionPlayerId].TeamId != playerTeamId);
	ld	a, (#(_g_Ball + 6) + 0)
	cp	a, #0xff
	jr	Z, 00756$
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_g_Players
	add	hl, de
	ld	de, #0x0009
	add	hl, de
	ld	a,-36 (ix)
	sub	a,(hl)
	jr	NZ, 00757$
00756$:
	ld	c, #0x00
	jp	00758$
00757$:
	ld	c, #0x01
00758$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:727: bool forceRetreat = (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER);
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	ld	a, #0x01
	jr	Z, 02397$
	xor	a, a
02397$:
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:728: if (opponentHasBall && playerClosesestToBallId != NO_VALUE && !forceRetreat) {
	ld	a, c
	or	a, a
	jr	Z, 00566$
	inc	b
	jr	Z, 00566$
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00566$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:729: u16 chaserY = g_Players[playerClosesestToBallId].Y;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:730: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	hl, (#_g_Ball + 0)
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00563$
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00566$
	ld	-9 (ix), #0x01
	jp	00566$
00563$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:731: else { if (g_Ball.Y < chaserY) chaserBeaten = true; }
	xor	a, a
	sbc	hl, de
	jr	NC, 00566$
	ld	-9 (ix), #0x01
00566$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:734: if (opponentHasBall && chaserBeaten && !forceRetreat) {
	ld	a, c
	or	a, a
	jr	Z, 00633$
	ld	a, -9 (ix)
	or	a, a
	jr	Z, 00633$
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00633$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:735: g_Players[playerId].TargetX = g_Ball.X;
	ld	a, -38 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 2)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:443: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:730: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:736: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Ball.Y + 15;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00570$
	ld	de, #0x000f
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00634$
00570$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:737: else g_Players[playerId].TargetY = g_Ball.Y - 15;
	ld	de, #0xfff1
	add	hl, de
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00634$
00633$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:610: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:741: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
	ld	-5 (ix), a
	sub	a, #0x05
	ld	a, #0x00
	rla
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:740: if (playerTeamId == TEAM_1) { // Defend Bottom (High Y)
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00617$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:741: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
	bit	0, -4 (ix)
	jr	NZ, 00592$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:743: g_Players[playerId].TargetY = FIELD_POS_Y_CENTER;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0xf3
	inc	hl
	ld	(hl), #0x00
	jp	00618$
00592$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:745: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) {
	ld	a, -5 (ix)
	sub	a, #0x03
	jr	C, 00589$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:747: g_Players[playerId].TargetY = 318; 
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
	jp	00618$
00589$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:752: u16 defenseLineY = 350;
	ld	-11 (ix), #0x5e
	ld	-10 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:757: for(u8 k=0; k<14; k++) {
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, #0x00
	ld	-4 (ix), #0x00
00711$:
	ld	a, -4 (ix)
	sub	a, #0x0e
	jr	NC, 00580$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:758: if (k==playerId) continue;
	ld	a, -3 (ix)
	sub	a, -4 (ix)
	jr	Z, 00579$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:759: if (g_Players[k].TeamId == playerTeamId && g_Players[k].Role != PLAYER_ROLE_GOALKEEPER) {
	push	de
	ld	e, -4 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	ld	a, #<(_g_Players)
	add	a, l
	ld	-9 (ix), a
	ld	a, #>(_g_Players)
	adc	a, h
	ld	-8 (ix), a
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	d, (hl)
	ld	a, -36 (ix)
	sub	a, d
	jr	NZ, 00579$
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x000d
	add	hl, bc
	pop	bc
	ld	a, (hl)
	or	a, a
	jr	Z, 00579$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:760: if (g_Players[k].Y < g_Players[playerId].Y) teammatesAhead++;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	sbc	hl, bc
	jr	NC, 00579$
	inc	e
00579$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:757: for(u8 k=0; k<14; k++) {
	inc	-4 (ix)
	jp	00711$
00580$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:730: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	bc, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:736: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Ball.Y + 15;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:765: if (teammatesAhead < 2 || g_Ball.Y > 280) {
	ld	a, e
	sub	a, #0x02
	jr	C, 00585$
	ld	a, #0x18
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00586$
00585$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:767: if (g_Ball.Y > defenseLineY - 40) {
	ld	a, #0x36
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00586$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:769: defenseLineY = g_Ball.Y + 15; 
	ld	hl, #0x000f
	add	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:770: if (defenseLineY > FIELD_BOUND_Y_BOTTOM - 10) defenseLineY = FIELD_BOUND_Y_BOTTOM - 10;
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	c, l
	ld	b, h
	ld	a, #0xa4
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00586$
	ld	-11 (ix), #0xa4
	ld	-10 (ix), #0x01
00586$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:773: g_Players[playerId].TargetY = defenseLineY; 
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
	jp	00618$
00617$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:777: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
	bit	0, -4 (ix)
	jr	NZ, 00614$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:779: g_Players[playerId].TargetY = FIELD_POS_Y_CENTER;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0xf3
	inc	hl
	ld	(hl), #0x00
	jp	00618$
00614$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:781: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) {
	ld	a, -5 (ix)
	sub	a, #0x03
	jr	C, 00611$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:783: g_Players[playerId].TargetY = 106;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00618$
00611$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:788: u16 defenseLineY = 130;
	ld	-11 (ix), #0x82
	ld	-10 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:792: for(u8 k=0; k<14; k++) {
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, #0x00
	ld	-4 (ix), #0x00
00713$:
	ld	a, -4 (ix)
	sub	a, #0x0e
	jr	NC, 00602$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:793: if (k==playerId) continue;
	ld	a, -3 (ix)
	sub	a, -4 (ix)
	jr	Z, 00601$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:794: if (g_Players[k].TeamId == playerTeamId && g_Players[k].Role != PLAYER_ROLE_GOALKEEPER) {
	push	de
	ld	e, -4 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	ld	a, #<(_g_Players)
	add	a, l
	ld	-9 (ix), a
	ld	a, #>(_g_Players)
	adc	a, h
	ld	-8 (ix), a
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	d, (hl)
	ld	a, -36 (ix)
	sub	a, d
	jr	NZ, 00601$
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x000d
	add	hl, bc
	pop	bc
	ld	a, (hl)
	or	a, a
	jr	Z, 00601$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:795: if (g_Players[k].Y > g_Players[playerId].Y) teammatesAhead++;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, d
	jr	NC, 00601$
	inc	e
00601$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:792: for(u8 k=0; k<14; k++) {
	inc	-4 (ix)
	jp	00713$
00602$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:730: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	bc, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:736: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Ball.Y + 15;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:799: if (teammatesAhead < 2 || g_Ball.Y < 200) {
	ld	a, e
	sub	a, #0x02
	jr	C, 00607$
	ld	a, c
	sub	a, #0xc8
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00608$
00607$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:801: if (g_Ball.Y < defenseLineY + 40) {
	ld	a, c
	sub	a, #0xaa
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00608$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:802: defenseLineY = g_Ball.Y - 15;
	ld	a, c
	add	a, #0xf1
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	-11 (ix), c
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:803: if (defenseLineY < FIELD_BOUND_Y_TOP + 10) defenseLineY = FIELD_BOUND_Y_TOP + 10;
	ld	a, -11 (ix)
	sub	a, #0x3c
	ld	a, -10 (ix)
	sbc	a, #0x00
	jr	NC, 00608$
	ld	-11 (ix), #0x3c
	ld	-10 (ix), #0
00608$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:806: g_Players[playerId].TargetY = defenseLineY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
00618$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:810: if (g_Players[playerId].Role % 2 != 0) {
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	and	a, #0x01
	ld	c, a
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:444: g_Players[playerId].TargetX = finalTargetX;
	ld	a, -38 (ix)
	add	a, #0x10
	ld	-9 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:735: g_Players[playerId].TargetX = g_Ball.X;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:813: u16 intendedX = g_Ball.X - 40;
	ld	hl, (#_g_Ball + 2)
	ld	-7 (ix), l
	ld	-6 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:810: if (g_Players[playerId].Role % 2 != 0) {
	ld	a, b
	or	a, c
	jr	Z, 00626$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:813: u16 intendedX = g_Ball.X - 40;
	ld	a, -7 (ix)
	add	a, #0xd8
	ld	c, a
	ld	a, -6 (ix)
	adc	a, #0xff
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:814: if (g_Ball.X > FIELD_POS_X_CENTER && intendedX > FIELD_POS_X_CENTER + 20) {
	ld	a, #0x78
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	NC, 00620$
	ld	a, #0x8c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00620$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:815: intendedX = FIELD_POS_X_CENTER + 20; // Stay central
	ld	bc, #0x008c
00620$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:817: g_Players[playerId].TargetX = intendedX; 
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00627$
00626$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:822: u16 intendedX = g_Ball.X + 40;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x0028
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:823: if (g_Ball.X < FIELD_POS_X_CENTER && intendedX < FIELD_POS_X_CENTER - 20) {
	ld	a, -7 (ix)
	sub	a, #0x78
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	NC, 00623$
	ld	a, -5 (ix)
	sub	a, #0x64
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00623$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:824: intendedX = FIELD_POS_X_CENTER - 20; // Stay central
	ld	-5 (ix), #0x64
	ld	-4 (ix), #0
00623$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:826: g_Players[playerId].TargetX = intendedX; 
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
00627$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:829: if (g_Players[playerId].TargetX < FIELD_BOUND_X_LEFT + 20) g_Players[playerId].TargetX = FIELD_BOUND_X_LEFT + 20;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x1e
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00629$
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x1e
	inc	hl
	ld	(hl), #0x00
00629$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:830: if (g_Players[playerId].TargetX > FIELD_BOUND_X_RIGHT - 20) g_Players[playerId].TargetX = FIELD_BOUND_X_RIGHT - 20;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xd8
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00634$
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0xd8
	inc	hl
	ld	(hl), #0x00
00634$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:834: if (stats->Aggression >= 15 && !amIEffectiveChaser) {
	ld	c, -35 (ix)
	ld	b, -34 (ix)
	inc	bc
	ld	a, (bc)
	sub	a, #0x0f
	jp	C, 01050$
	ld	a, -1 (ix)
	or	a, a
	jp	NZ, 01050$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:835: u8 bestMark = NO_VALUE;
	ld	-15 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:836: u16 minD = 120; // Look for opponents within this range
	ld	-14 (ix), #0x78
	ld	-13 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:838: for(u8 m=0; m<14; m++) {
	ld	a, -38 (ix)
	ld	-12 (ix), a
	ld	a, -37 (ix)
	ld	-11 (ix), a
	ld	-1 (ix), #0x00
00715$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00655$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:839: if (g_Players[m].TeamId == playerTeamId) continue;
	ld	c, -1 (ix)
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
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	bc,#9
	add	hl,bc
	ld	a,-36 (ix)
	sub	a,(hl)
	jp	Z,00654$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:840: if (m == g_Ball.PossessionPlayerId) continue; // Don't mark ball carrier (chaser handles it)
	ld	hl, #(_g_Ball + 6)
	ld	a,-1 (ix)
	sub	a,(hl)
	jp	Z,00654$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:841: if (g_Players[m].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00654$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:844: bool inBox = false;
	ld	-8 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:846: if (g_Players[m].Y > PENALTY_BOX_Y_BOTTOM) inBox = true;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:845: if (playerTeamId == TEAM_1) { // Defending Bottom
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00648$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:846: if (g_Players[m].Y > PENALTY_BOX_Y_BOTTOM) inBox = true;
	ld	a, #0x5e
	cp	a, -5 (ix)
	ld	a, #0x01
	sbc	a, -4 (ix)
	jr	NC, 00649$
	ld	-8 (ix), #0x01
	jp	00649$
00648$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:848: if (g_Players[m].Y < PENALTY_BOX_Y_TOP) inBox = true;
	ld	a, -5 (ix)
	sub	a, #0x82
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00649$
	ld	-8 (ix), #0x01
00649$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:850: if (inBox) continue; 
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00654$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:852: i16 mdx = (i16)g_Players[m].X - (i16)g_Players[playerId].X;
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:853: i16 mdy = (i16)g_Players[m].Y - (i16)g_Players[playerId].Y;
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:854: u16 dist = (u16)(Math_Abs32(mdx) + Math_Abs32(mdy));
	ld	a, d
	rlca
	sbc	hl, hl
	push	bc
	call	_Math_Abs32
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	-5 (ix), l
	ld	-4 (ix), h
	pop	bc
	ld	a, b
	rlca
	sbc	hl, hl
	ld	e, c
	ld	d, b
	call	_Math_Abs32
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ex	de, hl
	add	hl, bc
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:856: if (dist < minD) {
	ld	a, e
	sub	a, -14 (ix)
	ld	a, d
	sbc	a, -13 (ix)
	jr	NC, 00654$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:857: minD = dist;
	ld	-14 (ix), e
	ld	-13 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:858: bestMark = m;
	ld	a, -1 (ix)
	ld	-15 (ix), a
00654$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:838: for(u8 m=0; m<14; m++) {
	inc	-1 (ix)
	jp	00715$
00655$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:862: if (bestMark != NO_VALUE) {
	ld	a, -15 (ix)
	inc	a
	jr	Z, 00668$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:864: g_Players[playerId].TargetX = g_Players[bestMark].X;
	ld	a, -38 (ix)
	add	a, #0x10
	ld	-5 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	c, -15 (ix)
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
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:443: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:866: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Players[bestMark].Y + 12;
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00657$
	ld	hl, #0x000c
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	01050$
00657$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:867: else g_Players[playerId].TargetY = g_Players[bestMark].Y - 12;
	ld	a, e
	add	a, #0xf4
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	01050$
00668$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:870: bool deepDefense = false;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:871: if (playerTeamId == TEAM_1 && g_Ball.Y > PENALTY_BOX_Y_BOTTOM) deepDefense = true;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00660$
	ld	hl, (#_g_Ball + 0)
	ld	a, #0x5e
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00660$
	ld	c, #0x01
00660$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:872: if (playerTeamId == TEAM_2 && g_Ball.Y < PENALTY_BOX_Y_TOP) deepDefense = true;
	ld	a, -36 (ix)
	sub	a, #0x02
	jr	NZ, 00663$
	ld	hl, (#_g_Ball + 0)
	ld	de, #0x0082
	cp	a, a
	sbc	hl, de
	jr	NC, 00663$
	ld	c, #0x01
00663$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:874: if (deepDefense) {
	ld	a, c
	or	a, a
	jr	Z, 01050$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:875: g_Players[playerId].TargetX = g_Ball.X;
	ld	a, -38 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 2)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:876: g_Players[playerId].TargetY = g_Ball.Y;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 0)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:882: for(u8 i=0; i<14; i++) {
01050$:
	ld	-1 (ix), #0x00
00717$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00691$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:883: if (i == playerId) continue;
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jp	Z,00690$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:884: if (g_Players[i].TeamId != playerTeamId) continue;
	ld	c, -1 (ix)
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
	ld	c, e
	ld	b, d
	ld	hl, #9
	add	hl, bc
	ld	a,-36 (ix)
	sub	a,(hl)
	jp	NZ,00690$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:885: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, e
	ld	b, d
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00690$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:886: i16 dx = (i16)g_Players[playerId].TargetX - (i16)g_Players[i].X;
	ld	a, -38 (ix)
	add	a, #0x10
	ld	-13 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:887: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	a, -38 (ix)
	add	a, #0x0e
	ld	-11 (ix), a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	inc	hl
	ld	a, (hl)
	dec	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	-7 (ix), l
	ld	-6 (ix), a
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -7 (ix)
	sub	a, e
	ld	e, a
	ld	a, -6 (ix)
	sbc	a, d
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:888: if (dx > -60 && dx < 60 && dy > -60 && dy < 60) {
	ld	a, #0xc4
	cp	a, c
	ld	a, #0xff
	sbc	a, b
	jp	PO, 02413$
	xor	a, #0x80
02413$:
	jp	P, 00690$
	ld	a, c
	sub	a, #0x3c
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00690$
	ld	a, #0xc4
	cp	a, e
	ld	a, #0xff
	sbc	a, d
	jp	PO, 02414$
	xor	a, #0x80
02414$:
	jp	P, 00690$
	ld	-9 (ix), e
	ld	-8 (ix), d
	ld	a, -9 (ix)
	sub	a, #0x3c
	ld	a, -8 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00690$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:889: if (dx >= 0) g_Players[playerId].TargetX += 12; else g_Players[playerId].TargetX -= 12;
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	bit	7, b
	jr	NZ, 00680$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000c
	add	hl, de
	ex	de, hl
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00681$
00680$:
	ld	a, -7 (ix)
	add	a, #0xf4
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, #0xff
	ld	-4 (ix), a
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00681$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:887: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:890: if (dy >= 0) g_Players[playerId].TargetY += 12; else g_Players[playerId].TargetY -= 12;
	bit	7, -8 (ix)
	jr	NZ, 00683$
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00690$
00683$:
	ld	a, c
	add	a, #0xf4
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00690$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:882: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00717$
00691$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:895: if (g_Players[playerId].TargetY < FIELD_BOUND_Y_TOP) g_Players[playerId].TargetY = FIELD_BOUND_Y_TOP;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, c
	sub	a, #0x32
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00693$
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
	dec	hl
00693$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:896: if (g_Players[playerId].TargetY > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].TargetY = FIELD_BOUND_Y_BOTTOM;
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, #0xae
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00695$
	ld	(hl), #0xae
	inc	hl
	ld	(hl), #0x01
00695$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:897: if (g_Players[playerId].TargetX < FIELD_BOUND_X_LEFT) g_Players[playerId].TargetX = FIELD_BOUND_X_LEFT;
	ld	a, -38 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -37 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x0a
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00697$
	ld	l, c
	ld	h, b
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
00697$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:898: if (g_Players[playerId].TargetX > FIELD_BOUND_X_RIGHT) g_Players[playerId].TargetX = FIELD_BOUND_X_RIGHT;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0xec
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00718$
	ld	a, #0xec
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
00718$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:901: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:905: void PenaltyShots() {
;	---------------------------------
; Function PenaltyShots
; ---------------------------------
_PenaltyShots::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-57
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:906: g_MatchStatus = MATCH_PENALTY_SETUP;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x12
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:907: g_FieldScrollingActionInProgress = NO_VALUE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:911: while (g_FieldCurrentYPosition != centerScroll) {
00104$:
	ld	hl, (_g_FieldCurrentYPosition)
	ld	a, l
	sub	a, #0x89
	or	a, h
	jr	Z, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:912: if (g_FieldCurrentYPosition < centerScroll) g_FieldCurrentYPosition++;
	ld	de, #0x0089
	cp	a, a
	sbc	hl, de
	jr	NC, 00102$
	ld	hl, (_g_FieldCurrentYPosition)
	inc	hl
	ld	(_g_FieldCurrentYPosition), hl
	jp	00103$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:913: else g_FieldCurrentYPosition--;
	ld	hl, (_g_FieldCurrentYPosition)
	dec	hl
	ld	(_g_FieldCurrentYPosition), hl
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:914: V9_SetScrollingBY((u16)g_FieldCurrentYPosition);
	ld	hl, (_g_FieldCurrentYPosition)
	call	_V9_SetScrollingBY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:915: V9990_WaitSynch();
	call	_V9990_WaitSynch
	jp	00104$
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:919: Trampoline_VOID(4,ShowHeaderInfo);
	ld	de, #_ShowHeaderInfo
	ld	a, #0x04
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:921: V9990_PrintLayerAStringAtPos(8, 10, "PENALTY SHOOTOUT");
	ld	hl, #___str_0
	push	hl
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:922: for(u8 w=0; w<120; w++) V9990_WaitSynch();
	ld	c, #0x00
00350$:
	ld	a, c
	sub	a, #0x78
	jr	NC, 00107$
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	inc	c
	jp	00350$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:923: V9990_ClearTextFromLayerA(8, 10, 16);
	ld	a, #0x10
	push	af
	inc	sp
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:926: for(u8 i=0; i<15; i++) {
	ld	-1 (ix), #0x00
00353$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00422$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:927: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	c, -1 (ix)
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
	ld	hl, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:930: g_Players[i].TargetY = 220 + (i/4)*15; 
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:931: g_Players[i].TargetX = 80 + (i%4)*25;
	ld	hl, #0x0010
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:929: if (i < 7) { // Team 2 (Top)
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:930: g_Players[i].TargetY = 220 + (i/4)*15; 
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	bit	7, -2 (ix)
	jr	Z, 00372$
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	inc	de
	inc	de
	inc	de
00372$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #0x00dc
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:931: g_Players[i].TargetX = 80 + (i%4)*25;
	ld	a, -3 (ix)
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00354$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:932: } else if (i < 14) { // Team 1 (Bottom)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NC, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:933: u8 k = i - 7;
	ld	a, -1 (ix)
	add	a, #0xf9
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:934: g_Players[i].TargetY = 260 + (k/4)*15;
	ld	e, a
	ld	d, #0x00
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	bit	7, d
	jr	Z, 00373$
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
00373$:
	sra	h
	rr	l
	sra	h
	rr	l
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	pop	de
	ld	a, l
	add	a, #0x04
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #0x01
	ld	-3 (ix), l
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	(bc), a
	inc	bc
	ld	a, -2 (ix)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:935: g_Players[i].TargetX = 80 + (k%4)*25;
	ld	a, e
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00354$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:937: g_Players[i].TargetX = 128;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x80
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:938: g_Players[i].TargetY = 243; // Midfield
	ld	a, #0xf3
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
00354$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:926: for(u8 i=0; i<15; i++) {
	inc	-1 (ix)
	jp	00353$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:943: while(true) {
00422$:
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:944: bool allArrived = true;
	ld	-8 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:945: for(u8 i=0; i<15; i++) {
	ld	-1 (ix), #0x00
00356$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:946: bool arrived = true;
	ld	-4 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:947: if (g_Players[i].X < g_Players[i].TargetX) { g_Players[i].X++; arrived=false; g_Players[i].Direction = DIRECTION_RIGHT; }
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:950: if (g_Players[i].Y < g_Players[i].TargetY) { g_Players[i].Y++; arrived=false; g_Players[i].Direction = DIRECTION_DOWN; }
	ld	de, #_g_Players
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:947: if (g_Players[i].X < g_Players[i].TargetX) { g_Players[i].X++; arrived=false; g_Players[i].Direction = DIRECTION_RIGHT; }
	ld	a, -7 (ix)
	add	a, #0x02
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #16
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00118$
	inc	bc
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-4 (ix), #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x03
	jp	00119$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:948: else if (g_Players[i].X > g_Players[i].TargetX) { g_Players[i].X--; arrived=false; g_Players[i].Direction = DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00119$
	dec	bc
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-4 (ix), #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x07
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:950: if (g_Players[i].Y < g_Players[i].TargetY) { g_Players[i].Y++; arrived=false; g_Players[i].Direction = DIRECTION_DOWN; }
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #14
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00123$
	inc	bc
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-4 (ix), #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x05
	jp	00124$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:951: else if (g_Players[i].Y > g_Players[i].TargetY) { g_Players[i].Y--; arrived=false; g_Players[i].Direction = DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00124$
	dec	bc
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-4 (ix), #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x01
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:955: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	a, -7 (ix)
	add	a, #0x12
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:953: if (!arrived) {
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:954: allArrived = false;
	ld	-8 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:955: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00357$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:957: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:958: if (g_Players[i].Y < 243) g_Players[i].Direction = DIRECTION_DOWN;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:950: if (g_Players[i].Y < g_Players[i].TargetY) { g_Players[i].Y++; arrived=false; g_Players[i].Direction = DIRECTION_DOWN; }
	ld	a, -7 (ix)
	add	a, #0x0a
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:958: if (g_Players[i].Y < 243) g_Players[i].Direction = DIRECTION_DOWN;
	ld	a, -3 (ix)
	sub	a, #0xf3
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00126$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x05
	jp	00127$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:959: else g_Players[i].Direction = DIRECTION_UP;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x01
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:960: g_Players[i].PatternId = (g_Players[i].Direction == DIRECTION_UP) ? PLAYER_POSE_BACK : PLAYER_POSE_FRONT;
	ld	a, -7 (ix)
	add	a, #0x08
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	dec	a
	jr	NZ, 00374$
	ld	-5 (ix), #0x11
	ld	-4 (ix), #0
	jp	00375$
00374$:
	ld	-5 (ix), #0x10
	ld	-4 (ix), #0
00375$:
	ld	a, -5 (ix)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
00357$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:945: for(u8 i=0; i<15; i++) {
	inc	-1 (ix)
	jp	00356$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:963: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:964: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:965: if (allArrived) break;
	ld	a, -8 (ix)
	or	a, a
	jp	Z, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:968: g_MatchStatus = MATCH_PENALTY_SHOOTOUT;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:979: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:980: g_Ball.KickMoveState = 0; // Ensure no dribble offset interferes with Y
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:982: while(true) {
	ld	-9 (ix), #0x04
	ld	-8 (ix), #0x00
	ld	-7 (ix), #0x00
	ld	-6 (ix), #0x04
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
00343$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:983: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:986: if (turn < 10) {
	ld	a, -3 (ix)
	sub	a, #0x0a
	jp	NC, 00148$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:987: u8 rem1 = 5 - shots1;
	ld	a, -4 (ix)
	ld	-1 (ix), a
	ld	a, #0x05
	sub	a, -1 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:988: u8 rem2 = 5 - shots2;
	ld	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, #0x05
	sub	a, -2 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:989: if (goals1 > goals2 + rem2) { TeamVictory(TEAM_1); return; }
	ld	a, -8 (ix)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	a, -2 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	a, -15 (ix)
	add	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, -12 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	a, -11 (ix)
	sub	a, -13 (ix)
	ld	a, -10 (ix)
	sbc	a, -12 (ix)
	jp	PO, 01069$
	xor	a, #0x80
01069$:
	jp	P, 00138$
	ld	a, #0x01
	call	_TeamVictory
	jp	00370$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:990: if (goals2 > goals1 + rem1) { TeamVictory(TEAM_2); return; }
	ld	a, -1 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -13 (ix)
	add	a, -11 (ix)
	ld	-2 (ix), a
	ld	a, -12 (ix)
	adc	a, -10 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -15 (ix)
	ld	a, -1 (ix)
	sbc	a, -14 (ix)
	jp	PO, 01070$
	xor	a, #0x80
01070$:
	jp	P, 00149$
	ld	a, #0x02
	call	_TeamVictory
	jp	00370$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:993: if (shots1 == shots2) {
	ld	a, -5 (ix)
	sub	a, -4 (ix)
	jr	NZ, 00149$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:994: if (goals1 > goals2) { TeamVictory(TEAM_1); return; }
	ld	a, -8 (ix)
	sub	a, -7 (ix)
	jr	NC, 00142$
	ld	a, #0x01
	call	_TeamVictory
	jp	00370$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:995: if (goals2 > goals1) { TeamVictory(TEAM_2); return; }
	ld	a, -7 (ix)
	sub	a, -8 (ix)
	jr	NC, 00149$
	ld	a, #0x02
	call	_TeamVictory
	jp	00370$
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1000: u8 kickingTeam = (turn % 2 == 0) ? TEAM_1 : TEAM_2;
	ld	c, -3 (ix)
	ld	b, #0x00
	bit	0, c
	jr	NZ, 00376$
	ld	de, #0x0001
	jp	00377$
00376$:
	ld	de, #0x0002
00377$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1001: u8 gkTeam = (kickingTeam == TEAM_1) ? TEAM_2 : TEAM_1;
	dec	e
	ld	a, #0x01
	jr	Z, 01076$
	xor	a, a
01076$:
	ld	-53 (ix), a
	or	a, a
	jr	Z, 00378$
	ld	-2 (ix), #0x02
	ld	-1 (ix), #0
	jp	00379$
00378$:
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0
00379$:
	ld	a, -2 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1007: u8 k = 8 + ((turn/2) % 6); // Team 1 players 8-13
	ld	a, b
	rlca
	and	a,#0x01
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1006: if (kickingTeam == TEAM_1) {
	ld	a, -53 (ix)
	or	a, a
	jr	Z, 00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1007: u8 k = 8 + ((turn/2) % 6); // Team 1 players 8-13
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	or	a, a
	jr	Z, 00380$
	inc	bc
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
00380$:
	ld	l, e
	sra	h
	rr	l
	ld	de, #0x0006
	call	__modsint
	ld	a, e
	add	a, #0x08
	ld	-52 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1009: gkId = 0; // Team 2 GK
	ld	-51 (ix), #0x00
	jp	00152$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1011: u8 k = 1 + ((turn/2) % 6); // Team 2 players 1-6
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	or	a, a
	jr	Z, 00381$
	inc	bc
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
00381$:
	ld	l, e
	sra	h
	rr	l
	ld	de, #0x0006
	call	__modsint
	ld	a, e
	inc	a
	ld	-52 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1013: gkId = 7; // Team 1 GK
	ld	-51 (ix), #0x07
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1021: g_Players[kickerId].TargetX = kickSpotX;
	ld	c, -52 (ix)
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
	ld	-50 (ix), l
	ld	-49 (ix), h
	ld	a, -50 (ix)
	add	a, #0x10
	ld	-48 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-47 (ix), a
	ld	l, -48 (ix)
	ld	h, -47 (ix)
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1022: g_Players[kickerId].TargetY = kickSpotY + 6; // Player stands behind ball
	ld	a, -50 (ix)
	add	a, #0x0e
	ld	-46 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-45 (ix), a
	ld	l, -46 (ix)
	ld	h, -45 (ix)
	ld	(hl), #0x67
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1023: g_Players[gkId].TargetX = kickSpotX;
	ld	c, -51 (ix)
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
	ld	-44 (ix), l
	ld	-43 (ix), h
	ld	a, -44 (ix)
	add	a, #0x10
	ld	-42 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-41 (ix), a
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1024: g_Players[gkId].TargetY = gkSpotY;
	ld	a, -44 (ix)
	add	a, #0x0e
	ld	-40 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-39 (ix), a
	ld	l, -40 (ix)
	ld	h, -39 (ix)
	ld	(hl), #0x36
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1027: g_Players[REFEREE].TargetX = 50;
	ld	hl, #0x0032
	ld	((_g_Players + 310)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1028: g_Players[REFEREE].TargetY = kickSpotY; 
	ld	l, #0x61
	ld	((_g_Players + 308)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1030: g_Players[kickerId].Status = PLAYER_STATUS_NONE;
	ld	a, -50 (ix)
	add	a, #0x12
	ld	-38 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-37 (ix), a
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1031: g_Players[gkId].Status = PLAYER_STATUS_NONE;
	ld	a, -44 (ix)
	add	a, #0x12
	ld	-36 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-35 (ix), a
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1032: g_Players[REFEREE].Status = PLAYER_STATUS_NONE;
	ld	hl, #0x0000
	ld	((_g_Players + 312)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1035: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1036: g_Ball.X = kickSpotX;
	ld	hl, #0x0078
	ld	((_g_Ball + 2)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1037: g_Ball.Y = kickSpotY; // Ball exactly on spot
	ld	l, #0x61
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1038: g_Ball.KickMoveState = 0;
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1041: while(true) {
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1042: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1045: bool kDone = true;
	ld	-13 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1046: if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	l, -46 (ix)
	ld	h, -45 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	ld	a, -1 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00156$
	ld	a, -12 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-13 (ix), #0x00
	ld	a, -50 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x01
	jp	00157$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1047: else if (g_Players[kickerId].Y < g_Players[kickerId].TargetY) { g_Players[kickerId].Y++; kDone=false; g_Players[kickerId].Direction=DIRECTION_DOWN; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00157$
	ld	a, -12 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-13 (ix), #0x00
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x05
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1049: if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; g_Players[kickerId].Direction=DIRECTION_LEFT; }
	ld	a, -50 (ix)
	add	a, #0x02
	ld	-34 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-33 (ix), a
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	l, -48 (ix)
	ld	h, -47 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	ld	a, -1 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00161$
	ld	a, -12 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-13 (ix), #0x00
	ld	a, -50 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x07
	jp	00162$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1050: else if (g_Players[kickerId].X < g_Players[kickerId].TargetX) { g_Players[kickerId].X++; kDone=false; g_Players[kickerId].Direction=DIRECTION_RIGHT; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00162$
	ld	a, -12 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-13 (ix), #0x00
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x03
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1053: bool gDone = true;
	ld	-12 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1054: if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	l, -40 (ix)
	ld	h, -39 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -15 (ix)
	ld	a, -1 (ix)
	sbc	a, -14 (ix)
	jr	NC, 00166$
	ld	a, -15 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -14 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-12 (ix), #0x00
	ld	a, -44 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x01
	jp	00167$
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1055: else if (g_Players[gkId].Y < g_Players[gkId].TargetY) { g_Players[gkId].Y++; gDone=false; g_Players[gkId].Direction=DIRECTION_DOWN; }
	ld	a, -15 (ix)
	sub	a, -2 (ix)
	ld	a, -14 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00167$
	ld	a, -15 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-12 (ix), #0x00
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x05
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1057: if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; g_Players[gkId].Direction=DIRECTION_LEFT; }
	ld	a, -44 (ix)
	add	a, #0x02
	ld	-32 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-31 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -15 (ix)
	ld	a, -1 (ix)
	sbc	a, -14 (ix)
	jr	NC, 00171$
	ld	a, -15 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -14 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-12 (ix), #0x00
	ld	a, -44 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x07
	jp	00172$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1058: else if (g_Players[gkId].X < g_Players[gkId].TargetX) { g_Players[gkId].X++; gDone=false; g_Players[gkId].Direction=DIRECTION_RIGHT; }
	ld	a, -15 (ix)
	sub	a, -2 (ix)
	ld	a, -14 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00172$
	ld	a, -15 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-12 (ix), #0x00
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x03
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1061: bool rDone = true;
	ld	-11 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1062: if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
	ld	hl, #(_g_Players + 294)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	hl, #(_g_Players + 308)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -15 (ix)
	ld	a, -1 (ix)
	sbc	a, -14 (ix)
	jr	NC, 00176$
	ld	a, -15 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -14 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	hl, #(_g_Players + 294)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-11 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x01
	jp	00177$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1063: else if (g_Players[REFEREE].Y < g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_DOWN; }
	ld	a, -15 (ix)
	sub	a, -2 (ix)
	ld	a, -14 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00177$
	ld	a, -15 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, #(_g_Players + 294)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-11 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x05
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1065: if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }
	ld	hl, #(_g_Players + 296)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	hl, #(_g_Players + 310)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -15 (ix)
	ld	a, -1 (ix)
	sbc	a, -14 (ix)
	jr	NC, 00181$
	ld	a, -15 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -14 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	hl, #(_g_Players + 296)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-11 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x07
	jp	00182$
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1066: else if (g_Players[REFEREE].X < g_Players[REFEREE].TargetX) { g_Players[REFEREE].X++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_RIGHT; }
	ld	a, -15 (ix)
	sub	a, -2 (ix)
	ld	a, -14 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00182$
	ld	a, -15 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, #(_g_Players + 296)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-11 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x03
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1069: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, (_g_FrameCounter+0)
	and	a,#0x07
	jr	NZ, 00382$
	ld	-2 (ix), a
	ld	-1 (ix), a
	jp	00383$
00382$:
	ld	-2 (ix), #0x04
	ld	-1 (ix), #0
00383$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1070: g_Players[kickerId].Status = animStatus;
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1071: g_Players[gkId].Status = animStatus;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1072: g_Players[REFEREE].Status = animStatus;
	ld	hl, #(_g_Players + 312)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1077: if (g_Players[kickerId].Y < (u16)g_FieldCurrentYPosition) {
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, (_g_FieldCurrentYPosition)
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	NC, 00184$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1078: g_FieldCurrentYPosition = 0;
	ld	hl, #0x0000
	ld	(_g_FieldCurrentYPosition), hl
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1081: V9_SetScrollingBY((u16)g_FieldCurrentYPosition);
	ld	hl, (_g_FieldCurrentYPosition)
	call	_V9_SetScrollingBY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1082: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1084: if (kDone && gDone && rDone && g_FieldCurrentYPosition == 0) {
	ld	a, -13 (ix)
	or	a, a
	jp	Z, 00191$
	ld	a, -12 (ix)
	or	a, a
	jp	Z, 00191$
	ld	a, -11 (ix)
	or	a, a
	jp	Z, 00191$
	ld	a, (_g_FieldCurrentYPosition+1)
	ld	hl, #_g_FieldCurrentYPosition
	or	a, (hl)
	jp	NZ, 00191$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1085: g_ActiveFieldZone = FIELD_NORTH_ZONE;
	ld	hl, #_g_ActiveFieldZone
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1091: g_Players[kickerId].Direction = DIRECTION_UP;
	ld	a, -50 (ix)
	add	a, #0x0a
	ld	-30 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-29 (ix), a
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1092: g_Players[kickerId].PatternId = PLAYER_POSE_BACK;
	ld	a, -50 (ix)
	add	a, #0x08
	ld	-28 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-27 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), #0x11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1093: g_Players[gkId].Direction = DIRECTION_DOWN;
	ld	a, -44 (ix)
	add	a, #0x0a
	ld	-26 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-25 (ix), a
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1094: g_Players[gkId].PatternId = PLAYER_POSE_FRONT;
	ld	a, -44 (ix)
	add	a, #0x08
	ld	-24 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-23 (ix), a
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1095: g_Players[REFEREE].PatternId = PLAYER_POSE_RIGHT;
	ld	hl, #(_g_Players + 302)
	ld	(hl), #0x9d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1097: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1098: g_Ball.X = kickSpotX;
	ld	hl, #0x0078
	ld	((_g_Ball + 2)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1099: g_Ball.Y = kickSpotY;
	ld	l, #0x61
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1101: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1102: V9990_PrintLayerAStringAtPos(10,22, g_History1);
	ld	hl, #_g_History1
	push	hl
	ld	l, #0x16
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1103: V9990_PrintLayerAStringAtPos(10,23, g_History2);
	ld	hl, #_g_History2
	push	hl
	ld	l, #0x17
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1106: for(u8 w=0; w<60; w++) V9990_WaitSynch();
	ld	c, #0x00
00359$:
	ld	a, c
	sub	a, #0x3c
	jr	NC, 00193$
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	inc	c
	jp	00359$
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1109: u16 targetX = FIELD_POS_X_CENTER;
	ld	-22 (ix), #0x78
	ld	-21 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1110: u8 shotDirIdx = 1; // 0=Left, 1=Center, 2=Right
	ld	-1 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1111: bool shotTaken = false;
	ld	-19 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1112: u8 playerGkChoice = 1; // 0=Left, 1=Center, 2=Right
	ld	-2 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1114: if (kickingTeam == TEAM_1) {
	ld	a, -53 (ix)
	or	a, a
	jp	Z, 00226$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1115: g_ShotCursorX = FIELD_POS_X_CENTER;
	ld	hl, #0x0078
	ld	(_g_ShotCursorX), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1116: i8 aimPos = 1;
	ld	-15 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1117: i8 aimDir = 1;
	ld	-18 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1118: u16 moveTimer = 0;
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1121: while(!shotTaken) {
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
00210$:
	ld	a, -19 (ix)
	or	a, a
	jp	NZ, 00227$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1122: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1125: moveTimer++;
	inc	-14 (ix)
	jr	NZ, 01079$
	inc	-13 (ix)
01079$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1126: if (moveTimer > 8) { // Speed of cursor
	ld	a, -14 (ix)
	ld	-17 (ix), a
	ld	a, -13 (ix)
	ld	-16 (ix), a
	ld	a, #0x08
	cp	a, -17 (ix)
	ld	a, #0x00
	sbc	a, -16 (ix)
	jr	NC, 00200$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1127: moveTimer = 0;
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1128: aimPos += aimDir;
	ld	a, -18 (ix)
	add	a, -15 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1129: if (aimPos >= 2) {
	ld	-15 (ix), a
	xor	a, #0x80
	sub	a, #0x82
	jr	C, 00197$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1130: aimPos = 2;
	ld	-15 (ix), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1131: aimDir = -1;
	ld	-18 (ix), #0xff
	jp	00200$
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1132: } else if (aimPos <= 0) {
	xor	a, a
	sub	a, -15 (ix)
	jp	PO, 01080$
	xor	a, #0x80
01080$:
	jp	M, 00200$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1133: aimPos = 0;
	ld	-15 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1134: aimDir = 1;
	ld	-18 (ix), #0x01
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1138: if (aimPos == 0) g_ShotCursorX = GOAL_X_MIN;
	ld	a, -15 (ix)
	or	a, a
	jr	NZ, 00205$
	ld	hl, #0x0060
	ld	(_g_ShotCursorX), hl
	jp	00206$
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1139: else if (aimPos == 1) g_ShotCursorX = FIELD_POS_X_CENTER;
	ld	a, -15 (ix)
	dec	a
	jr	NZ, 00202$
	ld	hl, #0x0078
	ld	(_g_ShotCursorX), hl
	jp	00206$
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1140: else g_ShotCursorX = GOAL_X_MAX;
	ld	hl, #0x0090
	ld	(_g_ShotCursorX), hl
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1143: attr.Y = FIELD_BOUND_Y_TOP - 20 - g_FieldCurrentYPosition;
	ld	a, (_g_FieldCurrentYPosition+0)
	ld	c, a
	ld	a, #0x1e
	sub	a, c
	ld	-57 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1144: attr.X = g_ShotCursorX;
	ld	hl, #2
	add	hl, sp
	ld	a, (_g_ShotCursorX+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_ShotCursorX+1)
	and	a, #0x03
	ld	c,a
	ld	a, (hl)
	and	a, #0xfc
	or	a, c
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1145: attr.Pattern = SPRITE_DOWN_ARROW;
	ld	-56 (ix), #0x79
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1146: attr.P = 1; attr.SC = 0; attr.D = 0;
	ld	hl, #3
	add	hl, sp
	set	5, (hl)
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
	ld	hl, #3
	add	hl, sp
	res	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1147: V9_SetSpriteP1(16, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe40
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1149: timeoutTimer++;
	inc	-12 (ix)
	jr	NZ, 01083$
	inc	-11 (ix)
01083$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1150: bool joyTrigged = Trampoline_U8(2,IsJoystickTriggerPressed);
	ld	de, #_IsJoystickTriggerPressed
	ld	a, #0x02
	call	_Trampoline_U8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1151: if (joyTrigged || timeoutTimer >= 300) {
	or	a, a
	jr	NZ, 00207$
	ld	a, -12 (ix)
	ld	b, -11 (ix)
	sub	a, #0x2c
	ld	a, b
	sbc	a, #0x01
	jp	C, 00210$
00207$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1152: targetX = g_ShotCursorX;
	ld	hl, (_g_ShotCursorX)
	ld	-22 (ix), l
	ld	-21 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1153: shotDirIdx = (u8)aimPos;
	ld	a, -15 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1154: shotTaken = true;
	ld	-19 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1155: attr.D = 1;
	ld	hl, #3
	add	hl, sp
	set	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1156: V9_SetSpriteP1(16, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe40
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1156: V9_SetSpriteP1(16, &attr);
	jp	00210$
00226$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1161: shotDirIdx = g_FrameCounter % 3;
	ld	a, (_g_FrameCounter+0)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
	ld	de, #0x0003
	ld	l, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-12 (ix), e
	ld	-11 (ix), d
	ld	a, -12 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1162: if (shotDirIdx == 0) targetX = GOAL_X_MIN;
	ld	-1 (ix), a
	or	a, a
	jr	NZ, 00217$
	ld	-22 (ix), #0x60
	ld	-21 (ix), #0
	jp	00470$
00217$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1163: else if (shotDirIdx == 1) targetX = FIELD_POS_X_CENTER;
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00214$
	ld	-22 (ix), #0x78
	ld	-21 (ix), #0
	jp	00470$
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1164: else targetX = GOAL_X_MAX;
	ld	-22 (ix), #0x90
	ld	-21 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1167: for(u8 w=0; w<120; w++) {
00470$:
	ld	-11 (ix), #0x00
00362$:
	ld	a, -11 (ix)
	sub	a, #0x78
	jr	NC, 00227$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1168: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1169: u8 joy = Trampoline_U8(2,GetJoystickDirection);
	ld	de, #_GetJoystickDirection
	ld	a, #0x02
	call	_Trampoline_U8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1170: if (joy == DIRECTION_LEFT) playerGkChoice = 0;
	cp	a, #0x07
	jr	NZ, 00222$
	ld	-2 (ix), #0x00
	jp	00363$
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1171: else if (joy == DIRECTION_RIGHT) playerGkChoice = 2;
	sub	a, #0x03
	jr	NZ, 00363$
	ld	-2 (ix), #0x02
00363$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1167: for(u8 w=0; w<120; w++) {
	inc	-11 (ix)
	jp	00362$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1174: shotTaken = true;
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1179: bool goal = false;
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1180: bool saved = false;
	ld	-19 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1184: if (kickingTeam == TEAM_1) {
	ld	a, -53 (ix)
	or	a, a
	jp	Z, 00238$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1186: const TeamStats* stats = GetTeamStats(gkTeam);
	ld	a, -10 (ix)
	call	_GetTeamStats
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1187: u8 skill = stats->GkSkill; 
	ld	-11 (ix), e
	ld	-10 (ix), d
	ex	de,hl
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1188: u8 rnd = g_FrameCounter % 100;
	ld	a, (_g_FrameCounter+0)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	de, #0x0064
	ld	l, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-12 (ix), e
	ld	-11 (ix), d
	ld	a, -12 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1191: if (rnd < (33 + skill * 2)) {
	ld	a, -10 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	sla	-11 (ix)
	rl	-10 (ix)
	ld	a, -11 (ix)
	add	a, #0x21
	ld	-13 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	a, -2 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -11 (ix)
	sub	a, -13 (ix)
	ld	a, -10 (ix)
	sbc	a, -12 (ix)
	jp	PO, 01091$
	xor	a, #0x80
01091$:
	jp	P, 00235$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1192: gkChoice = shotDirIdx;
	ld	a, -1 (ix)
	ld	-2 (ix), a
	jp	00239$
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1195: u8 wrong = (g_FrameCounter / 7) % 2;
	ld	de, #0x0007
	ld	l, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	de, #0x0002
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	a, -11 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1196: if (shotDirIdx == 0) gkChoice = (wrong ? 1 : 2);
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00232$
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00384$
	ld	-11 (ix), #0x01
	ld	-10 (ix), #0
	jp	00385$
00384$:
	ld	-11 (ix), #0x02
	ld	-10 (ix), #0
00385$:
	ld	a, -11 (ix)
	ld	-2 (ix), a
	jp	00239$
00232$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1197: else if (shotDirIdx == 1) gkChoice = (wrong ? 0 : 2);
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00229$
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00386$
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
	jp	00387$
00386$:
	ld	-11 (ix), #0x02
	ld	-10 (ix), #0
00387$:
	ld	a, -11 (ix)
	ld	-2 (ix), a
	jp	00239$
00229$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1198: else gkChoice = (wrong ? 0 : 1);
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00388$
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
	jp	00389$
00388$:
	ld	-11 (ix), #0x01
	ld	-10 (ix), #0
00389$:
	ld	a, -11 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1202: gkChoice = playerGkChoice;
00238$:
00239$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1205: if (gkChoice == 0) gkDiveDir = DIRECTION_LEFT;
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00244$
	ld	c, #0x07
	jp	00488$
00244$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1206: else if (gkChoice == 2) gkDiveDir = DIRECTION_RIGHT;
	ld	a, -2 (ix)
	sub	a, #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1207: else gkDiveDir = DIRECTION_NONE;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1209: while (ballTimer < 60) {
	ld	c, #0x03
	jr	Z, 00488$
	ld	c, #0x00
00488$:
	ld	a, c
	sub	a, #0x07
	ld	a, #0x01
	jr	Z, 01097$
	xor	a, a
01097$:
	ld	-18 (ix), a
	ld	a, c
	sub	a, #0x03
	ld	a, #0x01
	jr	Z, 01099$
	xor	a, a
01099$:
	ld	-17 (ix), a
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	ld	a, #0x01
	jr	Z, 01101$
	xor	a, a
01101$:
	ld	-16 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00264$:
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	ld	c, -1 (ix)
	sub	a, #0x3c
	ld	a, c
	sbc	a, #0x00
	jp	NC, 00266$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1210: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1211: ballTimer++;
	inc	-2 (ix)
	jr	NZ, 01102$
	inc	-1 (ix)
01102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1213: i16 dx = (i16)targetX - (i16)g_Ball.X;
	ld	a, -22 (ix)
	ld	-15 (ix), a
	ld	a, -21 (ix)
	ld	-14 (ix), a
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -15 (ix)
	sub	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
	sbc	a, -12 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1216: g_Ball.Y -= 6;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-13 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-15 (ix), a
	ld	a, -12 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0xfa
	ld	-13 (ix), a
	ld	a, -14 (ix)
	adc	a, #0xff
	ld	-12 (ix), a
	ld	hl, #_g_Ball
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1217: g_Ball.X += (dx / 8); 
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-13 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-12 (ix), a
	ld	a, -11 (ix)
	ld	-15 (ix), a
	ld	a, -10 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
	ld	-10 (ix), a
	bit	7, -14 (ix)
	jr	Z, 00390$
	ld	a, -15 (ix)
	add	a, #0x07
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
00390$:
	sra	-10 (ix)
	rr	-11 (ix)
	sra	-10 (ix)
	rr	-11 (ix)
	sra	-10 (ix)
	rr	-11 (ix)
	ld	a, -13 (ix)
	ld	-15 (ix), a
	ld	a, -12 (ix)
	ld	-14 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, -14 (ix)
	ld	-10 (ix), a
	ld	hl, #(_g_Ball + 2)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1219: if (ballTimer < 20) {
	ld	a, -2 (ix)
	ld	b, -1 (ix)
	sub	a, #0x14
	ld	a, b
	sbc	a, #0x00
	jp	NC, 00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1220: if (gkDiveDir == DIRECTION_LEFT) {
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00249$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1221: g_Players[gkId].X -= 3;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0xfd
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, #0xff
	ld	-10 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1222: g_Players[gkId].PatternId = PLAYER_POSE_TEAM2_GK_DOWN_LEFT;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0xa0
	jp	00252$
00249$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1223: } else if (gkDiveDir == DIRECTION_RIGHT) {
	ld	a, -17 (ix)
	or	a, a
	jr	Z, 00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1224: g_Players[gkId].X += 3;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0x03
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1225: g_Players[gkId].PatternId = PLAYER_POSE_TEAM2_GK_DOWN_RIGHT;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x2f
00252$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1216: g_Ball.Y -= 6;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1229: if (g_Ball.Y <= FIELD_BOUND_Y_TOP + 8) {
	ld	a, #0x3a
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	C, 00259$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1230: if (gkChoice == shotDirIdx) {
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1231: saved = true;
	ld	-19 (ix), #0x01
	jp	00255$
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1233: goal = true;
	ld	-20 (ix), #0x01
00255$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1236: if (saved) break;
	ld	a, -19 (ix)
	or	a, a
	jr	NZ, 00266$
00259$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1239: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00263$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1240: if (g_Ball.Y <= FIELD_BOUND_Y_TOP - 10) break;
	ld	a, #0x28
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	NC, 00266$
00263$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1242: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
	jp	00264$
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1246: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00271$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1247: resChar = 'O'; // Uppercase for visibility
	ld	-1 (ix), #0x4f
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1248: if (kickingTeam == TEAM_1) goals1++; else goals2++;
	ld	a, -53 (ix)
	or	a, a
	jr	Z, 00268$
	inc	-7 (ix)
	jp	00269$
00268$:
	inc	-8 (ix)
00269$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1249: V9990_PrintLayerAStringAtPos(12, 10, "GOAL!");
	ld	hl, #___str_1
	push	hl
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_PrintLayerAStringAtPos
	jp	00272$
00271$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1251: resChar = 'X'; // Uppercase for visibility
	ld	-1 (ix), #0x58
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1252: V9990_PrintLayerAStringAtPos(12, 10, saved ? "SAVED!" : "MISS!");
	ld	a, -19 (ix)
	or	a, a
	jr	Z, 00391$
	ld	-11 (ix), #<(___str_2)
	ld	-10 (ix), #>(___str_2)
	jp	00392$
00391$:
	ld	-11 (ix), #<(___str_3)
	ld	-10 (ix), #>(___str_3)
00392$:
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	push	bc
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_PrintLayerAStringAtPos
00272$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1255: if (kickingTeam == TEAM_1) { if(h1_idx < 19) { g_History1[h1_idx++] = resChar; g_History1[h1_idx] = 0; } shots1++; } 
	ld	a, -53 (ix)
	or	a, a
	jr	Z, 00278$
	ld	a, -9 (ix)
	sub	a, #0x13
	jr	NC, 00274$
	ld	a, #<(_g_History1)
	add	a, -9 (ix)
	ld	c, a
	ld	a, #>(_g_History1)
	adc	a, #0x00
	ld	b, a
	inc	-9 (ix)
	ld	a, -1 (ix)
	ld	(bc), a
	ld	a, #<(_g_History1)
	add	a, -9 (ix)
	ld	c, a
	ld	a, #>(_g_History1)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
00274$:
	inc	-4 (ix)
	jp	00279$
00278$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1256: else { if(h2_idx < 19) { g_History2[h2_idx++] = resChar; g_History2[h2_idx] = 0; } shots2++; }
	ld	a, -6 (ix)
	sub	a, #0x13
	jr	NC, 00276$
	ld	a, #<(_g_History2)
	add	a, -6 (ix)
	ld	c, a
	ld	a, #>(_g_History2)
	adc	a, #0x00
	ld	b, a
	inc	-6 (ix)
	ld	a, -1 (ix)
	ld	(bc), a
	ld	a, #<(_g_History2)
	add	a, -6 (ix)
	ld	c, a
	ld	a, #>(_g_History2)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
00276$:
	inc	-5 (ix)
00279$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1259: V9990_PrintLayerAStringAtPos(10, 22, g_History1);
	ld	hl, #_g_History1
	push	hl
	ld	l, #0x16
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1260: V9990_PrintLayerAStringAtPos(10, 23, g_History2);
	ld	hl, #_g_History2
	push	hl
	ld	l, #0x17
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1262: for(u8 w=0; w<120; w++) V9990_WaitSynch();
	ld	c, #0x00
00365$:
	ld	a, c
	sub	a, #0x78
	jr	NC, 00280$
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	inc	c
	jp	00365$
00280$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1263: V9990_ClearTextFromLayerA(12, 10, 10);
	ld	a, #0x0a
	push	af
	inc	sp
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1267: if (kickerId < 7) {
	ld	a, -52 (ix)
	sub	a, #0x07
	jr	NC, 00282$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1268: g_Players[kickerId].TargetY = 220 + (kickerId/4)*15; 
	ld	a, -46 (ix)
	ld	-2 (ix), a
	ld	a, -45 (ix)
	ld	-1 (ix), a
	ld	c, -52 (ix)
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00393$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00393$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #0x00dc
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1269: g_Players[kickerId].TargetX = 80 + (kickerId%4)*25;
	ld	a, c
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -48 (ix)
	ld	h, -47 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00283$
00282$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1271: u8 k = kickerId - 7;
	ld	a, -52 (ix)
	add	a, #0xf9
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1272: g_Players[kickerId].TargetY = 260 + (k/4)*15;
	ld	a, -46 (ix)
	ld	-2 (ix), a
	ld	a, -45 (ix)
	ld	-1 (ix), a
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00394$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00394$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #0x0104
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1273: g_Players[kickerId].TargetX = 80 + (k%4)*25;
	ld	a, c
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -48 (ix)
	ld	h, -47 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1277: if (gkId < 7) {
	ld	a, -51 (ix)
	sub	a, #0x07
	jr	NC, 00285$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1278: g_Players[gkId].TargetY = 220 + (gkId/4)*15; 
	ld	a, -40 (ix)
	ld	-2 (ix), a
	ld	a, -39 (ix)
	ld	-1 (ix), a
	ld	c, -51 (ix)
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00395$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00395$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #0x00dc
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1279: g_Players[gkId].TargetX = 80 + (gkId%4)*25;
	ld	a, c
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00286$
00285$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1281: u8 k = gkId - 7;
	ld	a, -51 (ix)
	add	a, #0xf9
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1282: g_Players[gkId].TargetY = 260 + (k/4)*15;
	ld	a, -40 (ix)
	ld	-2 (ix), a
	ld	a, -39 (ix)
	ld	-1 (ix), a
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00396$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00396$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #0x0104
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1283: g_Players[gkId].TargetX = 80 + (k%4)*25;
	ld	a, c
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00286$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1287: g_Players[REFEREE].TargetX = 128;
	ld	hl, #0x0080
	ld	((_g_Players + 310)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1288: g_Players[REFEREE].TargetY = 243;
	ld	l, #0xf3
	ld	((_g_Players + 308)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1290: while(true) {
00336$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1291: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1292: bool kDone = true;
	ld	-16 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1293: bool gDone = true;
	ld	-15 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1294: bool rDone = true;
	ld	-14 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1046: if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -46 (ix)
	ld	h, -45 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1297: if (g_Players[kickerId].Y < g_Players[kickerId].TargetY) { g_Players[kickerId].Y++; kDone=false; g_Players[kickerId].Direction=DIRECTION_DOWN; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00290$
	inc	bc
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-16 (ix), #0x00
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x05
	jp	00291$
00290$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1298: else if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00291$
	dec	bc
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-16 (ix), #0x00
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x01
00291$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1049: if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; g_Players[kickerId].Direction=DIRECTION_LEFT; }
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -48 (ix)
	ld	h, -47 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1300: if (g_Players[kickerId].X < g_Players[kickerId].TargetX) { g_Players[kickerId].X++; kDone=false; if(g_Players[kickerId].Direction==DIRECTION_NONE) g_Players[kickerId].Direction=DIRECTION_RIGHT; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00299$
	inc	bc
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-16 (ix), #0x00
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00300$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x03
	jp	00300$
00299$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1301: else if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; if(g_Players[kickerId].Direction==DIRECTION_NONE) g_Players[kickerId].Direction=DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00300$
	dec	bc
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-16 (ix), #0x00
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00300$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x07
00300$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1054: if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -40 (ix)
	ld	h, -39 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1304: if (g_Players[gkId].Y < g_Players[gkId].TargetY) { g_Players[gkId].Y++; gDone=false; g_Players[gkId].Direction=DIRECTION_DOWN; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00304$
	inc	bc
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-15 (ix), #0x00
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x05
	jp	00305$
00304$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1305: else if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00305$
	dec	bc
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-15 (ix), #0x00
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x01
00305$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1057: if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; g_Players[gkId].Direction=DIRECTION_LEFT; }
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1307: if (g_Players[gkId].X < g_Players[gkId].TargetX) { g_Players[gkId].X++; gDone=false; if(g_Players[gkId].Direction==DIRECTION_NONE) g_Players[gkId].Direction=DIRECTION_RIGHT; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00313$
	inc	bc
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-15 (ix), #0x00
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00314$
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x03
	jp	00314$
00313$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1308: else if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; if(g_Players[gkId].Direction==DIRECTION_NONE) g_Players[gkId].Direction=DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00314$
	dec	bc
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-15 (ix), #0x00
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00314$
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x07
00314$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1062: if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
	ld	bc, (#(_g_Players + 294) + 0)
	ld	de, (#(_g_Players + 308) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1311: if (g_Players[REFEREE].Y < g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_DOWN; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00318$
	inc	bc
	ld	((_g_Players + 294)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x05
	jp	00319$
00318$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1312: else if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00319$
	dec	bc
	ld	((_g_Players + 294)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x01
00319$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1065: if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }
	ld	bc, (#(_g_Players + 296) + 0)
	ld	de, (#(_g_Players + 310) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1314: if (g_Players[REFEREE].X < g_Players[REFEREE].TargetX) { g_Players[REFEREE].X++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_RIGHT; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00323$
	inc	bc
	ld	((_g_Players + 296)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x03
	jp	00324$
00323$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1315: else if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00324$
	dec	bc
	ld	((_g_Players + 296)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x07
00324$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1069: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, (_g_FrameCounter+0)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1318: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, -11 (ix)
	and	a,#0x07
	jr	NZ, 00397$
	ld	-2 (ix), a
	ld	-1 (ix), a
	jp	00398$
00397$:
	ld	-2 (ix), #0x04
	ld	-1 (ix), #0
00398$:
	ld	a, -2 (ix)
	ld	-13 (ix), a
	ld	a, -1 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1321: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00326$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1323: u8 anim = (g_FrameCounter / 8) % 2;
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	bit	7, -10 (ix)
	jr	Z, 00399$
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	de, #0x0007
	add	hl, de
00399$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	de, #0x0002
	call	__modsint
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1324: g_Players[kickerId].PatternId = (anim == 0) ? PLAYER_POSE_CELEBRATION_FRONT_1 : PLAYER_POSE_CELEBRATION_FRONT_2;
	ld	a, -28 (ix)
	ld	-11 (ix), a
	ld	a, -27 (ix)
	ld	-10 (ix), a
	ld	a, e
	or	a, a
	jr	NZ, 00400$
	ld	-2 (ix), #0x30
	ld	-1 (ix), #0
	jp	00401$
00400$:
	ld	-2 (ix), #0x31
	ld	-1 (ix), #0
00401$:
	ld	a, -2 (ix)
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1325: g_Players[kickerId].Status = PLAYER_STATUS_POSITIONED; // Lock pattern
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
	jp	00327$
00326$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1327: g_Players[kickerId].Status = animStatus;
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
00327$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1330: g_Players[gkId].Status = animStatus;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1331: g_Players[REFEREE].Status = animStatus;
	ld	hl, #(_g_Players + 312)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1334: if (g_FieldCurrentYPosition < 137) g_FieldCurrentYPosition++;
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x89
	ld	a, (_g_FieldCurrentYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00329$
	ld	hl, (_g_FieldCurrentYPosition)
	inc	hl
	ld	(_g_FieldCurrentYPosition), hl
00329$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1336: V9_SetScrollingBY((u16)g_FieldCurrentYPosition);
	ld	hl, (_g_FieldCurrentYPosition)
	call	_V9_SetScrollingBY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1337: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1339: if (kDone && gDone && rDone && g_FieldCurrentYPosition >= 137) break;
	ld	a, -16 (ix)
	or	a, a
	jp	Z, 00336$
	ld	a, -15 (ix)
	or	a, a
	jp	Z, 00336$
	ld	a, -14 (ix)
	or	a, a
	jp	Z, 00336$
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x89
	ld	a, (_g_FieldCurrentYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00336$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1343: for(u8 i=0; i<15; i++) {
	ld	-1 (ix), #0x00
00368$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00341$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1344: if (g_Players[i].Y < 243) {
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -11 (ix)
	add	a, #<(_g_Players)
	ld	-17 (ix), a
	ld	a, -10 (ix)
	adc	a, #>(_g_Players)
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-15 (ix), a
	ld	a, -10 (ix)
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1345: g_Players[i].Direction = DIRECTION_DOWN;
	ld	a, -17 (ix)
	add	a, #0x0a
	ld	-13 (ix), a
	ld	a, -16 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1346: g_Players[i].PatternId = PLAYER_POSE_FRONT;
	ld	a, -17 (ix)
	add	a, #0x08
	ld	-11 (ix), a
	ld	a, -16 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1344: if (g_Players[i].Y < 243) {
	ld	a, -15 (ix)
	sub	a, #0xf3
	ld	a, -14 (ix)
	sbc	a, #0x00
	jr	NC, 00339$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1345: g_Players[i].Direction = DIRECTION_DOWN;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1346: g_Players[i].PatternId = PLAYER_POSE_FRONT;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), #0x10
	jp	00340$
00339$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1348: g_Players[i].Direction = DIRECTION_UP;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1349: g_Players[i].PatternId = PLAYER_POSE_BACK;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), #0x11
00340$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1351: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1343: for(u8 i=0; i<15; i++) {
	inc	-1 (ix)
	jp	00368$
00341$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1353: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1355: turn++;
	inc	-3 (ix)
	jp	00343$
00370$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1357: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "PENALTY SHOOTOUT"
	.db 0x00
___str_1:
	.ascii "GOAL!"
	.db 0x00
___str_2:
	.ascii "SAVED!"
	.db 0x00
___str_3:
	.ascii "MISS!"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1358: void TimeUp(){
;	---------------------------------
; Function TimeUp
; ---------------------------------
_TimeUp::
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:480: inline void V9_SetBackgroundColor(u8 color) { V9_SetRegister(15, color); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1361: if (g_Team1Score == g_Team2Score) {
	ld	a, (_g_Team1Score+0)
	ld	iy, #_g_Team2Score
	sub	a, 0 (iy)
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1362: Trampoline_VOID(5,PenaltyShots);
	ld	de, #_PenaltyShots
	ld	a, #0x05
	jp	_Trampoline_VOID
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1364: u8 winner = (g_Team1Score > g_Team2Score) ? TEAM_1 : TEAM_2;
	ld	a, (#_g_Team2Score)
	ld	hl, #_g_Team1Score
	sub	a, (hl)
	jr	NC, 00107$
	ld	bc, #0x0001
	jp	00108$
00107$:
	ld	bc, #0x0002
00108$:
	ld	a, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1365: Trampoline_VOID_P1(5,TeamVictory,winner);
	push	af
	inc	sp
	ld	de, #_TeamVictory
	ld	a, #0x05
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1368: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1369: void TeamVictory(u8 teamId) {
;	---------------------------------
; Function TeamVictory
; ---------------------------------
_TeamVictory::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1370: g_MatchStatus = MATCH_VICTORY_LAP;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1371: g_FieldScrollingActionInProgress = NO_VALUE; // Disable ISR scrolling
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1374: u16 targetX = g_Ball.X;
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-36 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-35 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1375: u16 targetY = g_Ball.Y;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-34 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-33 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1378: g_Ball.Y = g_FieldCurrentYPosition + 240; 
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00f0
	add	hl, de
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1381: if (targetY < g_FieldCurrentYPosition || targetY > g_FieldCurrentYPosition + 212) {
	ld	c, -34 (ix)
	ld	b, -33 (ix)
	ld	hl, (_g_FieldCurrentYPosition)
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	C, 00101$
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00d4
	add	hl, de
	xor	a, a
	sbc	hl, bc
	jr	NC, 00200$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1382: targetY = g_FieldCurrentYPosition + 106;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x006a
	add	hl, de
	ld	-34 (ix), l
	ld	-33 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1383: targetX = 128;
	ld	-36 (ix), #0x80
	ld	-35 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1387: for(u8 i=0; i<15; i++) {
00200$:
	ld	de, #_g_Players+0
	ld	c, #0x00
00178$:
	ld	a, c
	sub	a, #0x0f
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1389: g_Players[i].Status = PLAYER_STATUS_NONE; // Active for movement
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, de
	push	de
	ld	de, #0x0012
	add	hl, de
	pop	de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1387: for(u8 i=0; i<15; i++) {
	inc	c
	jp	00178$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1395: while (true) { 
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1396: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1397: timer++;
	inc	-4 (ix)
	jr	NZ, 00391$
	inc	-3 (ix)
00391$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1401: for(u8 i=0; i<15; i++) { // Loop 0 to 14 (Includes Referee)
	ld	a, -4 (ix)
	and	a, #0x01
	ld	-32 (ix), a
	ld	-31 (ix), #0x00
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x00
00181$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00167$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1403: bool isWinner = (g_Players[i].TeamId == teamId);
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -9 (ix)
	add	a, #<(_g_Players)
	ld	-30 (ix), a
	ld	a, -8 (ix)
	adc	a, #>(_g_Players)
	ld	-29 (ix), a
	ld	a, -30 (ix)
	ld	-9 (ix), a
	ld	a, -29 (ix)
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -7 (ix)
	sub	a, -8 (ix)
	ld	a, #0x01
	jr	Z, 00393$
	xor	a, a
00393$:
	ld	-8 (ix), a
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1404: if (i == REFEREE) isWinner = false; // Force Referee to be "loser" (exit field)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NZ, 00106$
	ld	-10 (ix), #0x00
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1410: i16 dx = (i16)targetX - (i16)g_Players[i].X;
	ld	a, -30 (ix)
	add	a, #0x02
	ld	-28 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-27 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1406: if (isWinner) {
	ld	a, -10 (ix)
	or	a, a
	jp	Z, 00164$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1410: i16 dx = (i16)targetX - (i16)g_Players[i].X;
	ld	a, -36 (ix)
	ld	-13 (ix), a
	ld	a, -35 (ix)
	ld	-12 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-26 (ix), a
	ld	a, -8 (ix)
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1411: i16 dy = (i16)targetY - (i16)g_Players[i].Y;
	ld	a, -34 (ix)
	ld	-13 (ix), a
	ld	a, -33 (ix)
	ld	-12 (ix), a
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1414: u16 dist = (u16)(Math_Abs32(dx) + Math_Abs32(dy));
	ld	a, -26 (ix)
	ld	-24 (ix), a
	ld	a, -25 (ix)
	ld	-23 (ix), a
	rlca
	sbc	a, a
	ld	-22 (ix), a
	ld	-21 (ix), a
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -21 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-13 (ix), e
	ld	-12 (ix), d
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -9 (ix)
	ld	-20 (ix), a
	ld	a, -8 (ix)
	ld	-19 (ix), a
	rlca
	sbc	a, a
	ld	-18 (ix), a
	ld	-17 (ix), a
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	inc	sp
	inc	sp
	push	de
	ld	-38 (ix), l
	ld	-37 (ix), h
	ld	a, -13 (ix)
	ld	-15 (ix), a
	ld	a, -12 (ix)
	ld	-14 (ix), a
	ld	a, -40 (ix)
	ld	-13 (ix), a
	ld	a, -39 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-38 (ix), a
	ld	a, -10 (ix)
	ld	-37 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1417: u8 stopDist = 35 + (i % 7) * 10; 
	ld	a, -1 (ix)
	ld	-16 (ix), a
	ld	-15 (ix), #0x00
	ld	de, #0x0007
	ld	l, -16 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	a, -11 (ix)
	ld	-10 (ix), a
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ld	-10 (ix), a
	add	a, #0x23
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1419: if (dist > stopDist) {
	ld	-14 (ix), a
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1431: g_Players[i].Status = PLAYER_STATUS_NONE; // Running animation
	ld	a, -30 (ix)
	add	a, #0x12
	ld	-11 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1419: if (dist > stopDist) {
	ld	a, -13 (ix)
	sub	a, -38 (ix)
	ld	a, -12 (ix)
	sbc	a, -37 (ix)
	jp	NC, 00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1421: if (dx > 0) g_Players[i].X++; else if (dx < 0) g_Players[i].X--;
	ld	a, -26 (ix)
	ld	-13 (ix), a
	ld	a, -25 (ix)
	ld	-12 (ix), a
	xor	a, a
	cp	a, -13 (ix)
	sbc	a, -12 (ix)
	jp	PO, 00396$
	xor	a, #0x80
00396$:
	rlca
	and	a,#0x01
	ld	-16 (ix), a
	or	a, a
	jr	Z, 00110$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0x01
	ld	-13 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
	jp	00111$
00110$:
	bit	7, -12 (ix)
	jr	Z, 00111$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1422: if (dy > 0) g_Players[i].Y++; else if (dy < 0) g_Players[i].Y--;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 00397$
	xor	a, #0x80
00397$:
	rlca
	and	a,#0x01
	ld	-14 (ix), a
	or	a, a
	jr	Z, 00115$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	ld	-13 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0x01
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
	jp	00116$
00115$:
	bit	7, -8 (ix)
	jr	Z, 00116$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1425: if (Math_Abs32(dx) > Math_Abs32(dy)) {
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -21 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-24 (ix), e
	ld	-23 (ix), d
	ld	-22 (ix), l
	ld	-21 (ix), h
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1426: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, -30 (ix)
	add	a, #0x0a
	ld	-9 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1425: if (Math_Abs32(dx) > Math_Abs32(dy)) {
	ld	a, e
	sub	a, -24 (ix)
	ld	a, d
	sbc	a, -23 (ix)
	ld	a, l
	sbc	a, -22 (ix)
	ld	a, h
	sbc	a, -21 (ix)
	jp	PO, 00398$
	xor	a, #0x80
00398$:
	jp	P, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1426: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00184$
	ld	-13 (ix), #0x03
	ld	-12 (ix), #0
	jp	00185$
00184$:
	ld	-13 (ix), #0x07
	ld	-12 (ix), #0
00185$:
	ld	a, -13 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), a
	jp	00119$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1428: g_Players[i].Direction = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
	ld	a, -14 (ix)
	or	a, a
	jr	Z, 00186$
	ld	-13 (ix), #0x05
	ld	-12 (ix), #0
	jp	00187$
00186$:
	ld	-13 (ix), #0x01
	ld	-12 (ix), #0
00187$:
	ld	a, -13 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), a
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1431: g_Players[i].Status = PLAYER_STATUS_NONE; // Running animation
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00166$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1435: g_Players[i].Status = PLAYER_STATUS_POSITIONED; // Lock pose
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1438: bool animFrame = (timer / 8) % 2 == 0;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0x01
	ld	e, a
	ld	d, #0x00
	ld	a, e
	or	a, a
	or	a, d
	ld	a, #0x01
	jr	Z, 00400$
	xor	a, a
00400$:
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1441: if ((timer % 3) == 0) { // Slow speed
	push	bc
	ld	de, #0x0003
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__moduint
	pop	bc
	ld	a, d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1442: i8 moveX = 0;
	or	a,e
	jp	NZ,00139$
	ld	e,a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1443: i8 moveY = 0;
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1445: if (dy > 10) moveX = 1; else if (dy < -10) moveX = -1;
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, #0x0a
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jp	PO, 00401$
	xor	a, #0x80
00401$:
	jp	P, 00123$
	ld	e, #0x01
	jp	00124$
00123$:
	ld	a, -9 (ix)
	sub	a, #0xf6
	ld	a, -8 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00124$
	ld	e, #0xff
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1446: if (dx > 10) moveY = -1; else if (dx < -10) moveY = 1;
	ld	a, -26 (ix)
	ld	-9 (ix), a
	ld	a, -25 (ix)
	ld	-8 (ix), a
	ld	a, #0x0a
	cp	a, -9 (ix)
	ld	a, #0x00
	sbc	a, -8 (ix)
	jp	PO, 00402$
	xor	a, #0x80
00402$:
	jp	P, 00128$
	ld	-12 (ix), #0xff
	jp	00129$
00128$:
	ld	a, -26 (ix)
	sub	a, #0xf6
	ld	a, -25 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00129$
	ld	-12 (ix), #0x01
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1448: g_Players[i].X += moveX;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	add	hl, de
	ex	de, hl
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1449: g_Players[i].Y += moveY;
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -12 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1452: u16 currentDist = (u16)(Math_Abs32(dx) + Math_Abs32(dy));
	push	bc
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -21 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-24 (ix), e
	ld	-23 (ix), d
	ld	-22 (ix), l
	ld	-21 (ix), h
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	push	hl
	pop	iy
	pop	bc
	ld	l, -24 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -23 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1453: if (currentDist > stopDist + 15) {
	ld	a, -14 (ix)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	a, #0x0f
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	jr	NC, 00403$
	inc	h
00403$:
	xor	a, a
	sbc	hl, de
	jr	NC, 00139$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1410: i16 dx = (i16)targetX - (i16)g_Players[i].X;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-18 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1454: if (dx > 0) g_Players[i].X++; else g_Players[i].X--;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 00404$
	xor	a, #0x80
00404$:
	jp	P, 00131$
	ld	e, -18 (ix)
	ld	d, -17 (ix)
	inc	de
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00132$
00131$:
	ld	e, -18 (ix)
	ld	d, -17 (ix)
	dec	de
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1411: i16 dy = (i16)targetY - (i16)g_Players[i].Y;
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1455: if (dy > 0) g_Players[i].Y++; else g_Players[i].Y--;
	xor	a, a
	cp	a, -11 (ix)
	sbc	a, -10 (ix)
	jp	PO, 00405$
	xor	a, #0x80
00405$:
	jp	P, 00134$
	inc	de
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00139$
00134$:
	dec	de
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1460: bool showBack = ((timer + i * 17) / 60) & 1;
	ld	e, -16 (ix)
	ld	d, -15 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	de, #0x003c
	call	__divuint
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1463: g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_BACK_1 : PLAYER_POSE_CELEBRATION_BACK_2;
	ld	a, -30 (ix)
	add	a, #0x08
	ld	-9 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1460: bool showBack = ((timer + i * 17) / 60) & 1;
	bit	0, e
	jr	Z, 00141$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1462: if (showBack) {
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1463: g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_BACK_1 : PLAYER_POSE_CELEBRATION_BACK_2;
	ld	a, -13 (ix)
	or	a, a
	jr	Z, 00188$
	ld	bc, #0x0032
	jp	00189$
00188$:
	ld	bc, #0x0033
00189$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	jp	00166$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1465: g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_FRONT_1 : PLAYER_POSE_CELEBRATION_FRONT_2;
	ld	a, -13 (ix)
	or	a, a
	jr	Z, 00190$
	ld	de, #0x0030
	jp	00191$
00190$:
	ld	de, #0x0031
00191$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
	jp	00166$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1472: if (g_Players[i].X < 8) {
	ld	a, -9 (ix)
	ld	b, -8 (ix)
	sub	a, #0x08
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1474: g_Players[i].Y = (g_FieldCurrentYPosition > 32) ? g_FieldCurrentYPosition - 32 : 0;
	ld	c, -30 (ix)
	ld	b, -29 (ix)
	ld	a, #0x20
	ld	iy, #_g_FieldCurrentYPosition
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	PO, 00407$
	xor	a, #0x80
00407$:
	jp	P, 00192$
	ld	a, (_g_FieldCurrentYPosition+0)
	add	a, #0xe0
	ld	e, a
	ld	a, (_g_FieldCurrentYPosition+1)
	adc	a, #0xff
	ld	d, a
	jp	00193$
00192$:
	ld	de, #0x0000
00193$:
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1475: continue; // Skip movement, count as exited
	jp	00166$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1478: losersOnField++;
	inc	-2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1481: i16 dx = (i16)0 - (i16)g_Players[i].X;
	ld	a, -9 (ix)
	ld	c, -8 (ix)
	neg
	ld	e, a
	sbc	a, a
	sub	a, c
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1482: i16 dy = (i16)FIELD_POS_Y_CENTER - (i16)g_Players[i].Y;
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xf3
	sub	a, c
	ld	-11 (ix), a
	sbc	a, a
	sub	a, b
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1485: if ((timer & 1) == 0) {
	ld	a, -31 (ix)
	or	a, -32 (ix)
	jr	NZ, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1486: if (dx > 0) g_Players[i].X++; else if (dx < 0) g_Players[i].X--;
	ld	c, e
	ld	b, d
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00408$
	xor	a, #0x80
00408$:
	jp	P, 00151$
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	inc	bc
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00152$
00151$:
	bit	7, b
	jr	Z, 00152$
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	dec	bc
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1487: if (dy > 0) g_Players[i].Y++; else if (dy < 0) g_Players[i].Y--;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00409$
	xor	a, #0x80
00409$:
	jp	P, 00156$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00159$
00156$:
	bit	7, b
	jr	Z, 00159$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1491: if (Math_Abs32(dx) > Math_Abs32(dy)) {
	ld	c, e
	ld	a, d
	ld	b, a
	rlca
	sbc	hl, hl
	push	de
	ld	e, c
	ld	d, b
	call	_Math_Abs32
	ld	-19 (ix), e
	ld	-18 (ix), d
	ld	-17 (ix), l
	ld	-16 (ix), h
	pop	de
	ld	c, -11 (ix)
	ld	a, -10 (ix)
	ld	b, a
	rlca
	sbc	hl, hl
	push	de
	ld	e, c
	ld	d, b
	call	_Math_Abs32
	ld	-15 (ix), e
	ld	-14 (ix), d
	ld	-13 (ix), l
	ld	-12 (ix), h
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1492: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, -30 (ix)
	add	a, #0x0a
	ld	c, a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1491: if (Math_Abs32(dx) > Math_Abs32(dy)) {
	ld	a, -15 (ix)
	sub	a, -19 (ix)
	ld	a, -14 (ix)
	sbc	a, -18 (ix)
	ld	a, -13 (ix)
	sbc	a, -17 (ix)
	ld	a, -12 (ix)
	sbc	a, -16 (ix)
	jp	PO, 00410$
	xor	a, #0x80
00410$:
	jp	P, 00161$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1492: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00411$
	xor	a, #0x80
00411$:
	jp	P, 00194$
	ld	de, #0x0003
	jp	00195$
00194$:
	ld	de, #0x0007
00195$:
	ld	a, e
	ld	(bc), a
	jp	00162$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1494: g_Players[i].Direction = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00412$
	xor	a, #0x80
00412$:
	jp	P, 00196$
	ld	de, #0x0005
	jp	00197$
00196$:
	ld	de, #0x0001
00197$:
	ld	a, e
	ld	(bc), a
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1497: g_Players[i].Status = PLAYER_STATUS_NONE; // Walking animation
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1401: for(u8 i=0; i<15; i++) { // Loop 0 to 14 (Includes Referee)
	inc	-1 (ix)
	jp	00181$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1501: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1503: if (losersOnField == 0) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1504: extraTime++;
	inc	-6 (ix)
	jr	NZ, 00413$
	inc	-5 (ix)
00413$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1505: if (extraTime > 120) break; // 2 seconds after last exit
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	a, #0x78
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jr	C, 00176$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1509: if (timer > 1200) break;
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, #0xb0
	cp	a, -2 (ix)
	ld	a, #0x04
	sbc	a, -1 (ix)
	jp	NC, 00175$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1512: ShowMenu();
	call	_ShowMenu
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1513: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1516: u16 GetOffsideLineY(u8 attackingTeamId) {
;	---------------------------------
; Function GetOffsideLineY
; ---------------------------------
_GetOffsideLineY::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1517: u8 defendingTeamId = (attackingTeamId == TEAM_1) ? TEAM_2 : TEAM_1;
	dec	c
	ld	a, #0x01
	jr	Z, 00199$
	xor	a, a
00199$:
	or	a, a
	jr	Z, 00124$
	ld	bc, #0x0002
	jp	00125$
00124$:
	ld	bc, #0x0001
00125$:
	ld	-5 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1518: bool findMin = (attackingTeamId == TEAM_1);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1521: u16 val1 = findMin ? 0xFFFF : 0;
	ld	e, a
	or	a, a
	jr	Z, 00126$
	ld	bc, #0xffff
	jp	00127$
00126$:
	ld	bc, #0x0000
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1522: u16 val2 = val1;
	ld	-4 (ix), c
	ld	-3 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1524: for(u8 i=0; i<14; i++){
	ld	d, #0x00
00121$:
	ld	a, d
	sub	a, #0x0e
	jp	NC, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1525: if(g_Players[i].TeamId != defendingTeamId) continue;
	push	de
	ld	e, d
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	ld	a, l
	add	a, #<(_g_Players)
	ld	-2 (ix), a
	ld	a, h
	adc	a, #>(_g_Players)
	ld	-1 (ix), a
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
;	spillPairReg hl
	ld	a,-5 (ix)
	sub	a,(hl)
	jr	NZ, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1526: u16 y = g_Players[i].Y;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1528: if (findMin) {
	ld	a, e
	or	a, a
	jr	Z, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1529: if (y < val1) { val2 = val1; val1 = y; }
	ld	a, l
	sub	a, -4 (ix)
	ld	a, h
	sbc	a, -3 (ix)
	jr	NC, 00106$
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	-4 (ix), l
	ld	-3 (ix), h
	jp	00116$
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1530: else if (y < val2) { val2 = y; }
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jr	NC, 00116$
	ld	c, l
	ld	b, h
	jp	00116$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1532: if (y > val1) { val2 = val1; val1 = y; }
	ld	a, -4 (ix)
	sub	a, l
	ld	a, -3 (ix)
	sbc	a, h
	jr	NC, 00111$
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	-4 (ix), l
	ld	-3 (ix), h
	jp	00116$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1533: else if (y > val2) { val2 = y; }
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	NC, 00116$
	ld	c, l
	ld	b, h
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1524: for(u8 i=0; i<14; i++){
	inc	d
	jp	00121$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1537: if (findMin) return (val2 == 0xFFFF) ? FIELD_BOUND_Y_TOP : val2;
	ld	a, e
	or	a, a
	jr	Z, 00119$
	ld	e, c
	ld	d, b
	ld	a, e
	and	a, d
	inc	a
	jr	NZ, 00128$
	ld	bc, #0x0032
00128$:
	ld	e, c
	ld	d, b
	jp	00122$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1538: return (val2 == 0) ? FIELD_BOUND_Y_BOTTOM : val2;
	ld	a, b
	or	a, c
	jr	NZ, 00130$
	ld	bc, #0x01ae
00130$:
	ld	e, c
	ld	d, b
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:1539: }
	ld	sp, ix
	pop	ix
	ret
	.area _SEG5
	.area _INITIALIZER
	.area _CABS (ABS)
