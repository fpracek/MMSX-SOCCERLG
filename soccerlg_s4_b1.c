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
        WaitV9990Synch();
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
			//PlayPcm(SOUND_TEAM_SELECTION);
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
	
	V9_SetSpriteEnable(true);

	V9_SetDisplayEnable(FALSE);


	if(g_ShowButtonsInfo){
		g_ShowButtonsInfo=false;
		V9_FillVRAM(V9_P1_PGT_A, 0x00, 128*212); // Clean layer B pattern
        V9990_LoadButtonsImageData();
		V9_SelectPaletteP1(0,1);
		u16 tileId=0;

		for (u8 y=0;y<64;y++){
			for (u8 x=0;x<32;x++){
				V9_Poke16(V9_CellAddrP1A(x,y), tileId++);
			}
		}
		V9_SetInterrupt(V9_INT_VBLANK); // Enable for input check
		V9_SetDisplayEnable(TRUE);
        bool joyTriggered=FALSE;
		while(!joyTriggered){
            joyTriggered=Trampoline_VOID_RETURN(2,IsTeamJoystickTriggerPressed);
			WaitV9990Synch();
		}
	
		V9_SetDisplayEnable(FALSE);
	}
	g_MatchStatus=MATCH_NOT_STARTED;
	//LoadP1LayerA();
	//LoadP1LayerB();
//
    //InitPalette();
//
	//
    //ShowField();
	//
	//V9_SetDisplayEnable(TRUE);
	//
    //V9_SetInterrupt(V9_INT_VBLANK);
	//GameStart();
}
