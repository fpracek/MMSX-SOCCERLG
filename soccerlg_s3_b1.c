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
// +++ Put ball sprite +++
void TickGoalCelebration(){
    if(g_MatchStatus!=MATCH_AFTER_IN_GOAL) return;

    
    
    g_Timer++;
    // Blink effect
    if((g_Timer % 10) < 5){
        V9_SetBackgroundColor(8); // Cyan/Flash
    } else {
        V9_SetBackgroundColor(1); // Default Blue
    }

	// ------------------------------------
	// CELEBRATION PHASE (First 2 Seconds)
	// ------------------------------------
	if (g_Timer < 120) {
		u8 scoringTeamId = (g_RestartKickTeamId == TEAM_1) ? TEAM_2 : TEAM_1;
		
		// Determine visible boundaries based on Goal Location
		u16 limitY_Top = FIELD_BOUND_Y_TOP;
		u16 limitY_Bottom = FIELD_BOUND_Y_BOTTOM;
		
		if (g_Ball.Y < FIELD_CENTRAL_Y) { // Top Goal
			limitY_Bottom = FIELD_BOUND_Y_TOP + 160; 
		} else { // Bottom Goal
			limitY_Top = FIELD_BOUND_Y_BOTTOM - 160;
		}

		// Move/Anim Lookup Tables
        // Directions: NO, UP, UR, RI, DR, DO, DL, LE, UL
        static const i8 k_CelebDX[] = { 0, 0, 1, 1, 1, 0, -1, -1, -1 };
        static const i8 k_CelebDY[] = { 0, -1, -1, 0, 1, 1, 1, 0, -1 };

		for(u8 i=0; i<15; i++){
			if(i == REFEREE) continue;
             u8 dir = g_Players[i].Direction;
			
			// Decide behavior based on team
			if (g_Players[i].TeamId == scoringTeamId) {
				// --- SCORING TEAM: Random Movement & Celebration Poses ---

				// Change direction every 19 frames to be erratic (prime number avoids X/Y axis locking)
				if ((g_Timer % 19) == 0) {
					// Pseudo-random direction (1 to 8)
					u8 rnd = (g_Timer * 3) + (i * 37); 
					dir = (rnd % 8) + 1; 
                    g_Players[i].Direction = dir;
				}

                i8 dy = k_CelebDY[dir];
                i8 dx = k_CelebDX[dir];

                if (dy < 0 && g_Players[i].Y > limitY_Top) g_Players[i].Y--;
                else if (dy > 0 && g_Players[i].Y < limitY_Bottom) g_Players[i].Y++;
                
                if (dx < 0 && g_Players[i].X > FIELD_BOUND_X_LEFT) g_Players[i].X--;
                else if (dx > 0 && g_Players[i].X < FIELD_BOUND_X_RIGHT) g_Players[i].X++;

				// ANIMATION: Hands Up!
				bool animFrame1 = ((g_Timer / 8) % 2) == 0;
                bool isBack = (dy < 0);
				
                if (isBack) g_Players[i].PatternId = (animFrame1) ? PLAYER_POSE_CELEBRATION_BACK_1 : PLAYER_POSE_CELEBRATION_BACK_2;
                else g_Players[i].PatternId = (animFrame1) ? PLAYER_POSE_CELEBRATION_FRONT_1 : PLAYER_POSE_CELEBRATION_FRONT_2;

			} else {
				// --- LOSING TEAM: Stand Still ---
                bool isUp = (dir == DIRECTION_UP || dir == DIRECTION_UP_LEFT || dir == DIRECTION_UP_RIGHT);
                g_Players[i].PatternId = isUp ? PLAYER_POSE_BACK : PLAYER_POSE_FRONT;
			}
		}
	}
    
    if(g_Timer > 150){
        V9_SetBackgroundColor(1);
        V9990_ClearTextFromLayerA(12, 18, 8); // "IN  GOAL"
        
        g_MatchStatus = MATCH_BEFORE_KICK_OFF;
        g_Ball.PossessionPlayerId = NO_VALUE;
        g_Ball.KickMoveState = 0;
        g_Ball.ShotActive = 0;
        if(g_Team1ActivePlayer!=NO_VALUE) g_Players[g_Team1ActivePlayer].Status=PLAYER_STATUS_NONE;
        if(g_Team2ActivePlayer!=NO_VALUE) g_Players[g_Team2ActivePlayer].Status=PLAYER_STATUS_NONE;
        g_Team1ActivePlayer=NO_VALUE;
        g_Team2ActivePlayer=NO_VALUE;
        
        g_Ball.X = FIELD_POS_X_CENTER;
        g_Ball.Y = FIELD_POS_Y_CENTER;
        g_Ball.PreviousY = g_Ball.Y;
        PutBallSprite();
        
        for(u8 i=0; i<15; i++){
            if(i==REFEREE || g_Players[i].TeamId==TEAM_1 || g_Players[i].TeamId==TEAM_2){
                 // Force REFEREE Pose reset just in case
                 if (i==REFEREE) {
                     g_Players[i].Direction=DIRECTION_RIGHT;
                     g_Players[i].LastPose=0;
                 }
                 Trampoline_VOID_P1(4,SetPlayerTarget,i);
            }
        }
        
        // FORCE SCROLLING TO CENTER
        g_FieldScrollingActionInProgress=FIELD_CENTRAL_ZONE;
    }
}
// +++ Put ball on screen +++
void PutBallSprite(){
	struct V9_Sprite attr;
	attr.D=0;
	attr.SC=0;
	attr.Y = g_Ball.Y-g_FieldCurrentYPosition;

	// 1. Determine Logical Size
	u8 logicalSize = g_Ball.Size;
	// Keep ball small (Size 1) when held by player
	if (g_Ball.PossessionPlayerId != NO_VALUE) logicalSize = 1;

	if (logicalSize == 0) logicalSize = 1;
	if (logicalSize > 4) logicalSize = 4;

	// 2. Check Movement with Cooldown
	// Use a cooldown to prevent flickering when speed is low (sub-pixel movement)
	static u8 s_StopCooldown = 0;
	bool rawMovement = (g_Ball.OldX != g_Ball.X || g_Ball.OldY != g_Ball.Y);
	
	// Update Old Pos
	g_Ball.OldX = g_Ball.X;
	g_Ball.OldY = g_Ball.Y;

	if (rawMovement) {
		s_StopCooldown = 15; // Keep animation active for ~1/4 sec after last move
	} else {
		if (s_StopCooldown > 0) s_StopCooldown--;
	}
	
	bool isAnimating = (s_StopCooldown > 0);

	// 3. Determine Alternate Frame
	// Use Global Frame Counter (bit 3 = change every 8 frames)
	bool useAlt = isAnimating && ((g_FrameCounter & 8) != 0);
	
    static const u8 k_BallPatterns[] = { 
        BALL_SIZE_1, BALL_SIZE_2, BALL_SIZE_3, BALL_SIZE_4, 
        BALL_SIZE_5, BALL_SIZE_6, BALL_SIZE_7, BALL_SIZE_8 
    };

    u8 idx = (logicalSize - 1) * 2 + (useAlt ? 1 : 0);
    attr.Pattern = k_BallPatterns[idx & 7];

	attr.X = g_Ball.X;
	attr.P = attr.D;
	V9_SetSpriteP1(15, &attr);
}

// +++ Pon pon girls animation +++
void TickPonPonGirlsAnimation(){
	if(g_MatchStatus!=MATCH_AFTER_IN_GOAL){
		if(!g_ponPonGirlsInitailized){
			InitPonPonGirls();
			g_ponPonGirlsInitailized=true;
		
		}
		return;
	}
	g_ponPonGirlsInitailized=false;
	if(g_PonPonGrilsPoseCounter==PON_PON_GIRLS_POSE_SPEED){
		g_PonPonGrilsPoseCounter=0;
	}
	else{
		g_PonPonGrilsPoseCounter++;
		return;
	}
	


	g_ponPonPatternIndex++;
	if(g_ponPonPatternIndex >= 9) g_ponPonPatternIndex = 0;

	u8 pat = g_GirlPatterns[g_ponPonPatternIndex];

	for(u8 i=0; i<6; i++){
		g_PonPonGirls[i].PatternId = pat;
		PutPonPonGirlSprite(i);
	}
	g_peopleState=!g_peopleState;
	PeopleMoving(g_peopleState);
}
// +++ People moving on goal +++
void PeopleMoving(bool isBasicMoving){
    u16 tileId=PUBLIC_TILE_1;
    u8  yPosition=0;
    if(!g_ActiveFieldZone==FIELD_NORTH_ZONE){
        yPosition=62;
    }


    if(!isBasicMoving){
        tileId=PUBLIC_TILE_2;
    }
    for (u8 y=yPosition;y<yPosition+2;y++){
		for (u8 x=0;x<32;x++){
			V9_Poke16(V9_CellAddrP1A(x,y), tileId);
		}
	}
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
