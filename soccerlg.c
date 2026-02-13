// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "v9990.h"
#include "print.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"
#include "pcm/pcmenc.h"
#include "memory.h"
#include "vgm/vgm_player.h"
#include "psg.h"
#include "soccerlg_rawdef.h"

// ------------------
// *** STRUCTURES ***
// ------------------

struct MusicEntry
{
    const c8* Name;
    u16       Data;
    u8        Segment;
};

// -----------------
// *** VARIABLES ***
// -----------------

bool 			g_VSynch;
u8				g_FrameCounter;
u8       		g_Timer;
u8              g_FieldScrollingActionInProgress;
int             g_FieldCurrentYPosition;
u8              g_FieldScrollSpeed;
u8              g_ActiveFieldZone;
u8              g_MatchStatus;
PonPonGirlInfo  g_PonPonGirls[6];
BallInfo        g_Ball;
PlayerInfo  	g_Players[15];
u8              g_Team1PaletteId;
u8              g_Team2PaletteId;
bool			g_ShowButtonsInfo;
u8          	g_Team1ActivePlayer;
u8          	g_Team2ActivePlayer;

// -----------------
// *** CONSTANTS ***
// -----------------

extern const unsigned char 	g_Data_Fonts[]; 								// Segment 30
extern const unsigned char 	g_Data_Img_Presentation_Part1[16384]; 			// Segment 31
extern const unsigned char 	g_Data_Img_Presentation_Part2[16384]; 			// Segment 32
extern const unsigned char 	g_Data_Img_Presentation_Part3[16384]; 			// Segment 33
extern const unsigned char 	g_Data_Img_Presentation_Part4[5120]; 			// Segment 34
extern const unsigned char  g_Data_P1_LayerA_Std[16384];					// Segment 35
extern const unsigned char 	g_Data_LayerA_Menu_Teams_Part1[16384];			// Segment 36
extern const unsigned char 	g_Data_LayerA_Menu_Teams_Part2[4096];			// Segment 37
extern const unsigned char  g_Data_Palette_Teams_Colors[];					// Segment 37
extern const unsigned char  g_Data_Teams_Gray_Part1[16384];					// Segment 38
extern const unsigned char  g_Data_Teams_Gray_Part2[4096];					// Segment 39
extern const unsigned char  g_Data_Palette_Gray_Scale[];					// Segment 39
extern const unsigned char  g_Data_Palette_Buttons[];						// Segment 39
extern const unsigned char  g_Data_Sprites_Part1[16384];					// Segment 40
extern const unsigned char  g_Data_Sprites_Part2[16384];					// Segment 41
extern const unsigned char  g_Data_Img_Buttons_Presentation_Part1[16384]; 	// Segment 42
extern const unsigned char  g_Data_Img_Buttons_Presentation_Part2[16384]; 	// Segment 43
extern const unsigned char  g_Data_PCM_CornerKick[];						// Segment 44
extern const unsigned char  g_Data_PCM_KickOff[];							// Segment 45
extern const unsigned char 	g_Data_PCM_InGoal_1[];							// Segment 46
extern const unsigned char 	g_Data_PCM_InGoal_2[];							// Segment 47
extern const unsigned char 	g_Data_PCM_InGoal_3[];							// Segment 48
extern const unsigned char 	g_Data_PCM_ThrowIn[];							// Segment 49
extern const unsigned char 	g_Data_PCM_GoalKick[];							// Segment 50
extern const unsigned char  g_Data_PCM_TeamSelection[];						// Segment 51

const struct MusicEntry g_MusicEntry[] =
{
	{ "Menu", 0x8000 + PSG_MENU_VGM_REL,       PSG_MENU_VGM_SEG },
	{ "Match", 0x8000 + PSG_MATCH_VGM_REL,     PSG_MATCH_VGM_SEG }
};

// -----------------------------
// *** TRAMPOLINES FUNCTIONS ***
// -----------------------------

// +++ Call void function without parameters +++
void Trampoline_VOID(u8 bank, void (*func)()) {
    u8 _old = GET_BANK_SEGMENT(1);
    SET_BANK_SEGMENT(1, bank);
    func();
    SET_BANK_SEGMENT(1, _old);
}
// +++ Call void function with 1 parameter +++
void Trampoline_VOID_P1(u8 bank, void (*func)(u8), u8 p1) {
    u8 _old = GET_BANK_SEGMENT(1);
    SET_BANK_SEGMENT(1, bank);
    func(p1);
    SET_BANK_SEGMENT(1, _old);
}
// +++ Call void function without parameters with u8 returned value +++
u8 Trampoline_VOID_RETURN(u8 bank, u8 (*func)()) {
    u8 _res;
    u8 _old = GET_BANK_SEGMENT(1);
    SET_BANK_SEGMENT(1, bank);
    _res = func();
    SET_BANK_SEGMENT(1, _old);
    return _res;
}

// -----------
// *** PCM ***
// -----------

void PlayPcm(u8 id){
	u8 currentSegment = GET_BANK_SEGMENT(1);
	switch(id){
		case PCM_CORNERKICK:
			VGM_Pause();
			SET_BANK_SEGMENT(1, 44);
			PCM_Play_11K((u16)g_Data_PCM_CornerKick);
			VGM_Resume();
			break;
		case PCM_KICKOFF:
			SET_BANK_SEGMENT(1, 45);
			PCM_Play_11K((u16)g_Data_PCM_KickOff);
			PlayVGM(VGM_MATCH);
			break;
		case PCM_INGOAL:
			VGM_Pause();
			SET_BANK_SEGMENT(1, 46);
			PCM_Play_11K((u16)g_Data_PCM_InGoal_1);
			SET_BANK_SEGMENT(1, 47);
			PCM_Play_11K((u16)g_Data_PCM_InGoal_2);
			SET_BANK_SEGMENT(1, 48);
			PCM_Play_11K((u16)g_Data_PCM_InGoal_3);
			PCM_Play_11K((u16)g_Data_PCM_InGoal_3);
			VGM_Resume();
			break;
		case PCM_THROWIN:
			VGM_Pause();
			SET_BANK_SEGMENT(2, 49);
			PCM_Play_11K((u16)g_Data_PCM_ThrowIn);
			VGM_Resume();
			break;
		case PCM_GOALKICK:
			VGM_Pause();
			SET_BANK_SEGMENT(1, 50);
			PCM_Play_11K((u16)g_Data_PCM_GoalKick);
			VGM_Resume();
			break;
		case PCM_TEAM_SELECTION:
            VGM_Pause();
			SET_BANK_SEGMENT(1, 51);
			PCM_Play_11K((u16)g_Data_PCM_TeamSelection);
            VGM_Resume();
			break;	
	}
	SET_BANK_SEGMENT(1, currentSegment);
	
}

// -----------
// *** VGM ***
// -----------

// +++ Play VGM +++
void PlayVGM(u8 vgmId){
	u8 currentSegment = GET_BANK_SEGMENT(1);
	SET_BANK_SEGMENT(1, g_MusicEntry[vgmId].Segment);
	VGM_Play(g_MusicEntry[vgmId].Data,TRUE);
	SET_BANK_SEGMENT(1, currentSegment);
}

// ---------------------
// *** MSX VDP FONTS ***
// ---------------------

void LoadMsxVdpFonts() {
    u8 currentSegment = GET_BANK_SEGMENT(1);
    SET_BANK_SEGMENT(1, 30); 
	Print_SetTextFont(g_Data_Fonts, 1);
    SET_BANK_SEGMENT(1, currentSegment);
}

// -------------
// *** V9990 ***
// -------------

void V9990_LoadButtonsImageData(){
		u8 currentSegment = GET_BANK_SEGMENT(1);
		SET_BANK_SEGMENT(1, 42); 
		V9_WriteVRAM(V9_P1_PGT_A, g_Data_Img_Buttons_Presentation_Part1, sizeof(g_Data_Img_Buttons_Presentation_Part1)); // Load tiles (part 1)
		SET_BANK_SEGMENT(1, 43); 
		V9_WriteVRAM(V9_P1_PGT_A + 16384, g_Data_Img_Buttons_Presentation_Part2, sizeof(g_Data_Img_Buttons_Presentation_Part2)); // Load tiles (part 2)	
 	    SET_BANK_SEGMENT(1, 39);
		V9_SetPalette(0, 16, g_Data_Palette_Buttons); 
		SET_BANK_SEGMENT(1, currentSegment);
}
// +++ Load P1 mode layer A +++
void V9990_LoadP1LayerA(){
	u8 currentSegment = GET_BANK_SEGMENT(1);
	V9_FillVRAM(V9_P1_PGT_A, 0x00, 128*212); // Clean layer A pattern
	SET_BANK_SEGMENT(1, 35); 
	V9_WriteVRAM(V9_P1_PGT_A, g_Data_P1_LayerA_Std, sizeof(g_Data_P1_LayerA_Std)); 
    SET_BANK_SEGMENT(1, 36); 
	V9_WriteVRAM(V9_P1_PGT_A + 8192L, g_Data_LayerA_Menu_Teams_Part1, sizeof(g_Data_LayerA_Menu_Teams_Part1));
    SET_BANK_SEGMENT(1, 37); 
	V9_WriteVRAM(V9_P1_PGT_A + 8192L + 16384L, g_Data_LayerA_Menu_Teams_Part2, sizeof(g_Data_LayerA_Menu_Teams_Part2));
	V9_FillVRAM16(V9_P1_PNT_A, 0x0000, 64*64); // Init layer A
	SET_BANK_SEGMENT(1, currentSegment);
}
// +++ Load image for presentation inside V9990 VRAM +++
void V9990_LoadImagePresentationData(){
	u8 currentSegment = GET_BANK_SEGMENT(1);
   	SET_BANK_SEGMENT(1, 31); 
	V9_WriteVRAM(V9_BMP_PGT, g_Data_Img_Presentation_Part1, sizeof(g_Data_Img_Presentation_Part1)); 
    SET_BANK_SEGMENT(1, 32); 
	V9_WriteVRAM(V9_BMP_PGT + 16384L, g_Data_Img_Presentation_Part2, sizeof(g_Data_Img_Presentation_Part2)); 
    SET_BANK_SEGMENT(1, 33); 
	V9_WriteVRAM(V9_BMP_PGT + 16384L+16384L, g_Data_Img_Presentation_Part3, sizeof(g_Data_Img_Presentation_Part3)); 
    SET_BANK_SEGMENT(1, 34); 
	V9_WriteVRAM(V9_BMP_PGT + 16384L+16384L+16384L, g_Data_Img_Presentation_Part4, sizeof(g_Data_Img_Presentation_Part4));
    SET_BANK_SEGMENT(1, currentSegment);
}
// +++ Load menu teams data +++
void V9990_LoadMenuTeamsData(){
	u8 currentSegment = GET_BANK_SEGMENT(1);
	SET_BANK_SEGMENT(1, 38); 
	V9_WriteVRAM(V9_P1_PGT_B + 8192L, g_Data_Teams_Gray_Part1, sizeof(g_Data_Teams_Gray_Part1));
    SET_BANK_SEGMENT(1,39); 
	V9_WriteVRAM(V9_P1_PGT_B + 8192L + 16384L, g_Data_Teams_Gray_Part2, sizeof(g_Data_Teams_Gray_Part2));
	V9_FillVRAM16(V9_P1_PNT_B, 0x0000, 64*64); 
	V9_SetPalette(16, 16, g_Data_Palette_Gray_Scale);
	SET_BANK_SEGMENT(1, 37); 
	V9_SetPalette(0, 16, g_Data_Palette_Teams_Colors);
	SET_BANK_SEGMENT(1, currentSegment);
}
// +++ Load sprites +++
void V9990_LoadSprites(){
	u8 currentSegment = GET_BANK_SEGMENT(1);
	SET_BANK_SEGMENT(1, 40); 
	V9_SetSpritePatternAddr(V9_P1_SGT_08000);
	V9_WriteVRAM(0x08000, g_Data_Sprites_Part1, sizeof(g_Data_Sprites_Part1));	
	SET_BANK_SEGMENT(1, 41); 
	V9_WriteVRAM(0x08000+sizeof(g_Data_Sprites_Part1), g_Data_Sprites_Part2, sizeof(g_Data_Sprites_Part2));	
	SET_BANK_SEGMENT(1, currentSegment);

}
// +++ Print a string on screen ++++
void V9990_PrintLayerAStringAtPos(u8 x, u8 y, const c8* str)
{
	u8 pos=0;
	while (*str != 0){
        V9_Poke16(V9_CellAddrP1A(x,y), *(str++));
		x++;
		pos++;
	}
		
}
// +++ Wait V9990 synch +++
void WaitV9990Synch()
{
	while(!g_VSynch) {}
	g_VSynch = FALSE;
	g_FrameCounter++;
	if(g_FrameCounter==60){
		g_FrameCounter=0;
	}
	if(g_MatchStatus==MATCH_SHOW_MENU){
	       	u8 currentSegment = GET_BANK_SEGMENT(1);
			SET_BANK_SEGMENT(1, PSG_MENU_VGM_SEG);
			VGM_Decode();
			PSG_Apply();
			SET_BANK_SEGMENT(1, currentSegment);
        return;
    }
}
// +++ VBlank interrupt +++
void V9_InterruptVBlank(){

    if(g_MatchStatus==MATCH_PRESENTATION){
        g_Timer++;
        return;
    }
	
   
	g_VSynch = TRUE;
	if (g_FieldScrollingActionInProgress != NO_VALUE) {
		SET_BANK_SEGMENT(1,2);
		TickGameFieldScrolling();
	}
	

	
}
// +++ Install VBlank interrupt +++
void InterruptHook()
{
__asm
	// Flush VDP interruption signal
	in		a, (P_VDP_STAT)

	// Call VDP interruption handler
	in		a, (V9_P06)
	out		(V9_P06), a
	// V-Blank interruption
	rra
	call	c, _V9_InterruptVBlank
__endasm;
}

// ------------
// *** MAIN ***
// ------------
void main(){
	Bios_SetHookDirectCallback(H_KEYI, InterruptHook);
	Bios_ClearHook(H_TIMI);
	Trampoline_VOID(2,MainSub);
}