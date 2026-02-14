;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s2_b1
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _VGM_Stop
	.globl _DEBUG_INIT
	.globl _TickAI
	.globl _TickBallFlying
	.globl _SetPlayerTarget
	.globl _ShowMenu
	.globl _TickUpdateTime
	.globl _TickBallCollision
	.globl _UpdatePassTarget
	.globl _TickGoalkeeperAnimation
	.globl _TickCheckBallBoundaries
	.globl _TickTeamJoystick
	.globl _UpdateSpritesPositions
	.globl _TickGoalCelebration
	.globl _TickPonPonGirlsAnimation
	.globl _V9990_PrintLayerAStringAtPos
	.globl _V9990_InitMenuLayers
	.globl _PutPonPonGirlSprite
	.globl _PlayAyFx
	.globl _GetTeamStats
	.globl _V9990_ClearTextFromLayerA
	.globl _PlayPcm
	.globl _PlayVGM
	.globl _Trampoline_U8
	.globl _Trampoline_VOID_P1
	.globl _Trampoline_VOID
	.globl _V9990_LoadImagePresentationData
	.globl _LoadMsxVdpFonts
	.globl _V9990_WaitSynch
	.globl _V9_Detect
	.globl _V9_SetPaletteEntry
	.globl _V9_SetScrollingBY
	.globl _V9_SetColorMode
	.globl _V9_SetScreenMode
	.globl _V9_WriteVRAM_CurrentAddr
	.globl _V9_SetWriteAddress
	.globl _V9_GetRegister
	.globl _V9_SetRegister16
	.globl _V9_SetRegister
	.globl _V9_SetPort
	.globl _Print_SetColor
	.globl _Print_DrawText
	.globl _VDP_RegWriteBakMask
	.globl _VDP_SetMode
	.globl _VDP_ClearVRAM
	.globl _Keyboard_IsKeyPressed
	.globl _Joystick_Read
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
	.globl _IsTeamJoystickTriggerPressed
	.globl _GetJoystickDirection
	.globl _InitVariables
	.globl _LoadPresentation
	.globl _TickGameFieldScrolling
	.globl _MainSub
	.globl _MainGameLoop
	.globl _TickShowKickOff
	.globl _TickShotCursor
	.globl _EnforcePenaltyBoxRestriction
	.globl _GetPlayerIdByRole
	.globl _GetClosestPlayerToBall
	.globl _SetPlayerBallPossession
	.globl _PutBallOnPlayerFeet
	.globl _GetNoMovingPlayerPatternId
	.globl _TickCornerKick
	.globl _IsJoystickTriggerPressed
	.globl _PerformPass
	.globl _IsOffside
	.globl _TickGoalKick
	.globl _GoalkeeperWithBall
	.globl _TickThrowIn
	.globl _TickPlayerToOwnTarget
	.globl _PutPlayerSprite
	.globl _UpdatePlayerPatternByDirection
	.globl _TickActiveFieldZone
	.globl _GetPatternIdByPoseAndDirection
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
_TickCornerKick_s_ForceKickTimer_65537_1376:
	.ds 2
_TickCornerKick_joyMoved_131078_1409:
	.ds 1
_TickCornerKick_t1Latched_131079_1414:
	.ds 1
_TickThrowIn_s_ThrowTargetId_65537_1492:
	.ds 1
_TickThrowIn_s_JoyMoved_65537_1492:
	.ds 1
_TickThrowIn_s_ForceThrowTimer_65537_1492:
	.ds 2
_TickPlayerToOwnTarget_s_GkMoveTick_131072_1554:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:625: static u16 s_ForceKickTimer = 0;
	ld	hl, #0x0000
	ld	(_TickCornerKick_s_ForceKickTimer_65537_1376), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:774: static bool joyMoved = false;
	ld	iy, #_TickCornerKick_joyMoved_131078_1409
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:799: static bool t1Latched = false;
	ld	iy, #_TickCornerKick_t1Latched_131079_1414
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1243: static u8 s_ThrowTargetId = NO_VALUE;
	ld	hl, #_TickThrowIn_s_ThrowTargetId_65537_1492
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1244: static bool s_JoyMoved = false;
	ld	iy, #_TickThrowIn_s_JoyMoved_65537_1492
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1245: static u16 s_ForceThrowTimer = 0;
	ld	hl, #0x0000
	ld	(_TickThrowIn_s_ForceThrowTimer_65537_1492), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1534: static u8 s_GkMoveTick = 0;
	ld	iy, #_TickPlayerToOwnTarget_s_GkMoveTick_131072_1554
	ld	0 (iy), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _SEG2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:25: bool IsTeamJoystickTriggerPressed(){		
;	---------------------------------
; Function IsTeamJoystickTriggerPressed
; ---------------------------------
_IsTeamJoystickTriggerPressed::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:26: u8 joyStat = Joystick_Read(JOY_PORT_1);
	ld	l, #0x0f
;	spillPairReg hl
;	spillPairReg hl
	call	_Joystick_Read
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:27: if (IS_JOY_PRESSED(joyStat, JOY_INPUT_TRIGGER_A))
	bit	4, l
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:29: return true;
	ld	a, #0x01
	ret
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:31: if(Keyboard_IsKeyPressed(KEY_SPACE))
	ld	a, #0x08
	call	_Keyboard_IsKeyPressed
	or	a, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:33: return true;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:35: return FALSE;
	ld	a, #0x01
	ret	NZ
	xor	a, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:36: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:39: u8 GetJoystickDirection(){
;	---------------------------------
; Function GetJoystickDirection
; ---------------------------------
_GetJoystickDirection::
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/input.h:182: u8 in = ~Joystick_Read(port);
	ld	l, #0x0f
;	spillPairReg hl
;	spillPairReg hl
	call	_Joystick_Read
	ld	a, l
	cpl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:40: u8 dir = Joystick_GetDirection(JOY_PORT_1);
	and	a, #0x0f
	ld	b, a
	ld	e, b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:41: u8 retValue=DIRECTION_NONE;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:42: switch (dir){
	ld	a, #0x0a
	sub	a, b
	jr	C, 00109$
	ld	d, #0x00
	ld	hl, #00229$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00229$:
	jp	00109$
	jp	00101$
	jp	00102$
	jp	00109$
	jp	00103$
	jp	00106$
	jp	00108$
	jp	00109$
	jp	00104$
	jp	00105$
	jp	00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:43: case JOY_INPUT_DIR_UP:
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:44: retValue=DIRECTION_UP;
	ld	c, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:45: break;
	jp	00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:46: case JOY_INPUT_DIR_DOWN:
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:47: retValue=DIRECTION_DOWN;
	ld	c, #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:48: break;
	jp	00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:49: case JOY_INPUT_DIR_LEFT:
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:50: retValue=DIRECTION_LEFT;
	ld	c, #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:51: break;
	jp	00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:52: case JOY_INPUT_DIR_RIGHT:
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:53: retValue=DIRECTION_RIGHT;
	ld	c, #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:54: break;
	jp	00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:55: case JOY_INPUT_DIR_UP_RIGHT:
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:56: retValue=DIRECTION_UP_RIGHT;
	ld	c, #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:57: break;
	jp	00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:58: case JOY_INPUT_DIR_UP_LEFT:
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:59: retValue=DIRECTION_UP_LEFT;
	ld	c, #0x08
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:60: break;
	jp	00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:61: case JOY_INPUT_DIR_DOWN_RIGHT:
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:62: retValue=DIRECTION_DOWN_RIGHT;
	ld	c, #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:63: break;
	jp	00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:64: case JOY_INPUT_DIR_DOWN_LEFT:
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:65: retValue=DIRECTION_DOWN_LEFT;
	ld	c, #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:67: }
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:68: if(retValue==DIRECTION_NONE){
	ld	a, c
	or	a, a
	jp	NZ, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:69: if(Keyboard_IsKeyPressed(KEY_LEFT) && Keyboard_IsKeyPressed(KEY_UP))
	push	bc
	ld	a, #0x48
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00111$
	push	bc
	ld	a, #0x58
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:71: retValue=DIRECTION_UP_LEFT;
	ld	c, #0x08
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:73: if(Keyboard_IsKeyPressed(KEY_LEFT) && Keyboard_IsKeyPressed(KEY_DOWN))
	push	bc
	ld	a, #0x48
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00114$
	push	bc
	ld	a, #0x68
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:75: retValue=DIRECTION_DOWN_LEFT;
	ld	c, #0x06
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:77: if(Keyboard_IsKeyPressed(KEY_RIGHT) && Keyboard_IsKeyPressed(KEY_DOWN))
	push	bc
	ld	a, #0x78
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00117$
	push	bc
	ld	a, #0x68
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:79: retValue=DIRECTION_DOWN_RIGHT;
	ld	c, #0x04
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:81: if(Keyboard_IsKeyPressed(KEY_RIGHT) && Keyboard_IsKeyPressed(KEY_UP))
	push	bc
	ld	a, #0x78
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00120$
	push	bc
	ld	a, #0x58
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:83: retValue=DIRECTION_UP_RIGHT;
	ld	c, #0x02
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:85: if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_LEFT))
	ld	a, c
	or	a, a
	jr	NZ, 00123$
	push	bc
	ld	a, #0x48
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:87: retValue=DIRECTION_LEFT;
	ld	c, #0x07
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:89: if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_RIGHT))
	ld	a, c
	or	a, a
	jr	NZ, 00126$
	push	bc
	ld	a, #0x78
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:91: retValue=DIRECTION_RIGHT;
	ld	c, #0x03
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:93: if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_UP))
	ld	a, c
	or	a, a
	jr	NZ, 00129$
	push	bc
	ld	a, #0x58
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:95: retValue=DIRECTION_UP;
	ld	c, #0x01
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:97: if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_DOWN))
	ld	a, c
	or	a, a
	jr	NZ, 00135$
	push	bc
	ld	a, #0x68
	call	_Keyboard_IsKeyPressed
	pop	bc
	or	a, a
	jr	Z, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:99: retValue=DIRECTION_DOWN;
	ld	c, #0x05
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:102: return retValue;
	ld	a, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:103: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:106: void InitVariables(){
;	---------------------------------
; Function InitVariables
; ---------------------------------
_InitVariables::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:107: g_ShowButtonsInfo=true;
	ld	hl, #_g_ShowButtonsInfo
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:109: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:110: g_Ball.PassTargetPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:111: g_Ball.ShotActive = 0;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:112: g_Ball.LastTouchTeamId = NO_VALUE;
	ld	hl, #(_g_Ball + 14)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:113: g_Ball.ComingFromRestart = 0;
	ld	hl, #(_g_Ball + 29)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:114: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:117: void LoadPresentation(){
;	---------------------------------
; Function LoadPresentation
; ---------------------------------
_LoadPresentation::
	push	af
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:118: V9_SetScreenMode(V9_MODE_B1);
	ld	a, #0x03
	call	_V9_SetScreenMode
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:120: V9_SetColorMode(V9_COLOR_BD8);
	ld	a, #0x03
	call	_V9_SetColorMode
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:121: const u8 colorBlack[3] = { 0, 0, 0 };
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	xor	a, a
	ld	(de), a
	ld	c, e
	ld	b, d
	inc	bc
	xor	a, a
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:122: V9_SetPaletteEntry(0, colorBlack);    
	xor	a, a
	call	_V9_SetPaletteEntry
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:480: inline void V9_SetBackgroundColor(u8 color) { V9_SetRegister(15, color); }
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:125: V9990_LoadImagePresentationData(); 
	call	_V9990_LoadImagePresentationData
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:128: g_MatchStatus=MATCH_PRESENTATION;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0f
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:129: g_Timer=0;
	ld	hl, #_g_Timer
	ld	(hl), #0x00
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
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:606: inline void V9_SetInterruptLine(u16 line) { V9_SetRegister16(10, line); }
	ld	de, #0x0047
	ld	a, #0x0a
	call	_V9_SetRegister16
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:133: while (g_Timer!=200)
00101$:
	ld	a, (_g_Timer+0)
	sub	a, #0xc8
	jr	NZ, 00101$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:137: g_MatchStatus=MATCH_NOT_STARTED;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:139: V9_SetDisplayEnable(FALSE);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:141: }
	pop	af
	inc	sp
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:144: void TickGameFieldScrolling(){
;	---------------------------------
; Function TickGameFieldScrolling
; ---------------------------------
_TickGameFieldScrolling::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:146: switch (g_FieldScrollingActionInProgress) {
	ld	a, (_g_FieldScrollingActionInProgress+0)
	or	a, a
	jr	Z, 00101$
	ld	a, (_g_FieldScrollingActionInProgress+0)
	dec	a
	jr	Z, 00104$
	ld	a, (_g_FieldScrollingActionInProgress+0)
	sub	a, #0x02
	jp	Z,00115$
	jp	00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:147: case FIELD_NORTH_ZONE:
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:148: g_FieldCurrentYPosition = g_FieldCurrentYPosition - g_FieldScrollSpeed;
	ld	a, (_g_FieldScrollSpeed+0)
	ld	c, a
	ld	b, #0x00
	ld	hl, #_g_FieldCurrentYPosition
	ld	a, (hl)
	sub	a, c
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	sbc	a, b
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:149: if (g_FieldCurrentYPosition < 0) {
	ld	a, (_g_FieldCurrentYPosition+1)
	bit	7, a
	jp	Z, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:150: g_FieldCurrentYPosition = 1;
	ld	hl, #0x0001
	ld	(_g_FieldCurrentYPosition), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:151: g_FieldScrollingActionInProgress = NO_VALUE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:152: g_ActiveFieldZone = FIELD_NORTH_ZONE;
	ld	hl, #_g_ActiveFieldZone
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:154: break;
	jp	00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:155: case FIELD_CENTRAL_ZONE:
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:156: if (g_FieldCurrentYPosition != 136) {
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x88
	ld	iy, #_g_FieldCurrentYPosition
	or	a, 1 (iy)
	jr	Z, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:148: g_FieldCurrentYPosition = g_FieldCurrentYPosition - g_FieldScrollSpeed;
	ld	a, (_g_FieldScrollSpeed+0)
	ld	c, a
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:157: if (g_FieldCurrentYPosition > FIELD_CENTRAL_Y) {
	ld	a, #0x8c
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	PO, 00185$
	xor	a, #0x80
00185$:
	jp	P, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:158: g_FieldCurrentYPosition = g_FieldCurrentYPosition - g_FieldScrollSpeed;
	ld	hl, #_g_FieldCurrentYPosition
	ld	a, (hl)
	sub	a, c
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	sbc	a, b
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:159: if(g_FieldCurrentYPosition < 136) g_FieldCurrentYPosition = 136;
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x88
	ld	a, (_g_FieldCurrentYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00118$
	ld	hl, #0x0088
	ld	(_g_FieldCurrentYPosition), hl
	jp	00118$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:162: g_FieldCurrentYPosition = g_FieldCurrentYPosition + g_FieldScrollSpeed;
	ld	a, c
	ld	iy, #_g_FieldCurrentYPosition
	add	a, 0 (iy)
	ld	(_g_FieldCurrentYPosition+0), a
	ld	a, b
	adc	a, 1 (iy)
	ld	(_g_FieldCurrentYPosition+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:163: if(g_FieldCurrentYPosition > 136) g_FieldCurrentYPosition = 136;
	ld	a, #0x88
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	PO, 00186$
	xor	a, #0x80
00186$:
	jp	P, 00118$
	ld	hl, #0x0088
	ld	(_g_FieldCurrentYPosition), hl
	jp	00118$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:168: g_FieldScrollingActionInProgress = NO_VALUE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:169: g_ActiveFieldZone = FIELD_CENTRAL_ZONE;
	ld	hl, #_g_ActiveFieldZone
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:171: break;
	jp	00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:172: case FIELD_SOUTH_ZONE:
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:173: g_FieldCurrentYPosition = g_FieldCurrentYPosition + g_FieldScrollSpeed;
	ld	a, (_g_FieldScrollSpeed+0)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	ld	iy, #_g_FieldCurrentYPosition
	add	a, 0 (iy)
	ld	(_g_FieldCurrentYPosition+0), a
	ld	a, b
	adc	a, 1 (iy)
	ld	(_g_FieldCurrentYPosition+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:174: if (g_FieldCurrentYPosition >= FIELD_BOTTOM_Y) {
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x18
	ld	a, (_g_FieldCurrentYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	C, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:175: g_ActiveFieldZone = FIELD_SOUTH_ZONE;
	ld	hl, #_g_ActiveFieldZone
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:176: g_FieldScrollingActionInProgress = NO_VALUE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:179: }
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:180: V9_SetScrollingBY(g_FieldCurrentYPosition);
	ld	hl, (_g_FieldCurrentYPosition)
	call	_V9_SetScrollingBY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:181: for(u8 i=0;i<6;i++){
	ld	b, #0x00
00121$:
	ld	a, b
	sub	a, #0x06
	ret	NC
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:182: Trampoline_VOID_P1(3,PutPonPonGirlSprite,i);
	push	bc
	push	bc
	inc	sp
	ld	de, #_PutPonPonGirlSprite
	ld	a, #0x03
	call	_Trampoline_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:181: for(u8 i=0;i<6;i++){
	inc	b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:184: }
	jp	00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:187: void MainSub(){
;	---------------------------------
; Function MainSub
; ---------------------------------
_MainSub::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:189: DEBUG_INIT();
	call	_DEBUG_INIT
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:191: InitVariables();
	call	_InitVariables
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:193: V9_SetPort(V9_P15, 0);
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x6f
	call	_V9_SetPort
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:195: VDP_SetMode(VDP_MODE_SCREEN0);
	xor	a, a
	call	_VDP_SetMode
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:712: inline void VDP_EnableVBlank(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_IE0, enable ? R01_IE0 : 0); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0xdf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:197: VDP_ClearVRAM();
	call	_VDP_ClearVRAM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:200: LoadMsxVdpFonts();
	call	_LoadMsxVdpFonts
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:202: Print_SetColor(15, 1);
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_Print_SetColor
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	bc, #_g_PrintData + 5
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:204: Print_DrawText("Soccer League - 2026 Fausto Pracek");
	push	bc
	ld	hl, #___str_1
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:206: Print_DrawText("fpracek@gmail.com");
	push	bc
	ld	hl, #___str_2
	call	_Print_DrawText
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:208: const c8* str = "V9990 not found!";
	ld	de, #___str_0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:209: bool v9990IsFound=V9_Detect();
	push	bc
	push	de
	call	_V9_Detect
	pop	de
	pop	bc
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:211: if (v9990IsFound){
	or	a, a
	jr	Z, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:212: str = "V9990 found!";
	ld	de, #___str_3
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:214: Print_DrawText("The game is running on V9990 monitor.");
	push	bc
	push	de
	ld	hl, #___str_4
	call	_Print_DrawText
	pop	de
	pop	bc
00102$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 6)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:217: Print_DrawText(str);
	ex	de, hl
	call	_Print_DrawText
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:218: if(!v9990IsFound){
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00105$
00113$:
	jp	00113$
00105$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:224: LoadPresentation();
	call	_LoadPresentation
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:225: Trampoline_VOID(3,V9990_InitMenuLayers);
	ld	de, #_V9990_InitMenuLayers
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:226: PlayVGM(VGM_MENU);
	xor	a, a
	call	_PlayVGM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:227: Trampoline_VOID(4,ShowMenu);
	ld	de, #_ShowMenu
	ld	a, #0x04
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:228: VGM_Stop();
	call	_VGM_Stop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:229: MainGameLoop();
	call	_MainGameLoop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:230: V9_SetPort(V9_P15, 0x10);	
	ld	l, #0x10
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x6f
	call	_V9_SetPort
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:231: } 
	inc	sp
	pop	ix
	ret
___str_0:
	.ascii "V9990 not found!"
	.db 0x00
___str_1:
	.ascii "Soccer League - 2026 Fausto Pracek"
	.db 0x00
___str_2:
	.ascii "fpracek@gmail.com"
	.db 0x00
___str_3:
	.ascii "V9990 found!"
	.db 0x00
___str_4:
	.ascii "The game is running on V9990 monitor."
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:233: void MainGameLoop(){
;	---------------------------------
; Function MainGameLoop
; ---------------------------------
_MainGameLoop::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:234: u8 TickAiPlayerId=0;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:235: u8 AiTickSpeed=0;
	ld	-1 (ix), #0x00
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:238: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:239: if(g_PcmStartPlaying){
	ld	a, (_g_PcmStartPlaying+0)
	or	a, a
	jr	Z, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:240: g_PcmStartPlaying=false;
	ld	hl, #_g_PcmStartPlaying
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:241: PlayPcm(g_PmcSoundPlaying);
	ld	a, (_g_PmcSoundPlaying+0)
	call	_PlayPcm
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:244: if(g_MatchStatus==MATCH_NOT_STARTED && g_FieldScrollingActionInProgress==NO_VALUE && g_ActiveFieldZone==FIELD_CENTRAL_ZONE){
	ld	a, (_g_MatchStatus+0)
	or	a, a
	jr	NZ, 00105$
	ld	a, (_g_FieldScrollingActionInProgress+0)
	inc	a
	jr	NZ, 00105$
	ld	a, (_g_ActiveFieldZone+0)
	dec	a
	jr	NZ, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:245: g_MatchStatus=MATCH_BEFORE_KICK_OFF;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:246: for(u8 i=0;i<15;i++){
	ld	b, #0x00
00142$:
	ld	a, b
	sub	a, #0x0f
	jr	NC, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:247: Trampoline_VOID_P1(4,SetPlayerTarget,i);
	push	bc
	push	bc
	inc	sp
	ld	de, #_SetPlayerTarget
	ld	a, #0x04
	call	_Trampoline_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:246: for(u8 i=0;i<15;i++){
	inc	b
	jp	00142$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:250: TickCornerKick(); 
	call	_TickCornerKick
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:251: if(g_MatchStatus == MATCH_BEFORE_GOAL_KICK){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x05
	jr	NZ, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:252: TickGoalKick();
	call	_TickGoalKick
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:254: TickThrowIn();
	call	_TickThrowIn
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:256: Trampoline_VOID(3,TickPonPonGirlsAnimation);
	ld	de, #_TickPonPonGirlsAnimation
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:258: TickPlayerToOwnTarget();
	call	_TickPlayerToOwnTarget
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:260: if (g_SoundRequest != NO_VALUE) {
	ld	a, (_g_SoundRequest+0)
	inc	a
	jr	Z, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:261: PlayPcm(g_SoundRequest);
	ld	a, (_g_SoundRequest+0)
	call	_PlayPcm
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:262: g_SoundRequest = NO_VALUE;
	ld	hl, #_g_SoundRequest
	ld	(hl), #0xff
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:264: Trampoline_VOID(3,TickGoalCelebration);
	ld	de, #_TickGoalCelebration
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:265: TickActiveFieldZone();
	call	_TickActiveFieldZone
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:266: if(g_FieldScrollingActionInProgress==NO_VALUE){
	ld	a, (_g_FieldScrollingActionInProgress+0)
	inc	a
	jr	NZ, 00125$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:268: if(g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jr	Z, 00121$
	sub	a, #0x0d
	jr	NZ, 00125$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:270: if(AiTickSpeed >= 2){ // Speed up AI cycle (was 5)
	ld	a, -1 (ix)
	sub	a, #0x02
	jr	C, 00125$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:271: AiTickSpeed=0;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:272: Trampoline_VOID_P1(5,TickAI,REFEREE);
	ld	a, #0x0e
	push	af
	inc	sp
	ld	de, #_TickAI
	ld	a, #0x05
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:273: Trampoline_VOID_P1(5,TickAI,TickAiPlayerId);
	ld	a, -2 (ix)
	push	af
	inc	sp
	ld	de, #_TickAI
	ld	a, #0x05
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:274: TickAiPlayerId++;
	inc	-2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:275: if(TickAiPlayerId==14){ // Only iterate 0-13 (Players)
	ld	a, -2 (ix)
	sub	a, #0x0e
	jr	NZ, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:276: TickAiPlayerId=0;
	ld	-2 (ix), #0x00
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:280: if (g_Ball.PossessionPlayerId != NO_VALUE && g_Ball.PossessionPlayerId < 14) {
	ld	hl, #_g_Ball+6
	ld	b, (hl)
	ld	a, b
	inc	a
	jr	Z, 00125$
	ld	a, b
	sub	a, #0x0e
	jr	NC, 00125$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:282: if (g_Ball.PossessionPlayerId != TickAiPlayerId) {
	ld	a, -2 (ix)
	sub	a, b
	jr	Z, 00125$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:283: Trampoline_VOID_P1(5,TickAI,g_Ball.PossessionPlayerId);
	push	bc
	inc	sp
	ld	de, #_TickAI
	ld	a, #0x05
	call	_Trampoline_VOID_P1
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:290: EnforcePenaltyBoxRestriction();
	call	_EnforcePenaltyBoxRestriction
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:291: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:292: TickShotCursor();
	call	_TickShotCursor
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:293: Trampoline_VOID(4,TickUpdateTime);
	ld	de, #_TickUpdateTime
	ld	a, #0x04
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:294: TickShowKickOff();
	call	_TickShowKickOff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:295: if(g_FieldScrollingActionInProgress==NO_VALUE){
	ld	a, (_g_FieldScrollingActionInProgress+0)
	inc	a
	jr	NZ, 00127$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:296: Trampoline_VOID(4,TickBallCollision);
	ld	de, #_TickBallCollision
	ld	a, #0x04
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:297: Trampoline_VOID(4,TickBallFlying);
	ld	de, #_TickBallFlying
	ld	a, #0x04
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:298: Trampoline_VOID(4,UpdatePassTarget);
	ld	de, #_UpdatePassTarget
	ld	a, #0x04
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:299: Trampoline_VOID(4,TickGoalkeeperAnimation);
	ld	de, #_TickGoalkeeperAnimation
	ld	a, #0x04
	call	_Trampoline_VOID
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:301: Trampoline_VOID(4,TickCheckBallBoundaries);
	ld	de, #_TickCheckBallBoundaries
	ld	a, #0x04
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:302: u8 joyDir=Trampoline_U8(2,GetJoystickDirection);
	ld	de, #_GetJoystickDirection
	ld	a, #0x02
	call	_Trampoline_U8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:303: Trampoline_VOID_P1(3,TickTeamJoystick,joyDir);
	push	af
	inc	sp
	ld	de, #_TickTeamJoystick
	ld	a, #0x03
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:305: AiTickSpeed++;
	inc	-1 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:307: if (g_ActionCooldown > 0) {
	ld	a, (_g_ActionCooldown+0)
	or	a, a
	jr	Z, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:308: g_ActionCooldown--;
	ld	hl, #_g_ActionCooldown
	dec	(hl)
	jp	00137$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:311: if (g_Team1ActivePlayer != NO_VALUE && g_Players[g_Team1ActivePlayer].Status == PLAYER_STATUS_POSITIONED) 
	ld	a, (_g_Team1ActivePlayer+0)
	inc	a
	jr	Z, 00129$
	ld	bc, #_g_Players+0
	ld	de, (_g_Team1ActivePlayer)
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
	ld	bc, #0x0012
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, c
	sub	a, #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:312: g_Players[g_Team1ActivePlayer].Status = PLAYER_STATUS_NONE;
	or	a,b
	jr	NZ, 00129$
	ld	(hl), a
	inc	hl
	ld	(hl), a
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:313: if (g_GameWith2Players && g_Team2ActivePlayer != NO_VALUE && g_Players[g_Team2ActivePlayer].Status == PLAYER_STATUS_POSITIONED)
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00137$
	ld	a, (_g_Team2ActivePlayer+0)
	inc	a
	jr	Z, 00137$
	ld	bc, (_g_Team2ActivePlayer)
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
	ld	bc, #0x0012
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, c
	sub	a, #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:314: g_Players[g_Team2ActivePlayer].Status = PLAYER_STATUS_NONE;
	or	a,b
	jr	NZ, 00137$
	ld	(hl), a
	inc	hl
	ld	(hl), a
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:317: if (g_ShootCooldown > 0) {
	ld	a, (_g_ShootCooldown+0)
	or	a, a
	jp	Z, 00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:318: g_ShootCooldown--;
	ld	hl, #_g_ShootCooldown
	dec	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:321: }
	jp	00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:323: void TickShowKickOff(){
;	---------------------------------
; Function TickShowKickOff
; ---------------------------------
_TickShowKickOff::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:324: if(g_MatchStatus==MATCH_KICK_OFF){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x07
	jr	NZ, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:325: if(g_Timer==1){
	ld	a, (_g_Timer+0)
	dec	a
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:326: V9990_PrintLayerAStringAtPos(12,18,"KICK OFF");
	ld	hl, #___str_5
	push	hl
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:327: g_PmcSoundPlaying=PCM_KICKOFF;
	ld	hl, #_g_PmcSoundPlaying
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:328: g_PcmStartPlaying=TRUE;
	ld	hl, #_g_PcmStartPlaying
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:329: g_Timer=2;
	ld	hl, #_g_Timer
	ld	(hl), #0x02
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:331: if(g_Timer==3){
	ld	a, (_g_Timer+0)
	sub	a, #0x03
	jr	NZ, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:332: g_PmcSoundPlaying=NO_VALUE;
	ld	hl, #_g_PmcSoundPlaying
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:333: V9990_ClearTextFromLayerA(12,18,9);
	ld	a, #0x09
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:334: g_Timer=NO_VALUE;
	ld	hl, #_g_Timer
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:336: if(g_RestartKickTeamId==TEAM_1){
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:337: playerId=GetPlayerIdByRole(TEAM_1,PLAYER_ROLE_RIGHT_HALFFIELDER);
	ld	l, #0x04
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_GetPlayerIdByRole
	ld	c, a
	jp	00105$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:340: playerId=GetPlayerIdByRole(TEAM_2,PLAYER_ROLE_LEFT_HALFFIELDER);
	ld	l, #0x03
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x02
	call	_GetPlayerIdByRole
	ld	c, a
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:342: PutBallOnPlayerFeet(playerId);
	ld	a, c
	call	_PutBallOnPlayerFeet
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:343: g_MatchStatus=MATCH_IN_ACTION;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:346: if(g_MatchStatus==MATCH_BEFORE_OFFSIDE){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0e
	ret	NZ
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:347: if(g_Timer >= 2) { 
	ld	a, (_g_Timer+0)
	sub	a, #0x02
	ret	C
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:348: V9990_ClearTextFromLayerA(10,18,7);
	ld	a, #0x07
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:349: g_Timer = NO_VALUE;
	ld	hl, #_g_Timer
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:351: u8 team = g_RestartKickTeamId; 
	ld	a, (_g_RestartKickTeamId+0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:352: u8 newOwner = GetClosestPlayerToBall(team, NO_VALUE);
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0xff
	call	_GetClosestPlayerToBall
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:353: if (newOwner != NO_VALUE) {
	ld	c, a
	inc	a
	jr	Z, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:354: PutBallOnPlayerFeet(newOwner);
	ld	a, c
	call	_PutBallOnPlayerFeet
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:355: g_Ball.KickMoveState = NO_VALUE;
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0xff
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:358: g_MatchStatus = MATCH_IN_ACTION;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:361: }
	ret
___str_5:
	.ascii "KICK OFF"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:363: void TickShotCursor() {
;	---------------------------------
; Function TickShotCursor
; ---------------------------------
_TickShotCursor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:365: g_ShotCursorX += g_ShotCursorDir;
	ld	a, (_g_ShotCursorDir+0)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	hl, (_g_ShotCursorX)
	add	hl, bc
	ld	(_g_ShotCursorX), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:366: if (g_ShotCursorX < (GOAL_X_MIN - 30)) {
	ld	de, #0x0042
	ld	hl, (_g_ShotCursorX)
	cp	a, a
	sbc	hl, de
	jr	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:367: g_ShotCursorX = (GOAL_X_MIN - 30);
	ld	hl, #0x0042
	ld	(_g_ShotCursorX), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:368: g_ShotCursorDir = -g_ShotCursorDir;
	ld	hl, #_g_ShotCursorDir
	xor	a, a
	sub	a, (hl)
	ld	(hl), a
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:370: if (g_ShotCursorX > (GOAL_X_MAX + 30)) {
	ld	a, #0xae
	ld	iy, #_g_ShotCursorX
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:371: g_ShotCursorX = (GOAL_X_MAX + 30);
	ld	hl, #0x00ae
	ld	(_g_ShotCursorX), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:372: g_ShotCursorDir = -g_ShotCursorDir;
	ld	hl, #_g_ShotCursorDir
	xor	a, a
	sub	a, (hl)
	ld	(hl), a
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:376: bool show = false;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:377: if (g_MatchStatus == MATCH_IN_ACTION && g_ActiveFieldZone == FIELD_NORTH_ZONE) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	jr	NZ, 00110$
	ld	a, (_g_ActiveFieldZone+0)
	or	a, a
	jr	NZ, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:378: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	hl, #_g_Ball+6
	ld	e, (hl)
	ld	a, e
	inc	a
	jr	Z, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:379: if (g_Players[g_Ball.PossessionPlayerId].TeamId == TEAM_1) {
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
	ld	a, (hl)
	dec	a
	jr	NZ, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:380: show = true;
	ld	c, #0x01
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:386: if (show) {
	ld	a, c
	or	a, a
	jr	Z, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:388: int screenY = (FIELD_BOUND_Y_TOP - 30) - g_FieldCurrentYPosition;
	ld	hl, #_g_FieldCurrentYPosition
	ld	a, #0x14
	sub	a, (hl)
	inc	hl
	ld	c, a
	sbc	a, a
	sub	a, (hl)
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:391: if (screenY < -16 || screenY > 212) {
	ld	a, c
	sub	a, #0xf0
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00112$
	ld	a, #0xd4
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00170$
	xor	a, #0x80
00170$:
	jp	P, 00113$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:392: attr.Y = 216; 
	ld	-4 (ix), #0xd8
	jp	00114$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:394: attr.Y = (u8)screenY;
	ld	-4 (ix), c
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:397: attr.X = (u8)g_ShotCursorX;
	ld	a, (_g_ShotCursorX+0)
	ld	c, a
	ld	b, #0x00
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:398: attr.Pattern = SPRITE_DOWN_ARROW;
	ld	-3 (ix), #0x79
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:399: attr.P = 1; 
	ld	hl,#0x3
	add	hl,sp
	set	5, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:400: attr.SC = 0; 
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:402: V9_SetSpriteP1(16, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe40
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:402: V9_SetSpriteP1(16, &attr);
	jp	00123$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:405: attr.Y = 216;
	ld	-4 (ix), #0xd8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:406: V9_SetSpriteP1(16, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe40
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:406: V9_SetSpriteP1(16, &attr);
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:408: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:410: void EnforcePenaltyBoxRestriction() {
;	---------------------------------
; Function EnforcePenaltyBoxRestriction
; ---------------------------------
_EnforcePenaltyBoxRestriction::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:411: if (g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:412: return;
	jp	NZ,00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:415: u8 gkOwnerId = g_Ball.PossessionPlayerId;
	ld	hl, #_g_Ball+6
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:417: if (gkOwnerId == NO_VALUE || g_Players[gkOwnerId].Role != PLAYER_ROLE_GOALKEEPER) {
	ld	a, c
	inc	a
	jp	Z,00119$
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
	push	de
	pop	iy
	ld	a, 13 (iy)
	or	a, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:418: return;
	jr	NZ, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:421: u8 gkTeamId = g_Players[gkOwnerId].TeamId;
	ld	hl, #9
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:424: for (u8 i = 0; i < 14; i++) { 
	dec	a
	ld	a, #0x01
	jr	Z, 00165$
	xor	a, a
00165$:
	ld	-3 (ix), a
	ld	b, #0x00
00118$:
	ld	a, b
	sub	a, #0x0e
	jr	NC, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:425: if (i == gkOwnerId) continue; // Skip the GK himself
	ld	a, c
	sub	a, b
	jr	Z, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:428: if (g_Players[i].TargetY > PENALTY_BOX_Y_BOTTOM) {
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
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	de, #0x000e
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:427: if (gkTeamId == TEAM_1) { // Bottom GK has ball, players can't be in y > PENALTY_BOX_Y_BOTTOM
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:428: if (g_Players[i].TargetY > PENALTY_BOX_Y_BOTTOM) {
	ld	a, #0x5e
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:429: g_Players[i].TargetY = PENALTY_BOX_Y_BOTTOM;
	ld	(hl), #0x5e
	inc	hl
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:430: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00115$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:433: if (g_Players[i].TargetY < PENALTY_BOX_Y_TOP) {
	ld	a, e
	sub	a, #0x82
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:434: g_Players[i].TargetY = PENALTY_BOX_Y_TOP;
	ld	(hl), #0x82
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:435: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:424: for (u8 i = 0; i < 14; i++) { 
	inc	b
	jp	00118$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:439: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:441: u8 GetPlayerIdByRole(u8 teamId, u8 role){
;	---------------------------------
; Function GetPlayerIdByRole
; ---------------------------------
_GetPlayerIdByRole::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
	ld	c, a
	ld	-1 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:442: u8 playerId=NO_VALUE;
	ld	-3 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:443: for(u8 i=0;i<14;i++){
	ld	-2 (ix), #0x00
	ld	b, #0x00
00106$:
	ld	a, b
	sub	a, #0x0e
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:444: if(g_Players[i].Role==role && g_Players[i].TeamId==teamId){
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
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x000d
	add	hl, bc
	pop	bc
;	spillPairReg hl
	ld	a,-1 (ix)
	sub	a,(hl)
	jr	NZ, 00107$
	ld	hl, #9
	add	hl, de
	ld	e, (hl)
	ld	a, c
	sub	a, e
	jr	NZ, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:445: playerId=i;
	ld	a, -2 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:446: break;
	jp	00104$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:443: for(u8 i=0;i<14;i++){
	inc	b
	ld	-2 (ix), b
	jp	00106$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:449: return playerId;
	ld	a, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:450: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:452: u8 GetClosestPlayerToBall(u8 teamId, u8 excludePlayerId){
;	---------------------------------
; Function GetClosestPlayerToBall
; ---------------------------------
_GetClosestPlayerToBall::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-14
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), a
	ld	-3 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:453: u8 closestId = NO_VALUE;
	ld	-12 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:454: u16 minDist = 0xFFFF;
	ld	-11 (ix), #0xff
	ld	-10 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:456: for(u8 i=0;i<14;i++){
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	-1 (ix), #0x00
00110$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:457: if(g_Players[i].TeamId != teamId) continue;
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
	ld	a, -5 (ix)
	add	a, #<(_g_Players)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	adc	a, #>(_g_Players)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a,-2 (ix)
	sub	a,(hl)
	jp	NZ,00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:458: if(i == excludePlayerId) continue;
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jp	Z,00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:460: u16 distX = (g_Players[i].X > g_Ball.X) ? (g_Players[i].X - g_Ball.X) : (g_Ball.X - g_Players[i].X);
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-13 (ix), a
	ld	a, -9 (ix)
	sub	a, -14 (ix)
	ld	a, -8 (ix)
	sbc	a, -13 (ix)
	jr	NC, 00113$
	ld	a, -14 (ix)
	sub	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -13 (ix)
	sbc	a, -8 (ix)
	ld	-4 (ix), a
	jp	00114$
00113$:
	ld	a, -9 (ix)
	sub	a, -14 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	sbc	a, -13 (ix)
	ld	-4 (ix), a
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:461: u16 distY = (g_Players[i].Y > g_Ball.Y) ? (g_Players[i].Y - g_Ball.Y) : (g_Ball.Y - g_Players[i].Y);
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, (#_g_Ball + 0)
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jr	NC, 00115$
	ld	a, c
	sub	a, l
	ld	-7 (ix), a
	ld	a, b
	sbc	a, h
	ld	-6 (ix), a
	jp	00116$
00115$:
	ld	a, l
	sub	a, c
	ld	-7 (ix), a
	ld	a, h
	sbc	a, b
	ld	-6 (ix), a
00116$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:463: u16 totalDist = distX + distY;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	add	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:465: if(totalDist < minDist){
	ld	a, l
	sub	a, -11 (ix)
	ld	a, h
	sbc	a, -10 (ix)
	jr	NC, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:466: minDist = totalDist;
	ld	-11 (ix), l
	ld	-10 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:467: closestId = i;
	ld	a, -1 (ix)
	ld	-12 (ix), a
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:456: for(u8 i=0;i<14;i++){
	inc	-1 (ix)
	jp	00110$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:470: return closestId;
	ld	a, -12 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:471: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:473: void SetPlayerBallPossession(u8 playerId){
;	---------------------------------
; Function SetPlayerBallPossession
; ---------------------------------
_SetPlayerBallPossession::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:474: if (playerId == NO_VALUE) {
	ld	c, a
	inc	a
	ret	Z
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:475: return;
	jp	00102$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:478: if(g_Players[playerId].TeamId==TEAM_1){
	ld	de, #_g_Players+0
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
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:479: if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) g_Team1ActivePlayer=playerId;
	ld	hl, #13
	add	hl, de
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:478: if(g_Players[playerId].TeamId==TEAM_1){
	dec	a
	jr	NZ, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:479: if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) g_Team1ActivePlayer=playerId;
	ld	a, b
	or	a, a
	jr	Z, 00109$
	ld	hl, #_g_Team1ActivePlayer
	ld	(hl), c
	jp	00109$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:482: if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) g_Team2ActivePlayer=playerId;
	ld	a, b
	or	a, a
	jr	Z, 00109$
	ld	hl, #_g_Team2ActivePlayer
	ld	(hl), c
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:485: g_Ball.PossessionTimer = 0; // Reset hold timer
	ld	hl, #(_g_Ball + 28)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:486: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:488: void PutBallOnPlayerFeet(u8 playerId){
;	---------------------------------
; Function PutBallOnPlayerFeet
; ---------------------------------
_PutBallOnPlayerFeet::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-55
	add	hl, sp
	ld	sp, hl
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:490: if (g_Ball.PossessionPlayerId != playerId) {
	ld	hl, #(_g_Ball + 6)
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:492: g_Ball.LastTouchTeamId=g_Players[playerId].TeamId;
	ld	e, c
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:490: if (g_Ball.PossessionPlayerId != playerId) {
	ld	a, c
	sub	a, b
	jr	Z, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:491: g_Ball.PossessionPlayerId=playerId;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:492: g_Ball.LastTouchTeamId=g_Players[playerId].TeamId;
	ld	iy, #_g_Players
	add	iy, de
	ld	a, 9 (iy)
	ld	(#(_g_Ball + 14)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:493: g_Ball.PassTargetPlayerId = NO_VALUE; // Clear any pending pass
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:494: g_Ball.ShotActive = 0; // Clear any pending shot
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:495: SetPlayerBallPossession(g_Ball.PossessionPlayerId);
	push	de
	ld	a, c
	call	_SetPlayerBallPossession
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:498: g_ActionCooldown = 8;
	ld	iy, #_g_ActionCooldown
	ld	0 (iy), #0x08
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:500: if (g_Ball.ComingFromRestart) {
	ld	bc, #_g_Ball + 29
	ld	a, (bc)
	or	a, a
	jr	Z, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:501: g_ShootCooldown = 45; // 0.75s ban on shooting after restart
	ld	iy, #_g_ShootCooldown
	ld	0 (iy), #0x2d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:502: g_Ball.ComingFromRestart = 0;
	xor	a, a
	ld	(bc), a
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:508: const u8 BallBaseDistX[] = { 0, 0, 4, 6, 4, 0, 4, 6, 4 };
	ld	-55 (ix), #0x00
	ld	-54 (ix), #0x00
	ld	-53 (ix), #0x04
	ld	-52 (ix), #0x06
	ld	-51 (ix), #0x04
	ld	-50 (ix), #0x00
	ld	-49 (ix), #0x04
	ld	-48 (ix), #0x06
	ld	-47 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:509: const u8 BallBaseDistY[] = { 0, 6, 4, 0, 4, 6, 4, 2, 4 };
	ld	hl, #9
	add	hl, sp
	ld	c, l
	ld	b, h
	xor	a, a
	ld	(bc), a
	ld	-45 (ix), #0x06
	ld	-44 (ix), #0x04
	ld	-43 (ix), #0x00
	ld	-42 (ix), #0x04
	ld	-41 (ix), #0x06
	ld	-40 (ix), #0x04
	ld	-39 (ix), #0x02
	ld	-38 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:511: const u8 DribbleAnimOffsets[] = {5, 4, 2, 0};
	ld	-37 (ix), #0x05
	ld	-36 (ix), #0x04
	ld	-35 (ix), #0x02
	ld	-34 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:512: const u8 DribbleAnimOffsetsDiag[] = {3, 3, 1, 0};
	ld	-33 (ix), #0x03
	ld	-32 (ix), #0x03
	ld	-31 (ix), #0x01
	ld	-30 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:516: const i8 BallAlignCorrectX[] = { 0, 0, 0, 0, 2, 0, -2, 0, 0 };
	ld	-29 (ix), #0x00
	ld	-28 (ix), #0x00
	ld	-27 (ix), #0x00
	ld	-26 (ix), #0x00
	ld	-25 (ix), #0x02
	ld	-24 (ix), #0x00
	ld	-23 (ix), #0xfe
	ld	-22 (ix), #0x00
	ld	-21 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:517: const i8 BallAlignCorrectY[] = { 0, 0, 0, 4, 2, 4, 2, 4, 0 };
	ld	-20 (ix), #0x00
	ld	-19 (ix), #0x00
	ld	-18 (ix), #0x00
	ld	-17 (ix), #0x04
	ld	-16 (ix), #0x02
	ld	-15 (ix), #0x04
	ld	-14 (ix), #0x02
	ld	-13 (ix), #0x04
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:519: u8 dir = g_Players[playerId].Direction;
	ld	hl, #_g_Players
	add	hl, de
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	de, #10
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:520: if(dir == DIRECTION_NONE) dir = g_Players[playerId].PreviousDirection; // Fallback se fermo
	ld	-9 (ix), a
	or	a, a
	jr	NZ, 00106$
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	hl, #11
	add	hl, de
	ld	a, (hl)
	ld	-9 (ix), a
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:523: u8 calcDir = dir;
	ld	a, -9 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:525: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER && (dir == DIRECTION_LEFT || dir == DIRECTION_RIGHT)) {
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	hl, #13
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
	or	a, a
	jr	NZ, 00111$
	ld	a, -9 (ix)
	sub	a, #0x07
	jr	Z, 00110$
	ld	a, -9 (ix)
	sub	a, #0x03
	jr	NZ, 00111$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:527: if (g_Players[playerId].TeamId == TEAM_1) calcDir = DIRECTION_UP;
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	hl, #9
	add	hl, de
	ld	a, (hl)
	dec	a
	jr	NZ, 00108$
	ld	-8 (ix), #0x01
	jp	00111$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:528: else calcDir = DIRECTION_DOWN;
	ld	-8 (ix), #0x05
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:532: u8 animStep = g_Ball.KickMoveState;
	ld	hl, #_g_Ball + 13
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:533: if (animStep > 3) animStep = 3; // Default/Reset to 3 (Close) if NO_VALUE (255)
	ld	a, #0x03
	sub	a, e
	jr	NC, 00115$
	ld	e, #0x03
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:535: u8 currentOffset = DribbleAnimOffsets[animStep];
	push	de
	ld	d, #0x00
	ld	hl, #20
	add	hl, sp
	add	hl, de
	pop	de
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:536: u8 currentOffsetDiag = DribbleAnimOffsetsDiag[animStep];
	ld	d, #0x00
	ld	hl, #22
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:538: u8 distX = BallBaseDistX[calcDir] + ((calcDir==DIRECTION_UP || calcDir==DIRECTION_DOWN) ? 0 : (calcDir == DIRECTION_LEFT || calcDir == DIRECTION_RIGHT ? currentOffset : currentOffsetDiag));
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	e, (hl)
	ld	a, -8 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00232$
	xor	a, a
00232$:
	ld	-4 (ix), a
	ld	a, -8 (ix)
	sub	a, #0x07
	ld	a, #0x01
	jr	Z, 00234$
	xor	a, a
00234$:
	ld	-3 (ix), a
	bit	0, -4 (ix)
	jr	NZ, 00132$
	ld	a, -8 (ix)
	sub	a, #0x05
	jr	NZ, 00129$
00132$:
	xor	a, a
	ld	d, a
	jp	00130$
00129$:
	bit	0, -3 (ix)
	jr	NZ, 00137$
	ld	a, -8 (ix)
	sub	a, #0x03
	jr	NZ, 00134$
00137$:
	ld	a, -6 (ix)
	jp	00135$
00134$:
	ld	a, -5 (ix)
00135$:
	ld	d, #0x00
00130$:
	add	a, e
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:539: u8 distY = BallBaseDistY[calcDir] + ((calcDir==DIRECTION_LEFT || calcDir==DIRECTION_RIGHT) ? 0 : (calcDir == DIRECTION_UP || calcDir == DIRECTION_DOWN ? currentOffset : currentOffsetDiag));
	ld	l, -8 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	-1 (ix), a
	bit	0, -3 (ix)
	jr	NZ, 00142$
	ld	a, -8 (ix)
	sub	a, #0x03
	jr	NZ, 00139$
00142$:
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	jp	00140$
00139$:
	bit	0, -4 (ix)
	jr	NZ, 00147$
	ld	a, -8 (ix)
	sub	a, #0x05
	jr	NZ, 00144$
00147$:
	ld	a, -6 (ix)
	jp	00145$
00144$:
	ld	a, -5 (ix)
00145$:
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
00140$:
	ld	a, -4 (ix)
	ld	-3 (ix), a
	ld	a, -1 (ix)
	add	a, -3 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:542: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:543: distY = (distY > 2) ? (distY - 2) : distY; // bring ball 2px closer vertically
	ld	a, #0x02
	sub	a, -1 (ix)
	jr	NC, 00149$
	ld	a, -1 (ix)
	dec	a
	dec	a
	jp	00150$
00149$:
	ld	a, -1 (ix)
00150$:
	ld	-1 (ix), a
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:548: switch (calcDir){
	ld	a, #0x08
	sub	a, -8 (ix)
	jp	C, 00126$
	ld	c, -8 (ix)
	ld	b, #0x00
	ld	hl, #00243$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00243$:
	jp	00126$
	jp	00118$
	jp	00123$
	jp	00121$
	jp	00125$
	jp	00119$
	jp	00124$
	jp	00120$
	jp	00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:549: case DIRECTION_UP:
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:550: g_Ball.X=g_Players[playerId].X + BallAlignCorrectX[calcDir] + extraX;
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
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #26
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:551: g_Ball.Y=g_Players[playerId].Y - distY + BallAlignCorrectY[calcDir];
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #35
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:552: break;
	jp	00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:553: case DIRECTION_DOWN:
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:554: g_Ball.X=g_Players[playerId].X + BallAlignCorrectX[calcDir];
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
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #26
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:555: g_Ball.Y=g_Players[playerId].Y + distY + BallAlignCorrectY[calcDir];
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #35
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:556: break;
	jp	00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:557: case DIRECTION_LEFT:
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:558: g_Ball.X=g_Players[playerId].X - distX + BallAlignCorrectX[calcDir];
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
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #26
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:559: g_Ball.Y=g_Players[playerId].Y + BallAlignCorrectY[calcDir];
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #35
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:560: break;
	jp	00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:561: case DIRECTION_RIGHT:
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:562: g_Ball.X=g_Players[playerId].X + distX + BallAlignCorrectX[calcDir];
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
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #26
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:563: g_Ball.Y=g_Players[playerId].Y + BallAlignCorrectY[calcDir];
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #35
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:564: break;
	jp	00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:565: case DIRECTION_UP_LEFT:
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:566: g_Ball.X=g_Players[playerId].X - distX + BallAlignCorrectX[calcDir];
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
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #26
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:567: g_Ball.Y=g_Players[playerId].Y - distY + BallAlignCorrectY[calcDir];
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #35
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:568: break;
	jp	00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:569: case DIRECTION_UP_RIGHT:
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:570: g_Ball.X=g_Players[playerId].X + distX + BallAlignCorrectX[calcDir];
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
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #26
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:571: g_Ball.Y=g_Players[playerId].Y - distY + BallAlignCorrectY[calcDir];
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #35
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:572: break;
	jp	00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:573: case DIRECTION_DOWN_LEFT:
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:574: g_Ball.X=g_Players[playerId].X - distX + BallAlignCorrectX[calcDir];
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
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #26
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:575: g_Ball.Y=g_Players[playerId].Y + distY + BallAlignCorrectY[calcDir];
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #35
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:576: break;
	jp	00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:577: case DIRECTION_DOWN_RIGHT:
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:578: g_Ball.X=g_Players[playerId].X + distX + BallAlignCorrectX[calcDir];
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
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #26
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:579: g_Ball.Y=g_Players[playerId].Y + distY + BallAlignCorrectY[calcDir];
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #35
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:581: }
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:582: g_Ball.PreviousY=g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	ld	((_g_Ball + 7)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:583: g_Ball.Direction=dir;
	ld	hl, #(_g_Ball + 5)
	ld	a, -9 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:584: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:586: u8 GetNoMovingPlayerPatternId(u8 direction){
;	---------------------------------
; Function GetNoMovingPlayerPatternId
; ---------------------------------
_GetNoMovingPlayerPatternId::
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:587: u8 patternId=PLAYER_POSE_FRONT_PLAYING; // Default fallback
	ld	c, #0x13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:588: switch (direction){
	ld	a, #0x08
	sub	a, e
	jr	C, 00110$
	ld	d, #0x00
	ld	hl, #00118$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00118$:
	jp	00109$
	jp	00102$
	jp	00106$
	jp	00104$
	jp	00108$
	jp	00101$
	jp	00107$
	jp	00103$
	jp	00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:589: case DIRECTION_DOWN:
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:590: patternId=PLAYER_POSE_FRONT_PLAYING;
	ld	c, #0x13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:591: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:592: case DIRECTION_UP:
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:593: patternId=PLAYER_POSE_BACK_PLAYING;
	ld	c, #0x16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:594: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:595: case DIRECTION_LEFT:
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:596: patternId=PLAYER_POSE_LEFT;
	ld	c, #0x12
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:597: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:598: case DIRECTION_RIGHT:
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:599: patternId=PLAYER_POSE_RIGHT;
	ld	c, #0x9d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:600: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:601: case DIRECTION_UP_LEFT:
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:602: patternId=PLAYER_POSE_MOVE_UP_LEFT_2;
	ld	c, #0x82
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:603: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:604: case DIRECTION_UP_RIGHT:
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:605: patternId=PLAYER_POSE_MOVE_UP_RIGHT_1;
	ld	c, #0x0d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:606: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:607: case DIRECTION_DOWN_LEFT:
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:608: patternId=PLAYER_POSE_MOVE_DOWN_LEFT_1;
	ld	c, #0x09
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:609: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:610: case DIRECTION_DOWN_RIGHT:
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:611: patternId=PLAYER_POSE_MOVE_DOWN_RIGHT_2;
	ld	c, #0x86
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:612: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:613: case DIRECTION_NONE:
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:616: patternId=PLAYER_POSE_FRONT_PLAYING;
	ld	c, #0x13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:618: }
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:619: return patternId;
	ld	a, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:620: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:622: void TickCornerKick() {
;	---------------------------------
; Function TickCornerKick
; ---------------------------------
_TickCornerKick::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-23
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:623: if (g_MatchStatus != MATCH_BEFORE_CORNER_KICK) return;
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x02
	jp	NZ,00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:626: if (g_Timer == 0) s_ForceKickTimer = 0;
	ld	a, (_g_Timer+0)
	or	a, a
	jr	NZ, 00104$
	ld	hl, #0x0000
	ld	(_TickCornerKick_s_ForceKickTimer_65537_1376), hl
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:632: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#(_g_Ball + 6) + 0)
	cp	a, #0xff
	jr	Z, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:633: kickerId = g_Ball.PossessionPlayerId;
	ld	-23 (ix), a
	jp	00110$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:635: if (g_CornerKickSide == CORNER_SIDE_LEFT) kickerId = GetPlayerIdByRole(g_RestartKickTeamId, PLAYER_ROLE_LEFT_STRIKER);
	ld	a, (_g_CornerKickSide+0)
	or	a, a
	jr	NZ, 00106$
	ld	l, #0x05
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_g_RestartKickTeamId+0)
	call	_GetPlayerIdByRole
	ld	-23 (ix), a
	jp	00110$
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:636: else kickerId = GetPlayerIdByRole(g_RestartKickTeamId, PLAYER_ROLE_RIGHT_STRIKER);
	ld	l, #0x06
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_g_RestartKickTeamId+0)
	call	_GetPlayerIdByRole
	ld	-23 (ix), a
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:640: if (kickerId == NO_VALUE) {
	ld	a, -23 (ix)
	inc	a
	jr	NZ, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:641: kickerId = GetClosestPlayerToBall(g_RestartKickTeamId, NO_VALUE);
	ld	l, #0xff
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_g_RestartKickTeamId+0)
	call	_GetClosestPlayerToBall
	ld	-23 (ix), a
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:649: bool kickerArrived = false;
	ld	-22 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:650: if (kickerId != NO_VALUE) {
	ld	a, -23 (ix)
	inc	a
	ld	a, #0x01
	jr	Z, 00701$
	xor	a, a
00701$:
	ld	-21 (ix), a
	bit	0, -21 (ix)
	jp	NZ, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:651: i16 dx = (i16)g_Players[kickerId].X - (i16)g_Players[kickerId].TargetX;
	ld	c, -23 (ix)
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
	ld	a, #<(_g_Players)
	add	a, -2 (ix)
	ld	-16 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -1 (ix)
	ld	-15 (ix), a
	ld	a, -16 (ix)
	add	a, #0x02
	ld	-14 (ix), a
	ld	a, -15 (ix)
	adc	a, #0x00
	ld	-13 (ix), a
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	a, -16 (ix)
	ld	-2 (ix), a
	ld	a, -15 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
	ld	a, -1 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:652: i16 dy = (i16)g_Players[kickerId].Y - (i16)g_Players[kickerId].TargetY;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	a, -16 (ix)
	add	a, #0x0e
	ld	-6 (ix), a
	ld	a, -15 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -8 (ix)
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -7 (ix)
	sbc	a, -3 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:654: if (dx >= -2 && dx <= 2 && dy >= -2 && dy <= 2) {
	ld	a, -10 (ix)
	sub	a, #0xfe
	ld	a, -9 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jp	C, 00121$
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0x02
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00702$
	xor	a, #0x80
00702$:
	jp	M, 00121$
	ld	a, -2 (ix)
	sub	a, #0xfe
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00121$
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	ld	a, #0x02
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00703$
	xor	a, #0x80
00703$:
	jp	M, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:655: kickerArrived = true;
	ld	-22 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:656: g_Players[kickerId].X = g_Players[kickerId].TargetX;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, -12 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -11 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:657: g_Players[kickerId].Y = g_Players[kickerId].TargetY;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:658: g_Players[kickerId].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:660: if (g_Ball.PossessionPlayerId != kickerId) {
	ld	hl, #(_g_Ball + 6)
	ld	a,-23 (ix)
	sub	a,(hl)
	jr	Z, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:661: SetPlayerBallPossession(kickerId);
	ld	a, -23 (ix)
	call	_SetPlayerBallPossession
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:662: g_Ball.PossessionPlayerId = kickerId;
	ld	hl, #(_g_Ball + 6)
	ld	a, -23 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:663: PutBallOnPlayerFeet(kickerId);
	ld	a, -23 (ix)
	call	_PutBallOnPlayerFeet
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:669: bool teammatesArrived = true;
	ld	-20 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:670: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00236$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00134$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:671: if (g_Players[i].TeamId == g_RestartKickTeamId && i != kickerId && g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) {
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, -3 (ix)
	add	a, #<(_g_Players)
	ld	-19 (ix), a
	ld	a, -2 (ix)
	adc	a, #>(_g_Players)
	ld	-18 (ix), a
	ld	a, -19 (ix)
	ld	-3 (ix), a
	ld	a, -18 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	c, (hl)
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, c
	jp	NZ,00237$
	ld	a, -1 (ix)
	sub	a, -23 (ix)
	jp	Z,00237$
	ld	a, -19 (ix)
	ld	-3 (ix), a
	ld	a, -18 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x000d
	add	hl, de
	ld	a, (hl)
	ld	-2 (ix), a
	or	a, a
	jp	Z, 00237$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:673: if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
	ld	a, -19 (ix)
	add	a, #0x12
	ld	-17 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	sub	a, #0x04
	or	a, -2 (ix)
	jp	Z,00237$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:674: i16 dx = (i16)g_Players[i].X - (i16)g_Players[i].TargetX;
	ld	a, -19 (ix)
	add	a, #0x02
	ld	-15 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -19 (ix)
	ld	-3 (ix), a
	ld	a, -18 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	a, (hl)
	ld	-13 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-12 (ix), a
	ld	l, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -5 (ix)
	sub	a, l
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, h
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-11 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:675: i16 dy = (i16)g_Players[i].Y - (i16)g_Players[i].TargetY;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-9 (ix), a
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -19 (ix)
	add	a, #0x0e
	ld	-7 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -8 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:676: if (dx < -6 || dx > 6 || dy < -6 || dy > 6) {
	ld	a, -11 (ix)
	sub	a, #0xfa
	ld	a, -10 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00122$
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	a, #0x06
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00709$
	xor	a, #0x80
00709$:
	jp	M, 00122$
	ld	a, c
	sub	a, #0xfa
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00122$
	ld	a, #0x06
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00710$
	xor	a, #0x80
00710$:
	jp	P, 00123$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:677: teammatesArrived = false; // Someone is still far away
	ld	-20 (ix), #0x00
	jp	00237$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:680: g_Players[i].X = g_Players[i].TargetX;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:681: g_Players[i].Y = g_Players[i].TargetY;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:682: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:670: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00236$
00134$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:689: if (g_Timer < 180 || (kickerId != NO_VALUE && !kickerArrived) || !teammatesArrived) {
	ld	a, (_g_Timer+0)
	sub	a, #0xb4
	ld	a, #0x00
	rla
	ld	c, a
	or	a, a
	jr	NZ, 00165$
	bit	0, -21 (ix)
	jr	NZ, 00169$
	ld	a, -22 (ix)
	or	a, a
	jr	Z, 00165$
00169$:
	ld	a, -20 (ix)
	or	a, a
	jp	NZ, 00166$
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:690: if (g_Timer < 180) g_Timer++;
	ld	a, c
	or	a, a
	jr	Z, 00317$
	ld	hl, #_g_Timer
	inc	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:693: for(u8 i=0; i<14; i++) {
00317$:
	ld	c, #0x00
00239$:
	ld	a, c
	sub	a, #0x0e
	jp	NC,00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:695: if (i != kickerId && g_Players[i].Status != PLAYER_STATUS_POSITIONED && 
	ld	a, -23 (ix)
	sub	a, c
	ld	a, #0x01
	jr	Z, 00712$
	xor	a, a
00712$:
	ld	-3 (ix), a
	bit	0, -3 (ix)
	jr	NZ, 00138$
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
	ld	iy, #_g_Players
	add	iy, de
	push	iy
	pop	de
	ld	hl, #18
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x04
	or	a, d
	jr	Z, 00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:696: !(g_Players[i].X == g_Players[i].TargetX && g_Players[i].Y == g_Players[i].TargetY)) continue;
	push	iy
	pop	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	iy
	pop	hl
	push	bc
	ld	bc, #0x0010
	add	hl, bc
	pop	bc
	ld	b, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, b
	cp	a, a
	sbc	hl, de
	jp	NZ,00163$
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	push	iy
	pop	hl
	push	bc
	ld	bc, #0x000e
	add	hl, bc
	pop	bc
	ld	b, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, b
	cp	a, a
	sbc	hl, de
	jp	NZ,00163$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:700: if (i == kickerId) {
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:702: if (g_RestartKickTeamId == TEAM_1) lookDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_DOWN_RIGHT : DIRECTION_DOWN_LEFT;
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00143$
	ld	a, (_g_CornerKickSide+0)
	or	a, a
	jr	NZ, 00245$
	ld	de, #0x0004
	jp	00246$
00245$:
	ld	de, #0x0006
00246$:
	ld	-1 (ix), e
	jp	00160$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:703: else lookDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_UP_RIGHT : DIRECTION_UP_LEFT;
	ld	a, (_g_CornerKickSide+0)
	or	a, a
	jr	NZ, 00247$
	ld	de, #0x0002
	jp	00248$
00247$:
	ld	de, #0x0008
00248$:
	ld	-1 (ix), e
	jp	00160$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:705: else if (g_Players[i].TeamId == g_RestartKickTeamId) {
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
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	de, #9
	add	hl, de
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:707: if (g_RestartKickTeamId == TEAM_1 && i != kickerId) { 
	ld	a,(_g_RestartKickTeamId+0)
	cp	a,b
	jr	NZ, 00156$
	dec	a
	ld	a, #0x01
	jr	Z, 00723$
	xor	a, a
00723$:
	ld	-1 (ix), a
	or	a, a
	jr	Z, 00146$
	bit	0, -3 (ix)
	jr	NZ, 00146$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:709: lookDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_UP_LEFT : DIRECTION_UP_RIGHT;
	ld	a, (_g_CornerKickSide+0)
	or	a, a
	jr	NZ, 00249$
	ld	de, #0x0008
	jp	00250$
00249$:
	ld	de, #0x0002
00250$:
	ld	-1 (ix), e
	jp	00160$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:712: lookDir = (g_RestartKickTeamId == TEAM_1) ? DIRECTION_UP : DIRECTION_DOWN;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00251$
	ld	de, #0x0001
	jp	00252$
00251$:
	ld	de, #0x0005
00252$:
	ld	-1 (ix), e
	jp	00160$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:716: i16 dx = (i16)g_Ball.X - (i16)g_Players[i].X;
	ld	de, (#_g_Ball + 2)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
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
	ld	a, e
	sub	a, l
	ld	b, a
	ld	a, d
	sbc	a, h
	ld	-4 (ix), b
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:717: i16 dy = (i16)g_Ball.Y - (i16)g_Players[i].Y;
	ld	de, (#_g_Ball + 0)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
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
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:719: if (dy < -20) lookDir = (dx > 20) ? DIRECTION_UP_RIGHT : ((dx < -20) ? DIRECTION_UP_LEFT : DIRECTION_UP);
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, e
	sub	a, #0xec
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00153$
	ld	a, #0x14
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00724$
	xor	a, #0x80
00724$:
	jp	P, 00253$
	ld	de, #0x0002
	jp	00254$
00253$:
	ld	a, -4 (ix)
	sub	a, #0xec
	ld	a, -3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00255$
	ld	de, #0x0008
	jp	00256$
00255$:
	ld	de, #0x0001
00256$:
00254$:
	ld	-1 (ix), e
	jp	00160$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:720: else if (dy > 20) lookDir = (dx > 20) ? DIRECTION_DOWN_RIGHT : ((dx < -20) ? DIRECTION_DOWN_LEFT : DIRECTION_DOWN);
	ld	a, #0x14
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00725$
	xor	a, #0x80
00725$:
	jp	P, 00150$
	ld	a, #0x14
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00726$
	xor	a, #0x80
00726$:
	jp	P, 00257$
	ld	de, #0x0004
	jp	00258$
00257$:
	ld	a, -4 (ix)
	sub	a, #0xec
	ld	a, -3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00259$
	ld	de, #0x0006
	jp	00260$
00259$:
	ld	de, #0x0005
00260$:
00258$:
	ld	-1 (ix), e
	jp	00160$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:721: else lookDir = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	xor	a, a
	cp	a, -2 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00727$
	xor	a, #0x80
00727$:
	jp	P, 00261$
	ld	de, #0x0003
	jp	00262$
00261$:
	ld	de, #0x0007
00262$:
	ld	-1 (ix), e
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:724: if (lookDir != DIRECTION_NONE) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:725: g_Players[i].Direction = lookDir;
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
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:726: g_Players[i].PatternId = GetNoMovingPlayerPatternId(lookDir);
	ld	hl, #0x0008
	add	hl, de
	push	hl
	push	bc
	ld	a, -1 (ix)
	call	_GetNoMovingPlayerPatternId
	pop	bc
	pop	hl
	ld	(hl), a
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:693: for(u8 i=0; i<14; i++) {
	inc	c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:729: return; // END SETUP PHASE
	jp	00239$
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:733: V9990_ClearTextFromLayerA(10, 12, 11);
	ld	a, #0x0b
	push	af
	inc	sp
	ld	l, #0x0c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:740: if (kickerId != NO_VALUE) {
	bit	0, -21 (ix)
	jr	NZ, 00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:741: g_Players[kickerId].X = g_Players[kickerId].TargetX;
	ld	c, -23 (ix)
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
	ld	a, -2 (ix)
	add	a, #<(_g_Players)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	adc	a, #>(_g_Players)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, #0x02
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:742: g_Players[kickerId].Y = g_Players[kickerId].TargetY;
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x000e
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	c, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), c
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:745: bool isHuman = (g_RestartKickTeamId == TEAM_1 || (g_GameWith2Players && g_RestartKickTeamId == TEAM_2));
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	Z, 00264$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00263$
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, #0x02
	jr	Z, 00264$
00263$:
	xor	a, a
	jp	00265$
00264$:
	ld	a, #0x01
00265$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:748: if (isHuman) s_ForceKickTimer++;
	or	a, a
	jr	Z, 00173$
	ld	hl, (_TickCornerKick_s_ForceKickTimer_65537_1376)
	inc	hl
	ld	(_TickCornerKick_s_ForceKickTimer_65537_1376), hl
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:750: if (isHuman) {
	ld	a, c
	or	a, a
	jp	Z, 00233$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:753: u8 candLeft = NO_VALUE;
	ld	-7 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:754: u8 candRight = NO_VALUE;
	ld	-6 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:756: for(u8 c=0; c<14; c++) {
	ld	-1 (ix), #0x00
00241$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00184$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:757: if (g_Players[c].TeamId == TEAM_1 && c != kickerId && g_Players[c].Role != PLAYER_ROLE_GOALKEEPER) {
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, -3 (ix)
	add	a, #<(_g_Players)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	adc	a, #>(_g_Players)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	dec	a
	jr	NZ, 00242$
	ld	a, -1 (ix)
	sub	a, -23 (ix)
	jr	Z, 00242$
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x000d
	add	hl, de
	ld	a, (hl)
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00242$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:758: u8 tx = g_Players[c].TargetX;
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:760: if (tx >= 40 && tx <= 110) candLeft = c;
	ld	-2 (ix), a
	sub	a, #0x28
	jr	C, 00175$
	ld	a, #0x6e
	sub	a, -2 (ix)
	jr	C, 00175$
	ld	a, -1 (ix)
	ld	-7 (ix), a
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:761: if (tx >= 130 && tx <= 220) candRight = c;
	ld	a, -2 (ix)
	sub	a, #0x82
	jr	C, 00242$
	ld	a, #0xdc
	sub	a, -2 (ix)
	jr	C, 00242$
	ld	a, -1 (ix)
	ld	-6 (ix), a
00242$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:756: for(u8 c=0; c<14; c++) {
	inc	-1 (ix)
	jp	00241$
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:764: if (candLeft == NO_VALUE) candLeft = GetPlayerIdByRole(TEAM_1, PLAYER_ROLE_LEFT_HALFFIELDER);
	ld	a, -7 (ix)
	inc	a
	jr	NZ, 00186$
	ld	l, #0x03
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_GetPlayerIdByRole
	ld	-7 (ix), a
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:765: if (candRight == NO_VALUE) candRight = GetPlayerIdByRole(TEAM_1, PLAYER_ROLE_RIGHT_HALFFIELDER);
	ld	a, -6 (ix)
	inc	a
	jr	NZ, 00188$
	ld	l, #0x04
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_GetPlayerIdByRole
	ld	-6 (ix), a
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:767: if (g_CornerKickTargetId == NO_VALUE) {
	ld	a, (_g_CornerKickTargetId+0)
	inc	a
	jr	NZ, 00195$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:768: if (candLeft != NO_VALUE) g_CornerKickTargetId = candLeft;
	ld	a, -7 (ix)
	inc	a
	jr	Z, 00192$
	ld	a, -7 (ix)
	ld	(_g_CornerKickTargetId+0), a
	jp	00195$
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:769: else if (candRight != NO_VALUE) g_CornerKickTargetId = candRight; 
	ld	a, -6 (ix)
	inc	a
	jr	Z, 00195$
	ld	a, -6 (ix)
	ld	(_g_CornerKickTargetId+0), a
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:773: u8 joyDir = GetJoystickDirection();
	call	_GetJoystickDirection
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:776: if (joyDir == DIRECTION_LEFT && !joyMoved && candLeft != NO_VALUE) {
	ld	-1 (ix), a
	sub	a, #0x07
	jr	NZ, 00204$
	ld	a, (_TickCornerKick_joyMoved_131078_1409+0)
	or	a, a
	jr	NZ, 00204$
	ld	a, -7 (ix)
	inc	a
	jr	Z, 00204$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:777: g_CornerKickTargetId = candLeft; joyMoved = true;
	ld	a, -7 (ix)
	ld	(_g_CornerKickTargetId+0), a
	ld	hl, #_TickCornerKick_joyMoved_131078_1409
	ld	(hl), #0x01
	jp	00205$
00204$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:778: } else if (joyDir == DIRECTION_RIGHT && !joyMoved && candRight != NO_VALUE) {
	ld	a, -1 (ix)
	sub	a, #0x03
	jr	NZ, 00199$
	ld	a, (_TickCornerKick_joyMoved_131078_1409+0)
	or	a, a
	jr	NZ, 00199$
	ld	a, -6 (ix)
	inc	a
	jr	Z, 00199$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:779: g_CornerKickTargetId = candRight; joyMoved = true;
	ld	a, -6 (ix)
	ld	(_g_CornerKickTargetId+0), a
	ld	hl, #_TickCornerKick_joyMoved_131078_1409
	ld	(hl), #0x01
	jp	00205$
00199$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:780: } else if (joyDir == DIRECTION_NONE) {
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00205$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:781: joyMoved = false;
	ld	hl, #_TickCornerKick_joyMoved_131078_1409
	ld	(hl), #0x00
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:788: if (kickerId != NO_VALUE) {
	bit	0, -21 (ix)
	jp	NZ, 00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:789: u8 kDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_DOWN_RIGHT : DIRECTION_DOWN_LEFT;
	ld	a, (_g_CornerKickSide+0)
	or	a, a
	jr	NZ, 00269$
	ld	-2 (ix), #0x04
	ld	-1 (ix), #0
	jp	00270$
00269$:
	ld	-2 (ix), #0x06
	ld	-1 (ix), #0
00270$:
	ld	a, -2 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:790: g_Players[kickerId].Direction = kDir;
	ld	c, -23 (ix)
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
	ld	a, #<(_g_Players)
	add	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -1 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:791: g_Players[kickerId].PatternId = GetNoMovingPlayerPatternId(kDir);
	ld	a, -6 (ix)
	add	a, #0x08
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, -3 (ix)
	call	_GetNoMovingPlayerPatternId
	ld	-3 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:792: g_Players[kickerId].X = g_Players[kickerId].TargetX;
	ld	a, -6 (ix)
	add	a, #0x02
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:793: g_Players[kickerId].Y = g_Players[kickerId].TargetY;
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:795: g_Players[kickerId].Status = PLAYER_STATUS_POSITIONED; 
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:798: bool t1Trigger = IsJoystickTriggerPressed();
	call	_IsJoystickTriggerPressed
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:800: if (g_Timer == 180) t1Latched = true;
	ld	a, (_g_Timer+0)
	sub	a, #0xb4
	jr	NZ, 00211$
	ld	hl, #_TickCornerKick_t1Latched_131079_1414
	ld	(hl), #0x01
00211$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:801: if (!t1Trigger) t1Latched = false;
	ld	a, c
	or	a, a
	jr	NZ, 00213$
	ld	hl, #_TickCornerKick_t1Latched_131079_1414
	ld	(hl), #0x00
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:804: if (g_CornerKickTargetId != NO_VALUE) {
	ld	a, (_g_CornerKickTargetId+0)
	inc	a
	jr	Z, 00215$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:805: g_Ball.PassTargetPlayerId = g_CornerKickTargetId;
	ld	hl, #(_g_Ball + 16)
	ld	a, (_g_CornerKickTargetId+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:806: g_PassTargetPlayer = g_CornerKickTargetId;
	ld	a, (_g_CornerKickTargetId+0)
	ld	(_g_PassTargetPlayer+0), a
00215$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:808: if ((t1Trigger && !t1Latched || s_ForceKickTimer > 240) && g_CornerKickTargetId != NO_VALUE) {
	ld	a, c
	or	a, a
	jr	Z, 00219$
	ld	a, (_TickCornerKick_t1Latched_131079_1414+0)
	or	a, a
	jr	Z, 00220$
00219$:
	ld	hl, (_TickCornerKick_s_ForceKickTimer_65537_1376)
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	NC, 00243$
00220$:
	ld	a, (_g_CornerKickTargetId+0)
	inc	a
	jr	Z, 00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:809: PerformPass(g_CornerKickTargetId);
	ld	a, (_g_CornerKickTargetId+0)
	call	_PerformPass
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:810: g_MatchStatus = MATCH_IN_ACTION;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:811: g_CornerKickTargetId = NO_VALUE;
	ld	hl, #_g_CornerKickTargetId
	ld	(hl), #0xff
	jp	00243$
00233$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:817: if (g_CornerKickTargetId == NO_VALUE) {
	ld	a, (_g_CornerKickTargetId+0)
	inc	a
	jr	NZ, 00226$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:818: u8 randomRole = ((g_Timer & 1) == 0) ? PLAYER_ROLE_LEFT_STRIKER : PLAYER_ROLE_RIGHT_STRIKER;
	ld	a, (_g_Timer+0)
	rrca
	jr	C, 00271$
	ld	hl, #0x0005
	jp	00272$
00271$:
	ld	hl, #0x0006
00272$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:819: u8 strikerId = GetPlayerIdByRole(g_RestartKickTeamId, randomRole);
	ld	a, (_g_RestartKickTeamId+0)
	call	_GetPlayerIdByRole
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:822: if (strikerId != NO_VALUE && strikerId != kickerId) {
	ld	c, a
	inc	a
	jr	Z, 00222$
	ld	a, -23 (ix)
	sub	a, c
	jr	Z, 00222$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:823: g_CornerKickTargetId = strikerId;
	ld	hl, #_g_CornerKickTargetId
	ld	(hl), c
	jp	00226$
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:825: g_CornerKickTargetId = GetClosestPlayerToBall(g_RestartKickTeamId, kickerId);
	ld	l, -23 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_g_RestartKickTeamId+0)
	call	_GetClosestPlayerToBall
	ld	(_g_CornerKickTargetId+0), a
00226$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:829: if (g_Timer > 200) {
	ld	a, #0xc8
	ld	hl, #_g_Timer
	sub	a, (hl)
	jr	NC, 00230$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:830: if (g_CornerKickTargetId == NO_VALUE) g_CornerKickTargetId = GetClosestPlayerToBall(g_RestartKickTeamId, kickerId);
	ld	a, (_g_CornerKickTargetId+0)
	inc	a
	jr	NZ, 00228$
	ld	l, -23 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_g_RestartKickTeamId+0)
	call	_GetClosestPlayerToBall
	ld	(_g_CornerKickTargetId+0), a
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:832: PerformPass(g_CornerKickTargetId);
	ld	a, (_g_CornerKickTargetId+0)
	call	_PerformPass
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:833: g_MatchStatus = MATCH_IN_ACTION; 
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:834: g_CornerKickTargetId = NO_VALUE;
	ld	hl, #_g_CornerKickTargetId
	ld	(hl), #0xff
	jp	00243$
00230$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:836: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:839: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:841: bool IsJoystickTriggerPressed(){
;	---------------------------------
; Function IsJoystickTriggerPressed
; ---------------------------------
_IsJoystickTriggerPressed::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:842: u8 joyStat = Joystick_Read(JOY_PORT_1);
	ld	l, #0x0f
;	spillPairReg hl
;	spillPairReg hl
	call	_Joystick_Read
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:843: if (IS_JOY_PRESSED(joyStat, JOY_INPUT_TRIGGER_A))
	bit	4, l
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:845: return TRUE;
	ld	a, #0x01
	ret
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:848: if(Keyboard_IsKeyPressed(KEY_SPACE))
	ld	a, #0x08
	call	_Keyboard_IsKeyPressed
	or	a, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:850: return TRUE;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:852: return FALSE;
	ld	a, #0x01
	ret	NZ
	xor	a, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:853: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:855: void PerformPass(u8 toPlayerId) {
;	---------------------------------
; Function PerformPass
; ---------------------------------
_PerformPass::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-21
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:857: u8 fromId = g_Ball.PossessionPlayerId;
	ld	a, (#(_g_Ball + 6) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:861: if (fromId == NO_VALUE) return;
	ld	-2 (ix), a
	inc	a
	jp	Z,00155$
	jp	00102$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:862: if (toPlayerId == NO_VALUE) return;
	ld	a, -1 (ix)
	inc	a
	jp	Z,00155$
	jp	00104$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:865: if (g_Players[toPlayerId].Role == PLAYER_ROLE_GOALKEEPER) return;
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
	ex	(sp), hl
	pop	de
	push	de
	ld	hl, #13
	add	hl, de
	ld	a, (hl)
	or	a, a
	jp	Z,00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:869: if (g_Players[fromId].Role != PLAYER_ROLE_GOALKEEPER) {
	ld	e, -2 (ix)
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
	ld	-19 (ix), l
	ld	-18 (ix), h
	ld	a, -19 (ix)
	add	a, #0x0d
	ld	-17 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:870: if (IsOffside(toPlayerId)) {
	ld	a, -1 (ix)
	call	_IsOffside
	or	a, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:872: return;
	jp	NZ,00155$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:877: dx = (i16)g_Players[toPlayerId].X - (i16)g_Players[fromId].X;
	ld	a, -21 (ix)
	add	a, #0x02
	ld	-15 (ix), a
	ld	a, -20 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -19 (ix)
	add	a, #0x02
	ld	-13 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	-5 (ix), a
	ld	a, b
	sbc	a, d
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:878: dy = (i16)g_Players[toPlayerId].Y - (i16)g_Players[fromId].Y;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	-11 (ix), a
	ld	a, b
	sbc	a, d
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:879: adx = (dx < 0) ? -dx : dx;
	ld	a, -5 (ix)
	ld	-9 (ix), a
	ld	a, -4 (ix)
	ld	-8 (ix), a
	bit	7, -8 (ix)
	jr	Z, 00157$
	xor	a, a
	sub	a, -5 (ix)
	ld	-3 (ix), a
	sbc	a, a
	sub	a, -4 (ix)
	ld	-2 (ix), a
	jp	00158$
00157$:
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
00158$:
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:880: ady = (dy < 0) ? -dy : dy;
	ld	a, -11 (ix)
	ld	-5 (ix), a
	ld	a, -10 (ix)
	ld	-4 (ix), a
	bit	7, -4 (ix)
	jr	Z, 00159$
	xor	a, a
	sub	a, -11 (ix)
	ld	-3 (ix), a
	sbc	a, a
	sub	a, -10 (ix)
	ld	-2 (ix), a
	jp	00160$
00159$:
	ld	a, -11 (ix)
	ld	-3 (ix), a
	ld	a, -10 (ix)
	ld	-2 (ix), a
00160$:
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:882: if (adx > ady * 2) {
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00322$
	xor	a, #0x80
00322$:
	jp	P, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:883: newDir = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 00323$
	xor	a, #0x80
00323$:
	jp	P, 00161$
	ld	bc, #0x0003
	jp	00162$
00161$:
	ld	bc, #0x0007
00162$:
	ld	-4 (ix), c
	jp	00119$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:884: } else if (ady > adx * 2) {
	ex	de, hl
	add	hl, hl
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:885: newDir = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
	xor	a, a
	cp	a, -5 (ix)
	sbc	a, -4 (ix)
	jp	PO, 00324$
	xor	a, #0x80
00324$:
	rlca
	and	a,#0x01
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:884: } else if (ady > adx * 2) {
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	PO, 00325$
	xor	a, #0x80
00325$:
	jp	P, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:885: newDir = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
	ld	a, l
	or	a, a
	jr	Z, 00163$
	ld	bc, #0x0005
	jp	00164$
00163$:
	ld	bc, #0x0001
00164$:
	ld	-4 (ix), c
	jp	00119$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:887: if (dx > 0) newDir = (dy > 0) ? DIRECTION_DOWN_RIGHT : DIRECTION_UP_RIGHT;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 00326$
	xor	a, #0x80
00326$:
	jp	P, 00112$
	ld	a, l
	or	a, a
	jr	Z, 00165$
	ld	bc, #0x0004
	jp	00166$
00165$:
	ld	bc, #0x0002
00166$:
	ld	-4 (ix), c
	jp	00119$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:888: else newDir = (dy > 0) ? DIRECTION_DOWN_LEFT : DIRECTION_UP_LEFT;
	ld	a, l
	or	a, a
	jr	Z, 00167$
	ld	bc, #0x0006
	jp	00168$
00167$:
	ld	bc, #0x0008
00168$:
	ld	-4 (ix), c
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:890: g_Players[fromId].Direction = newDir;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:893: if (newDir == DIRECTION_UP || newDir == DIRECTION_UP_LEFT || newDir == DIRECTION_UP_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_FRONT;
	ld	a, -4 (ix)
	dec	a
	jr	Z, 00130$
	ld	a, -4 (ix)
	sub	a, #0x08
	jr	Z, 00130$
	ld	a, -4 (ix)
	sub	a, #0x02
	jr	NZ, 00131$
00130$:
	ld	a, -19 (ix)
	add	a, #0x08
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x18
	jp	00132$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:894: else if (newDir == DIRECTION_DOWN || newDir == DIRECTION_DOWN_LEFT || newDir == DIRECTION_DOWN_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_BACK;
	ld	a, -4 (ix)
	sub	a, #0x05
	jr	Z, 00125$
	ld	a, -4 (ix)
	sub	a, #0x06
	jr	Z, 00125$
	ld	a, -4 (ix)
	sub	a, #0x04
	jr	NZ, 00126$
00125$:
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0x15
	jp	00132$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:895: else if (newDir == DIRECTION_LEFT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_LEFT;
	ld	a, -4 (ix)
	sub	a, #0x07
	jr	NZ, 00123$
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0xa4
	jp	00132$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:896: else if (newDir == DIRECTION_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_RIGHT;
	ld	a, -4 (ix)
	sub	a, #0x03
	jr	NZ, 00132$
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0x1b
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:898: g_Players[fromId].Status = PLAYER_STATUS_POSITIONED; // Lock pose for this frame
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:901: g_Players[fromId].TargetX = g_Players[fromId].X;
	ld	a, -19 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:902: g_Players[fromId].TargetY = g_Players[fromId].Y;
	ld	a, -19 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:905: SetPlayerBallPossession(NO_VALUE); 
	ld	a, #0xff
	call	_SetPlayerBallPossession
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:906: g_Ball.PossessionPlayerId = NO_VALUE; 
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:908: g_Ball.PassTargetPlayerId = toPlayerId;
	ld	hl, #(_g_Ball + 16)
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:909: g_Ball.ShotActive = 0; // Not a shot
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:912: if (g_Players[fromId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	l, -17 (ix)
	ld	h, -16 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:924: g_Ball.X = g_Ball.X; 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:912: if (g_Players[fromId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, (hl)
	or	a, a
	jp	NZ, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:915: bool applyOffset = true;
	ld	c, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:917: if (g_GkIsGroundKick) {
	ld	a, (_g_GkIsGroundKick+0)
	or	a, a
	jr	Z, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:918: applyOffset = false;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:924: g_Ball.X = g_Ball.X; 
	ld	de, (#(_g_Ball + 2) + 0)
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:925: g_Ball.Y = g_Ball.Y;
	ld	de, (#_g_Ball + 0)
	ld	(_g_Ball), de
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:929: if (g_MatchStatus == MATCH_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_CORNER_KICK ||
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x09
	jr	Z, 00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:930: g_MatchStatus == MATCH_GOAL_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK) {
	cp	a,#0x02
	jr	Z, 00137$
	cp	a,#0x0a
	jr	Z, 00137$
	sub	a, #0x05
	jr	NZ, 00138$
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:931: applyOffset = false;
	ld	c, #0x00
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:936: if (applyOffset) {
	ld	a, c
	or	a, a
	jr	Z, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:937: i8 offX = 0; i8 offY = 0;
	ld	bc, #0x0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:938: switch (newDir) {
	ld	a, #0x08
	sub	a, -4 (ix)
	jr	C, 00150$
	ld	e, -4 (ix)
	ld	d, #0x00
	ld	hl, #00344$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00344$:
	jp	00150$
	jp	00142$
	jp	00147$
	jp	00145$
	jp	00149$
	jp	00143$
	jp	00148$
	jp	00144$
	jp	00146$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:939: case DIRECTION_UP:        offY = -30; break;
00142$:
	ld	b, #0xe2
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:940: case DIRECTION_DOWN:      offY = 30; break;
00143$:
	ld	b, #0x1e
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:941: case DIRECTION_LEFT:      offX = -30; break;
00144$:
	ld	c, #0xe2
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:942: case DIRECTION_RIGHT:     offX = 30; break;
00145$:
	ld	c, #0x1e
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:943: case DIRECTION_UP_LEFT:   offX = -21; offY = -21; break;
00146$:
	ld	bc, #0xebeb
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:944: case DIRECTION_UP_RIGHT:  offX = 21; offY = -21; break;
00147$:
	ld	bc, #0xeb15
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:945: case DIRECTION_DOWN_LEFT: offX = -21; offY = 21; break;
00148$:
	ld	bc, #0x15eb
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:946: case DIRECTION_DOWN_RIGHT:offX = 21; offY = 21; break;
00149$:
	ld	bc, #0x1515
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:947: }
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:948: g_Ball.X += offX;
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	a, c
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	add	hl, de
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:949: g_Ball.Y += offY;
	ld	hl, (#_g_Ball + 0)
	ld	a, b
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:955: g_Ball.PassStartX = g_Ball.X;
	ld	bc, (#(_g_Ball + 2) + 0)
	ld	((_g_Ball + 17)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:956: g_Ball.PassStartY = g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	ld	((_g_Ball + 19)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:959: g_ActionCooldown = 20;
	ld	hl, #_g_ActionCooldown
	ld	(hl), #0x14
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:960: g_Ball.KickMoveState = 0;
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:962: dx = (i16)g_Players[toPlayerId].X - (i16)g_Ball.X;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:963: dy = (i16)g_Players[toPlayerId].Y - (i16)g_Ball.Y;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, (#_g_Ball + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:964: g_Ball.PassTotalDist = (u16)((dx<0?-dx:dx) + (dy<0?-dy:dy)); 
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, h
	jr	Z, 00169$
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
00169$:
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	bit	7, h
	jr	Z, 00171$
	ld	hl, #0x0000
	cp	a, a
	sbc	hl, de
	jp	00172$
00171$:
	ex	de, hl
00172$:
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 21)), de
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:965: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:967: bool IsOffside(u8 playerId) {
;	---------------------------------
; Function IsOffside
; ---------------------------------
_IsOffside::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:968: u8 teamId = g_Players[playerId].TeamId;
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
	push	de
	pop	iy
	ld	a, 9 (iy)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:969: u16 playerY = g_Players[playerId].Y;
	ld	a, (de)
	ld	-6 (ix), a
	inc	de
	ld	a, (de)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:970: u8 opponentCount = 0;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:974: if (teamId == TEAM_1) {
	ld	a, -7 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00198$
	xor	a, a
00198$:
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:975: if (playerY >= FIELD_POS_Y_CENTER) return FALSE; // Own half
	ld	a, -6 (ix)
	ld	-3 (ix), a
	ld	a, -5 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:974: if (teamId == TEAM_1) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:975: if (playerY >= FIELD_POS_Y_CENTER) return FALSE; // Own half
	ld	a, -3 (ix)
	sub	a, #0xf3
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	C, 00107$
	xor	a, a
	jp	00129$
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:977: if (playerY <= FIELD_POS_Y_CENTER) return FALSE; // Own half
	ld	a, #0xf3
	cp	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	jr	C, 00107$
	xor	a, a
	jp	00129$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:982: if (teamId == TEAM_1) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:983: if (playerY >= g_Ball.Y) return FALSE; 
	ld	hl, (#_g_Ball + 0)
	ld	a, -6 (ix)
	sub	a, l
	ld	a, -5 (ix)
	sbc	a, h
	jr	C, 00141$
	xor	a, a
	jp	00129$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:985: if (playerY <= g_Ball.Y) return FALSE;
	ld	hl, (#_g_Ball + 0)
	ld	a, l
	sub	a, -6 (ix)
	ld	a, h
	sbc	a, -5 (ix)
	jr	C, 00141$
	xor	a, a
	jp	00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:989: for (i = 0; i < 14; i++) {
00141$:
	ld	c, #0x00
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:990: if (g_Players[i].TeamId == teamId) continue;
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
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	a,-7 (ix)
	sub	a,(hl)
	jr	Z, 00124$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:994: if (g_Players[i].Y <= playerY) opponentCount++;
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:993: if (teamId == TEAM_1) { // Attacking UP
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:994: if (g_Players[i].Y <= playerY) opponentCount++;
	ld	a, -6 (ix)
	sub	a, e
	ld	a, -5 (ix)
	sbc	a, d
	jr	C, 00124$
	inc	-1 (ix)
	jp	00124$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:996: if (g_Players[i].Y >= playerY) opponentCount++;
	ld	a, e
	sub	a, -6 (ix)
	ld	a, d
	sbc	a, -5 (ix)
	jr	C, 00124$
	inc	-1 (ix)
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:989: for (i = 0; i < 14; i++) {
	inc	c
	ld	a, c
	sub	a, #0x0e
	jr	C, 00128$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1000: if (opponentCount < 2) return TRUE;
	ld	a, -1 (ix)
	sub	a, #0x02
	jr	NC, 00127$
	ld	a, #0x01
	jp	00129$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1001: return FALSE;
	xor	a, a
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1002: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1004: void TickGoalKick() {
;	---------------------------------
; Function TickGoalKick
; ---------------------------------
_TickGoalKick::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1005: if (g_MatchStatus != MATCH_BEFORE_GOAL_KICK) return;
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x05
	jp	NZ,00197$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1009: if (g_RestartKickTeamId == TEAM_1) gkId = GetPlayerIdByRole(TEAM_1, PLAYER_ROLE_GOALKEEPER);
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00104$
	ld	l,a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_GetPlayerIdByRole
	ld	-10 (ix), a
	jp	00105$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1010: else gkId = GetPlayerIdByRole(TEAM_2, PLAYER_ROLE_GOALKEEPER);
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x02
	call	_GetPlayerIdByRole
	ld	-10 (ix), a
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1012: if (gkId == NO_VALUE) return; 
	ld	a, -10 (ix)
	inc	a
	jp	Z,00197$
	jp	00107$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1015: if (g_Timer < 60) {
	ld	a, (_g_Timer+0)
	sub	a, #0x3c
	jr	NC, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1016: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1017: return;
	jp	00197$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1019: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1021: if (g_Timer == 60) {
	ld	a, (_g_Timer+0)
	sub	a, #0x3c
	jp	NZ,00175$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1024: if (g_GoalKickSide == CORNER_SIDE_LEFT) targetX = GK_BOX_X_MIN;
	ld	a, (_g_GoalKickSide+0)
	or	a, a
	jr	NZ, 00111$
	ld	bc, #0x0050
	jp	00112$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1025: else targetX = GK_BOX_X_MAX;
	ld	bc, #0x00a0
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1028: if (g_RestartKickTeamId == TEAM_1) { // Bottom Goal
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1029: ballY = GK_BOX_Y_BOTTOM_MIN; 
	ld	de, #0x0195
	jp	00115$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1031: ballY = GK_BOX_Y_TOP_MAX; 
	ld	de, #0x004b
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1035: g_Ball.X = targetX;
	ld	((_g_Ball + 2)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1036: g_Ball.Y = ballY;
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1037: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1042: runStartY = ballY + 32; 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1041: if (g_RestartKickTeamId == TEAM_1) {
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1042: runStartY = ballY + 32; 
	ld	hl, #0x0020
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1043: if(runStartY > FIELD_BOUND_Y_BOTTOM) runStartY = FIELD_BOUND_Y_BOTTOM;
	ld	-2 (ix), l
	ld	-1 (ix), h
	ex	de,hl
	ld	a, #0xae
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00122$
	ld	-2 (ix), #0xae
	ld	-1 (ix), #0x01
	jp	00122$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1045: runStartY = ballY - 32;
	ld	a, e
	add	a, #0xe0
	ld	e, a
	ld	a, d
	adc	a, #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1046: if(runStartY < FIELD_BOUND_Y_TOP) runStartY = FIELD_BOUND_Y_TOP;
	ld	-2 (ix), e
	ld	-1 (ix), a
	ld	d, a
	ld	a, e
	sub	a, #0x32
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00122$
	ld	-2 (ix), #0x32
	ld	-1 (ix), #0
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1049: g_Players[gkId].TargetX = targetX;
	ld	e, -10 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ex	de, hl
	ld	hl, #0x0010
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1050: g_Players[gkId].TargetY = runStartY;
	ld	hl, #0x000e
	add	hl, de
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1051: g_Players[gkId].Status = PLAYER_STATUS_NONE; 
	ld	hl, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1053: if (g_RestartKickTeamId == TEAM_1) g_Players[gkId].Direction = DIRECTION_UP;
	ld	hl, #0x000a
	add	hl, de
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00124$
	ld	(hl), #0x01
	jp	00125$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1054: else g_Players[gkId].Direction = DIRECTION_DOWN;
	ld	(hl), #0x05
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1056: if (g_RestartKickTeamId == TEAM_1) g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00127$
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x02
	jp	00239$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1057: else g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1060: for(u8 i=0; i<14; i++){
00239$:
	ld	-1 (ix), #0x00
00196$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00175$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1061: if(i == gkId) continue;
	ld	a, -10 (ix)
	sub	a, -1 (ix)
	jp	Z,00172$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1062: if(g_Players[i].TeamId == REFEREE) continue;
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
	ld	de, #_g_Players
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	iy, #0x0009
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	add	iy, de
	ld	a, 0 (iy)
	sub	a, #0x0e
	jp	Z,00172$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1063: if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	a, -9 (ix)
	add	a, #0x0d
	ld	e, a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	d, a
	ld	a, (de)
	or	a, a
	jp	Z, 00172$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1066: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	bc, #0x0012
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1069: u16 targetX = g_Players[i].X;
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1062: if(g_Players[i].TeamId == REFEREE) continue;
	ld	c, 0 (iy)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1063: if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	a, (de)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1076: if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 200;
	ld	-5 (ix), a
	sub	a, #0x05
	ld	a, #0x01
	jr	Z, 00432$
	xor	a, a
00432$:
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1077: if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 350; // Defenders move out of box
	ld	a, -5 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00434$
	xor	a, a
00434$:
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1071: if (g_RestartKickTeamId == TEAM_1) {
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00166$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1073: if(g_Players[i].TeamId == TEAM_1) {
	dec	c
	jr	NZ, 00148$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1075: targetY = 300; // Midfielders
	ld	-3 (ix), #0x2c
	ld	-2 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1076: if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 200;
	ld	a, e
	or	a, a
	jr	NZ, 00135$
	ld	a, -5 (ix)
	sub	a, #0x06
	jr	NZ, 00136$
00135$:
	ld	-3 (ix), #0xc8
	ld	-2 (ix), #0
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1077: if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 350; // Defenders move out of box
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00138$
	ld	a, -5 (ix)
	sub	a, #0x02
	jp	NZ,00167$
00138$:
	ld	-3 (ix), #0x5e
	ld	-2 (ix), #0x01
	jp	00167$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1079: targetY = 250;
	ld	-3 (ix), #0xfa
	ld	-2 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1080: if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 320; // Pressing High (but not too close)
	ld	a, e
	or	a, a
	jr	NZ, 00141$
	ld	a, -5 (ix)
	sub	a, #0x06
	jr	NZ, 00142$
00141$:
	ld	-3 (ix), #0x40
	ld	-2 (ix), #0x01
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1081: if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 150;
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00144$
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00167$
00144$:
	ld	-3 (ix), #0x96
	ld	-2 (ix), #0
	jp	00167$
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1085: if(g_Players[i].TeamId == TEAM_2) {
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1087: targetY = 150; 
	ld	-3 (ix), #0x96
	ld	-2 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1088: if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 250;
	ld	a, e
	or	a, a
	jr	NZ, 00150$
	ld	a, -5 (ix)
	sub	a, #0x06
	jr	NZ, 00151$
00150$:
	ld	-3 (ix), #0xfa
	ld	-2 (ix), #0
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1089: if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 120; // Defenders move out of box
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00153$
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00167$
00153$:
	ld	-3 (ix), #0x78
	ld	-2 (ix), #0
	jp	00167$
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1091: targetY = 200;
	ld	-3 (ix), #0xc8
	ld	-2 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1092: if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 160; // Pressing High (but not too close)
	ld	a, e
	or	a, a
	jr	NZ, 00156$
	ld	a, -5 (ix)
	sub	a, #0x06
	jr	NZ, 00157$
00156$:
	ld	-3 (ix), #0xa0
	ld	-2 (ix), #0
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1093: if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 300;
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00159$
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00167$
00159$:
	ld	-3 (ix), #0x2c
	ld	-2 (ix), #0x01
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1098: if (targetX < 30) targetX = 30;
	ld	a, -7 (ix)
	ld	b, -6 (ix)
	sub	a, #0x1e
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00169$
	ld	-7 (ix), #0x1e
	ld	-6 (ix), #0
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1099: if (targetX > 220) targetX = 220;
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	a, #0xdc
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00171$
	ld	-7 (ix), #0xdc
	ld	-6 (ix), #0
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1101: g_Players[i].TargetX = targetX;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1102: g_Players[i].TargetY = targetY;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	de, #0x000e
	add	hl, de
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1060: for(u8 i=0; i<14; i++){
	inc	-1 (ix)
	jp	00196$
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1107: i16 dx = (i16)g_Players[gkId].X - (i16)g_Players[gkId].TargetX;
	ld	bc, #_g_Players+0
	ld	e, -10 (ix)
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
	ex	(sp), hl
	ld	a, -16 (ix)
	add	a, #0x02
	ld	-14 (ix), a
	ld	a, -15 (ix)
	adc	a, #0x00
	ld	-13 (ix), a
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	a, -16 (ix)
	ld	-2 (ix), a
	ld	a, -15 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
	ld	a, -1 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1108: i16 dy = (i16)g_Players[gkId].Y - (i16)g_Players[gkId].TargetY;
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	a, -16 (ix)
	add	a, #0x0e
	ld	-6 (ix), a
	ld	a, -15 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -8 (ix)
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -7 (ix)
	sbc	a, -3 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1110: bool arrived = (dx >= -4 && dx <= 4 && dy >= -4 && dy <= 4);
	ld	a, -10 (ix)
	sub	a, #0xfc
	ld	a, -9 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00199$
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0x04
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00457$
	xor	a, #0x80
00457$:
	jp	M, 00199$
	ld	a, -2 (ix)
	sub	a, #0xfc
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00199$
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	ld	a, #0x04
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00458$
	xor	a, #0x80
00458$:
	jp	P, 00200$
00199$:
	ld	-1 (ix), #0x00
	jp	00201$
00200$:
	ld	-1 (ix), #0x01
00201$:
	ld	a, -1 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1112: if (arrived) {
	or	a, a
	jp	Z, 00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1113: g_Players[gkId].X = g_Players[gkId].TargetX;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, -12 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -11 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1114: g_Players[gkId].Y = g_Players[gkId].TargetY;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	push	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1116: if (g_RestartKickTeamId == TEAM_1) g_Players[gkId].Direction = DIRECTION_UP;
	ld	a, -16 (ix)
	add	a, #0x0a
	ld	-8 (ix), a
	ld	a, -15 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00177$
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), #0x01
	jp	00178$
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1117: else g_Players[gkId].Direction = DIRECTION_DOWN;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), #0x05
00178$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1118: g_Players[gkId].PatternId = GetNoMovingPlayerPatternId(g_Players[gkId].Direction);
	ld	a, -16 (ix)
	add	a, #0x08
	ld	-3 (ix), a
	ld	a, -15 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	call	_GetNoMovingPlayerPatternId
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1119: g_Players[gkId].Status = PLAYER_STATUS_POSITIONED;
	ld	a, -16 (ix)
	add	a, #0x12
	ld	-2 (ix), a
	ld	a, -15 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1108: i16 dy = (i16)g_Players[gkId].Y - (i16)g_Players[gkId].TargetY;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1122: u16 distY = (g_Players[gkId].Y > g_Ball.Y) ? (g_Players[gkId].Y - g_Ball.Y) : (g_Ball.Y - g_Players[gkId].Y);
	ld	hl, (#_g_Ball + 0)
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jr	NC, 00208$
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	jp	00209$
00208$:
	ld	a, l
	sub	a, c
	ld	c, a
	ld	a, h
	sbc	a, b
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1124: if (distY > 16) {
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1016: g_Timer++;
	ld	a, (_g_Timer+0)
	inc	a
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1124: if (distY > 16) {
	ld	a, #0x10
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00187$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1126: g_Timer++;
	ld	a, -3 (ix)
	ld	(_g_Timer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1127: if (g_Timer > 100) {
	ld	a, #0x64
	ld	hl, #_g_Timer
	sub	a, (hl)
	jr	NC, 00197$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1122: u16 distY = (g_Players[gkId].Y > g_Ball.Y) ? (g_Players[gkId].Y - g_Ball.Y) : (g_Ball.Y - g_Players[gkId].Y);
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1130: if (g_RestartKickTeamId == TEAM_1) kickY = g_Ball.Y + 6; 
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00180$
	ld	bc, #0x0006
	add	hl, bc
	ld	c, l
	ld	b, h
	jp	00181$
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1131: else kickY = g_Ball.Y - 6;
	ld	bc, #0xfffa
	add	hl,bc
	ld	c, l
	ld	b, h
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1133: g_Players[gkId].TargetY = kickY;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1134: g_Players[gkId].Status = PLAYER_STATUS_NONE;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00197$
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1138: g_Timer++;
	ld	a, -3 (ix)
	ld	(_g_Timer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1139: if (g_Timer > 110) {
	ld	a, #0x6e
	ld	hl, #_g_Timer
	sub	a, (hl)
	jr	NC, 00197$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1140: V9990_ClearTextFromLayerA(10, 18, 9); 
	ld	a, #0x09
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1141: GoalkeeperWithBall(g_RestartKickTeamId, true); 
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_g_RestartKickTeamId+0)
	call	_GoalkeeperWithBall
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1142: g_GkRecoilY = 0;
	ld	hl, #_g_GkRecoilY
	ld	(hl), #0x00
	jp	00197$
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1147: if (g_Timer < 100) g_Timer = 61; // Hold at 61 while moving to start
	ld	a, (_g_Timer+0)
	sub	a, #0x64
	jr	NC, 00190$
	ld	hl, #_g_Timer
	ld	(hl), #0x3d
	jp	00197$
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1148: else g_Timer = 101; // Hold at 101 while moving to ball
	ld	hl, #_g_Timer
	ld	(hl), #0x65
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1150: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1152: void GoalkeeperWithBall(u8 teamId, bool isSteal) {
;	---------------------------------
; Function GoalkeeperWithBall
; ---------------------------------
_GoalkeeperWithBall::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-8
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), a
	ld	-3 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1153: u8 gkId = GetPlayerIdByRole(teamId, PLAYER_ROLE_GOALKEEPER);
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	call	_GetPlayerIdByRole
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1154: if(gkId == NO_VALUE) return;
	ld	-8 (ix), a
	inc	a
	jp	Z,00159$
	jp	00102$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1156: g_GkAnimPlayerId = gkId;
	ld	a, -8 (ix)
	ld	(_g_GkAnimPlayerId+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1157: g_GkAnimTimer = 0;
	ld	hl, #_g_GkAnimTimer
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1160: if (teamId == TEAM_1) {
	ld	a, -2 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00275$
	xor	a, a
00275$:
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1161: g_Players[gkId].PatternId = PLAYER_POSE_TEAM1_GK_BALL_FRONT;
	ld	c, -8 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1160: if (teamId == TEAM_1) {
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1161: g_Players[gkId].PatternId = PLAYER_POSE_TEAM1_GK_BALL_FRONT;
	ld	hl, #_g_Players+0
	add	hl, bc
	ex	de, hl
	ld	hl, #0x0008
	add	hl, de
	ld	(hl), #0x9e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1162: g_Players[gkId].Direction = DIRECTION_UP; // Face Up (Attack Direction)
	ld	hl, #0x000a
	add	hl, de
	ld	(hl), #0x01
	jp	00105$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1165: g_Players[gkId].PatternId = PLAYER_POSE_FRONT; // Team 2 GK plays like a player (feet)
	ld	hl, #_g_Players+0
	add	hl, bc
	ex	de, hl
	ld	hl, #0x0008
	add	hl, de
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1166: g_Players[gkId].Direction = DIRECTION_DOWN; // Face Down (Attack Direction)
	ld	hl, #0x000a
	add	hl, de
	ld	(hl), #0x05
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1170: g_Players[gkId].Status = PLAYER_STATUS_POSITIONED;
	ld	hl, #_g_Players
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1174: bool closeToLine = false;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1175: if (teamId == TEAM_2) { // GK 2 (Top)
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	NZ, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1176: g_GkRecoilY = -1;
	ld	hl, #_g_GkRecoilY
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1177: if (g_Players[gkId].Y <= FIELD_BOUND_Y_TOP + 4) closeToLine = true;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0x36
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00112$
	ld	-1 (ix), #0x01
	jp	00112$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1179: g_GkRecoilY = 1;
	ld	hl, #_g_GkRecoilY
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1180: if (g_Players[gkId].Y >= FIELD_BOUND_Y_BOTTOM - 4) closeToLine = true;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	a, c
	sub	a, #0xaa
	ld	a, b
	sbc	a, #0x01
	jr	C, 00112$
	ld	-1 (ix), #0x01
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1183: if (closeToLine || isSteal) g_GkRecoilY = 0; // No recoil for Steals
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00113$
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00114$
00113$:
	ld	hl, #_g_GkRecoilY
	ld	(hl), #0x00
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1184: g_GkIsGroundKick = isSteal; // Track if this is a ground kick (no offset needed)
	ld	a, -3 (ix)
	ld	(_g_GkIsGroundKick+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1187: SetPlayerBallPossession(gkId);
	ld	a, -8 (ix)
	call	_SetPlayerBallPossession
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1188: g_Ball.PossessionPlayerId = gkId; // Fix: Ensure AI knows GK has ball immediately to prevent chasing
	ld	hl, #(_g_Ball + 6)
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1189: g_Ball.ShotActive = 0;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1191: g_MatchStatus = MATCH_BALL_ON_GOALKEEPER;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1194: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00158$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1195: if(i == gkId) continue;
	ld	a, -8 (ix)
	sub	a, -1 (ix)
	jp	Z,00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1196: if(g_Players[i].TeamId == REFEREE) continue;
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
	push	de
	pop	iy
	ld	b, 9 (iy)
	ld	a, b
	sub	a, #0x0e
	jp	Z,00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1197: if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	push	de
	pop	iy
	ld	a, 13 (iy)
	ld	-6 (ix), a
	or	a, a
	jp	Z, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1201: tx = g_Players[i].X;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1208: if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 160;
	ld	a, -6 (ix)
	sub	a, #0x05
	ld	a, #0x00
	rla
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1204: if(g_Players[i].TeamId == teamId) {
	ld	a, -2 (ix)
	sub	a, b
	jr	NZ, 00153$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1207: if(teamId == TEAM_1) { // Moving UP
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1208: if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 160;
	bit	0, c
	jr	NZ, 00126$
	ld	bc, #0x00a0
	jp	00154$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1209: else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 240;
	ld	a, -6 (ix)
	sub	a, #0x03
	jr	C, 00123$
	ld	bc, #0x00f0
	jp	00154$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1210: else ty = 350;
	ld	bc, #0x015e
	jp	00154$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1212: if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 320;
	bit	0, c
	jr	NZ, 00132$
	ld	bc, #0x0140
	jp	00154$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1213: else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 240;
	ld	a, -6 (ix)
	sub	a, #0x03
	jr	C, 00129$
	ld	bc, #0x00f0
	jp	00154$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1214: else ty = 130;
	ld	bc, #0x0082
	jp	00154$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1219: if(teamId == TEAM_1) { // Opponent is Team 2 (Top) -> Retreat UP? No, Team 2 Defends Top.
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1221: if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 243; // Midfield
	bit	0, c
	jr	NZ, 00141$
	ld	bc, #0x00f3
	jp	00154$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1222: else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 106;
	ld	a, -6 (ix)
	sub	a, #0x03
	jr	C, 00138$
	ld	bc, #0x006a
	jp	00154$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1223: else ty = 130;
	ld	bc, #0x0082
	jp	00154$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1226: if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 243;
	bit	0, c
	jr	NZ, 00147$
	ld	bc, #0x00f3
	jp	00154$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1227: else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 318;
	ld	a, -6 (ix)
	sub	a, #0x03
	jr	C, 00144$
	ld	bc, #0x013e
	jp	00154$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1228: else ty = 350;
	ld	bc, #0x015e
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1233: g_Players[i].TargetX = tx;
	ld	hl, #0x0010
	add	hl, de
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1234: g_Players[i].TargetY = ty;
	ld	hl, #0x000e
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1235: g_Players[i].Status = PLAYER_STATUS_NONE; // Unlock movement
	ld	hl, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1194: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00158$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1237: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1239: void TickThrowIn() {
;	---------------------------------
; Function TickThrowIn
; ---------------------------------
_TickThrowIn::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-42
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1240: if (g_MatchStatus != MATCH_BEFORE_THROW_IN) return;
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x03
	jp	NZ,00269$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1247: if (g_Timer == 0) {
	ld	a, (_g_Timer+0)
	or	a, a
	jp	NZ, 00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1248: s_ThrowTargetId = NO_VALUE;
	ld	hl, #_TickThrowIn_s_ThrowTargetId_65537_1492
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1249: s_JoyMoved = false;
	ld	hl, #_TickThrowIn_s_JoyMoved_65537_1492
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1250: s_ForceThrowTimer = 0;
	ld	hl, #0x0000
	ld	(_TickThrowIn_s_ForceThrowTimer_65537_1492), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1253: if (g_Ball.X < FIELD_POS_X_CENTER) {
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	de, #0x0078
	cp	a, a
	sbc	hl, de
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1254: g_Ball.X = FIELD_BOUND_X_LEFT;
	ld	hl, #0x000a
	ld	((_g_Ball + 2)), hl
	jp	00105$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1256: g_Ball.X = FIELD_BOUND_X_RIGHT;
	ld	hl, #0x00ec
	ld	((_g_Ball + 2)), hl
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1260: if (g_Ball.Y < FIELD_BOUND_Y_TOP) g_Ball.Y = FIELD_BOUND_Y_TOP;
	ld	hl, (#_g_Ball + 0)
	ld	de, #0x0032
	cp	a, a
	sbc	hl, de
	jr	NC, 00107$
	ld	hl, #0x0032
	ld	(_g_Ball), hl
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1261: if (g_Ball.Y > FIELD_BOUND_Y_BOTTOM) g_Ball.Y = FIELD_BOUND_Y_BOTTOM;
	ld	hl, (#_g_Ball + 0)
	ld	a, #0xae
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00109$
	ld	hl, #0x01ae
	ld	(_g_Ball), hl
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1263: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1266: u8 bestId = NO_VALUE;
	ld	-8 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1267: u16 minDist = 65535;
	ld	bc, #0xffff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1270: u8 t1=NO_VALUE, t2=NO_VALUE; u16 dt1=65535, dt2=65535;
	ld	-22 (ix), #0xff
	ld	-21 (ix), #0xff
	ld	-20 (ix), #0xff
	ld	-19 (ix), #0xff
	ld	-18 (ix), #0xff
	ld	-17 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1271: u8 o1=NO_VALUE, o2=NO_VALUE; u16 do1=65535, do2=65535;
	ld	-16 (ix), #0xff
	ld	-15 (ix), #0xff
	ld	-14 (ix), #0xff
	ld	-13 (ix), #0xff
	ld	-12 (ix), #0xff
	ld	-11 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1273: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00259$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1276: if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
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
	ld	de, #_g_Players
	add	hl, de
;	spillPairReg hl
;	spillPairReg hl
	ld	-7 (ix), l
	ld	-6 (ix), h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1253: if (g_Ball.X < FIELD_POS_X_CENTER) {
	ld	hl, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1276: if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jr	NC, 00111$
	ld	a, e
	sub	a, l
	ld	-5 (ix), a
	ld	a, d
	sbc	a, h
	ld	-4 (ix), a
	jp	00112$
00111$:
	ld	a, l
	sub	a, e
	ld	-5 (ix), a
	ld	a, h
	sbc	a, d
	ld	-4 (ix), a
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1277: if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1260: if (g_Ball.Y < FIELD_BOUND_Y_TOP) g_Ball.Y = FIELD_BOUND_Y_TOP;
	ld	de, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1277: if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);
	ld	a, e
	sub	a, -3 (ix)
	ld	a, d
	sbc	a, -2 (ix)
	jr	NC, 00114$
	ld	a, -3 (ix)
	sub	a, e
	ld	e, a
	ld	a, -2 (ix)
	sbc	a, d
	ld	d, a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	jp	00115$
00114$:
	ld	a, e
	sub	a, -3 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -2 (ix)
	ld	d, a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1280: if(g_Players[i].TeamId == g_RestartKickTeamId && g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) {
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #9
	add	hl, de
	ld	e, (hl)
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, e
	jr	NZ, 00260$
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #13
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00260$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1281: if(dist < minDist) { minDist = dist; bestId = i; }
	ld	a, -3 (ix)
	sub	a, c
	ld	a, -2 (ix)
	sbc	a, b
	jr	NC, 00260$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	a, -1 (ix)
	ld	-8 (ix), a
00260$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1273: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00259$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1284: g_ThrowInPlayerId = bestId;
	ld	a, -8 (ix)
	ld	(_g_ThrowInPlayerId+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1287: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00262$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00146$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1288: if(i == g_ThrowInPlayerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER || g_Players[i].TeamId == REFEREE) continue;
	ld	a, (_g_ThrowInPlayerId+0)
	sub	a, -1 (ix)
	jp	Z,00145$
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	bc,#13
	add	hl,bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00145$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
	ld	-10 (ix), a
	sub	a, #0x0e
	jp	Z,00145$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1291: if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1253: if (g_Ball.X < FIELD_POS_X_CENTER) {
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1291: if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00127$
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-8 (ix), a
	jp	00128$
00127$:
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-8 (ix), a
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1292: if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1260: if (g_Ball.Y < FIELD_BOUND_Y_TOP) g_Ball.Y = FIELD_BOUND_Y_TOP;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1292: if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00130$
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	add	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	adc	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	jp	00131$
00130$:
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
	add	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	adc	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1294: if (g_Players[i].TeamId == g_RestartKickTeamId) {
	ld	a, -10 (ix)
	ld	hl, #_g_RestartKickTeamId
	sub	a, (hl)
	jr	NZ, 00143$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1296: if (dist < dt1) { dt2=dt1; t2=t1; dt1=dist; t1=i; }
	ld	a, -3 (ix)
	sub	a, -20 (ix)
	ld	a, -2 (ix)
	sbc	a, -19 (ix)
	jr	NC, 00135$
	ld	a, -20 (ix)
	ld	-18 (ix), a
	ld	a, -19 (ix)
	ld	-17 (ix), a
	ld	a, -22 (ix)
	ld	-21 (ix), a
	ld	a, -3 (ix)
	ld	-20 (ix), a
	ld	a, -2 (ix)
	ld	-19 (ix), a
	ld	a, -1 (ix)
	ld	-22 (ix), a
	jp	00145$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1297: else if (dist < dt2) { dt2=dist; t2=i; }
	ld	a, -3 (ix)
	sub	a, -18 (ix)
	ld	a, -2 (ix)
	sbc	a, -17 (ix)
	jr	NC, 00145$
	ld	a, -3 (ix)
	ld	-18 (ix), a
	ld	a, -2 (ix)
	ld	-17 (ix), a
	ld	a, -1 (ix)
	ld	-21 (ix), a
	jp	00145$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1300: if (dist < do1) { do2=do1; o2=o1; do1=dist; o1=i; }
	ld	a, -3 (ix)
	sub	a, -14 (ix)
	ld	a, -2 (ix)
	sbc	a, -13 (ix)
	jr	NC, 00140$
	ld	a, -14 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -16 (ix)
	ld	-15 (ix), a
	ld	a, -3 (ix)
	ld	-14 (ix), a
	ld	a, -2 (ix)
	ld	-13 (ix), a
	ld	a, -1 (ix)
	ld	-16 (ix), a
	jp	00145$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1301: else if (dist < do2) { do2=dist; o2=i; }
	ld	a, -3 (ix)
	sub	a, -12 (ix)
	ld	a, -2 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00145$
	ld	a, -3 (ix)
	ld	-12 (ix), a
	ld	a, -2 (ix)
	ld	-11 (ix), a
	ld	a, -1 (ix)
	ld	-15 (ix), a
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1287: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00262$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1306: if (g_ThrowInPlayerId != NO_VALUE) {
	ld	a, (_g_ThrowInPlayerId+0)
	inc	a
	jp	Z,00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1307: g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
	ld	bc, (_g_ThrowInPlayerId)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -4 (ix)
	add	a, #<(_g_Players)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #>(_g_Players)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	add	a, #0x10
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1308: g_Players[g_ThrowInPlayerId].TargetY = g_Ball.Y;
	ld	bc, (_g_ThrowInPlayerId)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, #<(_g_Players)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	add	a, #0x0e
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1309: g_Players[g_ThrowInPlayerId].Status = PLAYER_STATUS_NONE;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	a, #<(_g_Players)
	add	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, #0x12
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1310: if (g_Ball.X < FIELD_POS_X_CENTER) g_Players[g_ThrowInPlayerId].Direction = DIRECTION_RIGHT;
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1307: g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
	ld	bc, (_g_ThrowInPlayerId)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1310: if (g_Ball.X < FIELD_POS_X_CENTER) g_Players[g_ThrowInPlayerId].Direction = DIRECTION_RIGHT;
	ld	a, #<(_g_Players)
	add	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, -6 (ix)
	sub	a, #0x78
	ld	a, -5 (ix)
	sbc	a, #0x00
	jr	NC, 00148$
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
	jp	00151$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1311: else g_Players[g_ThrowInPlayerId].Direction = DIRECTION_LEFT;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x07
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1316: bool isLeft = (g_Ball.X < FIELD_POS_X_CENTER);
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	de, #0x0078
	cp	a, a
	sbc	hl, de
	ld	a, #0x00
	rla
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1317: u8 crowdIds[4] = {t1, t2, o1, o2};
	ld	a, -22 (ix)
	ld	-42 (ix), a
	ld	a, -21 (ix)
	ld	-41 (ix), a
	ld	a, -16 (ix)
	ld	-40 (ix), a
	ld	a, -15 (ix)
	ld	-39 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1320: i16 yOffsets[4] = {-30, 20, -15, 35}; 
	ld	-38 (ix), #0xe2
	ld	-37 (ix), #0xff
	ld	-36 (ix), #0x14
	ld	-35 (ix), #0
	ld	-34 (ix), #0xf1
	ld	-33 (ix), #0xff
	ld	-32 (ix), #0x23
	ld	-31 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1321: u16 xOffsets[4] = {15, 35, 25, 45}; 
	ld	-30 (ix), #0x0f
	ld	-29 (ix), #0
	ld	-28 (ix), #0x23
	ld	-27 (ix), #0
	ld	-26 (ix), #0x19
	ld	-25 (ix), #0
	ld	-24 (ix), #0x2d
	ld	-23 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1323: for(u8 k=0; k<4; k++) {
	ld	-2 (ix), #0x00
00264$:
	ld	a, -2 (ix)
	sub	a, #0x04
	jp	NC, 00161$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1324: u8 pid = crowdIds[k];
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1325: if(pid != NO_VALUE) {
	ld	-3 (ix), a
	inc	a
	jp	Z,00265$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1326: g_Players[pid].Status = PLAYER_STATUS_NONE;
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
	ld	de, #_g_Players
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, #0x0012
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1329: i16 ty = (i16)g_Ball.Y + yOffsets[k];
	ld	de, (#_g_Ball + 0)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	-6 (ix), l
	ld	-5 (ix), h
	push	de
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	hl, #6
	add	hl, sp
	add	hl, de
	pop	de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1331: if(ty < FIELD_BOUND_Y_TOP) ty = FIELD_BOUND_Y_TOP;
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, #0x32
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00153$
	ld	de, #0x0032
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1332: if(ty > FIELD_BOUND_Y_BOTTOM) ty = FIELD_BOUND_Y_BOTTOM;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xae
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jp	PO, 00717$
	xor	a, #0x80
00717$:
	jp	P, 00155$
	ld	de, #0x01ae
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1333: g_Players[pid].TargetY = (u16)ty;
	ld	hl, #0x000e
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1253: if (g_Ball.X < FIELD_POS_X_CENTER) {
	ld	de, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1337: g_Players[pid].TargetX = g_Ball.X + xOffsets[k];
	ld	hl, #0x0010
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	push	de
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	hl, #14
	add	hl, sp
	add	hl, de
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1338: g_Players[pid].Direction = DIRECTION_LEFT; // Look at thrower
	ld	a, c
	add	a, #0x0a
	ld	c, a
	jr	NC, 00718$
	inc	b
00718$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1337: g_Players[pid].TargetX = g_Ball.X + xOffsets[k];
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1336: if (isLeft) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00157$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1337: g_Players[pid].TargetX = g_Ball.X + xOffsets[k];
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1338: g_Players[pid].Direction = DIRECTION_LEFT; // Look at thrower
	ld	a, #0x07
	ld	(bc), a
	jp	00265$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1340: g_Players[pid].TargetX = g_Ball.X - xOffsets[k];
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1341: g_Players[pid].Direction = DIRECTION_RIGHT; // Look at thrower
	ld	a, #0x03
	ld	(bc), a
00265$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1323: for(u8 k=0; k<4; k++) {
	inc	-2 (ix)
	jp	00264$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1357: if (g_ThrowInPlayerId != NO_VALUE) {
	ld	a, (_g_ThrowInPlayerId+0)
	inc	a
	jr	Z, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1358: g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	hl, #0x0010
	add	hl, de
	ex	de, hl
	ld	bc, (#(_g_Ball + 2) + 0)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1359: g_Players[g_ThrowInPlayerId].TargetY = g_Ball.Y;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	hl, #0x000e
	add	hl, de
	ex	de, hl
	ld	bc, (#_g_Ball + 0)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1260: if (g_Ball.Y < FIELD_BOUND_Y_TOP) g_Ball.Y = FIELD_BOUND_Y_TOP;
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1363: if (g_Ball.Y < 140) g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
	ld	a, l
	sub	a, #0x8c
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00168$
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x00
	jp	00171$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1364: else if (g_Ball.Y > 280) g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
	ld	a, #0x18
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00165$
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x02
	jp	00171$
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1365: else g_FieldScrollingActionInProgress=FIELD_CENTRAL_ZONE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x01
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1369: if (g_ThrowInPlayerId != NO_VALUE) {
	ld	a, (_g_ThrowInPlayerId+0)
	inc	a
	jp	Z,00269$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1370: i16 dx = (i16)g_Players[g_ThrowInPlayerId].X - (i16)g_Players[g_ThrowInPlayerId].TargetX;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	hl, #0x0002
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0010
	add	hl, bc
	pop	bc
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1371: i16 dy = (i16)g_Players[g_ThrowInPlayerId].Y - (i16)g_Players[g_ThrowInPlayerId].TargetY;
	ld	l, e
	ld	h, d
	inc	hl
	ld	a, (hl)
	dec	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	-2 (ix), l
	ld	-1 (ix), a
	ld	hl, #14
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -2 (ix)
	sub	a, e
	ld	e, a
	ld	a, -1 (ix)
	sbc	a, d
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1373: if (dx >= -4 && dx <= 4 && dy >= -4 && dy <= 4) {
	ld	a, c
	sub	a, #0xfc
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jp	C, 00251$
	ld	a, #0x04
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00721$
	xor	a, #0x80
00721$:
	jp	M, 00251$
	ld	a, e
	sub	a, #0xfc
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jp	C, 00251$
	ld	a, #0x04
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00722$
	xor	a, #0x80
00722$:
	jp	M, 00251$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1374: g_Players[g_ThrowInPlayerId].X = g_Players[g_ThrowInPlayerId].TargetX;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1375: g_Players[g_ThrowInPlayerId].Y = g_Players[g_ThrowInPlayerId].TargetY;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	hl, #14
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1376: g_Players[g_ThrowInPlayerId].Status = PLAYER_STATUS_POSITIONED;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	bc, #0x0012
	add	hl, bc
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1379: if(g_Ball.X < FIELD_POS_X_CENTER) {
	ld	bc, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1307: g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
	ld	de, (_g_ThrowInPlayerId)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1380: g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_LEFT_1;
	ld	de, #_g_Players
	add	hl, de
	ld	de, #0x0008
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1379: if(g_Ball.X < FIELD_POS_X_CENTER) {
	ld	a, c
	sub	a, #0x78
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00173$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1380: g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_LEFT_1;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x93
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1381: g_Players[g_ThrowInPlayerId].Direction = DIRECTION_RIGHT;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	bc, #0x000a
	add	hl, bc
	ld	(hl), #0x03
	jp	00174$
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1383: g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_RIGHT_1;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x1c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1384: g_Players[g_ThrowInPlayerId].Direction = DIRECTION_LEFT;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	bc, #0x000a
	add	hl, bc
	ld	(hl), #0x07
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1388: g_Ball.X = g_Players[g_ThrowInPlayerId].X;
	ld	bc, (_g_ThrowInPlayerId)
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
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	((_g_Ball + 2)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1390: if(g_Ball.X < FIELD_POS_X_CENTER) g_Ball.Y = g_Players[g_ThrowInPlayerId].Y - 14; 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1307: g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
	ld	de, (_g_ThrowInPlayerId)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1380: g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_LEFT_1;
	ld	de, #_g_Players
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1390: if(g_Ball.X < FIELD_POS_X_CENTER) g_Ball.Y = g_Players[g_ThrowInPlayerId].Y - 14; 
	ld	a, (hl)
	inc	hl
	ld	e, (hl)
	ld	-2 (ix), a
	ld	-1 (ix), e
	ld	a, c
	sub	a, #0x78
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00176$
	ld	a, -2 (ix)
	add	a, #0xf2
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0xff
	ld	b, a
	ld	(_g_Ball), bc
	jp	00177$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1391: else g_Ball.Y = g_Players[g_ThrowInPlayerId].Y - 12;
	ld	a, -2 (ix)
	add	a, #0xf4
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0xff
	ld	b, a
	ld	(_g_Ball), bc
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1393: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1397: u8 crowdReady = 1;
	ld	(hl), #0x01
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1399: for(i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1401: u16 tdx = (g_Players[i].TargetX > g_Ball.X) ? (g_Players[i].TargetX - g_Ball.X) : (g_Ball.X - g_Players[i].TargetX);
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
	ld	de, #_g_Players
	add	hl, de
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	de, #16
	add	hl, de
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1379: if(g_Ball.X < FIELD_POS_X_CENTER) {
	ld	hl, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1401: u16 tdx = (g_Players[i].TargetX > g_Ball.X) ? (g_Players[i].TargetX - g_Ball.X) : (g_Ball.X - g_Players[i].TargetX);
	ld	a, l
	sub	a, -11 (ix)
	ld	a, h
	sbc	a, -10 (ix)
	jr	NC, 00271$
	ld	a, -11 (ix)
	sub	a, l
	ld	b, a
	ld	a, -10 (ix)
	sbc	a, h
	jp	00272$
00271$:
	ld	a, l
	sub	a, -11 (ix)
	ld	b, a
	ld	a, h
	sbc	a, -10 (ix)
00272$:
	ld	-5 (ix), b
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1402: u16 tdy = (g_Players[i].TargetY > g_Ball.Y) ? (g_Players[i].TargetY - g_Ball.Y) : (g_Ball.Y - g_Players[i].TargetY);
	ld	a, -13 (ix)
	add	a, #0x0e
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1409: i16 pdy = (i16)g_Players[i].Y - (i16)g_Players[i].TargetY;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1402: u16 tdy = (g_Players[i].TargetY > g_Ball.Y) ? (g_Players[i].TargetY - g_Ball.Y) : (g_Ball.Y - g_Players[i].TargetY);
	ld	hl, (#_g_Ball + 0)
	ld	a, l
	sub	a, -3 (ix)
	ld	a, h
	sbc	a, -2 (ix)
	jr	NC, 00273$
	ld	a, -3 (ix)
	sub	a, l
	ld	e, a
	ld	a, -2 (ix)
	sbc	a, h
	jp	00274$
00273$:
	ld	a, l
	sub	a, -3 (ix)
	ld	e, a
	ld	a, h
	sbc	a, -2 (ix)
00274$:
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1404: if (tdx < 100 && tdy < 100) {
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -5 (ix)
	ld	l, -4 (ix)
	sub	a, #0x64
	ld	a, l
	sbc	a, #0x00
	jp	NC, 00267$
	ld	a, e
	sub	a, #0x64
	ld	a, d
	sbc	a, #0x00
	jp	NC, 00267$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1406: if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
	ld	a, -13 (ix)
	add	a, #0x12
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x04
	or	a, d
	jp	Z,00267$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1408: i16 pdx = (i16)g_Players[i].X - (i16)g_Players[i].TargetX;
	ld	a, -13 (ix)
	add	a, #0x02
	ld	-5 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ex	de, hl
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	cp	a, a
	sbc	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1409: i16 pdy = (i16)g_Players[i].Y - (i16)g_Players[i].TargetY;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	sub	a, -3 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	sbc	a, -2 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1410: if (pdx >= -4 && pdx <= 4 && pdy >= -4 && pdy <= 4) {
	ld	a, e
	sub	a, #0xfc
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00179$
	ld	a, #0x04
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00724$
	xor	a, #0x80
00724$:
	jp	M, 00179$
	ld	a, l
	sub	a, #0xfc
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00179$
	ld	a, #0x04
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00725$
	xor	a, #0x80
00725$:
	jp	M, 00179$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1411: g_Players[i].X = g_Players[i].TargetX;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1412: g_Players[i].Y = g_Players[i].TargetY;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1413: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
	jp	00267$
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1415: crowdReady = 0;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1416: break;
	jp	00189$
00267$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1399: for(i=0; i<14; i++) {
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	C, 00266$
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1422: if (crowdReady) {
	ld	a, c
	or	a, a
	jr	Z, 00191$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1423: g_Timer++;
	ld	iy, #_g_Timer
	inc	0 (iy)
	jp	00192$
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1425: g_Timer = 1; // Wait
	ld	a, #0x01
	ld	(#_g_Timer), a
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1429: if (g_Timer > 60) {
	ld	a, #0x3c
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jp	NC, 00269$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1435: u8 t1=NO_VALUE, t2=NO_VALUE; u16 dt1=65535, dt2=65535;
	ld	-15 (ix), #0xff
	ld	-14 (ix), #0xff
	ld	-13 (ix), #0xff
	ld	-12 (ix), #0xff
	ld	-11 (ix), #0xff
	ld	-10 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1437: for(i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1438: if(i == g_ThrowInPlayerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER || g_Players[i].TeamId == REFEREE) continue;
	ld	a, (_g_ThrowInPlayerId+0)
	sub	a, -1 (ix)
	jp	Z,00206$
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	bc,#13
	add	hl,bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00206$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	hl, #9
	add	hl, bc
	ld	c, (hl)
	ld	a, c
	sub	a, #0x0e
	jp	Z,00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1440: if (g_Players[i].TeamId == g_RestartKickTeamId) {
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, c
	jp	NZ,00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1441: u16 dx = (g_Players[i].X > g_Ball.X) ? (g_Players[i].X - g_Ball.X) : (g_Ball.X - g_Players[i].X);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1379: if(g_Ball.X < FIELD_POS_X_CENTER) {
	ld	de, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1441: u16 dx = (g_Players[i].X > g_Ball.X) ? (g_Players[i].X - g_Ball.X) : (g_Ball.X - g_Players[i].X);
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00275$
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	jp	00276$
00275$:
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
00276$:
	ld	-9 (ix), c
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1442: u16 dy = (g_Players[i].Y > g_Ball.Y) ? (g_Players[i].Y - g_Ball.Y) : (g_Ball.Y - g_Players[i].Y);
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1402: u16 tdy = (g_Players[i].TargetY > g_Ball.Y) ? (g_Players[i].TargetY - g_Ball.Y) : (g_Ball.Y - g_Players[i].TargetY);
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1442: u16 dy = (g_Players[i].Y > g_Ball.Y) ? (g_Players[i].Y - g_Ball.Y) : (g_Ball.Y - g_Players[i].Y);
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00277$
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
	jp	00278$
00277$:
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-2 (ix), a
00278$:
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1443: u16 d = dx+dy;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	add	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1445: if (d < 200) { // Safety check
	ld	c, l
	ld	b, h
	ld	a, c
	sub	a, #0xc8
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1446: if (d < dt1) { dt2=dt1; t2=t1; dt1=d; t1=i; }
	ld	a, l
	sub	a, -13 (ix)
	ld	a, h
	sbc	a, -12 (ix)
	jr	NC, 00200$
	ld	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	ld	-10 (ix), a
	ld	a, -15 (ix)
	ld	-14 (ix), a
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	a, -1 (ix)
	ld	-15 (ix), a
	jp	00206$
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1447: else if (d < dt2) { dt2=d; t2=i; }
	ld	a, l
	sub	a, -11 (ix)
	ld	a, h
	sbc	a, -10 (ix)
	jr	NC, 00206$
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -1 (ix)
	ld	-14 (ix), a
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1437: for(i=0; i<14; i++) {
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	C, 00268$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1451: c1 = t1; c2 = t2;
	ld	c, -15 (ix)
	ld	b, -14 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1455: if (s_ThrowTargetId == NO_VALUE && c1 != NO_VALUE) s_ThrowTargetId = c1;
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1492+0)
	inc	a
	jr	NZ, 00209$
	ld	a, -15 (ix)
	inc	a
	jr	Z, 00209$
	ld	a, -15 (ix)
	ld	(_TickThrowIn_s_ThrowTargetId_65537_1492+0), a
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1457: if (s_ThrowTargetId == NO_VALUE) {
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1492+0)
	inc	a
	jr	NZ, 00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1458: s_ThrowTargetId = GetClosestPlayerToBall(g_RestartKickTeamId, g_ThrowInPlayerId);
	push	bc
	ld	a, (_g_ThrowInPlayerId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_g_RestartKickTeamId+0)
	call	_GetClosestPlayerToBall
	pop	bc
	ld	(_TickThrowIn_s_ThrowTargetId_65537_1492+0), a
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1462: bool isHuman = (g_RestartKickTeamId == TEAM_1);
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	ld	a, #0x01
	jr	Z, 00736$
	xor	a, a
00736$:
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1463: if (g_GameWith2Players) isHuman = true; 
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00214$
	ld	e, #0x01
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1464: if (g_RestartKickTeamId == TEAM_2 && !g_GameWith2Players) isHuman = false;
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, #0x02
	jr	NZ, 00216$
	ld	a, (_g_GameWith2Players+0)
	or	a,a
	jr	NZ, 00216$
	ld	e,a
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1466: if (isHuman) {
	ld	a, e
	or	a, a
	jp	Z, 00246$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1468: u8 joy = GetJoystickDirection();
	push	bc
	call	_GetJoystickDirection
	pop	bc
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1469: bool trig = IsJoystickTriggerPressed();
	push	bc
	push	de
	call	_IsJoystickTriggerPressed
	pop	de
	pop	bc
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1472: if (joy != DIRECTION_NONE && !s_JoyMoved) {
	ld	a, d
	or	a, a
	jr	Z, 00227$
	ld	a, (_TickThrowIn_s_JoyMoved_65537_1492+0)
	or	a, a
	jr	NZ, 00227$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1474: if (c1 != NO_VALUE && c2 != NO_VALUE) {
	ld	a, c
	inc	a
	jr	Z, 00222$
	ld	a, b
	inc	a
	jr	Z, 00222$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1475: if (s_ThrowTargetId == c1) s_ThrowTargetId = c2;
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1492+0)
	sub	a, c
	jr	NZ, 00219$
	ld	a, b
	ld	(#_TickThrowIn_s_ThrowTargetId_65537_1492), a
	jp	00222$
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1476: else s_ThrowTargetId = c1;
	ld	a, c
	ld	(#_TickThrowIn_s_ThrowTargetId_65537_1492), a
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1478: s_JoyMoved = true;
	ld	a, #0x01
	ld	(#_TickThrowIn_s_JoyMoved_65537_1492), a
	jp	00228$
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1479: } else if (joy == DIRECTION_NONE) {
	ld	a, d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1480: s_JoyMoved = false;
	or	a,a
	jr	NZ, 00228$
	ld	(#_TickThrowIn_s_JoyMoved_65537_1492), a
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1484: g_PassTargetPlayer = s_ThrowTargetId; 
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1492+0)
	ld	(_g_PassTargetPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1487: s_ForceThrowTimer++;
	ld	hl, (_TickThrowIn_s_ForceThrowTimer_65537_1492)
	inc	hl
	ld	(_TickThrowIn_s_ForceThrowTimer_65537_1492), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1490: if ((trig || s_ForceThrowTimer > 240) && s_ThrowTargetId != NO_VALUE) {
	ld	a, e
	or	a, a
	jr	NZ, 00233$
	ld	hl, (_TickThrowIn_s_ForceThrowTimer_65537_1492)
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	NC, 00269$
00233$:
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1492+0)
	inc	a
	jp	Z,00269$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1491: g_Ball.PossessionPlayerId = g_ThrowInPlayerId;
	ld	hl, #(_g_Ball + 6)
	ld	a, (_g_ThrowInPlayerId+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1492: SetPlayerBallPossession(g_ThrowInPlayerId);
	ld	a, (_g_ThrowInPlayerId+0)
	call	_SetPlayerBallPossession
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1493: g_Ball.Y = g_Players[g_ThrowInPlayerId].Y; // Reset to feet
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	(_g_Ball), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1494: PerformPass(s_ThrowTargetId);
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1492+0)
	call	_PerformPass
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1495: g_MatchStatus = MATCH_IN_ACTION;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1496: V9990_ClearTextFromLayerA(10, 18, 9); // Correct coords: 10, 18 (len 9 is enough for "THROW IN")
	ld	a, #0x09
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1497: g_Ball.ShotActive = 1; // High Arc for throw
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1498: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
	jp	00269$
00246$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1502: if (g_Timer > 100) {
	ld	a, #0x64
	ld	hl, #_g_Timer
	sub	a, (hl)
	jr	NC, 00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1503: if (s_ThrowTargetId == NO_VALUE && c1 != NO_VALUE) s_ThrowTargetId = c1; 
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1492+0)
	inc	a
	jr	NZ, 00235$
	ld	a, c
	inc	a
	jr	Z, 00235$
	ld	hl, #_TickThrowIn_s_ThrowTargetId_65537_1492
	ld	(hl), c
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1504: if (s_ThrowTargetId == NO_VALUE) s_ThrowTargetId = GetClosestPlayerToBall(g_RestartKickTeamId, g_ThrowInPlayerId);
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1492+0)
	inc	a
	jr	NZ, 00238$
	ld	a, (_g_ThrowInPlayerId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_g_RestartKickTeamId+0)
	call	_GetClosestPlayerToBall
	ld	(_TickThrowIn_s_ThrowTargetId_65537_1492+0), a
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1507: if (g_Timer > 120) {
	ld	a, #0x78
	ld	hl, #_g_Timer
	sub	a, (hl)
	jr	NC, 00240$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1508: g_Ball.PossessionPlayerId = g_ThrowInPlayerId;
	ld	hl, #(_g_Ball + 6)
	ld	a, (_g_ThrowInPlayerId+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1509: SetPlayerBallPossession(g_ThrowInPlayerId);
	ld	a, (_g_ThrowInPlayerId+0)
	call	_SetPlayerBallPossession
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1510: g_Ball.Y = g_Players[g_ThrowInPlayerId].Y; 
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	(_g_Ball), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1511: PerformPass(s_ThrowTargetId);
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1492+0)
	call	_PerformPass
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1512: g_MatchStatus = MATCH_IN_ACTION; 
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1513: V9990_ClearTextFromLayerA(10, 18, 9);
	ld	a, #0x09
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1514: g_Ball.ShotActive = 1; 
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1515: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
	jp	00269$
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1517: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
	jp	00269$
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1520: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
	jp	00269$
00251$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1525: g_Timer = 1; 
	ld	hl, #_g_Timer
	ld	(hl), #0x01
00269$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1528: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1530: void TickPlayerToOwnTarget(){
;	---------------------------------
; Function TickPlayerToOwnTarget
; ---------------------------------
_TickPlayerToOwnTarget::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1531: if(g_MatchStatus!=MATCH_NOT_STARTED){
	ld	a, (_g_MatchStatus+0)
	or	a, a
	jp	Z, 00276$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1532: bool allPlayersInPosition = true;
	ld	-16 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1535: s_GkMoveTick++;
	ld	hl, #_TickPlayerToOwnTarget_s_GkMoveTick_131072_1554
	inc	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1536: for(u8 i=0;i<15;i++){
	ld	-1 (ix), #0x00
00275$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00267$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1537: if (g_MatchStatus == MATCH_IN_ACTION && g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	jp	NZ,00117$
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
	ld	c, l
	ld	b, h
	push	bc
	pop	iy
	ld	a, 13 (iy)
	or	a, a
	jp	NZ, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1538: if (g_Ball.ShotActive) continue; 
	ld	a, (#_g_Ball + 27)
	or	a, a
	jp	NZ, 00266$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1540: if ((s_GkMoveTick & 1) == 0) { 
	ld	a, (_TickPlayerToOwnTarget_s_GkMoveTick_131072_1554+0)
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1553: i16 diff = (i16)desiredX - (i16)g_Players[i].X;
	ld	hl, #0x0002
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1540: if ((s_GkMoveTick & 1) == 0) { 
	bit	0, e
	jp	NZ,00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1543: u16 desiredX = g_Ball.X;
	ld	de, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1545: const TeamStats* stats = GetTeamStats(g_Players[i].TeamId);
	push	bc
	pop	iy
	ld	l, 9 (iy)
;	spillPairReg hl
	push	bc
	push	de
	ld	a, l
	call	_GetTeamStats
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1546: if (stats->GkSkill >= 15) {
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	pop	de
	pop	bc
	ld	a, (hl)
	sub	a, #0x0f
	jr	C, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1547: desiredX = (g_Ball.X + FIELD_POS_X_CENTER) / 2;
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	de, #0x0078
	add	hl, de
	srl	h
	rr	l
	ex	de, hl
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1550: if (desiredX < minX) desiredX = minX;
	ld	a, e
	sub	a, #0x60
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00106$
	ld	de, #0x0060
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1551: if (desiredX > maxX) desiredX = maxX;
	ld	a, #0x90
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00108$
	ld	de, #0x0090
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1553: i16 diff = (i16)desiredX - (i16)g_Players[i].X;
	ld	-3 (ix), e
	ld	-2 (ix), d
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -3 (ix)
	sub	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	sbc	a, h
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1556: if (diff > 2) g_Players[i].X++;
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, #0x02
	cp	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	jp	PO, 00745$
	xor	a, #0x80
00745$:
	jp	P, 00112$
	inc	de
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00115$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1557: else if (diff < -2) g_Players[i].X--;
	ld	a, l
	sub	a, #0xfe
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00115$
	dec	de
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1560: g_Players[i].TargetX = g_Players[i].X;
	ld	hl, #0x0010
	add	hl, bc
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1564: if(i != REFEREE) continue;
	ld	a, -1 (ix)
	sub	a, #0x0e
	ld	a, #0x01
	jr	Z, 00747$
	xor	a, a
00747$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1563: if(g_MatchStatus == MATCH_AFTER_IN_GOAL) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x06
	jr	NZ, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1564: if(i != REFEREE) continue;
	bit	0, c
	jp	Z, 00266$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1566: g_Players[i].TargetX=FIELD_POS_X_CENTER - 30; 
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
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ex	de, hl
	ld	hl, #0x0010
	add	hl, de
	ld	(hl), #0x5a
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1567: g_Players[i].TargetY=FIELD_POS_Y_CENTER - 40; 
	ld	hl, #0x000e
	add	hl, de
	ld	(hl), #0xcb
	inc	hl
	ld	(hl), #0x00
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1570: if (i == REFEREE && (g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER)) continue;
	ld	a, c
	or	a, a
	jr	Z, 00124$
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jp	Z,00266$
	sub	a, #0x0d
	jp	Z,00266$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1573: bool isSetPieceSetup = (g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK || g_MatchStatus == MATCH_BEFORE_OFFSIDE || g_MatchStatus == MATCH_BEFORE_THROW_IN);
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x02
	jr	Z, 00279$
	cp	a,#0x05
	jr	Z, 00279$
	cp	a,#0x0e
	jr	Z, 00279$
	sub	a, #0x03
	jr	Z, 00279$
	xor	a, a
	jp	00280$
00279$:
	ld	a, #0x01
00280$:
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1574: bool isGkRestart = (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER);
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	ld	a, #0x01
	jr	Z, 00757$
	xor	a, a
00757$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1576: if (!isSetPieceSetup && !isGkRestart) {
	ld	a, -15 (ix)
	or	a,a
	jr	NZ, 00135$
	or	a,c
	jr	NZ, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1577: if (g_Team1ActivePlayer != NO_VALUE && i == g_Team1ActivePlayer) continue;
	ld	a, (_g_Team1ActivePlayer+0)
	inc	a
	jr	Z, 00128$
	ld	a, -1 (ix)
	ld	hl, #_g_Team1ActivePlayer
	sub	a, (hl)
	jp	Z,00266$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1578: if (g_GameWith2Players && g_Team2ActivePlayer != NO_VALUE && i == g_Team2ActivePlayer) continue;
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00135$
	ld	a, (_g_Team2ActivePlayer+0)
	inc	a
	jr	Z, 00135$
	ld	a, -1 (ix)
	ld	hl, #_g_Team2ActivePlayer
	sub	a, (hl)
	jp	Z,00266$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1582: bool playerInPosition = (g_Players[i].X == g_Players[i].TargetX && g_Players[i].Y == g_Players[i].TargetY);
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
	ld	de, #_g_Players
	add	hl, de
	ld	-14 (ix), l
	ld	-13 (ix), h
	ld	a, -14 (ix)
	add	a, #0x02
	ld	-12 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -14 (ix)
	add	a, #0x10
	ld	-3 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, e
	cp	a, a
	sbc	hl, bc
	jr	NZ, 00287$
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -14 (ix)
	ld	-5 (ix), a
	ld	a, -13 (ix)
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	jr	NZ, 00764$
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	jr	Z, 00288$
00764$:
00287$:
	xor	a, a
	jp	00289$
00288$:
	ld	a, #0x01
00289$:
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1585: if (g_MatchStatus == MATCH_BEFORE_KICK_OFF && !playerInPosition) {
	ld	a, (_g_MatchStatus+0)
	dec	a
	jr	NZ, 00138$
	ld	a, -10 (ix)
	or	a, a
	jr	NZ, 00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1586: allPlayersInPosition = false;
	ld	-16 (ix), #0x00
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1589: if(g_MatchStatus==MATCH_IN_ACTION){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	jp	NZ,00168$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1590: const TeamStats* stats = GetTeamStats(g_Players[i].TeamId);
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
	call	_GetTeamStats
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1591: u8 speed = stats->Speed;
	ld	a, (de)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1602: u8 tick = g_FrameCounter % 12; // Common multiple
	ld	a, (_g_FrameCounter+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x000c
	call	__modsint
	ld	-4 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1603: bool move = false;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1604: if (speed == 0) { if ((tick % 4) == 0) move = true; }
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00163$
	ld	a, -4 (ix)
	and	a, #0x03
	jr	NZ, 00164$
	ld	c, #0x01
	jp	00164$
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1605: else if (speed == 1) { if ((tick % 3) == 0) move = true; }
	ld	a, -5 (ix)
	dec	a
	jr	NZ, 00160$
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0003
	call	__modsint
	pop	bc
	ld	a, d
	or	a, e
	jr	NZ, 00164$
	ld	c, #0x01
	jp	00164$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1606: else if (speed == 2) { if ((tick % 2) == 0) move = true; }
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00157$
	bit	0, -4 (ix)
	jr	NZ, 00164$
	ld	c, #0x01
	jp	00164$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1607: else if (speed == 3) { if ((tick % 3) != 2) move = true; } // 0, 1, 3, 4...
	ld	a, -5 (ix)
	sub	a, #0x03
	jr	NZ, 00154$
	ld	l, -4 (ix)
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
	or	a, d
	jr	Z, 00164$
	ld	c, #0x01
	jp	00164$
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1608: else if (speed == 4) { if ((tick % 4) != 3) move = true; }
	ld	a, -5 (ix)
	sub	a, #0x04
	jr	NZ, 00151$
	ld	a, -4 (ix)
	and	a, #0x03
	ld	b, a
	ld	e, #0x00
	ld	a, b
	sub	a, #0x03
	or	a, e
	jr	Z, 00164$
	ld	c, #0x01
	jp	00164$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1609: else move = true;
	ld	c, #0x01
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1611: if (!move) continue;
	ld	a, c
	or	a, a
	jr	NZ, 00169$
	jp	00266$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1613: g_Players[i].AiTickCounter=0;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x0014
	add	hl, de
	ld	(hl), #0x00
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1616: if(!playerInPosition){
	ld	a, -10 (ix)
	or	a, a
	jp	NZ, 00210$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1617: g_Players[i].Status=PLAYER_STATUS_NONE;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1582: bool playerInPosition = (g_Players[i].X == g_Players[i].TargetX && g_Players[i].Y == g_Players[i].TargetY);
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1618: if(g_Players[i].X<g_Players[i].TargetX && g_Players[i].Y>g_Players[i].TargetY){
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	ld	a, #0x00
	rla
	ld	-3 (ix), a
	or	a, a
	jr	Z, 00198$
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	hl, #14
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -5 (ix)
	ld	a, b
	sbc	a, -4 (ix)
	jr	NC, 00198$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1619: g_Players[i].Direction=DIRECTION_UP_RIGHT;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1620: g_Players[i].X++;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1621: g_Players[i].Y--;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00199$
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1623: else if(g_Players[i].X>g_Players[i].TargetX && g_Players[i].Y>g_Players[i].TargetY){
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	ld	a, #0x00
	rla
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00194$
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	hl, #14
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -5 (ix)
	ld	a, b
	sbc	a, -4 (ix)
	jr	NC, 00194$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1624: g_Players[i].Direction=DIRECTION_UP_LEFT;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x08
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1625: g_Players[i].X--;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1626: g_Players[i].Y--;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00199$
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1628: else if(g_Players[i].X>g_Players[i].TargetX && g_Players[i].Y<g_Players[i].TargetY){
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00190$
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	hl, #14
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -5 (ix)
	sub	a, c
	ld	a, -4 (ix)
	sbc	a, b
	jr	NC, 00190$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1629: g_Players[i].Direction=DIRECTION_DOWN_LEFT;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1630: g_Players[i].X--;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1631: g_Players[i].Y++;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00199$
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1633: else if(g_Players[i].X<g_Players[i].TargetX && g_Players[i].Y<g_Players[i].TargetY){
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00186$
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	hl, #14
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -5 (ix)
	sub	a, c
	ld	a, -4 (ix)
	sbc	a, b
	jr	NC, 00186$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1634: g_Players[i].Direction=DIRECTION_DOWN_RIGHT;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1635: g_Players[i].X++;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1636: g_Players[i].Y++;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00199$
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1638: else if(g_Players[i].X==g_Players[i].TargetX && g_Players[i].Y>g_Players[i].TargetY){
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	jr	NZ, 00783$
	ld	a, -8 (ix)
	sub	a, -6 (ix)
	ld	a, #0x01
	jr	Z, 00784$
00783$:
	xor	a, a
00784$:
	ld	c, a
	or	a, a
	jr	Z, 00182$
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	hl, #14
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	a, b
	sub	a, -5 (ix)
	ld	a, l
	sbc	a, -4 (ix)
	jr	NC, 00182$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1639: g_Players[i].Direction=DIRECTION_UP;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1640: g_Players[i].Y--;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00199$
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1642: else if(g_Players[i].X==g_Players[i].TargetX && g_Players[i].Y<g_Players[i].TargetY){
	ld	a, c
	or	a, a
	jr	Z, 00178$
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	hl, #14
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -5 (ix)
	sub	a, c
	ld	a, -4 (ix)
	sbc	a, b
	jr	NC, 00178$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1643: g_Players[i].Direction=DIRECTION_DOWN;
	ld	a, -14 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1644: g_Players[i].Y++;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x01
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
	jp	00199$
00178$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1646: else if(g_Players[i].X<g_Players[i].TargetX && g_Players[i].Y==g_Players[i].TargetY){
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00174$
	ld	a, -14 (ix)
	ld	-7 (ix), a
	ld	a, -13 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	jr	NZ, 00174$
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	jr	NZ, 00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1647: g_Players[i].Direction=DIRECTION_RIGHT;
	ld	a, -14 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1648: g_Players[i].X++;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x01
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
	jp	00199$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1650: else if(g_Players[i].X>g_Players[i].TargetX && g_Players[i].Y==g_Players[i].TargetY){
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00199$
	ld	a, -14 (ix)
	ld	-3 (ix), a
	ld	a, -13 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	sub	a, -3 (ix)
	jr	NZ, 00199$
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	jr	NZ, 00199$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1651: g_Players[i].Direction=DIRECTION_LEFT;
	ld	a, -14 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1652: g_Players[i].X--;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0xff
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
00199$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1656: if(g_Players[i].Y < FIELD_BOUND_Y_TOP) g_Players[i].Y = FIELD_BOUND_Y_TOP;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x32
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00202$
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1657: if(g_Players[i].Y > FIELD_BOUND_Y_BOTTOM) g_Players[i].Y = FIELD_BOUND_Y_BOTTOM;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xae
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00204$
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0xae
	inc	hl
	ld	(hl), #0x01
00204$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1658: if(g_Players[i].X < FIELD_BOUND_X_LEFT) g_Players[i].X = FIELD_BOUND_X_LEFT;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00206$
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1659: if(g_Players[i].X > FIELD_BOUND_X_RIGHT) g_Players[i].X = FIELD_BOUND_X_RIGHT;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00210$
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), #0xec
	inc	hl
	ld	(hl), #0x00
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1537: if (g_MatchStatus == MATCH_IN_ACTION && g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	ld	a, #0x01
	jr	Z, 00790$
	xor	a, a
00790$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1663: if (g_MatchStatus == MATCH_IN_ACTION || (isSetPieceSetup && g_Ball.PossessionPlayerId == i)) {
	ld	b, a
	or	a, a
	jr	NZ, 00223$
	ld	a, -15 (ix)
	or	a, a
	jr	Z, 00224$
	ld	hl, #(_g_Ball + 6)
	ld	a,-1 (ix)
	sub	a,(hl)
	jr	NZ, 00224$
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1664: if (g_Ball.PossessionPlayerId == i) {
	ld	hl, #(_g_Ball + 6)
	ld	a,-1 (ix)
	sub	a,(hl)
	jr	NZ, 00224$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1667: if (g_Ball.KickMoveState == NO_VALUE) g_Ball.KickMoveState = 0;
	ld	de, #_g_Ball + 13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1666: if (!playerInPosition && g_MatchStatus == MATCH_IN_ACTION) {
	ld	a, -10 (ix)
	or	a,a
	jr	NZ, 00218$
	or	a,b
	jr	Z, 00218$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1667: if (g_Ball.KickMoveState == NO_VALUE) g_Ball.KickMoveState = 0;
	ld	a, (de)
	inc	a
	jr	NZ, 00212$
	ld	(de), a
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1668: g_Ball.KickMoveState++;
	ld	a, (de)
	inc	a
	ld	c, a
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1669: if (g_Ball.KickMoveState > 3) g_Ball.KickMoveState = 0;
	ld	a, #0x03
	sub	a, c
	jr	NC, 00214$
	xor	a, a
	ld	(de), a
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1670: if (g_Ball.KickMoveState == 1) PlayAyFx(AYFX_BALL);
	ld	a, (de)
	dec	a
	jr	NZ, 00219$
	call	_PlayAyFx
	jp	00219$
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1672: g_Ball.KickMoveState = 0;
	xor	a, a
	ld	(de), a
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1674: PutBallOnPlayerFeet(i);
	ld	a, -1 (ix)
	call	_PutBallOnPlayerFeet
00224$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1678: if (playerInPosition) {
	ld	a, -10 (ix)
	or	a, a
	jp	Z, 00266$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1680: if (g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK || 
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x02
	jr	Z, 00237$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1681: g_MatchStatus == MATCH_BEFORE_OFFSIDE || g_MatchStatus == MATCH_BEFORE_THROW_IN) {
	cp	a,#0x05
	jr	Z, 00237$
	cp	a,#0x0e
	jr	Z, 00237$
	sub	a, #0x03
	jr	NZ, 00238$
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1682: if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, c
	sub	a, #0x04
	or	a, b
	jr	Z, 00238$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1683: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1684: g_Players[i].Direction = DIRECTION_NONE;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1685: u8 useDir = g_Players[i].PreviousDirection;
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	hl, #11
	add	hl, bc
	ld	a, (hl)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1686: if (useDir == DIRECTION_NONE) {
	or	a, a
	jr	NZ, 00234$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1688: if(g_MatchStatus == MATCH_BEFORE_THROW_IN) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x03
	jr	NZ, 00231$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1690: if(g_Ball.X < 128) useDir = DIRECTION_RIGHT; else useDir = DIRECTION_LEFT;
	ld	hl, (#_g_Ball + 2)
	ld	de, #0x0080
	cp	a, a
	sbc	hl, de
	jr	NC, 00228$
	ld	c, #0x03
	jp	00234$
00228$:
	ld	c, #0x07
	jp	00234$
00231$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1692: useDir = DIRECTION_DOWN; 
	ld	c, #0x05
00234$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1695: g_Players[i].PatternId = GetNoMovingPlayerPatternId(useDir);
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x0008
	add	hl, de
	push	hl
	ld	a, c
	call	_GetNoMovingPlayerPatternId
	pop	hl
	ld	(hl), a
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1699: if(g_MatchStatus==MATCH_IN_ACTION){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	jr	NZ, 00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1700: g_Players[i].Status=PLAYER_STATUS_POSITIONED;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1703: if (g_Players[i].TeamId == REFEREE) {
	ld	a, -14 (ix)
	add	a, #0x09
	ld	-3 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	sub	a, #0x0e
	jr	NZ, 00248$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1704: if(g_MatchStatus == MATCH_BEFORE_KICK_OFF || g_MatchStatus == MATCH_AFTER_IN_GOAL) {
	ld	a, (_g_MatchStatus+0)
	dec	a
	jr	Z, 00244$
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x06
	jr	NZ, 00248$
00244$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1705: g_Players[i].Direction = DIRECTION_DOWN;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1706: g_Players[i].PatternId = PLAYER_POSE_FRONT;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1707: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1708: PutPlayerSprite(i);
	ld	a, -1 (ix)
	call	_PutPlayerSprite
00248$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1714: if(g_MatchStatus==MATCH_BEFORE_KICK_OFF){
	ld	a, (_g_MatchStatus+0)
	dec	a
	jp	NZ,00266$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1716: if(g_Players[i].TeamId!=REFEREE && g_Players[i].PatternId!=PLAYER_POSE_BACK && g_Players[i].PatternId!=PLAYER_POSE_FRONT){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	sub	a, #0x0e
	jr	Z, 00266$
	ld	a, -14 (ix)
	add	a, #0x08
	ld	c, a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	cp	a, #0x11
	jr	Z, 00266$
	sub	a, #0x10
	jr	Z, 00266$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1717: g_Players[i].Status=PLAYER_STATUS_POSITIONED;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1619: g_Players[i].Direction=DIRECTION_UP_RIGHT;
	ld	a, -14 (ix)
	add	a, #0x0a
	ld	e, a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1703: if (g_Players[i].TeamId == REFEREE) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1720: if(g_Players[i].TeamId==TEAM_1){
	dec	a
	ld	a, #0x01
	jr	Z, 00820$
	xor	a, a
00820$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1719: if (i != g_GoalScorerId) {
	ld	a, -1 (ix)
	ld	hl, #_g_GoalScorerId
	sub	a, (hl)
	jr	Z, 00256$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1720: if(g_Players[i].TeamId==TEAM_1){
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00250$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1721: g_Players[i].PatternId=PLAYER_POSE_BACK;
	ld	a, #0x11
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1722: g_Players[i].Direction=DIRECTION_UP;
	ld	a, #0x01
	ld	(de), a
	jp	00257$
00250$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1725: g_Players[i].PatternId=PLAYER_POSE_FRONT;
	ld	a, #0x10
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1726: g_Players[i].Direction=DIRECTION_DOWN;
	ld	a, #0x05
	ld	(de), a
	jp	00257$
00256$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1732: if(g_Players[i].TeamId==TEAM_1) g_Players[i].Direction=DIRECTION_UP;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00253$
	ld	a, #0x01
	ld	(de), a
	jp	00257$
00253$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1733: else g_Players[i].Direction=DIRECTION_DOWN;
	ld	a, #0x05
	ld	(de), a
00257$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1735: PutPlayerSprite(i);
	ld	a, -1 (ix)
	call	_PutPlayerSprite
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1536: for(u8 i=0;i<15;i++){
	inc	-1 (ix)
	jp	00275$
00267$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1742: if(g_MatchStatus==MATCH_BEFORE_KICK_OFF && allPlayersInPosition && g_FieldScrollingActionInProgress==NO_VALUE){
	ld	a, (_g_MatchStatus+0)
	dec	a
	jr	NZ, 00276$
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00276$
	ld	a, (_g_FieldScrollingActionInProgress+0)
	inc	a
	jr	NZ, 00276$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1743: g_FieldScrollSpeed=FIELD_SCROLL_GAME_SPEED;
	ld	hl, #_g_FieldScrollSpeed
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1744: g_MatchStatus=MATCH_KICK_OFF;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1746: g_Timer=0;
	ld	hl, #_g_Timer
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1747: g_GoalScorerId = NO_VALUE; // Reset scorer
	ld	hl, #_g_GoalScorerId
	ld	(hl), #0xff
00276$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1751: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1753: void PutPlayerSprite(u8 playerId){
;	---------------------------------
; Function PutPlayerSprite
; ---------------------------------
_PutPlayerSprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-23
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1755: attr.D=0;
	ld	hl, #3
	add	hl, sp
	res	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1756: attr.SC=2;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	or	a, #0x80
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1757: u16 minY=g_FieldCurrentYPosition+16;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x0010
	add	hl, de
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1758: u16 maxY=g_FieldCurrentYPosition+235;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00eb
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1760: attr.Y = g_Players[playerId].Y-g_FieldCurrentYPosition;
	push	hl
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
	pop	de
	ld	a, #<(_g_Players)
	add	a, l
	ld	-19 (ix), a
	ld	a, #>(_g_Players)
	adc	a, h
	ld	-18 (ix), a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	h, (hl)
;	spillPairReg hl
	ld	a, (_g_FieldCurrentYPosition+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	sub	a, l
	ld	-23 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1761: if(g_Players[playerId].TeamId==TEAM_2){
	ld	a, -19 (ix)
	add	a, #0x09
	ld	-17 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1762: attr.SC=3;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	or	a, #0xc0
	ld	(hl), a
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1765: if(g_Players[playerId].TeamId==REFEREE){
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	sub	a, #0x0e
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1766: attr.SC=1;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	or	a, #0x40
	ld	(hl), a
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1769: if(g_Players[playerId].Y>maxY){
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1770: attr.D=1;
	ld	hl, #3
	add	hl, sp
	set	4, (hl)
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1772: if(g_Players[playerId].Y<minY){
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1773: attr.D=1;
	ld	hl, #3
	add	hl, sp
	set	4, (hl)
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1776: if(g_Players[playerId].Role!=PLAYER_ROLE_GOALKEEPER){
	ld	a, -19 (ix)
	add	a, #0x0d
	ld	-15 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1775: if(g_MatchStatus!=MATCH_NOT_STARTED && g_MatchStatus!=MATCH_KICK_OFF){
	ld	a, (_g_MatchStatus+0)
	or	a, a
	jr	Z, 00112$
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x07
	jr	Z, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1776: if(g_Players[playerId].Role!=PLAYER_ROLE_GOALKEEPER){
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1777: UpdatePlayerPatternByDirection(playerId);
	ld	a, -1 (ix)
	call	_UpdatePlayerPatternByDirection
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1780: if(g_Players[playerId].Role==PLAYER_ROLE_GOALKEEPER){
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1788: if(g_Players[playerId].OldX!=g_Players[playerId].X || g_Players[playerId].OldY!=g_Players[playerId].Y){
	ld	a, -19 (ix)
	add	a, #0x02
	ld	-13 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1790: g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_1 : PLAYER_POSE_GK_H_MOVE_FRONT_1;
	ld	a, -19 (ix)
	add	a, #0x08
	ld	-11 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1780: if(g_Players[playerId].Role==PLAYER_ROLE_GOALKEEPER){
	ld	a, c
	or	a, a
	jp	NZ, 00125$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1781: attr.SC=0;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1784: if (g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jr	Z, 00120$
	sub	a, #0x0d
	jp	NZ,00121$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1785: g_Players[playerId].Status=PLAYER_STATUS_POSITIONED;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1786: u8 team = g_Players[playerId].TeamId;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1788: if(g_Players[playerId].OldX!=g_Players[playerId].X || g_Players[playerId].OldY!=g_Players[playerId].Y){
	ld	a, -19 (ix)
	add	a, #0x04
	ld	-9 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	a, -19 (ix)
	add	a, #0x06
	ld	-7 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, c
	cp	a, a
	sbc	hl, de
	jr	NZ, 00117$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, c
	cp	a, a
	sbc	hl, de
	jp	Z,00125$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1789: if(g_Players[playerId].LastPose==0){
	ld	a, -19 (ix)
	add	a, #0x0c
	ld	-5 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1790: g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_1 : PLAYER_POSE_GK_H_MOVE_FRONT_1;
	dec	b
	ld	a, #0x01
	jr	Z, 00287$
	xor	a, a
00287$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1789: if(g_Players[playerId].LastPose==0){
	inc	c
	dec	c
	jr	NZ, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1790: g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_1 : PLAYER_POSE_GK_H_MOVE_FRONT_1;
	or	a, a
	jr	Z, 00145$
	ld	-3 (ix), #0xa4
	ld	-2 (ix), #0
	jp	00146$
00145$:
	ld	-3 (ix), #0x2b
	ld	-2 (ix), #0
00146$:
	ld	a, -3 (ix)
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1791: g_Players[playerId].LastPose=1;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x01
	jp	00116$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1794: g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_2 : PLAYER_POSE_GK_H_MOVE_FRONT_2;
	or	a, a
	jr	Z, 00147$
	ld	bc, #0x00a3
	jp	00148$
00147$:
	ld	bc, #0x002c
00148$:
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1795: g_Players[playerId].LastPose=0;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x00
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1797: g_Players[playerId].OldX=g_Players[playerId].X;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1798: g_Players[playerId].OldY=g_Players[playerId].Y;	
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00125$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1803: UpdatePlayerPatternByDirection(playerId);
	ld	a, -1 (ix)
	call	_UpdatePlayerPatternByDirection
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1806: attr.Pattern = g_Players[playerId].PatternId;
	ld	hl,#0x1
	add	hl,sp
	ld	c, l
	ld	b, h
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1809: if(g_Players[playerId].TeamId != REFEREE && g_MatchStatus != MATCH_PENALTY_SHOOTOUT && g_MatchStatus != MATCH_PENALTY_SETUP && g_MatchStatus != MATCH_VICTORY_LAP)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	e, (hl)
	ld	a, e
	sub	a, #0x0e
	jr	Z, 00137$
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x11
	jr	Z, 00137$
	cp	a,#0x12
	jr	Z, 00137$
	sub	a, #0x10
	jr	Z, 00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1811: bool isHumanTeam = (g_Players[playerId].TeamId == TEAM_1) || (g_GameWith2Players && g_Players[playerId].TeamId == TEAM_2);
	ld	a, e
	dec	a
	jr	Z, 00150$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00149$
	ld	a, e
	sub	a, #0x02
	jr	Z, 00150$
00149$:
	xor	a, a
	jp	00151$
00150$:
	ld	a, #0x01
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1813: if (isHumanTeam) {
	or	a, a
	jr	Z, 00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1815: if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) {
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1816: if (playerId==g_Team1ActivePlayer || (g_GameWith2Players && playerId==g_Team2ActivePlayer)) {
	ld	a, (_g_Team1ActivePlayer+0)
	sub	a, -1 (ix)
	jr	Z, 00126$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00131$
	ld	a, (_g_Team2ActivePlayer+0)
	sub	a, -1 (ix)
	jr	NZ, 00131$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1818: attr.Pattern=(u8)(attr.Pattern+64);
	ld	a, (bc)
	add	a, #0x40
	ld	(bc), a
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1823: if (playerId == g_PassTargetPlayer) {
	ld	a, -1 (ix)
	ld	hl, #_g_PassTargetPlayer
	sub	a, (hl)
	jr	NZ, 00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1824: attr.Pattern=(u8)(attr.Pattern+64);
	ld	a, (bc)
	add	a, #0x40
	ld	(bc), a
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1830: attr.X = g_Players[playerId].X;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1831: attr.P = 1;
	ld	hl, #3
	add	hl, sp
	set	5, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1832: V9_SetSpriteP1(playerId, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
	ld	l, -1 (ix)
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
	jr	NC, 00299$
	inc	d
00299$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ex	de, hl
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1832: V9_SetSpriteP1(playerId, &attr);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1834: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1836: void UpdatePlayerPatternByDirection(u8 playerId){
;	---------------------------------
; Function UpdatePlayerPatternByDirection
; ---------------------------------
_UpdatePlayerPatternByDirection::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1837: if(g_Players[playerId].Status==PLAYER_STATUS_POSITIONED){
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
	ld	c, e
	ld	b, d
	ld	hl, #18
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x04
	or	a, b
	jp	Z,00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1838: return;
	jp	00102$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1842: if(g_Players[playerId].Direction!=g_Players[playerId].PreviousDirection){
	ld	hl, #0x000a
	add	hl, de
	ex	(sp), hl
	pop	hl
	push	hl
	ld	c, (hl)
	ld	hl, #0x000b
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1843: if(g_Players[playerId].Direction==DIRECTION_NONE){
	ld	a,c
	cp	a,b
	jr	Z, 00112$
	or	a, a
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1844: g_Players[playerId].PatternId=GetNoMovingPlayerPatternId(g_Players[playerId].PreviousDirection);
	ld	hl, #0x0008
	add	hl, de
	push	hl
	push	de
	ld	a, b
	call	_GetNoMovingPlayerPatternId
	pop	de
	pop	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1845: g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
	pop	hl
	push	hl
	ld	a, (hl)
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), a
	jp	00113$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1848: g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1849: g_Players[playerId].LastPose=0;
	ld	hl, #0x000c
	add	hl, de
	ld	(hl), #0x00
	jp	00113$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1855: if(g_Players[playerId].Direction!=DIRECTION_NONE){
	ld	a, c
	or	a, a
	jr	Z, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1856: if(g_Players[playerId].LastPose==1){
	ld	hl, #0x000c
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1857: g_Players[playerId].LastPose=0;
	dec	a
	jr	NZ, 00107$
	ld	(hl),a
	jp	00113$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1860: g_Players[playerId].LastPose=1;
	ld	(hl), #0x01
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1866: if(g_Players[playerId].TeamId==REFEREE && g_MatchStatus==MATCH_BEFORE_KICK_OFF ){
	ld	c, e
	ld	b, d
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1842: if(g_Players[playerId].Direction!=g_Players[playerId].PreviousDirection){
	pop	hl
	push	hl
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1866: if(g_Players[playerId].TeamId==REFEREE && g_MatchStatus==MATCH_BEFORE_KICK_OFF ){
	sub	a, #0x0e
	jr	NZ, 00119$
	ld	a, (_g_MatchStatus+0)
	dec	a
	jr	NZ, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1869: if(g_Players[playerId].Direction!=DIRECTION_NONE){
	ld	a, c
	or	a, a
	jr	Z, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1870: g_Players[playerId].PatternId=GetPatternIdByPoseAndDirection(playerId);
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, -1 (ix)
	call	_GetPatternIdByPoseAndDirection
	pop	de
	ld	(de), a
	jp	00122$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1874: if(g_Players[playerId].Direction!=DIRECTION_NONE){
	ld	a, c
	or	a, a
	jr	Z, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1875: g_Players[playerId].PatternId=GetPatternIdByPoseAndDirection(playerId);
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, -1 (ix)
	call	_GetPatternIdByPoseAndDirection
	pop	hl
	ld	(hl), a
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1878: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1880: void TickActiveFieldZone(){
;	---------------------------------
; Function TickActiveFieldZone
; ---------------------------------
_TickActiveFieldZone::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1883: if (g_MatchStatus != MATCH_IN_ACTION) return;
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	ret	NZ
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1885: if (g_ActiveFieldZone == FIELD_CENTRAL_ZONE) {
	ld	a, (_g_ActiveFieldZone+0)
	dec	a
	jr	NZ, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1886: if (g_Ball.Y < 170) g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
	ld	hl, (#_g_Ball + 0)
	ld	a, l
	sub	a, #0xaa
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00106$
	ld	iy, #_g_FieldScrollingActionInProgress
	ld	0 (iy), #0x00
	jp	00117$
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1887: else if (g_Ball.Y > 320) g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
	ld	a, #0x40
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00117$
	ld	iy, #_g_FieldScrollingActionInProgress
	ld	0 (iy), #0x02
	jp	00117$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1889: else if (g_ActiveFieldZone == FIELD_NORTH_ZONE) {
	ld	a, (_g_ActiveFieldZone+0)
	or	a, a
	jr	NZ, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1890: if (g_Ball.Y > 190) g_FieldScrollingActionInProgress=FIELD_CENTRAL_ZONE;
	ld	hl, (#_g_Ball + 0)
	ld	a, #0xbe
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00117$
	ld	iy, #_g_FieldScrollingActionInProgress
	ld	0 (iy), #0x01
	jp	00117$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1893: if (g_Ball.Y < 300) g_FieldScrollingActionInProgress=FIELD_CENTRAL_ZONE;
	ld	hl, (#_g_Ball + 0)
	ld	de, #0x012c
	cp	a, a
	sbc	hl, de
	jr	NC, 00117$
	ld	iy, #_g_FieldScrollingActionInProgress
	ld	0 (iy), #0x01
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1895: g_Ball.PreviousY=g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	ld	((_g_Ball + 7)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1896: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1898: u8 GetPatternIdByPoseAndDirection(u8 playerId){
;	---------------------------------
; Function GetPatternIdByPoseAndDirection
; ---------------------------------
_GetPatternIdByPoseAndDirection::
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1899: u8 pose = g_Players[playerId].LastPose;
	ld	bc, #_g_Players+0
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
	ld	c, 12 (iy)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1900: u8 dir = g_Players[playerId].Direction;
	ld	hl, #10
	add	hl, de
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1903: if (dir > 8) dir = DIRECTION_NONE;
	ld	a, #0x08
	sub	a, e
	jr	NC, 00102$
	ld	e, #0x00
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1905: if (dir == DIRECTION_NONE) {
	ld	a, e
	or	a, a
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1906: return GetNoMovingPlayerPatternId(dir); // Assuming logic for NONE inside
	ld	a, e
	jp	_GetNoMovingPlayerPatternId
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1924: return k_MovePats[dir * 2 + (pose ? 1 : 0)];
	sla	e
	ld	a, c
	or	a, a
	jr	Z, 00107$
	ld	hl, #0x0001
	jp	00108$
00107$:
	ld	hl, #0x0000
00108$:
	add	hl, de
	ld	a, l
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #_GetPatternIdByPoseAndDirection_k_MovePats_65537_1651
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s2_b1.c:1925: }
	ret
_GetPatternIdByPoseAndDirection_k_MovePats_65537_1651:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x83	; 131
	.db #0x82	; 130
	.area _SEG2
	.area _INITIALIZER
	.area _CABS (ABS)
