;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _VGM_Decode
	.globl _VGM_Pause
	.globl _VGM_Resume
	.globl _VGM_Play
	.globl _PCM_Play_11K
	.globl _PSG_Apply
	.globl _TickGameFieldScrolling
	.globl _MainSub
	.globl _V9_SetPaletteEntry
	.globl _V9_Poke16_CurrentAddr
	.globl _V9_WriteVRAM_CurrentAddr
	.globl _V9_FillVRAM16_CurrentAddr
	.globl _V9_FillVRAM_CurrentAddr
	.globl _V9_SetWriteAddress
	.globl _V9_SetRegister
	.globl _Print_SetTextFont
	.globl _g_Team2ActivePlayer
	.globl _g_Team1ActivePlayer
	.globl _g_ShowButtonsInfo
	.globl _g_Team2PaletteId
	.globl _g_Team1PaletteId
	.globl _g_Players
	.globl _g_Ball
	.globl _g_PonPonGirls
	.globl _g_MatchStatus
	.globl _g_ActiveFieldZone
	.globl _g_FieldScrollSpeed
	.globl _g_FieldCurrentYPosition
	.globl _g_FieldScrollingActionInProgress
	.globl _g_Timer
	.globl _g_FrameCounter
	.globl _g_VSynch
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
	.globl _g_MusicEntry
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
	.globl _Trampoline_VOID
	.globl _Trampoline_VOID_P1
	.globl _Trampoline_VOID_RETURN
	.globl _PlayPcm
	.globl _PlayVGM
	.globl _LoadMsxVdpFonts
	.globl _V9990_LoadButtonsImageData
	.globl _V9990_LoadP1LayerA
	.globl _V9990_LoadImagePresentationData
	.globl _V9990_LoadMenuTeamsData
	.globl _V9990_LoadSprites
	.globl _V9990_PrintLayerAStringAtPos
	.globl _WaitV9990Synch
	.globl _V9_InterruptVBlank
	.globl _InterruptHook
	.globl _main
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
_g_VSynch::
	.ds 1
_g_FrameCounter::
	.ds 1
_g_Timer::
	.ds 1
_g_FieldScrollingActionInProgress::
	.ds 1
_g_FieldCurrentYPosition::
	.ds 2
_g_FieldScrollSpeed::
	.ds 1
_g_ActiveFieldZone::
	.ds 1
_g_MatchStatus::
	.ds 1
_g_PonPonGirls::
	.ds 30
_g_Ball::
	.ds 30
_g_Players::
	.ds 315
_g_Team1PaletteId::
	.ds 1
_g_Team2PaletteId::
	.ds 1
_g_ShowButtonsInfo::
	.ds 1
_g_Team1ActivePlayer::
	.ds 1
_g_Team2ActivePlayer::
	.ds 1
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
	.area _CODE
;./soccerlg.c:94: void Trampoline_VOID(u8 bank, void (*func)()) {
;	---------------------------------
; Function Trampoline_VOID
; ---------------------------------
_Trampoline_VOID::
	ld	b, a
;./soccerlg.c:95: u8 _old = GET_BANK_SEGMENT(1);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl,#(_g_Bank0Segment + 1)
	ld	c,(hl)
	ld	(hl), b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), b
;./soccerlg.c:97: func();
	push	bc
	ex	de, hl
	call	___sdcc_call_hl
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), c
;./soccerlg.c:98: SET_BANK_SEGMENT(1, _old);
;./soccerlg.c:99: }
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
_g_MusicEntry:
	.dw __str_0
	.dw #0x8000
	.db #0x3c	; 60
	.dw __str_1
	.dw #0x8000
	.db #0x3d	; 61
__str_0:
	.ascii "Menu"
	.db 0x00
__str_1:
	.ascii "Match"
	.db 0x00
;./soccerlg.c:101: void Trampoline_VOID_P1(u8 bank, void (*func)(u8), u8 p1) {
;	---------------------------------
; Function Trampoline_VOID_P1
; ---------------------------------
_Trampoline_VOID_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	b, a
;./soccerlg.c:102: u8 _old = GET_BANK_SEGMENT(1);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl,#(_g_Bank0Segment + 1)
	ld	c,(hl)
	ld	(hl), b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), b
;./soccerlg.c:104: func(p1);
	push	bc
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), c
;./soccerlg.c:105: SET_BANK_SEGMENT(1, _old);
;./soccerlg.c:106: }
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:108: u8 Trampoline_VOID_RETURN(u8 bank, u8 (*func)()) {
;	---------------------------------
; Function Trampoline_VOID_RETURN
; ---------------------------------
_Trampoline_VOID_RETURN::
	ld	b, a
;./soccerlg.c:110: u8 _old = GET_BANK_SEGMENT(1);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl,#(_g_Bank0Segment + 1)
	ld	c,(hl)
	ld	(hl), b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), b
;./soccerlg.c:112: _res = func();
	push	bc
	ex	de, hl
	call	___sdcc_call_hl
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), c
;./soccerlg.c:114: return _res;
;./soccerlg.c:115: }
	ret
;./soccerlg.c:121: void PlayPcm(u8 id){
;	---------------------------------
; Function PlayPcm
; ---------------------------------
_PlayPcm::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:122: u8 currentSegment = GET_BANK_SEGMENT(1);
	ld	a, (#(_g_Bank0Segment + 1) + 0)
	ld	-1 (ix), a
;./soccerlg.c:123: switch(id){
	ld	a, #0x05
	sub	a, c
	jp	C, 00107$
	ld	b, #0x00
	ld	hl, #00206$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00206$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
;./soccerlg.c:124: case PCM_CORNERKICK:
00101$:
;./soccerlg.c:125: VGM_Pause();
	call	_VGM_Pause
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x2c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x2c
;./soccerlg.c:127: PCM_Play_11K((u16)g_Data_PCM_CornerKick);
	ld	hl, #_g_Data_PCM_CornerKick
	call	_PCM_Play_11K
;./soccerlg.c:128: VGM_Resume();
	call	_VGM_Resume
;./soccerlg.c:129: break;
	jp	00107$
;./soccerlg.c:130: case PCM_KICKOFF:
00102$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x2d
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x2d
;./soccerlg.c:132: PCM_Play_11K((u16)g_Data_PCM_KickOff);
	ld	hl, #_g_Data_PCM_KickOff
	call	_PCM_Play_11K
;./soccerlg.c:133: PlayVGM(VGM_MATCH);
	ld	a, #0x01
	call	_PlayVGM
;./soccerlg.c:134: break;
	jp	00107$
;./soccerlg.c:135: case PCM_INGOAL:
00103$:
;./soccerlg.c:136: VGM_Pause();
	call	_VGM_Pause
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x2e
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x2e
;./soccerlg.c:138: PCM_Play_11K((u16)g_Data_PCM_InGoal_1);
	ld	hl, #_g_Data_PCM_InGoal_1
	call	_PCM_Play_11K
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x2f
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x2f
;./soccerlg.c:140: PCM_Play_11K((u16)g_Data_PCM_InGoal_2);
	ld	hl, #_g_Data_PCM_InGoal_2
	call	_PCM_Play_11K
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x30
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x30
;./soccerlg.c:142: PCM_Play_11K((u16)g_Data_PCM_InGoal_3);
	ld	hl, #_g_Data_PCM_InGoal_3
	call	_PCM_Play_11K
;./soccerlg.c:143: PCM_Play_11K((u16)g_Data_PCM_InGoal_3);
	ld	hl, #_g_Data_PCM_InGoal_3
	call	_PCM_Play_11K
;./soccerlg.c:144: VGM_Resume();
	call	_VGM_Resume
;./soccerlg.c:145: break;
	jp	00107$
;./soccerlg.c:146: case PCM_THROWIN:
00104$:
;./soccerlg.c:147: VGM_Pause();
	call	_VGM_Pause
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 2)
	ld	(hl), #0x31
;./soccerlg.c:149: PCM_Play_11K((u16)g_Data_PCM_ThrowIn);
	ld	hl, #_g_Data_PCM_ThrowIn
	call	_PCM_Play_11K
;./soccerlg.c:150: VGM_Resume();
	call	_VGM_Resume
;./soccerlg.c:151: break;
	jp	00107$
;./soccerlg.c:152: case PCM_GOALKICK:
00105$:
;./soccerlg.c:153: VGM_Pause();
	call	_VGM_Pause
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x32
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x32
;./soccerlg.c:155: PCM_Play_11K((u16)g_Data_PCM_GoalKick);
	ld	hl, #_g_Data_PCM_GoalKick
	call	_PCM_Play_11K
;./soccerlg.c:156: VGM_Resume();
	call	_VGM_Resume
;./soccerlg.c:157: break;
	jp	00107$
;./soccerlg.c:158: case PCM_TEAM_SELECTION:
00106$:
;./soccerlg.c:159: VGM_Pause();
	call	_VGM_Pause
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x33
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x33
;./soccerlg.c:161: PCM_Play_11K((u16)g_Data_PCM_TeamSelection);
	ld	hl, #_g_Data_PCM_TeamSelection
	call	_PCM_Play_11K
;./soccerlg.c:162: VGM_Resume();
	call	_VGM_Resume
;./soccerlg.c:164: }
00107$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	a, -1 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	a, -1 (ix)
	ld	(hl), a
;./soccerlg.c:165: SET_BANK_SEGMENT(1, currentSegment);
;./soccerlg.c:167: }
	inc	sp
	pop	ix
	ret
;./soccerlg.c:174: void PlayVGM(u8 vgmId){
;	---------------------------------
; Function PlayVGM
; ---------------------------------
_PlayVGM::
	ld	e, a
;./soccerlg.c:175: u8 currentSegment = GET_BANK_SEGMENT(1);
	ld	hl, #(_g_Bank0Segment + 1)
	ld	c, (hl)
;./soccerlg.c:176: SET_BANK_SEGMENT(1, g_MusicEntry[vgmId].Segment);
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
	ld	hl, #_g_MusicEntry
	add	hl, de
	ex	de, hl
	push	de
	pop	iy
	ld	a, 4 (iy)
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	(#(_g_Bank0Segment + 1)),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), a
;./soccerlg.c:177: VGM_Play(g_MusicEntry[vgmId].Data,TRUE);
	ex	de, hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ex	de, hl
	call	_VGM_Play
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), c
;./soccerlg.c:178: SET_BANK_SEGMENT(1, currentSegment);
;./soccerlg.c:179: }
	ret
;./soccerlg.c:185: void LoadMsxVdpFonts() {
;	---------------------------------
; Function LoadMsxVdpFonts
; ---------------------------------
_LoadMsxVdpFonts::
;./soccerlg.c:186: u8 currentSegment = GET_BANK_SEGMENT(1);
	ld	bc, #_g_Bank0Segment+1
	ld	a, (bc)
	ld	e, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	a, #0x1e
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x1e
;./soccerlg.c:188: Print_SetTextFont(g_Data_Fonts, 1);
	push	bc
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_g_Data_Fonts
	call	_Print_SetTextFont
	pop	de
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	a, e
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), e
;./soccerlg.c:189: SET_BANK_SEGMENT(1, currentSegment);
;./soccerlg.c:190: }
	ret
;./soccerlg.c:196: void V9990_LoadButtonsImageData(){
;	---------------------------------
; Function V9990_LoadButtonsImageData
; ---------------------------------
_V9990_LoadButtonsImageData::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;./soccerlg.c:197: u8 currentSegment = GET_BANK_SEGMENT(1);
	ld	a, (#(_g_Bank0Segment + 1) + 0)
	ld	-2 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x2a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x2a
;./soccerlg.c:199: V9_WriteVRAM(V9_P1_PGT_A, g_Data_Img_Buttons_Presentation_Part1, sizeof(g_Data_Img_Buttons_Presentation_Part1)); // Load tiles (part 1)
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	ld	de, #0x4000
	ld	hl, #_g_Data_Img_Buttons_Presentation_Part1
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x2b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x2b
;./soccerlg.c:201: V9_WriteVRAM(V9_P1_PGT_A + 16384, g_Data_Img_Buttons_Presentation_Part2, sizeof(g_Data_Img_Buttons_Presentation_Part2)); // Load tiles (part 2)	
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0x4000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	ld	de, #0x4000
	ld	hl, #_g_Data_Img_Buttons_Presentation_Part2
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: g_Bank0Segment[b] = s;
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x27
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x77ff
	ld	(hl), #0x27
;./soccerlg.c:203: V9_SetPalette(0, 16, g_Data_Palette_Buttons); 
	ld	bc, #_g_Data_Palette_Buttons+0
;./soccerlg.c:1028: ERROR: no line number 1028 in file ./soccerlg.c
;	spillPairReg hl
;	spillPairReg hl
	ld	hl, #0x0
;	spillPairReg hl
;	spillPairReg hl
00139$:
	ld	a, h
	sub	a, #0x10
	jr	NC, 00129$
	ld	-1 (ix), l
	inc	l
	push	hl
	push	bc
	ld	e, c
	ld	d, b
	ld	a, -1 (ix)
	call	_V9_SetPaletteEntry
	pop	bc
	pop	hl
	inc	bc
	inc	bc
	inc	bc
	inc	h
	jp	00139$
;./soccerlg.c:203: ERROR: no line number 203 in file ./soccerlg.c
00129$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	a, -2 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	a, -2 (ix)
	ld	(hl), a
;./soccerlg.c:204: ERROR: no line number 204 in file ./soccerlg.c
;./soccerlg.c:205: ERROR: no line number 205 in file ./soccerlg.c
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:207: ERROR: no line number 207 in file ./soccerlg.c
;	---------------------------------
; Function V9990_LoadP1LayerA
; ---------------------------------
_V9990_LoadP1LayerA::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;./soccerlg.c:208: ERROR: no line number 208 in file ./soccerlg.c
	ld	a, (#(_g_Bank0Segment + 1) + 0)
	ld	-1 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:353: ERROR: no line number 353 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	ld	de, #0x6a00
	xor	a, a
	call	_V9_FillVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x23
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x23
;./soccerlg.c:211: ERROR: no line number 211 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	ld	de, #0x4000
	ld	hl, #_g_Data_P1_LayerA_Std
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x24
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x24
;./soccerlg.c:213: ERROR: no line number 213 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x2000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	ld	de, #0x4000
	ld	hl, #_g_Data_LayerA_Menu_Teams_Part1
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x25
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x25
;./soccerlg.c:215: ERROR: no line number 215 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x6000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	ld	de, #0x1000
	ld	hl, #_g_Data_LayerA_Menu_Teams_Part2
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:362: ERROR: no line number 362 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xc000
	ld	hl, #0x0007
	call	_V9_SetWriteAddress
	ld	de, #0x1000
	ld	hl, #0x0000
	call	_V9_FillVRAM16_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	a, -1 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	a, -1 (ix)
	ld	(hl), a
;./soccerlg.c:217: ERROR: no line number 217 in file ./soccerlg.c
;./soccerlg.c:218: ERROR: no line number 218 in file ./soccerlg.c
	inc	sp
	pop	ix
	ret
;./soccerlg.c:220: ERROR: no line number 220 in file ./soccerlg.c
;	---------------------------------
; Function V9990_LoadImagePresentationData
; ---------------------------------
_V9990_LoadImagePresentationData::
;./soccerlg.c:221: ERROR: no line number 221 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl,#(_g_Bank0Segment + 1)
	ld	b,(hl)
	ld	(hl), #0x1f
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x1f
;./soccerlg.c:223: ERROR: no line number 223 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	push	bc
	ld	de, #0x4000
	ld	hl, #_g_Data_Img_Presentation_Part1
	call	_V9_WriteVRAM_CurrentAddr
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x20
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x20
;./soccerlg.c:225: ERROR: no line number 225 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x4000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	push	bc
	ld	de, #0x4000
	ld	hl, #_g_Data_Img_Presentation_Part2
	call	_V9_WriteVRAM_CurrentAddr
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x21
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x21
;./soccerlg.c:227: ERROR: no line number 227 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x8000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	push	bc
	ld	de, #0x4000
	ld	hl, #_g_Data_Img_Presentation_Part3
	call	_V9_WriteVRAM_CurrentAddr
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x22
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x22
;./soccerlg.c:229: ERROR: no line number 229 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xc000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	push	bc
	ld	de, #0x1400
	ld	hl, #_g_Data_Img_Presentation_Part4
	call	_V9_WriteVRAM_CurrentAddr
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), b
;./soccerlg.c:230: ERROR: no line number 230 in file ./soccerlg.c
;./soccerlg.c:231: ERROR: no line number 231 in file ./soccerlg.c
	ret
;./soccerlg.c:233: ERROR: no line number 233 in file ./soccerlg.c
;	---------------------------------
; Function V9990_LoadMenuTeamsData
; ---------------------------------
_V9990_LoadMenuTeamsData::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;./soccerlg.c:234: ERROR: no line number 234 in file ./soccerlg.c
	ld	a, (#(_g_Bank0Segment + 1) + 0)
	ld	-5 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x26
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x26
;./soccerlg.c:236: ERROR: no line number 236 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x2000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x4000
	ld	hl, #_g_Data_Teams_Gray_Part1
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x27
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x27
;./soccerlg.c:238: ERROR: no line number 238 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x6000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x1000
	ld	hl, #_g_Data_Teams_Gray_Part2
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:362: ERROR: no line number 362 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xe000
	ld	hl, #0x0007
	call	_V9_SetWriteAddress
	ld	de, #0x1000
	ld	hl, #0x0000
	call	_V9_FillVRAM16_CurrentAddr
;./soccerlg.c:240: ERROR: no line number 240 in file ./soccerlg.c
	ld	-4 (ix), #<(_g_Data_Palette_Gray_Scale)
	ld	-3 (ix), #>(_g_Data_Palette_Gray_Scale)
;./soccerlg.c:1028: ERROR: no line number 1028 in file ./soccerlg.c
	ld	-2 (ix), #0x10
	ld	-1 (ix), #0x00
00142$:
	ld	a, -1 (ix)
	sub	a, #0x10
	jr	NC, 00122$
	ld	c, -2 (ix)
	inc	-2 (ix)
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	a, c
	call	_V9_SetPaletteEntry
	ld	a, -4 (ix)
	add	a, #0x03
	ld	-4 (ix), a
	jr	NC, 00179$
	inc	-3 (ix)
00179$:
	inc	-1 (ix)
	jp	00142$
;./soccerlg.c:240: ERROR: no line number 240 in file ./soccerlg.c
00122$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x25
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x25
;./soccerlg.c:242: ERROR: no line number 242 in file ./soccerlg.c
	ld	bc, #_g_Data_Palette_Teams_Colors+0
;./soccerlg.c:1028: ERROR: no line number 1028 in file ./soccerlg.c
;	spillPairReg hl
;	spillPairReg hl
	ld	hl, #0x0
;	spillPairReg hl
;	spillPairReg hl
00145$:
	ld	a, h
	sub	a, #0x10
	jr	NC, 00132$
	ld	-1 (ix), l
	inc	l
	push	hl
	push	bc
	ld	e, c
	ld	d, b
	ld	a, -1 (ix)
	call	_V9_SetPaletteEntry
	pop	bc
	pop	hl
	inc	bc
	inc	bc
	inc	bc
	inc	h
	jp	00145$
;./soccerlg.c:242: ERROR: no line number 242 in file ./soccerlg.c
00132$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	a, -5 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	a, -5 (ix)
	ld	(hl), a
;./soccerlg.c:243: ERROR: no line number 243 in file ./soccerlg.c
;./soccerlg.c:244: ERROR: no line number 244 in file ./soccerlg.c
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:246: ERROR: no line number 246 in file ./soccerlg.c
;	---------------------------------
; Function V9990_LoadSprites
; ---------------------------------
_V9990_LoadSprites::
;./soccerlg.c:247: ERROR: no line number 247 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl,#(_g_Bank0Segment + 1)
	ld	b,(hl)
	ld	(hl), #0x28
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x28
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:739: ERROR: no line number 739 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	l, #0x02
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x19
	call	_V9_SetRegister
;./soccerlg.c:250: ERROR: no line number 250 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x8000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	push	bc
	ld	de, #0x4000
	ld	hl, #_g_Data_Sprites_Part1
	call	_V9_WriteVRAM_CurrentAddr
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x29
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x29
;./soccerlg.c:252: ERROR: no line number 252 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xc000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	push	bc
	ld	de, #0x4000
	ld	hl, #_g_Data_Sprites_Part2
	call	_V9_WriteVRAM_CurrentAddr
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), b
;./soccerlg.c:253: ERROR: no line number 253 in file ./soccerlg.c
;./soccerlg.c:255: ERROR: no line number 255 in file ./soccerlg.c
	ret
;./soccerlg.c:257: ERROR: no line number 257 in file ./soccerlg.c
;	---------------------------------
; Function V9990_PrintLayerAStringAtPos
; ---------------------------------
_V9990_PrintLayerAStringAtPos::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ld	-1 (ix), a
	ld	-2 (ix), l
;./soccerlg.c:260: ERROR: no line number 260 in file ./soccerlg.c
	ld	e, 4 (ix)
	ld	d, 5 (ix)
00101$:
	ld	a, (de)
	or	a, a
	jr	Z, 00106$
;./soccerlg.c:261: ERROR: no line number 261 in file ./soccerlg.c
	inc	de
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: ERROR: no line number 1426 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
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
	ld	c, -1 (ix)
	ld	b, #0x00
	add	hl, bc
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	c, a
	ld	b, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	adc	a, #0x07
	ld	c, a
	jr	NC, 00119$
	inc	b
00119$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: ERROR: no line number 396 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ex	de, hl
	push	hl
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_SetWriteAddress
	pop	de
	pop	hl
	push	hl
	call	_V9_Poke16_CurrentAddr
;./soccerlg.c:262: ERROR: no line number 262 in file ./soccerlg.c
	inc	-1 (ix)
;./soccerlg.c:263: ERROR: no line number 263 in file ./soccerlg.c
	jp	00101$
00106$:
;./soccerlg.c:266: ERROR: no line number 266 in file ./soccerlg.c
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:268: ERROR: no line number 268 in file ./soccerlg.c
;	---------------------------------
; Function WaitV9990Synch
; ---------------------------------
_WaitV9990Synch::
;./soccerlg.c:270: ERROR: no line number 270 in file ./soccerlg.c
00101$:
	ld	a, (_g_VSynch+0)
	or	a, a
	jr	Z, 00101$
;./soccerlg.c:271: ERROR: no line number 271 in file ./soccerlg.c
	ld	hl, #_g_VSynch
	ld	(hl), #0x00
;./soccerlg.c:272: ERROR: no line number 272 in file ./soccerlg.c
	ld	iy, #_g_FrameCounter
	inc	0 (iy)
;./soccerlg.c:273: ERROR: no line number 273 in file ./soccerlg.c
	ld	a, (_g_FrameCounter+0)
	sub	a, #0x3c
	jr	NZ, 00105$
;./soccerlg.c:274: ERROR: no line number 274 in file ./soccerlg.c
	ld	0 (iy), #0x00
00105$:
;./soccerlg.c:276: ERROR: no line number 276 in file ./soccerlg.c
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x13
	ret	NZ
;./soccerlg.c:277: ERROR: no line number 277 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl,#(_g_Bank0Segment + 1)
	ld	c,(hl)
	ld	(hl), #0x3c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x3c
;./soccerlg.c:279: ERROR: no line number 279 in file ./soccerlg.c
	push	bc
	call	_VGM_Decode
	call	_PSG_Apply
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), c
;./soccerlg.c:282: ERROR: no line number 282 in file ./soccerlg.c
;./soccerlg.c:284: ERROR: no line number 284 in file ./soccerlg.c
	ret
;./soccerlg.c:286: ERROR: no line number 286 in file ./soccerlg.c
;	---------------------------------
; Function V9_InterruptVBlank
; ---------------------------------
_V9_InterruptVBlank::
;./soccerlg.c:288: ERROR: no line number 288 in file ./soccerlg.c
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0f
	jr	NZ, 00102$
;./soccerlg.c:289: ERROR: no line number 289 in file ./soccerlg.c
	ld	hl, #_g_Timer
	inc	(hl)
;./soccerlg.c:290: ERROR: no line number 290 in file ./soccerlg.c
	ret
00102$:
;./soccerlg.c:294: ERROR: no line number 294 in file ./soccerlg.c
	ld	iy, #_g_VSynch
	ld	0 (iy), #0x01
;./soccerlg.c:295: ERROR: no line number 295 in file ./soccerlg.c
	ld	a, (_g_FieldScrollingActionInProgress+0)
	inc	a
	ret	Z
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:250: ERROR: no line number 250 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #(_g_Bank0Segment + 1)
	ld	(hl), #0x02
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0x77ff
	ld	(hl), #0x02
;./soccerlg.c:297: ERROR: no line number 297 in file ./soccerlg.c
;./soccerlg.c:302: ERROR: no line number 302 in file ./soccerlg.c
	jp	_TickGameFieldScrolling
;./soccerlg.c:304: ERROR: no line number 304 in file ./soccerlg.c
;	---------------------------------
; Function InterruptHook
; ---------------------------------
_InterruptHook::
;./soccerlg.c:316: ERROR: no line number 316 in file ./soccerlg.c
	in	a, (0x99)
	in	a, (0x66)
	out	(0x66), a
	rra
	call	c, _V9_InterruptVBlank
;./soccerlg.c:317: ERROR: no line number 317 in file ./soccerlg.c
	ret
;./soccerlg.c:322: ERROR: no line number 322 in file ./soccerlg.c
;	---------------------------------
; Function main
; ---------------------------------
_main::
;./soccerlg.c:323: ERROR: no line number 323 in file ./soccerlg.c
	ld	bc, #_InterruptHook
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h:37: ERROR: no line number 37 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h
	ld	hl, #0xfd9a
	ld	(hl), #0xc3
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h:38: ERROR: no line number 38 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h
	ld	(0xfd9b), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h:62: ERROR: no line number 62 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h
	ld	l, #0x9f
	ld	(hl), #0xc9
;./soccerlg.c:325: ERROR: no line number 325 in file ./soccerlg.c
	ld	de, #_MainSub
	ld	a, #0x02
;./soccerlg.c:326: ERROR: no line number 326 in file ./soccerlg.c
	jp	_Trampoline_VOID
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
