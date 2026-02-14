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

// +++ Put player sprites +++
void UpdateSpritesPositions(){
	for (u8 i=0;i<15;i++){
		Trampoline_VOID_P1(2,PutPlayerSprite,i);
	}
	PutBallSprite();
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

void TickTeamJoystick(u8 direction){
	u8 teamId=TEAM_1;
	// Block input during non-interactive states (Presentation, Cutscenes, etc.)
	if (g_MatchStatus == MATCH_NOT_STARTED || 
		g_MatchStatus == MATCH_PLAYERS_PRESENTATION || 
		g_MatchStatus == MATCH_AFTER_IN_GOAL || 
        g_MatchStatus == MATCH_BEFORE_CORNER_KICK || 
        g_MatchStatus == MATCH_BEFORE_GOAL_KICK || 
        g_MatchStatus == MATCH_BEFORE_THROW_IN ||
        g_MatchStatus == MATCH_BEFORE_OFFSIDE) {
		return;
	}

	u8 playerId=NO_VALUE;
	if(teamId==TEAM_1){
		if(g_Team1ActivePlayer==NO_VALUE){
			return;
		}
		else{
			playerId=g_Team1ActivePlayer;
		}
	}

	
	// AUTO-SWITCH ACTIVE DEFENDER
	// Capture trigger state ONCE for the whole function to avoid consumption issues
	bool frameTriggerPressed = Trampoline_U8(2,IsTeamJoystickTriggerPressed);

	// Case A: Opponent has ball OR Ball is Loose
	bool canSwitch = false;
	if (g_Ball.PossessionPlayerId == NO_VALUE) {
		canSwitch = true; // Always allow switch on loose ball
	} else {
		u8 ballOwner = g_Ball.PossessionPlayerId;
		if (g_Players[ballOwner].TeamId != teamId) {
			canSwitch = true;
		}
	}

	if (canSwitch) {
		
		// 1. Check FORCE SWITCH (Trigger)
		bool forceSwitch = frameTriggerPressed;

		// 2. Check INPUT LOCK (Stick movement)
		// Don't auto-switch if user is actively moving stick, UNLESS forcing it with trigger.
		bool inputActive = (direction != DIRECTION_NONE);

		if (!inputActive || forceSwitch) {
			
			u8 closestId = Trampoline_U8_P2(2,GetClosestPlayerToBall,teamId, NO_VALUE);
			
			// BLOCK GOALKEEPER SELECTION
			if (closestId != NO_VALUE && g_Players[closestId].Role == PLAYER_ROLE_GOALKEEPER) {
				// If closest is GK, find the next closest field player
				closestId = Trampoline_U8_P2(2,GetClosestPlayerToBall,teamId, closestId);
			}

			if (closestId != playerId && closestId != NO_VALUE) {
				
				if (forceSwitch) {
					// FORCE SWITCH: Ignore hysteresis
					if (teamId == TEAM_1) g_Team1ActivePlayer = closestId;
					else g_Team2ActivePlayer = closestId;
					playerId = closestId; 
					
					// CONSUME TRIGGER forces switch to prevent immediate tackle in the same frame
					frameTriggerPressed = false;
				} else {
					// HYSTERESIS: Only switch if new player is SIGNIFICANTLY closer
					
					// If ball is loose, use smaller hysteresis (easier to switch)
					u8 histThreshold = (g_Ball.PossessionPlayerId == NO_VALUE) ? 10 : 30;

					// Calculate distances (Manhattan)
					u16 distX_Curr = (g_Players[playerId].X > g_Ball.X) ? (g_Players[playerId].X - g_Ball.X) : (g_Ball.X - g_Players[playerId].X);
					u16 distY_Curr = (g_Players[playerId].Y > g_Ball.Y) ? (g_Players[playerId].Y - g_Ball.Y) : (g_Ball.Y - g_Players[playerId].Y);
					u16 distCurr = distX_Curr + distY_Curr;

					u16 distX_New = (g_Players[closestId].X > g_Ball.X) ? (g_Players[closestId].X - g_Ball.X) : (g_Ball.X - g_Players[closestId].X);
					u16 distY_New = (g_Players[closestId].Y > g_Ball.Y) ? (g_Players[closestId].Y - g_Ball.Y) : (g_Ball.Y - g_Players[closestId].Y);
					u16 distNew = distX_New + distY_New;

					if (distNew < (distCurr - histThreshold)) {
						if (teamId == TEAM_1) g_Team1ActivePlayer = closestId;
						else g_Team2ActivePlayer = closestId;
						playerId = closestId;
					}
				}
			}
		}
	}
	
	if (g_Players[playerId].Status == PLAYER_STATUS_POSITIONED) return;

	// -------------------------------------------------------------
	// INPUT ACTION HANDLERS
	// -------------------------------------------------------------
	
	// Prevent accidental double-trigger (Steal -> Pass)
	if (g_ActionCooldown > 0) frameTriggerPressed = false;

    // AUTO-POSSESSION ON TRIGGER (For Loose Balls)
    if (frameTriggerPressed && g_Ball.PossessionPlayerId == NO_VALUE) {
        i16 dx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
        i16 dy = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
        if (dx > -16 && dx < 16 && dy > -16 && dy < 16) {
             Trampoline_VOID_P1(2,PutBallOnPlayerFeet,playerId);
        }
    }

	if(g_Ball.PossessionPlayerId==playerId){
		
		// If recovering from tackle/action, do not update movement/animation
		// if (g_ActionCooldown > 0) return; // DISABLED: Blocking passes unintentionally

		if (frameTriggerPressed) {

			// 1. SHOOT CHECK
			// Only allow shots during actual gameplay
			if (g_MatchStatus == MATCH_IN_ACTION) {
				// Prevent shooting if cooldown is active
				if (g_ActionCooldown > 0) {
					// Do nothing (block shot)
				} else {
					bool isShooting = false;
					u8 checkDir = direction;
				
				// Fallback: If input is neutral (e.g. stopped), use player's current facing
				// However, since facing is cleared on stop, we rely on input primarily. 
				// If the user effectively pressed direction+trigger, 'direction' is valid.
				
				u16 plY = g_Players[playerId].Y;
				u16 plX = g_Players[playerId].X;

				if (teamId == TEAM_1) { // Attacking UP (Towards Top)
					// Shooting Zone: Up to 120 pixels from goal line
					if (plY >= FIELD_BOUND_Y_TOP && plY <= (FIELD_BOUND_Y_TOP + 120)) { 
						if (checkDir == DIRECTION_UP || checkDir == DIRECTION_UP_LEFT || checkDir == DIRECTION_UP_RIGHT) {
							
							// ANGLE CONSTRAINT (Near Goal Line < 20px)
							bool allowed = true;
							if (plY < (FIELD_BOUND_Y_TOP + 20)) {
								if (plX < (GOAL_X_MIN - 5) || plX > (GOAL_X_MAX + 5)) allowed = false;
							}
							
							if (allowed) {
								isShooting = true;
								Trampoline_VOID_16_P2(4,PerformShot,g_ShotCursorX, FIELD_BOUND_Y_TOP - 40);
							}
						}
					}
				} else { // Attacking DOWN (Towards Bottom)
					// Shooting Zone: Up to 120 pixels from goal line
					if (plY <= FIELD_BOUND_Y_BOTTOM && plY >= (FIELD_BOUND_Y_BOTTOM - 120)) { 
						if (checkDir == DIRECTION_DOWN || checkDir == DIRECTION_DOWN_LEFT || checkDir == DIRECTION_DOWN_RIGHT) {
							
							// ANGLE CONSTRAINT
							bool allowed = true;
							if (plY > (FIELD_BOUND_Y_BOTTOM - 20)) {
								if (plX < (GOAL_X_MIN - 5) || plX > (GOAL_X_MAX + 5)) allowed = false;
							}

							if (allowed) {
								isShooting = true;
								Trampoline_VOID_16_P2(4,PerformShot,g_ShotCursorX, FIELD_BOUND_Y_BOTTOM + 40);
							}
						}
					}
				}

				if (isShooting) {
					if (g_ShootCooldown > 0) return; // Prevent shooting if cooldown active
					g_ActionCooldown = 20;
					return;
				}
                } // Close cooldown check else
			}
	
			// 2. PASS LOGIC
			// If not shooting, always try to pass if Trigger is pressed.
			
			// UPDATE DIRECTION FOR ACCURATE TARGETING
			// Ensure the targeting cone uses the current input direction, not the old facing
			if(direction != DIRECTION_NONE){
				g_Players[playerId].Direction = direction;
			}

			// Always recalculate best target when trigger is pressed
			g_PassTargetPlayer = Trampoline_U8_P1(4,GetBestPassTarget,playerId);
			
			if (g_PassTargetPlayer != NO_VALUE) {
				// Execute Pass
				Trampoline_VOID_P1(2,PerformPass,g_PassTargetPlayer);
				// Consume trigger event to avoid repeated calls
				frameTriggerPressed = false;
				return; 
			}
		}

		if((g_FrameCounter % 3)!=0){ 
			return;
		}

		if(g_Ball.KickMoveState==NO_VALUE){
			g_Ball.KickMoveState=0;
		}

		u8 moveDir = direction;
		if(g_Ball.KickMoveState != 0){
			moveDir = g_Players[playerId].Direction;
		}

		if(moveDir==DIRECTION_NONE){
			g_Players[playerId].Status=PLAYER_STATUS_POSITIONED;
			Trampoline_VOID_P1(2,PutBallOnPlayerFeet,playerId);
			if(g_Players[playerId].PreviousDirection!=DIRECTION_NONE){
				g_Players[playerId].PatternId=GetNoMovingPlayerPatternId(g_Players[playerId].PreviousDirection);
			}
			g_Ball.KickMoveState=0;
		}
		else{
			// Offset di base per la palla (distanza "attaccata" ai piedi) per ogni direzione
			// Indicizzati: NONE, UP, UP_RIGHT, RIGHT, DOWN_RIGHT, DOWN, DOWN_LEFT, LEFT, UP_LEFT
			// Modifica questi valori per aggiustare la posizione "zero" della palla
			const u8 BallBaseDistX[] = { 0, 0, 4, 6, 4, 0, 4, 6, 4 };
			const u8 BallBaseDistY[] = { 0, 6, 4, 0, 4, 6, 4, 0, 4 };
			
			// Correzione fine posizione palla quando ferma (per allineamento perfetto ai piedi/sprite)
			// Queste correzioni vengono applicate anche durante il movimento per mantenere la palla all'altezza corretta
			// Indicizzati: NONE, UP, UP_RIGHT, RIGHT, DOWN_RIGHT, DOWN, DOWN_LEFT, LEFT, UP_LEFT
			
			// DOWN_RIGHT: index 4 -> X+2, Y+2 (laterale dx e basso)
			// DOWN_LEFT: index 6 -> X-2 (ma i valori sono di correzione assoluta per l'offset, quindi se voglio allontanare 
			//                       dal corpo in X, e la formula usa X - distX, devo AUMENTARE distX o modificare BallAlignCorrectX negativamente?)
			// 
			// Formula LEFT/DOWN_LEFT: X = PlayerX - distX + BallAlignCorrectX
			// Se voglio la palla pi? a sinistra (distante dal corpo), devo diminuire X, quindi BallAlignCorrectX negativo.
			//
			// Formula RIGHT/DOWN_RIGHT: X = PlayerX + distX + BallAlignCorrectX
			// Se voglio la palla pi? a destra (distante dal corpo), devo aumentare X, quindi BallAlignCorrectX positivo.
			//
			// DOWN_RIGHT (4): +2px X, +2px Y.  => BallAlignCorrectX[4] = 2, BallAlignCorrectY[4] = 2
			// DOWN_LEFT (6): -2px X, +2px Y. => BallAlignCorrectX[6] = -2, BallAlignCorrectY[6] = 2

			const i8 BallAlignCorrectX[] = { 0, 0, 0, 0, 2, 0, -2, 0, 0 };
			const i8 BallAlignCorrectY[] = { 0, 0, 0, 8, 2, -2, 2, 8, 0 };

			const u8 DribbleAnimOffsets[] = {5, 4, 2, 0};
			const u8 DribbleAnimOffsetsDiag[] = {3, 3, 1, 0};
			
			u8 animStep = g_Ball.KickMoveState;
			u8 diagStep = (animStep % 2) ? 1 : 2;

			u8 currentOffset = DribbleAnimOffsets[animStep];
			u8 currentOffsetDiag = DribbleAnimOffsetsDiag[animStep];

			u8 distX = BallBaseDistX[moveDir] + ((moveDir==DIRECTION_UP || moveDir==DIRECTION_DOWN) ? 0 : (moveDir == DIRECTION_LEFT || moveDir == DIRECTION_RIGHT ? currentOffset : currentOffsetDiag));
			u8 distY = BallBaseDistY[moveDir] + ((moveDir==DIRECTION_LEFT || moveDir==DIRECTION_RIGHT) ? 0 : (moveDir == DIRECTION_UP || moveDir == DIRECTION_DOWN ? currentOffset : currentOffsetDiag));

			switch(moveDir){
				case DIRECTION_UP:
					g_Players[playerId].Y -= 2;
					g_Ball.Y = g_Players[playerId].Y - distY + BallAlignCorrectY[moveDir];
					g_Ball.X = g_Players[playerId].X + BallAlignCorrectX[moveDir];
					break;
				case DIRECTION_DOWN:
					g_Players[playerId].Y += 2;
					g_Ball.Y = g_Players[playerId].Y + distY + BallAlignCorrectY[moveDir]+5;
					g_Ball.X = g_Players[playerId].X + BallAlignCorrectX[moveDir];
					break;
				case DIRECTION_LEFT:
					g_Players[playerId].X -= 2;
					g_Ball.X = g_Players[playerId].X - distX + BallAlignCorrectX[moveDir];
					g_Ball.Y = g_Players[playerId].Y + BallAlignCorrectY[moveDir]-4;
					break;
				case DIRECTION_RIGHT:
					g_Players[playerId].X += 2;
					g_Ball.X = g_Players[playerId].X + distX + BallAlignCorrectX[moveDir];
					g_Ball.Y = g_Players[playerId].Y + BallAlignCorrectY[moveDir]-4;
					break;
				case DIRECTION_UP_RIGHT:
					g_Players[playerId].Y -= diagStep;
					g_Players[playerId].X += diagStep;
					g_Ball.Y = g_Players[playerId].Y - distY + BallAlignCorrectY[moveDir];
					g_Ball.X = g_Players[playerId].X + distX + BallAlignCorrectX[moveDir];
					break;
				case DIRECTION_UP_LEFT:
					g_Players[playerId].Y -= diagStep;
					g_Players[playerId].X -= diagStep;
					g_Ball.Y = g_Players[playerId].Y - distY + BallAlignCorrectY[moveDir];
					g_Ball.X = g_Players[playerId].X - distX + BallAlignCorrectX[moveDir];
					break;
				case DIRECTION_DOWN_RIGHT:
					g_Players[playerId].Y += diagStep;
					g_Players[playerId].X += diagStep;
					g_Ball.Y = g_Players[playerId].Y + distY + BallAlignCorrectY[moveDir];
					g_Ball.X = g_Players[playerId].X + distX + BallAlignCorrectX[moveDir];
					break;
				case DIRECTION_DOWN_LEFT:
					g_Players[playerId].Y += diagStep;
					g_Players[playerId].X -= diagStep;
					g_Ball.Y = g_Players[playerId].Y + distY + BallAlignCorrectY[moveDir];
					g_Ball.X = g_Players[playerId].X - distX + BallAlignCorrectX[moveDir];
					break;
			}
			g_Players[playerId].TargetY=g_Players[playerId].Y;
			g_Players[playerId].TargetX=g_Players[playerId].X;
			g_Players[playerId].Status=PLAYER_STATUS_HAS_BALL; 
			g_Players[playerId].Direction=moveDir;
			
			g_Players[playerId].PatternId=Trampoline_U8_P1(2,GetNoMovingPlayerPatternId,g_Players[playerId].PreviousDirection);
			g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
			
			g_Ball.Direction = moveDir;

			g_Ball.KickMoveState++;
			if(g_Ball.KickMoveState>3){
				g_Ball.KickMoveState=0;
			}
            if(g_Ball.KickMoveState==1) PlayAyFx(AYFX_BALL);
		}
	}
	else{
		// 2. DEFENSE ACTION: TACKLE / STEAL
		// If I don't have the ball, but I'm close to it (or the opponent who has it)
		if (frameTriggerPressed) {
			i16 dx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
			i16 dy = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
			
			// Hitbox for tackle: 16x16 pixels approx
			if (dx > -16 && dx < 16 && dy > -16 && dy < 16) {
				
				// SLIDE TACKLE 'ALWAYS' LOGIC
                // Select pose based on relative position (Quadrant)
                u8 slidePose = 0;
                
                // dx = Player.X - Ball.X
                // dy = Player.Y - Ball.Y
                
                if (dy < 0) {
                    // Player is ABOVE Ball (Up)
                    if (dx < 0) slidePose = PLAYER_POSE_TACKLE_FROM_UP_LEFT;    // UP-LEFT -> Slides towards Bottom-Right?
                    else        slidePose = PLAYER_POSE_TACKLE_FROM_UP_RIGHT;   // UP-RIGHT -> Slides towards Bottom-Left?
                } else {
                    // Player is BELOW Ball (Down)
                    if (dx < 0) slidePose = PLAYER_POSE_TACKLE_FROM_DOWN_LEFT;  // DOWN-LEFT -> Slides towards Top-Right?
                    else        slidePose = PLAYER_POSE_TACKLE_FROM_DOWN_RIGHT; // DOWN-RIGHT -> Slides towards Top-Left?
                }

                if (slidePose != 0) {
					g_Players[playerId].PatternId = slidePose;
				}

				// Steal the ball!
				Trampoline_VOID_P1(2,PutBallOnPlayerFeet,playerId);
				
				if (slidePose != 0) {
					g_Players[playerId].Status = PLAYER_STATUS_POSITIONED; // Lock visual (Override HAS_BALL)
				}
				
				g_ActionCooldown = 15; // Set 15 frames cooldown to avoid immediate pass
				return;
			}
		}
		
		if((g_FrameCounter % 3)!=0){ 
			return;
		}

		static const i8 k_MoveDX[] = { 0, 0, 2, 2, 2, 0, -2, -2, -2 };
		static const i8 k_MoveDY[] = { 0, -2, -2, 0, 2, 2, 2, 0, -2 };

		if (direction <= 8) {
			g_Players[playerId].X += k_MoveDX[direction];
			g_Players[playerId].Y += k_MoveDY[direction];
		}

		// Field Boundaries Clamp
		if(g_Players[playerId].Y < FIELD_BOUND_Y_TOP) g_Players[playerId].Y = FIELD_BOUND_Y_TOP;
		if(g_Players[playerId].Y > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].Y = FIELD_BOUND_Y_BOTTOM;
		
		g_Players[playerId].TargetY=g_Players[playerId].Y;
		g_Players[playerId].TargetX=g_Players[playerId].X;
		if(direction==DIRECTION_NONE){
			g_Players[playerId].Status=PLAYER_STATUS_POSITIONED;
			if(g_Players[playerId].PreviousDirection!=DIRECTION_NONE){
				g_Players[playerId].PatternId=Trampoline_U8_P1(2,GetNoMovingPlayerPatternId,g_Players[playerId].PreviousDirection);
			}
			
		}
		else{
			g_Players[playerId].Status=PLAYER_STATUS_NONE;
		}
		
		g_Players[playerId].Direction=direction;
		g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
	}

	
	
}
void CornerKick(u8 teamId){
	// Placeholder for Corner Kick Logic
	V9990_PrintLayerAStringAtPos(10,12,"CORNER KICK");
    PlayPcm(PCM_CORNERKICK);
	g_MatchStatus=MATCH_BEFORE_CORNER_KICK;
	g_RestartKickTeamId = teamId;
	g_CornerKickTargetId = NO_VALUE;
	g_Timer = 0;
	
    // Detect side based on Ball X
    if (g_Ball.X < FIELD_POS_X_CENTER) g_CornerKickSide = CORNER_SIDE_LEFT;
    else g_CornerKickSide = CORNER_SIDE_RIGHT;
    
    // Position Players
    u8 kickerId = NO_VALUE;
    // Find kick spot
    u16 kickX = (g_CornerKickSide == CORNER_SIDE_LEFT) ? FIELD_BOUND_X_LEFT : FIELD_BOUND_X_RIGHT;
    u16 kickY = (teamId == TEAM_1) ? FIELD_BOUND_Y_TOP : FIELD_BOUND_Y_BOTTOM;

    // Force Camera Scroll to the Corner Zone
    if (teamId == TEAM_1) g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
    else g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
    
    // Pick Kicker (Attacking Striker on the Ball Side)
    // NOTE: If Left Corner, we pick Left Striker to kick.
    if (g_CornerKickSide == CORNER_SIDE_LEFT) kickerId = Trampoline_U8_P2(2,GetPlayerIdByRole,teamId, PLAYER_ROLE_LEFT_STRIKER);
    else kickerId = Trampoline_U8_P2(2,GetPlayerIdByRole,teamId, PLAYER_ROLE_RIGHT_STRIKER);
    
    // Reset Possession (Ball sits at flag until player arrives)
    g_Ball.PossessionPlayerId = NO_VALUE; 
    Trampoline_VOID_P1(2,SetPlayerBallPossession,NO_VALUE);
    if(teamId == TEAM_1) g_Team1ActivePlayer = kickerId; // Ensure kicker is selected active
    else g_Team2ActivePlayer = kickerId;
    
    // Position Ball with Offsets for visibility
    // Index: 0=T1_L, 1=T1_R, 2=T2_L, 3=T2_R
    // u8 cornerIdx = (teamId == TEAM_1 ? 0 : 2) + g_CornerKickSide;
    // const i8 ballOffsetX[4] = { 0, 0, 0, -30 };
    // const i8 ballOffsetY[4] = { 0, 0, 0, -5 };
    
    i8 offX = 0; i8 offY = 0;
    if (teamId == TEAM_2 && g_CornerKickSide == CORNER_SIDE_RIGHT) {
         offX = -30;
         offY = -5;
    }

    g_Ball.X = kickX + offX;
    g_Ball.Y = kickY + offY;
    g_Ball.PreviousY = g_Ball.Y;
    
    // DEFINE COORDINATES RELATIVE TO ATTACK DIRECTION
    // Team 1 attacks UP (Goal Y ~ 50). Team 2 attacks DOWN (Goal Y ~ 430).
    bool attackingUp = (teamId == TEAM_1);
    
    // Y Coordinates for Positioning
    u16 yGoalLine      = (attackingUp) ? FIELD_BOUND_Y_TOP : FIELD_BOUND_Y_BOTTOM;
    u16 yBoxInside     = (attackingUp) ? (FIELD_BOUND_Y_TOP + 40) : (FIELD_BOUND_Y_BOTTOM - 40);
    u16 yBoxOutside    = (attackingUp) ? (FIELD_BOUND_Y_TOP + 90) : (FIELD_BOUND_Y_BOTTOM - 90);
    u16 yMidfieldAdv   = (attackingUp) ? (FIELD_BOUND_Y_TOP + 160) : (FIELD_BOUND_Y_BOTTOM - 160);
    u16 yMidfield      = FIELD_POS_Y_CENTER;
    u16 ySafety        = (attackingUp) ? (FIELD_BOUND_Y_BOTTOM - 100) : (FIELD_BOUND_Y_TOP + 100);

    for(u8 i=0; i<14; i++) {
        g_Players[i].Status = PLAYER_STATUS_NONE;
        g_Players[i].TargetX = g_Players[i].X;
        g_Players[i].TargetY = g_Players[i].Y;
        
        u8 role = g_Players[i].Role;
        bool isAttacker = (g_Players[i].TeamId == teamId);
        
        // Kicker
        if (i == kickerId) {
             g_Players[i].TargetX = kickX;
             g_Players[i].TargetY = kickY;
             continue;
        } 
        
        if (isAttacker) {
             // --- ATTACKING TEAM ---
             if (role == PLAYER_ROLE_GOALKEEPER) {
                  // Own GK stays back
                  g_Players[i].TargetX = FIELD_POS_X_CENTER;
                  g_Players[i].TargetY = (attackingUp) ? FIELD_BOUND_Y_BOTTOM - 20 : FIELD_BOUND_Y_TOP + 20;
             }
             else if (role == PLAYER_ROLE_LEFT_DEFENDER || role == PLAYER_ROLE_RIGHT_DEFENDER) {
                  if (role == PLAYER_ROLE_LEFT_DEFENDER) {
                      // Defender 1: Advanced Midfield
                       g_Players[i].TargetX = FIELD_POS_X_CENTER - 30;
                       g_Players[i].TargetY = yMidfieldAdv;
                  } else {
                       // Defender 2: Safety / Defense
                       g_Players[i].TargetX = FIELD_POS_X_CENTER;
                       g_Players[i].TargetY = ySafety;
                  }
             }
             else if (role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
                  if (role == PLAYER_ROLE_LEFT_HALFFIELDER) {
                       // Halffielder 1: Outside Box (Vertex Left/Center)
                       g_Players[i].TargetX = FIELD_POS_X_CENTER - 50; 
                       g_Players[i].TargetY = yBoxOutside;
                  } else {
                       // Halffielder 2: Advanced Midfield (Center/Right)
                       g_Players[i].TargetX = FIELD_POS_X_CENTER + 30;
                       g_Players[i].TargetY = yMidfieldAdv;
                  }
             }
             else { 
                  // Strikers (The one not kicking)
                  // "Outside Box (Vertex)"
                  g_Players[i].TargetX = FIELD_POS_X_CENTER + 50;
                  g_Players[i].TargetY = yBoxOutside;
             }
        } 
        else {
             // --- DEFENDING TEAM ---
             if (role == PLAYER_ROLE_GOALKEEPER) {
                  // Defending GK in goal
                  g_Players[i].TargetX = FIELD_POS_X_CENTER;
                  g_Players[i].TargetY = (attackingUp) ? FIELD_POS_Y_TEAM2_GOALKEEPER : FIELD_POS_Y_TEAM1_GOALKEEPER;
             }
             else if (role == PLAYER_ROLE_LEFT_DEFENDER || role == PLAYER_ROLE_RIGHT_DEFENDER) {
                  // Defenders: INSIDE BOX
                  g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_DEFENDER) ? FIELD_POS_X_CENTER - 20 : FIELD_POS_X_CENTER + 20;
                  g_Players[i].TargetY = yBoxInside;
             }
             else if (role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
                  // Halffielders: JUST OUTSIDE BOX (Marking distance)
                  g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_HALFFIELDER) ? FIELD_POS_X_CENTER - 40 : FIELD_POS_X_CENTER + 40;
                  g_Players[i].TargetY = yBoxOutside;
             }
             else {
                  // Strikers: NEAR MIDFIELD (Counter)
                  g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_STRIKER) ? FIELD_POS_X_LEFT + 20 : FIELD_POS_X_RIGHT - 20;
                  g_Players[i].TargetY = yMidfield;
             }
        }
    }
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
