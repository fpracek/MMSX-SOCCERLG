// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "v9990.h"
#include "soccerlg.h"
#include "debug.h"

// -----------------
// *** CONSTANTS ***
// -----------------

const u8 				g_GirlPatterns[] = {
		SPRITE_GIRL_1, SPRITE_GIRL_2, SPRITE_GIRL_3,
		SPRITE_GIRL_4, SPRITE_GIRL_5, SPRITE_GIRL_6,
		SPRITE_GIRL_7, SPRITE_GIRL_8, SPRITE_GIRL_9

};
const u8 				g_PonPonGirlsPos[6]={30,50,70,175,195,215};

// ---------------------
// *** PALETTES DATA ***
// ---------------------

const unsigned char g_Data_Palette_LayerA_Standard[] =
{
  	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
  	0x01, 0x01, 0x01, // [1] #010101 
 	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x01, 0x01, 0x01, // [3] #010101
	0xFF, 0xFF, 0xFF, // [4] #F7D647 (MOUTH)
  	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
  	0x01, 0x01, 0x01, // [6] #010101 (T-SHIRT_BORDERS)
  	0x14, 0x09, 0x14, // [7] #A349A4 (T-SHIRT)
  	0x1B, 0x13, 0x09, // [8] #DE9747 (SHORTS)
  	0x01, 0x01, 0x01, // [9] #010101
  	0x01, 0x01, 0x01, // [A] #010101
  	0x01, 0x01, 0x01, // [B] #010101
  	0x01, 0x01, 0x01, // [C] #010101
  	0x01, 0x01, 0x01, // [D] #010101
  	0x01, 0x01, 0x01, // [E] #010101
  	0xFF, 0xFF, 0xFF, // [F] #FFFFFF
};
const unsigned char g_Data_Palette_LayerB_Standard[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x08, 0x17, 0x1B, // [1] #47B8DE
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x01, 0x01, 0x01, // [3] #0B0B0B 
	0x01, 0x01, 0x01, // [4] #010101 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x01, 0x01, 0x01, // [6] #010101 (T-SHIRT_BORDERS)
  	0x01, 0x01, 0x01, // [7] #0B0B0B (T-SHIRT)
	0x01, 0x01, 0x01, // [8] #0B0B0B (SHORTS)
	0x1F, 0x00, 0x00, // [9] #FF0000
	0x1B, 0x1B, 0x1B, // [A] #DEDEDE
	0x04, 0x04, 0x1B, // [B] #2121DE
	0x00, 0x00, 0x00, // [C] #000000
	0x1B, 0x1B, 0x1B, // [D] #DEDEDE
	0x00, 0x17, 0x00, // [E] #00B800
	0x1B, 0x13, 0x09, // [F] #DE9747
};

// -----------------
// *** FUNCTIONS ***
// -----------------

// +++ Init Palette +++
void V9990_InitPalette(){
    V9_SetPalette(0, 16, g_Data_Palette_LayerA_Standard);
	V9_SetPalette(16, 16, g_Data_Palette_LayerB_Standard);
	V9_SelectPaletteP1(0,1);
}
// +++ Initialize V9990 Layers +++
void V9990_InitMenuLayers(){   
    V9990_InitPalette();
	V9_SetScreenMode(V9_MODE_P1);
	V9_SetBackgroundColor(1);
    V9_SetDisplayEnable(FALSE);
	V9990_LoadP1LayerA();
}
void InitPonPonGirls(){
	g_ponPonPatternIndex=0;
	
	for(u8 i=0;i<6;i++){
		g_PonPonGirls[i].X=g_PonPonGirlsPos[i];
		g_PonPonGirls[i].Y=42;
		g_PonPonGirls[i].PatternId=SPRITE_GIRL_1;
        PutPonPonGirlSprite(i);
        
	}
}
// +++ Set player ball possession +++
void SetPlayerBallPossession(u8 playerId){
	if (playerId == NO_VALUE) {
		return;
	}

	if(g_Players[playerId].TeamId==TEAM_1){
		if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) g_Team1ActivePlayer=playerId;
	}
	else{
		if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) g_Team2ActivePlayer=playerId;
	}

	g_Ball.PossessionTimer = 0; // Reset hold timer
}

// +++ Put Pon Pon Girl Sprite +++
void PutPonPonGirlSprite(u8 ponPonGirlId){
	struct V9_Sprite attr;
	attr.D=0;
	
	attr.SC=0;
	attr.Y=g_PonPonGirls[ponPonGirlId].Y-g_FieldCurrentYPosition;
	attr.X=g_PonPonGirls[ponPonGirlId].X;
	if(g_ActiveFieldZone!=FIELD_NORTH_ZONE||attr.Y>100){
		attr.D=1;
	}
	attr.Pattern = g_PonPonGirls[ponPonGirlId].PatternId;
	attr.P = 1;
	V9_SetSpriteP1(ponPonGirlId+20, &attr);
}