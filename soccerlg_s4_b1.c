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
#include "pt3/pt3_player.h"
#include "memory.h"
#include "psg.h"
#include "vgm/vgm_player.h"

// ---------------------
// *** TEAM PALETTES ***
//----------------------

const unsigned char g_Data_Palette_Team_ITA[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x1B, 0x1A, 0x1B, // [6] #DCD7D9 (T-SHIRT_BORDERS)
	0x09, 0x16, 0x1B, // [7] #4CB7DA (T-SHIRT)
	0x1B, 0x1A, 0x1B, // [8] #DCD7D9 (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};
const unsigned char g_Data_Palette_Team_AUS[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x1B, 0x1A, 0x1B, // [6] #DCD7D9 (T-SHIRT_BORDERS)
	0x05, 0x03, 0x01, // [7] #2F1F0D (T-SHIRT)
	0x1B, 0x1A, 0x1B, // [8] #DCD7D9 (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};
const unsigned char g_Data_Palette_Team_FRA[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x1B, 0x1A, 0x1B, // [6] #DCD7D9 (T-SHIRT BORDERS)
	0x04, 0x04, 0x1B, // [7] #2121DE (T-SHIRT)
	0x1B, 0x1A, 0x1B, // [8] #DCD7D9 (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};
const unsigned char g_Data_Palette_Team_GER[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x05, 0x03, 0x01, // [6] #2F1F0D (T-SHIRT_BORDERS)
	0x1B, 0x1A, 0x1B, // [7] #DCD7D9 (T-SHIRT)
	0x1F, 0x00, 0x00, // [8] #FF0000 (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};
const unsigned char g_Data_Palette_Team_GBR[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x01, 0x01, 0x01, // [6] #0C0C0C (T-SHIRT BORDERS)
	0x1B, 0x1A, 0x1B, // [7] #DCD7D9 (T-SHIRT)
	0x01, 0x01, 0x01, // [8] #0C0C0C (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};
const unsigned char g_Data_Palette_Team_BRA[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x1B, 0x13, 0x09, // [6] #DD9C48 (T-SHIRT BORDERS)
	0x00, 0x0A, 0x03, // [7] #04521b (T-SHIRT)
	0x1B, 0x13, 0x09, // [8] #DD9C48 (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};

// -------------------------------------
// *** MENU TEAMS PICTURES POSITIONS ***
// -------------------------------------

static const struct { u16 x; u16 y; } g_TeamPos[6] = {
    { 33, 109 }, { 114, 109 }, { 197, 109 },   // Row 1
    { 33, 192 }, { 114, 192 }, { 197, 192 } // Row 2
};
static const struct { u16 x; u16 y; } g_TeamGrayPos[6] = {
    { 1, 5 }, { 11, 5 }, { 21, 5 },   // Row 1
    { 1, 15}, { 11, 15 }, { 21, 15 } // Row 2
};

// -----------------
// *** FUNCTIONS ***
// -----------------

// +++ Team selection +++
u8 SelectTeam(u8 cursorPatternId, u8 excludeIndex) {

    u8 currentIdx = 0;
    if (currentIdx == excludeIndex) currentIdx++;

    u8 dir = DIRECTION_NONE;
    u8 oldDir = DIRECTION_NONE;
    bool trigger = false;
    bool oldTrigger = true; // Force release first

    while (true) {
        V9990_WaitSynch();
        dir=Trampoline_VOID_RETURN(2,GetJoystickDirection);
        
        trigger=Trampoline_VOID_RETURN(2,IsTeamJoystickTriggerPressed);

        if (dir != DIRECTION_NONE && dir != oldDir) {
            u8 nextIdx = currentIdx;

            if (dir == DIRECTION_RIGHT) {
                if ((currentIdx % 3) < 2) nextIdx++;
            } else if (dir == DIRECTION_LEFT) {
                if ((currentIdx % 3) > 0) nextIdx--;
            } else if (dir == DIRECTION_UP) {
                if (currentIdx >= 3) nextIdx -= 3;
            } else if (dir == DIRECTION_DOWN) {
                if (currentIdx < 3) nextIdx += 3;
            }

            if (nextIdx == excludeIndex) {
                if (dir == DIRECTION_RIGHT) {
                    if ((nextIdx % 3) < 2) nextIdx++; else nextIdx = currentIdx;
                } else if (dir == DIRECTION_LEFT) {
                    if ((nextIdx % 3) > 0) nextIdx--; else nextIdx = currentIdx;
                } else {
                    nextIdx = currentIdx;
                }
            }
            currentIdx = nextIdx;
        }
        oldDir = dir;

        if (trigger && !oldTrigger) {
			PlayPcm(PCM_TEAM_SELECTION);
			return currentIdx;
        }
        oldTrigger = trigger;

        struct V9_Sprite attr;
        attr.Y = g_TeamPos[currentIdx].y;
        attr.X = g_TeamPos[currentIdx].x;
        attr.Pattern = cursorPatternId;
        attr.P = 0; 
        attr.SC = 0;
		attr.D = 0;
        V9_SetSpriteP1(0, &attr);
    }
}

void MenuSpriteBlinking(){
	u8 ms=g_MatchStatus;
    V9_SetSpriteEnable(false);

    V9_SetInterrupt(V9_INT_VBLANK);
    g_MatchStatus=MATCH_PRESENTATION;
    
    g_Timer=0;  
    while (g_Timer<=20)
    {
        ResetPlayersInfo();
    }
  

	V9_SetSpriteEnable(true);
	
    g_Timer=0;  
    while (g_Timer<=20)
    {
            ResetPlayersInfo();
    }

	V9_SetSpriteEnable(false);

    g_Timer=0;  
    while (g_Timer<=20)
    {
        ResetPlayersInfo();
    }
	V9_SetSpriteEnable(true);

    g_Timer=0;  
    while (g_Timer<=20)
    {
        ResetPlayersInfo();
    }

	V9_SetSpriteEnable(false);

    g_Timer=0;  
    while (g_Timer<=20)
    {
        ResetPlayersInfo();
    }
	V9_SetSpriteEnable(true);
    g_MatchStatus=ms;

}

// +++ Reset players info +++
void ResetPlayersInfo(){
	Trampoline_VOID_P1(3,SetPlayerBallPossession,NO_VALUE);
	for(u8 i=0;i<14;i++){
		g_Players[i].Direction=DIRECTION_NONE;
		g_Players[i].PreviousDirection=g_Players[i].Direction;
		g_Players[i].LastPose=0;
		g_Players[i].Status=PLAYER_STATUS_NONE;
		g_Players[i].Status=PLAYER_STATUS_NONE;
	}
}

// +++ Show menu ++++
void ShowMenu(){
    
	for(u8 i=0;i<32;i++){
		struct V9_Sprite attr;
		attr.D = 1;
        V9_SetSpriteP1(i, &attr);
	}
	
	V9_SetScrollingBY(1);

	V9_SetDisplayEnable(FALSE);
	V9_FillVRAM(V9_P1_PGT_B, 0x00, 128*212); // Clean layer A pattern
    
    V9990_LoadMenuTeamsData();
	V9_SelectPaletteP1(0,1);
	for (u8 y=0;y<64;y++){
		for (u8 x=0;x<64;x++){
			V9_Poke16(V9_CellAddrP1A(x,y), 32);
		}
	}
    for (u8 y=5;y<25;y++){
		u16 tileId=256+32*(y-5);
		for (u8 x=1;x<31;x++){
            V9_Poke16(V9_CellAddrP1A(x,y), tileId);
            V9_Poke16(V9_CellAddrP1B(x,y), tileId);
			tileId++;
		}
	}
	V9990_LoadSprites();
	V9_SetInterrupt(V9_INT_VBLANK); 
	
	V9_SetDisplayEnable(TRUE);
	V9990_PrintLayerAStringAtPos(4,0,"    PLAYER TEAM SELECT");
    g_MatchStatus=MATCH_SHOW_MENU;
    g_Team1PaletteId = SelectTeam(SPRITE_PLAYER, NO_VALUE);
	
	
	for(u8 y=g_TeamGrayPos[g_Team1PaletteId].y;y<g_TeamGrayPos[g_Team1PaletteId].y+9;y++){
		for(u8 x=g_TeamGrayPos[g_Team1PaletteId].x;x<g_TeamGrayPos[g_Team1PaletteId].x+10;x++){
			V9_Poke16(V9_CellAddrP1A(x,y), 0);
		}
	}
	
	MenuSpriteBlinking();


    V9990_PrintLayerAStringAtPos(4,0,"     CPU TEAM SELECT   ");
	
    g_Team2PaletteId = SelectTeam(SPRITE_CPU, g_Team1PaletteId);


	for(u8 y=g_TeamGrayPos[g_Team2PaletteId].y;y<g_TeamGrayPos[g_Team2PaletteId].y+9;y++){
		for(u8 x=g_TeamGrayPos[g_Team2PaletteId].x;x<g_TeamGrayPos[g_Team2PaletteId].x+10;x++){
			V9_Poke16(V9_CellAddrP1A(x,y), 0);
		}
	}


	MenuSpriteBlinking();

	struct V9_Sprite attr;
	attr.D = 1; 
	V9_SetSpriteP1(0, &attr);
	
	V9_SetSpriteEnable(TRUE);

    
	V9_SetDisplayEnable(FALSE);
    
    

	if(g_ShowButtonsInfo){
		g_ShowButtonsInfo=false;
		V9_FillVRAM(V9_P1_PGT_A, 0x00, 128*212); 
        V9990_LoadButtonsImageData();
		V9_SelectPaletteP1(0,1);
		u16 tileId=0;

		for (u8 y=0;y<64;y++){
			for (u8 x=0;x<32;x++){
				V9_Poke16(V9_CellAddrP1A(x,y), tileId++);
			}
		}
		V9_SetInterrupt(V9_INT_VBLANK); 
		V9_SetDisplayEnable(TRUE);
        bool joyTriggered=FALSE;
		while(!joyTriggered){
            joyTriggered=Trampoline_VOID_RETURN(2,IsTeamJoystickTriggerPressed);
			V9990_WaitSynch();
		}
	
		V9_SetDisplayEnable(FALSE);
	}
    VGM_Stop();
    PSG_Mute();
	g_MatchStatus=MATCH_NOT_STARTED;



	V9990_LoadP1LayerA();
	V9990_LoadP1LayerB();



    Trampoline_VOID(3,V9990_InitPalette);
    

    ShowField();

	V9_SetDisplayEnable(TRUE);

    V9_SetInterrupt(V9_INT_VBLANK);


	GameStart();
}
// +++ Set team 1 palette +++
void SetTeam1Palette(){
	V9_SetPalette(32, 16, GetTeamPaletteById(g_Team1PaletteId));
}
// +++ Set team 2 palette +++
void SetTeam2Palette(){
	V9_SetPalette(48, 16, GetTeamPaletteById(g_Team2PaletteId));
}
const u16* GetTeamPaletteById(u8 id){
	const u16* palette=g_Data_Palette_Team_ITA;
	switch (id){
		case TEAM_AUS:
			palette=g_Data_Palette_Team_AUS;
			break; 
		case TEAM_BRA:
			palette=g_Data_Palette_Team_BRA;
			break;
		case TEAM_ITA:
			palette=g_Data_Palette_Team_ITA;
			break;
		case TEAM_GBR:
			palette=g_Data_Palette_Team_GBR;
			break;
		case TEAM_GER:
			palette=g_Data_Palette_Team_GER;
			break;
		case TEAM_FRA:
			palette=g_Data_Palette_Team_FRA;
			break;
	}
	return palette;
}

// +++ Game start +++
void GameStart(){
    g_PassTargetPlayer=NO_VALUE;
    g_Team1ActivePlayer=NO_VALUE;
	V9_SetDisplayEnable(FALSE);
    g_SecondsToEndOfMatch=MATCH_DURATION;
	g_RestartKickTeamId=TEAM_1;
	g_FieldScrollSpeed=FIELD_SCROLL_PRESENTATION_SPEED;
	g_FieldScrollingActionInProgress=NO_VALUE;
	g_FieldCurrentYPosition=FIELD_TOP_Y;
	g_Team1Score=0;
	g_Team2Score=0;
	V9_SetScrollingY(0);
	V9_SetScrollingBY(1);
	SetTeam1Palette();
	SetTeam2Palette();
	SetTeamsPresentationSpritesPosition();
	ShowFieldZone(FIELD_CENTRAL_ZONE);
	ShowHeaderInfo();
    Trampoline_VOID(3,InitPonPonGirls);
    V9_SetDisplayEnable(TRUE);
}

// +++ Print team name +++
void PrintTeamName(u8 x, u8 teamPaletteId) {

    const char* pName = 0;

    if (!pName) {
        switch (teamPaletteId) {

            case TEAM_AUS: pName = "AUS"; break;
            case TEAM_BRA: pName = "BRA"; break;
            case TEAM_ITA: pName = "ITA"; break;
            case TEAM_FRA: pName = "FRA"; break;
            case TEAM_GBR: pName = "GBR"; break;
            case TEAM_GER: pName = "GER"; break;
            default:       pName = "   "; break;
        }
    }
    V9990_PrintLayerAStringAtPos(x, 0, pName);
	if(x==0){
		g_History1[0] = pName[0];
		g_History1[1] = pName[1];
		g_History1[2] = pName[2];
		g_History1[3] = ':';
		g_History1[4] = ' ';
		g_History1[5] = ' ';
		g_History1[6] = ' ';
		g_History1[7] = ' ';
		g_History1[8] = ' ';
		g_History1[9] = ' ';
		g_History1[10] = '\0';
	}
	else{
		g_History2[0] = pName[0];
		g_History2[1] = pName[1];
		g_History2[2] = pName[2];
		g_History2[3] = ':';
		g_History2[4] = ' ';
		g_History2[5] = ' ';
		g_History2[6] = ' ';
		g_History2[7] = ' ';
		g_History2[8] = ' ';
		g_History2[9] = ' ';
		g_History2[10] = '\0';
	}
}
// +++ Get number string +++
char *GetNumberString(u16 value)
{
    static char str[5];

    if (value < 10) {
        str[0] = '0' + value;
        str[1] = '\0';
    } else {
        str[0] = '0' + (value / 10);
        str[1] = '0' + (value % 10);
        str[2] = '\0';
    }

    return str;
}
// +++ Show match header info +++
void ShowHeaderInfo(){
	u8 pos1 = (g_Team1Score >= 10) ? 4 : 5;
	u8 pos2 = (g_Team2Score >= 10) ? 9 : 10;
    
    PrintTeamName(0, g_Team1PaletteId);

	V9990_PrintLayerAStringAtPos(pos1, 0, GetNumberString(g_Team1Score));
	V9990_PrintLayerAStringAtPos(7, 0, "-");
	V9990_PrintLayerAStringAtPos(pos2, 0, GetNumberString(g_Team2Score));

    PrintTeamName(12, g_Team2PaletteId);
	u8 minutes=g_SecondsToEndOfMatch / 60;
	u8 seconds=g_SecondsToEndOfMatch - minutes*60;
	V9990_PrintLayerAStringAtPos(28,0,GetNumberString(minutes));
	V9990_PrintLayerAStringAtPos(29,0,":");
	if(seconds>=10){
		V9990_PrintLayerAStringAtPos(30,0,GetNumberString(seconds));
	}
	else{
		V9990_PrintLayerAStringAtPos(30,0,"0");
		V9990_PrintLayerAStringAtPos(31,0,GetNumberString(seconds));
	}
}
// +++ Show field zone +++
void ShowFieldZone(u8 zone){
	g_FieldScrollingActionInProgress=zone;
}
// +++ Set teams position on new match presentation +++
void SetTeamsPresentationSpritesPosition(){
	g_MatchStatus=MATCH_NOT_STARTED;
	for(u8 i=0;i<7;i++){
		g_Players[i].Y=230;
		g_Players[i].X=72+i*20;
		g_Players[i].PatternId=PLAYER_POSE_FRONT;
		g_Players[i].TeamId=TEAM_2;

	}
	for(u8 i=7;i<14;i++){
		g_Players[i].Y=250;
		g_Players[i].X=72+(i-7)*20;
		g_Players[i].PatternId=PLAYER_POSE_BACK;
		g_Players[i].TeamId=TEAM_1;
	}
	g_Players[REFEREE].Y=FIELD_POS_Y_CENTER;
	g_Players[REFEREE].X=30;
	g_Players[REFEREE].PatternId=PLAYER_POSE_RIGHT;
	g_Players[REFEREE].TeamId=REFEREE;
	g_Players[REFEREE].LastPose=0;
	g_Players[REFEREE].Direction=DIRECTION_RIGHT;
	g_Players[REFEREE].Role=NO_VALUE;
	g_Players[REFEREE].Status=PLAYER_STATUS_NONE;
	ResetPlayersInfo();
	SetPlayerTarget(REFEREE); 

    static const u8 k_PlayerRoles[] = { 
        PLAYER_ROLE_GOALKEEPER, PLAYER_ROLE_LEFT_DEFENDER, PLAYER_ROLE_RIGHT_HALFFIELDER, 
        PLAYER_ROLE_LEFT_HALFFIELDER, PLAYER_ROLE_RIGHT_DEFENDER, PLAYER_ROLE_LEFT_STRIKER, 
        PLAYER_ROLE_RIGHT_STRIKER 
    };

	for(u8 i=0;i<14;i++){
		g_Players[i].AiTickCounter=0;
        g_Players[i].Role = k_PlayerRoles[i % 7];
	}
	g_Ball.X=FIELD_POS_X_CENTER;
	g_Ball.Y=FIELD_POS_Y_CENTER;
	g_Ball.PreviousY=g_Ball.Y;
	ResetBallInfo(true);
}
// +++ Reset ball info +++
void ResetBallInfo(bool resetPossessionPlayer){
	g_Ball.PreviousY=g_Ball.Y;
	g_Ball.KickMoveState=NO_VALUE;
	g_Ball.Size=1;
	g_Ball.Direction=DIRECTION_NONE;
	if(resetPossessionPlayer){
		g_Ball.PossessionPlayerId=NO_VALUE;
	}
}
// +++ Set player target +++
void SetPlayerTarget(u8 playerId){
	if(g_FieldScrollingActionInProgress!=NO_VALUE && g_MatchStatus!=MATCH_BEFORE_KICK_OFF){
		return;
	}
	switch(g_MatchStatus){
		case MATCH_BEFORE_KICK_OFF:
        {
            static const u8 k_KO_X[] = { 
                FIELD_POS_X_CENTER, 
                FIELD_POS_X_LEFT, FIELD_POS_X_RIGHT,
                FIELD_POS_X_LEFT+100, FIELD_POS_X_RIGHT-100, 
                FIELD_POS_X_LEFT, FIELD_POS_X_RIGHT 
            };
            static const u16 k_KO_Y_T1[] = {
                FIELD_POS_Y_TEAM1_GOALKEEPER,
                FIELD_POS_Y_TEAM1_DEFENDERS, FIELD_POS_Y_TEAM1_DEFENDERS,
                FIELD_POS_Y_TEAM1_HALFFIELDERS+40, FIELD_POS_Y_TEAM1_HALFFIELDERS+40,
                FIELD_POS_Y_TEAM1_HALFFIELDERS, FIELD_POS_Y_TEAM1_HALFFIELDERS
            };
            static const u16 k_KO_Y_T2[] = {
                FIELD_POS_Y_TEAM2_GOALKEEPER,
                FIELD_POS_Y_TEAM2_DEFENDERS, FIELD_POS_Y_TEAM2_DEFENDERS,
                FIELD_POS_Y_TEAM2_HALFFIELDERS-40, FIELD_POS_Y_TEAM2_HALFFIELDERS-40,
                FIELD_POS_Y_TEAM2_HALFFIELDERS, FIELD_POS_Y_TEAM2_HALFFIELDERS
            };

			if(g_Players[playerId].TeamId==REFEREE){
				// Position near center but slightly offset to avoid overlapping ball/players
				g_Players[playerId].TargetX=FIELD_POS_X_CENTER - 30; 
				g_Players[playerId].TargetY=FIELD_POS_Y_CENTER - 40; 
			}
			else{
                u8 role = g_Players[playerId].Role;
                if (role > 6) role = 0; // Safety
                
                bool isTeam1 = (g_Players[playerId].TeamId == TEAM_1);
                
                // Base coordinates from tables
                u16 tx = k_KO_X[role];
                u16 ty = isTeam1 ? k_KO_Y_T1[role] : k_KO_Y_T2[role];

                // Special handling for Team 2 X mirroring if needed
                if (!isTeam1 && role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
                     tx = FIELD_POS_X_RIGHT - 116; 
                }

                // Special handling for Kickoff taking team Halffielders
                if ((role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) &&
                    g_RestartKickTeamId == g_Players[playerId].TeamId) 
                {
                     ty = isTeam1 ? FIELD_POS_Y_CENTER : (FIELD_POS_Y_CENTER - 10);
                     if (role == PLAYER_ROLE_LEFT_HALFFIELDER) tx = FIELD_POS_X_CENTER - 7;
                     else tx = FIELD_POS_X_CENTER + 7;
                }

                g_Players[playerId].TargetX = tx;
                g_Players[playerId].TargetY = ty;
			}
        }
			break;
	}
}
// +++ Show game field +++
void ShowField(){
    
    u16 tileId=0;
    
    for (u8 y=0;y<64;y++){
		for (u8 x=0;x<32;x++){
	        V9_Poke16(V9_CellAddrP1B(x,y), tileId++);
		}
	}
    
    for (u8 y=0;y<64;y++){
		for (u8 x=0;x<32;x++){
            V9_Poke16(V9_CellAddrP1A(x,y), 0);
		}
	}
    for (u8 x=0;x<64;x++){
        V9_Poke16(V9_CellAddrP1A(x,0), 32);
	}
}