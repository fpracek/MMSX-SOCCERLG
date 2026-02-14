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
        dir=Trampoline_U8(2,GetJoystickDirection);
        
        trigger=Trampoline_U8(2,IsTeamJoystickTriggerPressed);

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
	Trampoline_VOID_P1(2,SetPlayerBallPossession,NO_VALUE);
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
            joyTriggered=Trampoline_U8(2,IsTeamJoystickTriggerPressed);
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
// +++ Get team palette id +++
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
    g_PcmStartPlaying=FALSE;
    g_PmcSoundPlaying=NO_VALUE;
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
	g_FieldScrollingActionInProgress=FIELD_CENTRAL_ZONE;
	ShowHeaderInfo();
    Trampoline_VOID(3,InitPonPonGirls);
    V9_SetDisplayEnable(TRUE);
    V9_SetInterrupt(V9_INT_VBLANK);
}
void PerformShot(u16 targetX, u16 targetY) {
    u8 fromId = g_Ball.PossessionPlayerId;
    if (fromId == NO_VALUE) return;

    i16 dx, dy, adx, ady;
    u8 newDir;

    // TURN PLAYER (Generic logic towards target point)
    dx = (i16)targetX - (i16)g_Players[fromId].X;
    dy = (i16)targetY - (i16)g_Players[fromId].Y;
    adx = (dx < 0) ? -dx : dx;
    ady = (dy < 0) ? -dy : dy;

    if (adx > ady * 2) {
        newDir = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
    } else if (ady > adx * 2) {
        newDir = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
    } else {
        if (dx > 0) newDir = (dy > 0) ? DIRECTION_DOWN_RIGHT : DIRECTION_UP_RIGHT;
        else newDir = (dy > 0) ? DIRECTION_DOWN_LEFT : DIRECTION_UP_LEFT;
    }
    g_Players[fromId].Direction = newDir;

	// Set Shot Pose
	if (newDir == DIRECTION_UP || newDir == DIRECTION_UP_LEFT || newDir == DIRECTION_UP_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_FRONT;
	else if (newDir == DIRECTION_DOWN || newDir == DIRECTION_DOWN_LEFT || newDir == DIRECTION_DOWN_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_BACK;
	else if (newDir == DIRECTION_LEFT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_LEFT;
	else if (newDir == DIRECTION_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_RIGHT;

    g_Players[fromId].Status = PLAYER_STATUS_POSITIONED; // Lock pose

    // Stop Player Movement
    g_Players[fromId].TargetX = g_Players[fromId].X;
    g_Players[fromId].TargetY = g_Players[fromId].Y;

    Trampoline_VOID_P1(2,SetPlayerBallPossession,NO_VALUE);
    g_Ball.PossessionPlayerId = NO_VALUE;
    g_Ball.PassTargetPlayerId = NO_VALUE;
    g_Ball.ShotActive = 1;
    g_Ball.TargetX = targetX;
    g_Ball.TargetY = targetY;
    g_Ball.PassStartX = g_Ball.X;
    g_Ball.PassStartY = g_Ball.Y;
    
	// Calculate Arc Distance based on Goal Line (not target inside net) to ensure ball shrinks before entering
	i16 arcDy = dy;
	if (targetY < FIELD_BOUND_Y_TOP) { // Shooting UP
		arcDy = (i16)FIELD_BOUND_Y_TOP - (i16)g_Players[fromId].Y;
	} else if (targetY > FIELD_BOUND_Y_BOTTOM) { // Shooting DOWN
		arcDy = (i16)FIELD_BOUND_Y_BOTTOM - (i16)g_Players[fromId].Y;
	}
    g_Ball.PassTotalDist = (u16)(Math_Abs32(dx) + Math_Abs32(arcDy));
}
// +++ Tick ball flying +++
void TickBallFlying() {
    // Only process ball physics if match is active or during specific states where ball might resolve
    if(g_MatchStatus == MATCH_BEFORE_THROW_IN || g_MatchStatus == MATCH_THROW_IN || 
       g_MatchStatus == MATCH_BEFORE_GOAL_KICK || g_MatchStatus == MATCH_GOAL_KICK ||
       g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_CORNER_KICK ||
       g_MatchStatus == MATCH_BEFORE_KICK_OFF) {
           return;
    }

	// If someone has the ball, it's not flying
	if (g_Ball.PossessionPlayerId != NO_VALUE) return;

	// Check if ball should be moving
	bool isMovingToPlayer = (g_Ball.PassTargetPlayerId != NO_VALUE);
	bool isFreeMoving = (g_Ball.ShotActive != 0);

	if (!isMovingToPlayer && !isFreeMoving) return;

	// 1. DETERMINE TARGET
	i16 tx, ty;
	if (isMovingToPlayer) {
		tx = g_Players[g_Ball.PassTargetPlayerId].X;
		ty = g_Players[g_Ball.PassTargetPlayerId].Y;
	} else {
		tx = g_Ball.TargetX;
		ty = g_Ball.TargetY;
	}

	// 2. MOVE BALL
	i16 dx = tx - (i16)g_Ball.X;
	i16 dy = ty - (i16)g_Ball.Y;
	
	// Speed Logic
	u8 speed = 3; 
	if (g_Ball.ShotActive == 1) speed = 5; // Fast High Shot/Kick
	else if (g_Ball.ShotActive == 2) speed = 3; // Slower Bounce
	else if (g_Ball.ShotActive == 3) speed = 2; // Rolling

	// Check Arrival
	if (dx > -speed && dx < speed && dy > -speed && dy < speed) {
		
		// --- ARRIVED AT TARGET ---

		if (isMovingToPlayer) {
			// Sticky Pass -> Magnet to player
			g_Ball.KickMoveState = 3; // Force ball to snap to feet immediately (No visual lag)
			Trampoline_VOID_P1(2,PutBallOnPlayerFeet,g_Ball.PassTargetPlayerId);
			g_Ball.PassTargetPlayerId = NO_VALUE;
			g_Ball.Size = 1;
			return;
		} 
		else {
			// Free Ball Event (Shot or Bounce End)
			
			// If it was a HIGH SHOT (State 1) -> Try to Bounce
			if (g_Ball.ShotActive == 1) {
				
				// Standard Bounce Logic
				// Valid field area for bounce?
				bool isInsideField = (ty >= FIELD_BOUND_Y_TOP && ty <= FIELD_BOUND_Y_BOTTOM);

				if (isInsideField) {
					// START BOUNCE (State 2)
					
					// Calculate Bounce Target (extend vector by 20%)
					i16 totalVectorX = (i16)g_Ball.TargetX - (i16)g_Ball.PassStartX;
					i16 totalVectorY = (i16)g_Ball.TargetY - (i16)g_Ball.PassStartY;

					// New start is current position
					g_Ball.PassStartX = g_Ball.X;
					g_Ball.PassStartY = g_Ball.Y;

					// New target
					i16 bounceDx = totalVectorX / 4; 
					i16 bounceDy = totalVectorY / 4; 
					
					// Don't bounce off screen
					i16 newTx = (i16)g_Ball.X + bounceDx;
					i16 newTy = (i16)g_Ball.Y + bounceDy;
					
					// Clamp Target
					if (newTx < FIELD_BOUND_X_LEFT) newTx = FIELD_BOUND_X_LEFT;
					else if (newTx > FIELD_BOUND_X_RIGHT) newTx = FIELD_BOUND_X_RIGHT;
					
					if (newTy < FIELD_BOUND_Y_TOP) newTy = FIELD_BOUND_Y_TOP;
					else if (newTy > FIELD_BOUND_Y_BOTTOM) newTy = FIELD_BOUND_Y_BOTTOM;

					g_Ball.TargetX = newTx;
					g_Ball.TargetY = newTy;
					
					// Recalculate Distance for the bounce phase
					g_Ball.PassTotalDist = (u16)(Math_Abs32(bounceDx) + Math_Abs32(bounceDy));
					
					if (g_Ball.PassTotalDist > 5) {
						g_Ball.ShotActive = 2; // Enter Bounce State
						return; 
					}
				}
			} else if (g_Ball.ShotActive == 2) {
				// TRANSITION TO ROLL (State 3)
				// Small forward movement on ground
				
				i16 vecX = (i16)g_Ball.TargetX - (i16)g_Ball.PassStartX;
				i16 vecY = (i16)g_Ball.TargetY - (i16)g_Ball.PassStartY;
				
				g_Ball.PassStartX = g_Ball.X;
				g_Ball.PassStartY = g_Ball.Y;
				
				// Roll distance = approx 1/4 of bounce distance (which was 1/4 of shot)
				i16 rollDx = vecX / 4; 
				i16 rollDy = vecY / 4; 
				
				// Ensure minimum roll if it was moving fast? 
				// Just let it die purely if very slow.
				
				i16 rollTx = (i16)g_Ball.X + rollDx;
				i16 rollTy = (i16)g_Ball.Y + rollDy;
				
				// Bounds Check
				if (rollTx < FIELD_BOUND_X_LEFT) rollTx = FIELD_BOUND_X_LEFT;
				else if (rollTx > FIELD_BOUND_X_RIGHT) rollTx = FIELD_BOUND_X_RIGHT;
				if (rollTy < FIELD_BOUND_Y_TOP) rollTy = FIELD_BOUND_Y_TOP;
				else if (rollTy > FIELD_BOUND_Y_BOTTOM) rollTy = FIELD_BOUND_Y_BOTTOM;

				g_Ball.TargetX = rollTx;
				g_Ball.TargetY = rollTy;
				g_Ball.PassTotalDist = (u16)(Math_Abs32(rollDx) + Math_Abs32(rollDy));
				
				if (g_Ball.PassTotalDist > 2) {
					g_Ball.ShotActive = 3; // ROLLING
					return;
				}
			}

			// STOP BALL (End of Bounce/Roll or Out of Bounds or blocked)
			g_Ball.ShotActive = 0;
			g_Ball.PassTargetPlayerId = NO_VALUE;
			g_Ball.PossessionPlayerId = NO_VALUE;
			g_Ball.Size = 1;
			
			return;
		}
	}

	// 3. UPDATE POSITION
	if (Math_Abs32(dx) > Math_Abs32(dy)) {
		g_Ball.X += (dx > 0 ? speed : -speed);
		if (dx != 0) g_Ball.Y += (dy * speed) / Math_Abs32(dx);
	} else {
		g_Ball.Y += (dy > 0 ? speed : -speed);
		if (dy != 0) g_Ball.X += (dx * speed) / Math_Abs32(dy);
	}

	// 4. UPDATE SIZE (HEIGHT ARC)
	i16 diffStartX = (i16)g_Ball.X - (i16)g_Ball.PassStartX;
	i16 diffStartY = (i16)g_Ball.Y - (i16)g_Ball.PassStartY;
	u16 distCovered = (u16)(Math_Abs32(diffStartX) + Math_Abs32(diffStartY));
	
	u16 totalDist = g_Ball.PassTotalDist;
	if (totalDist == 0) totalDist = 1; // Safety

	// Check out of bounds safety (Ball disappears fix)
	if (g_Ball.X == 0 || g_Ball.X > 255 || g_Ball.Y == 0 || g_Ball.Y > 211) {
		// Reset if widely out of bounds
        // But only if really far, to allow goal-line cross
        if(g_Ball.Y > 230 || g_Ball.Y < 20) {
             // Let CheckBallBoundaries handle goal/out logic, 
             // but if it's crazy values, clamp or stop.
        }
	}

	if (g_Ball.ShotActive == 2) {
		// BOUNCE ARC (Low)
		u16 ratio = (distCovered * 100) / totalDist;
		if (ratio < 20 || ratio > 80) g_Ball.Size = 2;
		else g_Ball.Size = 3;
	} 
	else if (g_Ball.ShotActive == 3) {
		// ROLLING (Ground)
		g_Ball.Size = 1;
	}
	else if (g_Ball.ShotActive == 1) {
		// SHOT ARC (High)
		// User Request: Cap at Size 2 for shots
		g_Ball.Size = 2;
		/*
		u16 ratio = (distCovered * 100) / totalDist;
		if (ratio < 10 || ratio > 90) g_Ball.Size = 2;
		else if (ratio < 25 || ratio > 75) g_Ball.Size = 3;
		else g_Ball.Size = 4; // High
		*/
	}
	else {
		// PASS ARC (Medium)
		if (totalDist > 40) {
			u16 ratio = (distCovered * 100) / totalDist;
			if (ratio < 15 || ratio > 85) g_Ball.Size = 2;
			else g_Ball.Size = 3;
		} else {
			g_Ball.Size = 2;
		}
	}
	
	g_Ball.PreviousY = g_Ball.Y;
}
void TickUpdateTime(){
	if(g_MatchStatus==MATCH_IN_ACTION){
		
		if(g_FrameCounter==58){
			g_SecondsToEndOfMatch--;
			ShowHeaderInfo();
			if(g_SecondsToEndOfMatch==0){
				Trampoline_VOID(5,TimeUp);
			}
		}
	}
	if(g_Timer!=NO_VALUE){
		if(g_FrameCounter==58){
			g_Timer++;
		}
	}
	
}
void BallInGoal(u8 teamScored){
	// Placeholder for Goal Logic
	V9990_PrintLayerAStringAtPos(12,18,"IN  GOAL");
    
    g_GoalScorerId = g_Ball.PossessionPlayerId;
    
    // Better heuristic: if possession is NO_VALUE, use closest player of scoring team
    if (g_GoalScorerId == NO_VALUE) {
        g_GoalScorerId = Trampoline_U8_P2(2,GetClosestPlayerToBall, teamScored, NO_VALUE);
    }
    
	if(teamScored==TEAM_1){
		// Scored UP (North)
		g_Ball.Y = FIELD_BOUND_Y_TOP - 12;
		g_Team1Score++;
	}
	else{
		// Scored DOWN (South)
		g_Ball.Y = FIELD_BOUND_Y_BOTTOM + 24L;
		g_Team2Score++;
	}
	ShowHeaderInfo();
    Trampoline_VOID(3,PutBallSprite);
    PlayPcm(PCM_INGOAL);
    //PlayPT3Music(PT3_STADIUM);

	g_MatchStatus=MATCH_AFTER_IN_GOAL;
	g_RestartKickTeamId = (teamScored == TEAM_1) ? TEAM_2 : TEAM_1;
	g_Timer = 0; // Start timer for celebration/reset
    g_Ball.ShotActive = 0;
    g_Ball.PassTargetPlayerId = NO_VALUE;
    g_Ball.PossessionPlayerId = NO_VALUE;
}
// +++ Goal kick +++
void GoalKick(u8 teamId){
	// Placeholder for Goal Kick Logic
	V9990_PrintLayerAStringAtPos(10,18,"GOAL KICK");
    PlayPcm(PCM_GOALKICK);
	g_MatchStatus=MATCH_BEFORE_GOAL_KICK;
	g_RestartKickTeamId = teamId;
	g_Timer = 0;

    // Detect Side based on Ball Position
    if (g_Ball.X < FIELD_POS_X_CENTER) g_GoalKickSide = CORNER_SIDE_LEFT;
    else g_GoalKickSide = CORNER_SIDE_RIGHT;
}
// +++ Throw in +++
void BallThrowIn(u8 teamId){
	u8 i; // C89 declaration
	// Placeholder for Throw-in Logic
	V9990_PrintLayerAStringAtPos(10,18,"THROW IN");
    PlayPcm(PCM_THROWIN);
	g_MatchStatus=MATCH_BEFORE_THROW_IN;
	g_RestartKickTeamId = teamId;
	g_Timer = 0;
	
	// STOP ALL BALL PHYSICS
	g_Ball.ShotActive = 0;
	g_Ball.PassTargetPlayerId = NO_VALUE;
	g_Ball.PossessionPlayerId = NO_VALUE;
	
	// FIX: Freeze all players at current positions to prevent walking to old targets
	for(i=0; i<14; i++) {
		g_Players[i].TargetX = g_Players[i].X;
		g_Players[i].TargetY = g_Players[i].Y;
		// If outside bounds, clamp targets so they move to the line and stop
		if (g_Players[i].TargetX < FIELD_BOUND_X_LEFT) g_Players[i].TargetX = FIELD_BOUND_X_LEFT;
		if (g_Players[i].TargetX > FIELD_BOUND_X_RIGHT) g_Players[i].TargetX = FIELD_BOUND_X_RIGHT;
		if (g_Players[i].TargetY < FIELD_BOUND_Y_TOP) g_Players[i].TargetY = FIELD_BOUND_Y_TOP;
		if (g_Players[i].TargetY > FIELD_BOUND_Y_BOTTOM) g_Players[i].TargetY = FIELD_BOUND_Y_BOTTOM;
		
		g_Players[i].Status = PLAYER_STATUS_NONE;
	}
}
// +++ Check ball boundaries +++
void TickCheckBallBoundaries(){
	if(g_MatchStatus!=MATCH_IN_ACTION){
		return;
	}
    // Prevent Goal/Corner checks if the ball is currently held by the Goalkeeper
    // (This state can sometimes overlap with boundary positions during recoil animation)
    if(g_MatchStatus == MATCH_BALL_ON_GOALKEEPER || g_Ball.PossessionPlayerId != NO_VALUE) {
        if(g_Ball.PossessionPlayerId != NO_VALUE) {
            if(g_Players[g_Ball.PossessionPlayerId].Role == PLAYER_ROLE_GOALKEEPER) return;
        }
    }
    
    // IGNORE BOUNDARIES IF BALL IS MOVING BACK INTO FIELD (e.g. GK Kick)
    if (g_Ball.ShotActive != 0 || g_Ball.PassTargetPlayerId != NO_VALUE) {
        
        u16 destY = g_Ball.TargetY;
        if (g_Ball.PassTargetPlayerId != NO_VALUE) {
            destY = g_Players[g_Ball.PassTargetPlayerId].Y;
        }
        
        // If Ball is ABOVE Top Line
        if (g_Ball.Y < FIELD_BOUND_Y_TOP) {
             // If destination is below current position (moving Down), it is returning.
             if(destY > g_Ball.Y) return;
        }
        
        // If Ball is BELOW Bottom Line
        if (g_Ball.Y > FIELD_BOUND_Y_BOTTOM) {
             // If destination is above current position (moving Up), it is returning.
             if(destY < g_Ball.Y) return;
        }
    }
    // YES! That is the problem.
    // We need to ensure ball starts INSIDE the field when kicked by GK.
    
    // Let's fix it in PerformPass / PerformShot (or TickGoalkeeperAnimation) instead of here.
    // But as a failsafe here: If Ball is ShotActive and LastTouch was Goalkeeper?
    // We don't track who touched last beyond Team.
    
    // Valid Check: If ball is "Out" but moving INWARDS to the field, ignore it.
    
    i16 relY_Top = (i16)g_Ball.Y - FIELD_BOUND_Y_TOP;
    i16 relY_Bottom = (i16)g_Ball.Y - FIELD_BOUND_Y_BOTTOM;
    
    // If Ball is ABOVE Top Line (relY_Top < 0)
    if (g_Ball.Y < FIELD_BOUND_Y_TOP) {
         // If moving DOWN (Direction is DOWN, DOWN_LEFT, DOWN_RIGHT), it is returning to field.
         if (g_Ball.ShotActive && (g_Ball.Direction == DIRECTION_DOWN || g_Ball.Direction == DIRECTION_DOWN_LEFT || g_Ball.Direction == DIRECTION_DOWN_RIGHT)) {
             return; 
         }
    }
    
    // If Ball is BELOW Bottom Line
    if (g_Ball.Y > FIELD_BOUND_Y_BOTTOM) {
         // If moving UP, it is returning to field.
         if (g_Ball.ShotActive && (g_Ball.Direction == DIRECTION_UP || g_Ball.Direction == DIRECTION_UP_LEFT || g_Ball.Direction == DIRECTION_UP_RIGHT)) {
             return;
         }
    }

	u8 teamId = g_Ball.LastTouchTeamId;
	if(teamId==NO_VALUE){
		teamId=TEAM_1; // Default
	}
	u8 opponentTeamId = (teamId == TEAM_1) ? TEAM_2 : TEAM_1;
    
    // DEBUG: Force Team 2 Throw-in (User Request: "se la rimessa viene portata dal team 2 assegnale al team 2")
    // Note: If Team 1 takes it out, it goes to Team 2 normally.
    // If Team 2 takes it out, normally it goes to Team 1. We override this to Team 2.
    //if (teamId == TEAM_1) opponentTeamId = TEAM_1; //GP_USER

	// Check Side Lines (Throw-in)
	if(g_Ball.X < FIELD_BOUND_X_LEFT || g_Ball.X > FIELD_BOUND_X_RIGHT){
		BallThrowIn(opponentTeamId); //GP_USER
		//BallThrowIn(teamId); // GP_USER
		return;
	}

	// Check Top Line (Goal of Team 2)
	if(g_Ball.Y < FIELD_BOUND_Y_TOP){
		// Check Goal (Significantly widened tolerance to prevent false negatives)
		// Tolerance +/- 8 pixels (approx ball width)
		if(g_Ball.X > (GOAL_X_MIN - 8) && g_Ball.X < (GOAL_X_MAX + 8)){
			BallInGoal(TEAM_1); // Team 1 attacked up and scored
		}
		else{
			if(teamId == TEAM_1){ // Attacker touched last
				GoalKick(TEAM_2);
			}
			else{ // Defender touched last
				Trampoline_VOID_P1(3,CornerKick,TEAM_1);
			}
		}
		return;
	}

	// Check Bottom Line (Goal of Team 1)
	if(g_Ball.Y > FIELD_BOUND_Y_BOTTOM){
		// Check Goal
		if(g_Ball.X > (GOAL_X_MIN - 8) && g_Ball.X < (GOAL_X_MAX + 8)){
			BallInGoal(TEAM_2); // Team 2 attacked down and scored
		}
		else{
			if(teamId == TEAM_2){ // Attacker touched last (Team 2 attacking down)
				GoalKick(TEAM_1);
			}
			else{ // Defender touched last (Team 1 defending)
				Trampoline_VOID_P1(3,CornerKick,TEAM_2);
			}
		}
		return;
	}
}
// +++ Goalkeeper animation +++
void TickGoalkeeperAnimation() {
    if (g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) return;
    if (g_GkAnimPlayerId == NO_VALUE) return;
	
	// Ensure status is locked so main loop doesn't override PatternId
	g_Players[g_GkAnimPlayerId].Status = PLAYER_STATUS_POSITIONED;
    
    g_GkAnimTimer++;
    
    u8 kickTime = 60; // 1 Second delay for all (was 30)
    if (g_GkIsGroundKick) kickTime = 6; // Immediate kick for ground kicks

    // Recoil Animation (First 30 frames)
    if (g_GkAnimTimer < kickTime) {
        if (g_GkAnimTimer < 30 && (g_GkAnimTimer % 2) == 0 && g_GkRecoilY != 0) { // Faster movement (every 2 frames)
            g_Players[g_GkAnimPlayerId].Y += g_GkRecoilY;
            
            // Safety Clamp
           if(g_Players[g_GkAnimPlayerId].Y < FIELD_BOUND_Y_TOP) g_Players[g_GkAnimPlayerId].Y = FIELD_BOUND_Y_TOP;
           if(g_Players[g_GkAnimPlayerId].Y > FIELD_BOUND_Y_BOTTOM) g_Players[g_GkAnimPlayerId].Y = FIELD_BOUND_Y_BOTTOM;

            g_Players[g_GkAnimPlayerId].TargetY = g_Players[g_GkAnimPlayerId].Y; // Sync target
        }
        // Force Pose again
        if (g_Players[g_GkAnimPlayerId].TeamId == TEAM_1) g_Players[g_GkAnimPlayerId].PatternId = PLAYER_POSE_TEAM1_GK_BALL_FRONT;
        else g_Players[g_GkAnimPlayerId].PatternId = PLAYER_POSE_FRONT; // Team 2 GK plays like a player (feet)

        Trampoline_VOID_P1(2, PutBallOnPlayerFeet,g_GkAnimPlayerId);
        
    } else if (g_GkAnimTimer >= kickTime) {
        
        // WAIT LOGIC (Don't kick until safe or timeout)
        bool safeToKick = false;
        
        // 1. Timeout (Force kick after 2 seconds waiting)
        if (g_GkAnimTimer > (kickTime + 120)) safeToKick = true;
        
        // 2. Check Teammates Position (Wait for them to move out)
        u8 targetId = GetBestPassTarget(g_GkAnimPlayerId); 
        if (!safeToKick && targetId != NO_VALUE) {
             u16 dist = (u16)(Math_Abs32((i16)g_Players[targetId].X - (i16)g_Players[g_GkAnimPlayerId].X) + 
                              Math_Abs32((i16)g_Players[targetId].Y - (i16)g_Players[g_GkAnimPlayerId].Y));
             if (dist > 60) safeToKick = true;
        }
        
        // 3. Panic Check (Opponent too close)
        if (!safeToKick) {
             u8 closestOpp = Trampoline_U8_P2(2,GetClosestPlayerToBall,(g_Players[g_GkAnimPlayerId].TeamId == TEAM_1) ? TEAM_2 : TEAM_1, NO_VALUE);
             if (closestOpp != NO_VALUE) {
                 // If opponent is within 40px, kick immediately
                 // (Distance check logic simplified here as we don't have direct access to opponent dist in this scope easily without recalc)
                 // But GetClosestPlayerToBall uses global ball, which is at GK feet.
                 u16 edist = (u16)(Math_Abs32((i16)g_Players[closestOpp].X - (i16)g_Ball.X) + 
                                   Math_Abs32((i16)g_Players[closestOpp].Y - (i16)g_Ball.Y));
                 if (edist < 40) safeToKick = true;
             }
        }

        if (safeToKick) {
            // KICK!
        if (targetId != NO_VALUE) {
             Trampoline_VOID_P1(2, PerformPass,targetId);
             
             // Update Sprite for Kick
             u8 dir = g_Players[g_GkAnimPlayerId].Direction;
             u8 team = g_Players[g_GkAnimPlayerId].TeamId;
             u8 pose;
             
             if (dir == DIRECTION_RIGHT || dir == DIRECTION_UP_RIGHT || dir == DIRECTION_DOWN_RIGHT) 
                pose = (team == TEAM_1) ? PLAYER_POSE_TEAM1_RESTART_RIGHT : PLAYER_POSE_TEAM2_RESTART_RIGHT;
             else if (dir == DIRECTION_LEFT || dir == DIRECTION_UP_LEFT || dir == DIRECTION_DOWN_LEFT)
                pose = (team == TEAM_1) ? PLAYER_POSE_TEAM1_RESTART_LEFT : PLAYER_POSE_TEAM2_RESTART_LEFT;
             else 
                pose = (team == TEAM_1) ? PLAYER_POSE_TEAM1_RESTART_FRONT : PLAYER_POSE_TEAM2_RESTART_FRONT;
             
             g_Players[g_GkAnimPlayerId].PatternId = pose;
             // Lock again
             g_Players[g_GkAnimPlayerId].Status = PLAYER_STATUS_POSITIONED;
             
             // UNLOCK GAME IMMEDIATELY
             g_MatchStatus = MATCH_IN_ACTION;

        } else {
             // Fallback if no target (should rarely happen)
             u8 team = g_Players[g_GkAnimPlayerId].TeamId;
             u8 pose = (team == TEAM_1) ? PLAYER_POSE_TEAM1_RESTART_FRONT : PLAYER_POSE_TEAM2_RESTART_FRONT;
             g_Players[g_GkAnimPlayerId].PatternId = pose;
             
             // Just shoot forward
             u16 tx = g_Players[g_GkAnimPlayerId].X;
			 u16 ty;
             if (team == TEAM_1) { // Shooting UP
				if (g_Players[g_GkAnimPlayerId].Y > (FIELD_BOUND_Y_TOP + 100)) ty = g_Players[g_GkAnimPlayerId].Y - 100;
				else ty = FIELD_BOUND_Y_TOP;
             } else { // Shooting DOWN
				if (g_Players[g_GkAnimPlayerId].Y < (FIELD_BOUND_Y_BOTTOM - 100)) ty = g_Players[g_GkAnimPlayerId].Y + 100;
				else ty = FIELD_BOUND_Y_BOTTOM;
             }

             PerformShot(tx, ty);
             
             // UNLOCK GAME IMMEDIATELY
             g_MatchStatus = MATCH_IN_ACTION;
        }
        }
        // If not safe, do nothing (wait for next frame)
    }
}
// +++ Update pass target +++
void UpdatePassTarget() {
    // Skip auto-targeting during set pieces (Manual selection rules)
    if (g_MatchStatus != MATCH_IN_ACTION && g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
        return; 
    }

	static u8 passUpdateTimer = 0;
	u8 carrier = g_Ball.PossessionPlayerId;
    
	if (g_Ball.PossessionPlayerId == NO_VALUE) {
		g_PassTargetPlayer = NO_VALUE;
		return;
	}

	// Performance Optimization: Only update every 8 frames
	passUpdateTimer++;
	if (passUpdateTimer < 8) return;
	passUpdateTimer = 0;

    if (carrier != NO_VALUE) {
        g_PassTargetPlayer = GetBestPassTarget(carrier);
    } else {
		if (g_Ball.PassTargetPlayerId == NO_VALUE) g_PassTargetPlayer = NO_VALUE;
    }
}
// +++ Get best pass target +++
u8 GetBestPassTarget(u8 passerId) {
	u8 bestTarget = NO_VALUE;
	i32 bestScore = -2100000000;
	u8 teamId = g_Players[passerId].TeamId;
	u8 dir = g_Players[passerId].Direction;
    i16 px = (i16)g_Players[passerId].X;
    i16 py = (i16)g_Players[passerId].Y;
    
	// Vector for direction
	i16 dirX = 0, dirY = 0;
	u8 i; 

	if (dir == DIRECTION_NONE) dir = g_Players[passerId].PreviousDirection;

    if (dir == DIRECTION_UP) dirY = -100;
    else if (dir == DIRECTION_DOWN) dirY = 100;
    else if (dir == DIRECTION_LEFT) dirX = -100;
    else if (dir == DIRECTION_RIGHT) dirX = 100;
    else if (dir == DIRECTION_UP_RIGHT) { dirX = 70; dirY = -70; }
    else if (dir == DIRECTION_UP_LEFT) { dirX = -70; dirY = -70; }
    else if (dir == DIRECTION_DOWN_RIGHT) { dirX = 70; dirY = 70; }
    else if (dir == DIRECTION_DOWN_LEFT) { dirX = -70; dirY = 70; }
    else {
        if (teamId == TEAM_1) dirY = -100; 
        else dirY = 100; 
    }

	for(i=0; i<14; i++) {
        // Optimized variables
        i16 dx, dy, adx, ady;
        i32 dot, score;

		if(g_Players[i].TeamId != teamId) continue;
		if(i == passerId) continue;
        // if(g_Players[i].Status == PLAYER_STATUS_NONE) continue; // Allow passing to moving players!
		if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue; 
		
        // VISIBILITY CHECK (Moved up for optimization)
        if (g_Players[i].Y < g_FieldCurrentYPosition || g_Players[i].Y > (g_FieldCurrentYPosition + 220)) {
            continue;
        }

		dx = (i16)g_Players[i].X - px;
		dy = (i16)g_Players[i].Y - py;
        
        // MINIMUM DISTANCE CHECK (Box check is lighter than distSq)
        // Reduced to ~30px to improve responsiveness for short passes
        adx = (dx < 0) ? -dx : dx;
        ady = (dy < 0) ? -dy : dy;
        if (adx < 32 && ady < 32) continue;

		// GK RESTRICTED KICK DISTANCE
		if (g_Players[passerId].Role == PLAYER_ROLE_GOALKEEPER) {
			// Limit to 200px (approx full screen height). 
			if (((i32)dx*(i32)dx + (i32)dy*(i32)dy) > 40000) continue;
		}

        dot = ((i32)dx * dirX) + ((i32)dy * dirY);
		
		// DIRECTION CHECK
		if (dot <= 0) {
            // RELAXED CHECK: Allow slight backward passes if very close?
            // Or just allow wider cone (dot > -0.2?)
            // Let's stick to 90 degrees but check if vector calculation is correct.
            // If stopped, dirX/dirY might be tricky.
            continue; 
        }

        // Heuristic
        // Simplified scoring: Dot Product (Alignment) - Linear Distance Penalty
        // Avoids expensive squares and divisions.
        score = dot - ((i32)(adx + ady) * 40); 
		
        if (score > bestScore) {
            bestScore = score;
            bestTarget = i;
        }
	}
    
    // --- FALLBACK ---
    // If no target found with strict direction, try finding ANY closest teammate
    // regardless of direction, but within reasonable distance (e.g. 80px)
    //if (bestTarget == NO_VALUE) {
    //    for(i=0; i<14; i++) {
    //         if(g_Players[i].TeamId != teamId) continue;
    //         if(i == passerId) continue;
    //         // if(g_Players[i].Status == PLAYER_STATUS_NONE) continue; // Allow passing to moving players!
    //         if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
    //         
    //         // Visibility
    //         if (g_Players[i].Y < g_FieldCurrentYPosition || g_Players[i].Y > (g_FieldCurrentYPosition + 220)) continue;
//
    //         i16 dx = (i16)g_Players[i].X - px;
    //         i16 dy = (i16)g_Players[i].Y - py;
    //         
    //         // Ignore min distance check here?
    //         
    //         // Max Distance for fallback
    //         i16 adx = (dx < 0) ? -dx : dx;
    //         i16 ady = (dy < 0) ? -dy : dy;
    //         if (adx + ady > 100) continue; // Only close teammates
    //         
    //         // Simple closeness score
    //         i32 score = 1000 - (adx + ady);
    //         if (score > bestScore) {
    //             bestScore = score;
    //             bestTarget = i;
    //         }
    //    }
    //}
    
	return bestTarget;
}
// +++ Tick ball collision +++
void TickBallCollision(){
	if(g_MatchStatus!=MATCH_IN_ACTION){
		return;
	}

	// Increment Hold Timer if someone has the ball
	if (g_Ball.PossessionPlayerId != NO_VALUE) {
		if (g_Ball.PossessionTimer < 255) g_Ball.PossessionTimer++;
	}
	
	// PASSING HEIGHT CHECK
    bool impossibleToReach = false;
	if (g_Ball.PossessionPlayerId == NO_VALUE) { // Ball in air
		if (g_Ball.Size >= 5) impossibleToReach = true;
        // If High Shot (Kick), prevent interception at strict launch
        if (g_Ball.ShotActive == 1) {
             i16 diffStart = (i16)g_Ball.X - (i16)g_Ball.PassStartX; 
             if (diffStart < 0) diffStart = -diffStart;
             if (diffStart < 20) impossibleToReach = true;
        }
	}
	
	for(u8 i=0; i<14; i++){
		if(g_Players[i].Status == PLAYER_STATUS_NONE) continue;
		if(g_Ball.PossessionPlayerId == i) continue; // Skip self

        // Determine effective hit distance
        // Normal players: 14px radius (20x20 box)
        // GK: 14px radius (28x28 box) -> INCREASED FOR DIVING
        u8 hitDist = 14;
        if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
             const TeamStats* stats = GetTeamStats(g_Players[i].TeamId);
             if (g_Ball.ShotActive) hitDist = stats->GkSkill; 
             else hitDist = 14; 
        }

        // Check proximity
		u16 diffX = (g_Ball.X > g_Players[i].X) ? (g_Ball.X - g_Players[i].X) : (g_Players[i].X - g_Ball.X);
		u16 diffY = (g_Ball.Y > g_Players[i].Y) ? (g_Ball.Y - g_Players[i].Y) : (g_Players[i].Y - g_Ball.Y);

		if(diffX < hitDist && diffY < hitDist){ 
			if (g_Ball.PossessionPlayerId == NO_VALUE) {
                // --- BALL IS FREE ---

      

                // 1. Check if unreachable (height or just kicked)
                // if (impossibleToReach) continue; // MOVED check inside specific blocks (GK ignores height on shots)
                
                // bool impossibleForPlayer = impossibleToReach;
                // if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER && g_Ball.ShotActive) impossibleForPlayer = false; // GK catches shots always
                
                // if (impossibleForPlayer) continue; 

                // if (g_Ball.Size >= 4 && g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) continue;

                // 2. Ignore Launcher (Double check distance from current shot start to prevent self-collision)
                // Only apply this check during INITIAL HIGH SHOT/PASS phase (ShotActive == 1 or Pass Active).
                // Once ball bounces or rolls (States 2, 3), the "Start" resets to the bounce point,
                // so we must NOT enforce distance checks there (otherwise ball is un-pickupable at bounce spots).
                if (g_Ball.ShotActive == 1 || g_Ball.PassTargetPlayerId != NO_VALUE) {
                    i16 dxStart = (i16)g_Ball.X - (i16)g_Ball.PassStartX;
                    i16 dyStart = (i16)g_Ball.Y - (i16)g_Ball.PassStartY;
                    if (dxStart < 0) dxStart = -dxStart;
                    if (dyStart < 0) dyStart = -dyStart;
                    if ((dxStart + dyStart) < 24) continue; 
                }

                // 3. GK Interception Logic
                if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
                     
                     bool wasShot = (g_Ball.ShotActive != 0);

                     // DIVING LOGIC
                     if (g_Ball.ShotActive) {
                          i16 signedDiffX = (i16)g_Ball.X - (i16)g_Players[i].X;
                          
                          // Central Save (tolerance 5px)
                          if (signedDiffX >= -5 && signedDiffX <= 5) {
                               // Standard Catch
                               // (Pose handles in GoalkeeperWithBall)
                          } 
                          else {
                               // Diving Save (6px to 15px+)
                               // Use Diving Poses
                               u8 team = g_Players[i].TeamId;
                               u8 divePose = 0;
                               
                               if (signedDiffX > 5) { // Ball to Right
                                   if (team == TEAM_1) divePose = PLAYER_POSE_TEAM1_GK_DOWN_RIGHT;
                                   else divePose = PLAYER_POSE_TEAM2_GK_DOWN_RIGHT;
                               } else { // Ball to Left
                                   if (team == TEAM_1) divePose = PLAYER_POSE_TEAM1_GK_DOWN_LEFT;
                                   else divePose = PLAYER_POSE_TEAM2_GK_DOWN_LEFT;
                               }
                               
                               g_Players[i].PatternId = divePose;
                               g_Players[i].Status = PLAYER_STATUS_POSITIONED; // Lock it
                          }
                     }

                     Trampoline_VOID_P1(2,PutBallOnPlayerFeet,i);
                     Trampoline_VOID_P2(2,GoalkeeperWithBall,g_Players[i].TeamId, !wasShot); 
                     if (!wasShot) g_GkIsGroundKick = false; // Force Slow/Hand mode for Steals
                     
                     // Reset Ball State
                     g_Ball.PassTargetPlayerId = NO_VALUE;
                     g_Ball.ShotActive = 0;
                     g_Ball.Size = 2;
                     
                     return; // Stop checking
                }

                // 4. Normal Player Logic
				g_Ball.PassTargetPlayerId = NO_VALUE; 
                g_Ball.ShotActive = 0; 
                g_Ball.KickMoveState = 3; // Force ball to snap to feet immediately (No visual lag)
				g_Ball.Size = 1; // On feet = small
				Trampoline_VOID_P1(2,PutBallOnPlayerFeet,i);
				g_Players[i].Status = PLAYER_STATUS_HAS_BALL;
				return; // Stop checking

            } else {
                // --- BALL IS OWNED (STEAL) ---
				u8 currentOwner = g_Ball.PossessionPlayerId;

				// GK takes ball from anyone (Teammate or Opponent)
				if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
                    Trampoline_VOID_P1(2,PutBallOnPlayerFeet,i);
                    Trampoline_VOID_P2(2,GoalkeeperWithBall,g_Players[i].TeamId, 1); 
                    g_GkIsGroundKick = false; // Force Slow/Hand mode for Steals
					
					// Reset Ball State
					g_Ball.PassTargetPlayerId = NO_VALUE;
					g_Ball.ShotActive = 0;
					g_Ball.Size = 2;
					return;
				}

				if (g_Players[i].TeamId != g_Players[currentOwner].TeamId) {
					// Opponent detected close to ball carrier -> Steal!
                    Trampoline_VOID_P1(2,PutBallOnPlayerFeet,i);
                    // Reset ball state just in case
                    g_Ball.PassTargetPlayerId = NO_VALUE;
                    g_Ball.ShotActive = 0;
					return;
				}
            }
		}
	}
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