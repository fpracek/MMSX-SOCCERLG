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
#include "soccerlg_rawdef.h"
#include "vgm/vgm_player.h"

// -----------------
// *** FUNCTIONS ***
// -----------------

// Check joystick trigger pression
bool IsTeamJoystickTriggerPressed(){		
		u8 joyStat = Joystick_Read(JOY_PORT_1);
		if (IS_JOY_PRESSED(joyStat, JOY_INPUT_TRIGGER_A))
		{
			return true;
		}
		if(Keyboard_IsKeyPressed(KEY_SPACE))
		{
			return true;
		}
	return FALSE;
}

// +++ Get joystick status +++
u8 GetJoystickDirection(){
	u8 dir = Joystick_GetDirection(JOY_PORT_1);
	u8 retValue=DIRECTION_NONE;
	switch (dir){
		case JOY_INPUT_DIR_UP:
			retValue=DIRECTION_UP;
			break;
		case JOY_INPUT_DIR_DOWN:
			retValue=DIRECTION_DOWN;
			break;
		case JOY_INPUT_DIR_LEFT:
			retValue=DIRECTION_LEFT;
			break;
		case JOY_INPUT_DIR_RIGHT:
			retValue=DIRECTION_RIGHT;
			break;
		case JOY_INPUT_DIR_UP_RIGHT:
			retValue=DIRECTION_UP_RIGHT;
			break;
		case JOY_INPUT_DIR_UP_LEFT:
			retValue=DIRECTION_UP_LEFT;
			break;
		case JOY_INPUT_DIR_DOWN_RIGHT:
			retValue=DIRECTION_DOWN_RIGHT;
			break;
		case JOY_INPUT_DIR_DOWN_LEFT:
			retValue=DIRECTION_DOWN_LEFT;
			break;
	}
	if(retValue==DIRECTION_NONE){
		if(Keyboard_IsKeyPressed(KEY_LEFT) && Keyboard_IsKeyPressed(KEY_UP))
		{
			retValue=DIRECTION_UP_LEFT;
		}
		if(Keyboard_IsKeyPressed(KEY_LEFT) && Keyboard_IsKeyPressed(KEY_DOWN))
		{
			retValue=DIRECTION_DOWN_LEFT;
		}
		if(Keyboard_IsKeyPressed(KEY_RIGHT) && Keyboard_IsKeyPressed(KEY_DOWN))
		{
			retValue=DIRECTION_DOWN_RIGHT;
		}
		if(Keyboard_IsKeyPressed(KEY_RIGHT) && Keyboard_IsKeyPressed(KEY_UP))
		{
			retValue=DIRECTION_UP_RIGHT;
		}		
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_LEFT))
		{
			retValue=DIRECTION_LEFT;
		}
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_RIGHT))
		{
			retValue=DIRECTION_RIGHT;
		}
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_UP))
		{
			retValue=DIRECTION_UP;
		}
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_DOWN))
		{
			retValue=DIRECTION_DOWN;
		}
	}
	return retValue;
}

// +++ Variables initialization +++
void InitVariables(){
    g_ShowButtonsInfo=true;
	// Initialize Ball State
	g_Ball.PossessionPlayerId = NO_VALUE;
	g_Ball.PassTargetPlayerId = NO_VALUE;
	g_Ball.ShotActive = 0;
	g_Ball.LastTouchTeamId = NO_VALUE;
	g_Ball.ComingFromRestart = 0;
}

// +++ Load presentation image +++
void LoadPresentation(){
    V9_SetScreenMode(V9_MODE_B1);
    V9_SetDisplayEnable(FALSE);
    V9_SetColorMode(V9_COLOR_BD8);
	const u8 colorBlack[3] = { 0, 0, 0 };
	V9_SetPaletteEntry(0, colorBlack);    
	V9_SetBackgroundColor(0);

	V9990_LoadImagePresentationData(); 

	
    g_MatchStatus=MATCH_PRESENTATION;
    g_Timer=0;
    V9_SetDisplayEnable(TRUE);
	V9_SetInterruptLine(71);
    V9_SetInterrupt(V9_INT_VBLANK);
    while (g_Timer!=200)
    {
        
    }
    g_MatchStatus=MATCH_NOT_STARTED;
   //////// V9_SetInterrupt(V9_INT_NONE);
    V9_SetDisplayEnable(FALSE);
    
}

// +++ Scrolling Tick +++
void TickGameFieldScrolling(){
	
    switch (g_FieldScrollingActionInProgress) {
    case FIELD_NORTH_ZONE:
        g_FieldCurrentYPosition = g_FieldCurrentYPosition - g_FieldScrollSpeed;
        if (g_FieldCurrentYPosition < 0) {
            g_FieldCurrentYPosition = 1;
            g_FieldScrollingActionInProgress = NO_VALUE;
            g_ActiveFieldZone = FIELD_NORTH_ZONE;
        }
        break;
    case FIELD_CENTRAL_ZONE:
        if (g_FieldCurrentYPosition != 136) {
            if (g_FieldCurrentYPosition > FIELD_CENTRAL_Y) {
                g_FieldCurrentYPosition = g_FieldCurrentYPosition - g_FieldScrollSpeed;
                if(g_FieldCurrentYPosition < 136) g_FieldCurrentYPosition = 136;
            }
            else {
                g_FieldCurrentYPosition = g_FieldCurrentYPosition + g_FieldScrollSpeed;
                if(g_FieldCurrentYPosition > 136) g_FieldCurrentYPosition = 136;
            }

        }
        else {
            g_FieldScrollingActionInProgress = NO_VALUE;
            g_ActiveFieldZone = FIELD_CENTRAL_ZONE;
        }
        break;
    case FIELD_SOUTH_ZONE:
        g_FieldCurrentYPosition = g_FieldCurrentYPosition + g_FieldScrollSpeed;
        if (g_FieldCurrentYPosition >= FIELD_BOTTOM_Y) {
            g_ActiveFieldZone = FIELD_SOUTH_ZONE;
            g_FieldScrollingActionInProgress = NO_VALUE;
        }
        break;
    }
    V9_SetScrollingBY(g_FieldCurrentYPosition);
    for(u8 i=0;i<6;i++){
        Trampoline_VOID_P1(3,PutPonPonGirlSprite,i);
    }
}

// +++ Main soubroutine +++
void MainSub(){
    
    DEBUG_INIT();
	
    InitVariables();

	V9_SetPort(V9_P15, 0);

	VDP_SetMode(VDP_MODE_SCREEN0);
	VDP_EnableVBlank(FALSE);
	VDP_ClearVRAM();
	
	
	LoadMsxVdpFonts();

	Print_SetColor(15, 1);
	Print_SetPosition(0, 0);
	Print_DrawText("Soccer League - 2026 Fausto Pracek");
	Print_SetPosition(0, 1);
	Print_DrawText("fpracek@gmail.com");
	
	const c8* str = "V9990 not found!";
	bool v9990IsFound=V9_Detect();

	if (v9990IsFound){
		str = "V9990 found!";
		Print_SetPosition(0, 7);
		Print_DrawText("The game is running on V9990 monitor.");
	}
	Print_SetPosition(0, 3);
	Print_DrawText(str);
	if(!v9990IsFound){
		for(;;);
	}
	
    V9_SetInterrupt(V9_INT_NONE);

	LoadPresentation();
	Trampoline_VOID(3,V9990_InitMenuLayers);
	PlayVGM(VGM_MENU);
	Trampoline_VOID(4,ShowMenu);
	VGM_Stop();
	MainGameLoop();
	V9_SetPort(V9_P15, 0x10);	
} 
// +++ Main game loop +++
void MainGameLoop(){
	u8 TickAiPlayerId=0;
	u8 AiTickSpeed=0;

	for(;;){
		V9990_WaitSynch();
		if(g_PcmStartPlaying){
			g_PcmStartPlaying=false;
			PlayPcm(g_PmcSoundPlaying);
		}

		if(g_MatchStatus==MATCH_NOT_STARTED && g_FieldScrollingActionInProgress==NO_VALUE && g_ActiveFieldZone==FIELD_CENTRAL_ZONE){
			g_MatchStatus=MATCH_BEFORE_KICK_OFF;
			for(u8 i=0;i<15;i++){
				Trampoline_VOID_P1(4,SetPlayerTarget,i);
			}
		}
		
        TickCornerKick(); 
		
        if(g_MatchStatus == MATCH_BEFORE_GOAL_KICK){
            TickGoalKick();
        }
        
        TickThrowIn();
		
        Trampoline_VOID(3,TickPonPonGirlsAnimation);
		Trampoline_VOID(3,TickPlayerToOwnTarget);
		
        
        if (g_SoundRequest != NO_VALUE) {
            PlayPcm(g_SoundRequest);
            g_SoundRequest = NO_VALUE;
        }
		
		Trampoline_VOID(3,TickGoalCelebration);
		/*
		TickActiveFieldZone();
		if(g_FieldScrollingActionInProgress==NO_VALUE){
            // AI runs during ACTION and GK_BALL
            if(g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
                // Referee AI
                if(AiTickSpeed >= 2){ // Speed up AI cycle (was 5)
					AiTickSpeed=0;
                    SET_BANK_SEGMENT(2,22);
					TickAI(REFEREE);
					TickAI(TickAiPlayerId);
                    SET_BANK_SEGMENT(2,1);
					TickAiPlayerId++;
					if(TickAiPlayerId==14){ // Only iterate 0-13 (Players)
						TickAiPlayerId=0;
					}
					
					// PRIORITY: Always run AI for Ball Carrier every cycle (if CPU)
					if (g_Ball.PossessionPlayerId != NO_VALUE && g_Ball.PossessionPlayerId < 14) {
						// Don't run twice if we just ran it in the loop
						if (g_Ball.PossessionPlayerId != TickAiPlayerId) {
                            SET_BANK_SEGMENT(2,22);
							TickAI(g_Ball.PossessionPlayerId);
                            SET_BANK_SEGMENT(2,1);
						}
					}
				}
				
            }
		}
		
		EnforcePenaltyBoxRestriction();

		UpdateSpritesPositions();
		TickShotCursor();
		TickUpdateTime();
		TickShowKickOff();
		if(g_FieldScrollingActionInProgress==NO_VALUE){
			TickBallCollision();
			TickBallFlying();
			UpdatePassTarget();
            TickGoalkeeperAnimation();
		}
		
		TickCheckBallBoundaries();
		TickTeamJoystick(TEAM_1,GetJoystick1Direction());
		if(g_GameWith2Players){
			TickTeamJoystick(TEAM_2,GetJoystick2Direction());
		}
		
		AiTickSpeed++;
		// Decrement Cooldown
		if (g_ActionCooldown > 0) {
			g_ActionCooldown--;
		} else {
			// Unlock Human Players poses if cooldown expired
            if (g_Team1ActivePlayer != NO_VALUE && g_Players[g_Team1ActivePlayer].Status == PLAYER_STATUS_POSITIONED) 
                 g_Players[g_Team1ActivePlayer].Status = PLAYER_STATUS_NONE;
            if (g_GameWith2Players && g_Team2ActivePlayer != NO_VALUE && g_Players[g_Team2ActivePlayer].Status == PLAYER_STATUS_POSITIONED)
                 g_Players[g_Team2ActivePlayer].Status = PLAYER_STATUS_NONE;
		}
		
		if (g_ShootCooldown > 0) {
			g_ShootCooldown--;
		}
		*/
	}
}

// +++ Get player id by role +++
u8 GetPlayerIdByRole(u8 teamId, u8 role){
	u8 playerId=NO_VALUE;
	for(u8 i=0;i<14;i++){
		if(g_Players[i].Role==role && g_Players[i].TeamId==teamId){
			playerId=i;
			break;
		}
	}
	return playerId;
}
// +++ Get closes player to ball +++
u8 GetClosestPlayerToBall(u8 teamId, u8 excludePlayerId){
	u8 closestId = NO_VALUE;
	u16 minDist = 0xFFFF;
	
	for(u8 i=0;i<14;i++){
		if(g_Players[i].TeamId != teamId) continue;
		if(i == excludePlayerId) continue;

		u16 distX = (g_Players[i].X > g_Ball.X) ? (g_Players[i].X - g_Ball.X) : (g_Ball.X - g_Players[i].X);
		u16 distY = (g_Players[i].Y > g_Ball.Y) ? (g_Players[i].Y - g_Ball.Y) : (g_Ball.Y - g_Players[i].Y);
		
		u16 totalDist = distX + distY;
		
		if(totalDist < minDist){
			minDist = totalDist;
			closestId = i;
		}
	}
	return closestId;
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
// +++ Put ball on player feet +++
void PutBallOnPlayerFeet(u8 playerId){
	
	if (g_Ball.PossessionPlayerId != playerId) {
		g_Ball.PossessionPlayerId=playerId;
		g_Ball.LastTouchTeamId=g_Players[playerId].TeamId;
		g_Ball.PassTargetPlayerId = NO_VALUE; // Clear any pending pass
		g_Ball.ShotActive = 0; // Clear any pending shot
		SetPlayerBallPossession(g_Ball.PossessionPlayerId);
        
        // Prevent immediate action (Shot/Pass) upon receiving - Reduced to 8 frames for responsiveness
        g_ActionCooldown = 8;
		
		if (g_Ball.ComingFromRestart) {
			g_ShootCooldown = 45; // 0.75s ban on shooting after restart
			g_Ball.ComingFromRestart = 0;
		}
	}

	// Ball base offsets (near feet) for each direction
	// Indexes: NONE, UP, UP_RIGHT, RIGHT, DOWN_RIGHT, DOWN, DOWN_LEFT, LEFT, UP_LEFT
	const u8 BallBaseDistX[] = { 0, 0, 4, 6, 4, 0, 4, 6, 4 };
	const u8 BallBaseDistY[] = { 0, 6, 4, 0, 4, 6, 4, 2, 4 };
	
	const u8 DribbleAnimOffsets[] = {5, 4, 2, 0};
	const u8 DribbleAnimOffsetsDiag[] = {3, 3, 1, 0};
	
	// Posiction correction on ball stopped 
	// Indexes: NONE, UP, UP_RIGHT, RIGHT, DOWN_RIGHT, DOWN, DOWN_LEFT, LEFT, UP_LEFT
	const i8 BallAlignCorrectX[] = { 0, 0, 0, 0, 2, 0, -2, 0, 0 };
	const i8 BallAlignCorrectY[] = { 0, 0, 0, 4, 2, 4, 2, 4, 0 };

	u8 dir = g_Players[playerId].Direction;
	if(dir == DIRECTION_NONE) dir = g_Players[playerId].PreviousDirection; // Fallback se fermo

	// GK Logic: If moving sideways, treat ball position as Front (UP/DOWN)
	u8 calcDir = dir;
	bool isGkSideMove = false;
	if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER && (dir == DIRECTION_LEFT || dir == DIRECTION_RIGHT)) {
		isGkSideMove = true;
		if (g_Players[playerId].TeamId == TEAM_1) calcDir = DIRECTION_UP;
		else calcDir = DIRECTION_DOWN;
	}

	// Use KickMoveState for animation if set
	u8 animStep = g_Ball.KickMoveState;
	if (animStep > 3) animStep = 3; // Default/Reset to 3 (Close) if NO_VALUE (255)

	u8 currentOffset = DribbleAnimOffsets[animStep];
	u8 currentOffsetDiag = DribbleAnimOffsetsDiag[animStep];

	u8 distX = BallBaseDistX[calcDir] + ((calcDir==DIRECTION_UP || calcDir==DIRECTION_DOWN) ? 0 : (calcDir == DIRECTION_LEFT || calcDir == DIRECTION_RIGHT ? currentOffset : currentOffsetDiag));
	u8 distY = BallBaseDistY[calcDir] + ((calcDir==DIRECTION_LEFT || calcDir==DIRECTION_RIGHT) ? 0 : (calcDir == DIRECTION_UP || calcDir == DIRECTION_DOWN ? currentOffset : currentOffsetDiag));

	// Special adjustment: Goalkeepers closer to body (Both Teams)
	if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
		distY = (distY > 2) ? (distY - 2) : distY; // bring ball 2px closer vertically
	}

	i8 extraX = 0;

	switch (calcDir){
		case DIRECTION_UP:
			g_Ball.X=g_Players[playerId].X + BallAlignCorrectX[calcDir] + extraX;
			g_Ball.Y=g_Players[playerId].Y - distY + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_DOWN:
			g_Ball.X=g_Players[playerId].X + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y + distY + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_LEFT:
			g_Ball.X=g_Players[playerId].X - distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_RIGHT:
			g_Ball.X=g_Players[playerId].X + distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_UP_LEFT:
			g_Ball.X=g_Players[playerId].X - distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y - distY + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_UP_RIGHT:
			g_Ball.X=g_Players[playerId].X + distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y - distY + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_DOWN_LEFT:
			g_Ball.X=g_Players[playerId].X - distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y + distY + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_DOWN_RIGHT:
			g_Ball.X=g_Players[playerId].X + distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y + distY + BallAlignCorrectY[calcDir];
			break;
	}
	g_Ball.PreviousY=g_Ball.Y;
	g_Ball.Direction=dir;
}
// Get no moving plaer pattern id +++
u8 GetNoMovingPlayerPatternId(u8 direction){
	u8 patternId=PLAYER_POSE_FRONT_PLAYING; // Default fallback
	switch (direction){
		case DIRECTION_DOWN:
			patternId=PLAYER_POSE_FRONT_PLAYING;
			break;
		case DIRECTION_UP:
			patternId=PLAYER_POSE_BACK_PLAYING;
			break;
		case DIRECTION_LEFT:
			patternId=PLAYER_POSE_LEFT;
			break;
		case DIRECTION_RIGHT:
			patternId=PLAYER_POSE_RIGHT;
			break;
		case DIRECTION_UP_LEFT:
			patternId=PLAYER_POSE_MOVE_UP_LEFT_2;
			break;
		case DIRECTION_UP_RIGHT:
			patternId=PLAYER_POSE_MOVE_UP_RIGHT_1;
			break;
		case DIRECTION_DOWN_LEFT:
			patternId=PLAYER_POSE_MOVE_DOWN_LEFT_1;
			break;
		case DIRECTION_DOWN_RIGHT:
			patternId=PLAYER_POSE_MOVE_DOWN_RIGHT_2;
			break;
        case DIRECTION_NONE:
            // Fallback for NONE - assume facing front or use existing pose if possible, 
            // but here we return a safe pattern (Front)
            patternId=PLAYER_POSE_FRONT_PLAYING;
            break;
	}
	return patternId;
}
// +++ Corner kick +++
void TickCornerKick() {
    if (g_MatchStatus != MATCH_BEFORE_CORNER_KICK) return;

    static u16 s_ForceKickTimer = 0;
    if (g_Timer == 0) s_ForceKickTimer = 0;

    // -------------------------------------------------------------------------
    // 1. DETERMINE KICKER ID (Centralized)
    // -------------------------------------------------------------------------
    u8 kickerId = NO_VALUE;
    if (g_Ball.PossessionPlayerId != NO_VALUE) {
        kickerId = g_Ball.PossessionPlayerId;
    } else {
        if (g_CornerKickSide == CORNER_SIDE_LEFT) kickerId = GetPlayerIdByRole(g_RestartKickTeamId, PLAYER_ROLE_LEFT_STRIKER);
        else kickerId = GetPlayerIdByRole(g_RestartKickTeamId, PLAYER_ROLE_RIGHT_STRIKER);
    }
    
    // Safety check: if Kicker is still NO_VALUE (shouldn't happen), try closest to corner
    if (kickerId == NO_VALUE) {
         kickerId = GetClosestPlayerToBall(g_RestartKickTeamId, NO_VALUE);
    }

    // -------------------------------------------------------------------------
    // 2. SETUP PHASE (0-3 Seconds: Position Players)
    // -------------------------------------------------------------------------
    
    // Check arrival (Kicker)
    bool kickerArrived = false;
    if (kickerId != NO_VALUE) {
         i16 dx = (i16)g_Players[kickerId].X - (i16)g_Players[kickerId].TargetX;
         i16 dy = (i16)g_Players[kickerId].Y - (i16)g_Players[kickerId].TargetY;
         
         if (dx >= -2 && dx <= 2 && dy >= -2 && dy <= 2) {
             kickerArrived = true;
             g_Players[kickerId].X = g_Players[kickerId].TargetX;
             g_Players[kickerId].Y = g_Players[kickerId].TargetY;
             g_Players[kickerId].Status = PLAYER_STATUS_POSITIONED;
             
             if (g_Ball.PossessionPlayerId != kickerId) {
                 SetPlayerBallPossession(kickerId);
                 g_Ball.PossessionPlayerId = kickerId;
                 PutBallOnPlayerFeet(kickerId);
             }
         }
    }
    
    // Check arrival (Teammates)
    bool teammatesArrived = true;
    for(u8 i=0; i<14; i++) {
        if (g_Players[i].TeamId == g_RestartKickTeamId && i != kickerId && g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) {
             // If not positioned, check distance
             if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
                 i16 dx = (i16)g_Players[i].X - (i16)g_Players[i].TargetX;
                 i16 dy = (i16)g_Players[i].Y - (i16)g_Players[i].TargetY;
                 if (dx < -6 || dx > 6 || dy < -6 || dy > 6) {
                     teammatesArrived = false; // Someone is still far away
                 } else {
                     // Force arrival if close
                     g_Players[i].X = g_Players[i].TargetX;
                     g_Players[i].Y = g_Players[i].TargetY;
                     g_Players[i].Status = PLAYER_STATUS_POSITIONED;
                 }
             }
        }
    }

    // Wait until timer finishes AND everyone has arrived
    if (g_Timer < 180 || (kickerId != NO_VALUE && !kickerArrived) || !teammatesArrived) {
        if (g_Timer < 180) g_Timer++;
        
        // ORIENTATION UPDATE
        for(u8 i=0; i<14; i++) {
             // Skip if player is not positioned (running to spot) - except kicker (handled above)
             if (i != kickerId && g_Players[i].Status != PLAYER_STATUS_POSITIONED && 
                 !(g_Players[i].X == g_Players[i].TargetX && g_Players[i].Y == g_Players[i].TargetY)) continue;
             
             u8 lookDir = DIRECTION_NONE;
             
             if (i == kickerId) {
                  // Kicker: Face Pitch
                  if (g_RestartKickTeamId == TEAM_1) lookDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_DOWN_RIGHT : DIRECTION_DOWN_LEFT;
                  else lookDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_UP_RIGHT : DIRECTION_UP_LEFT;
             }
             else if (g_Players[i].TeamId == g_RestartKickTeamId) {
                  // Attackers: Face Goal or Corner
                  if (g_RestartKickTeamId == TEAM_1 && i != kickerId) { 
                      // Team 1 Receivers: Face Corner
                      lookDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_UP_LEFT : DIRECTION_UP_RIGHT;
                  } else {
                      // Others: Face Goal
                      lookDir = (g_RestartKickTeamId == TEAM_1) ? DIRECTION_UP : DIRECTION_DOWN;
                  }
             } else {
                  // Defenders: Face Ball
                  i16 dx = (i16)g_Ball.X - (i16)g_Players[i].X;
                  i16 dy = (i16)g_Ball.Y - (i16)g_Players[i].Y;
                  // Simple logic
                  if (dy < -20) lookDir = (dx > 20) ? DIRECTION_UP_RIGHT : ((dx < -20) ? DIRECTION_UP_LEFT : DIRECTION_UP);
                  else if (dy > 20) lookDir = (dx > 20) ? DIRECTION_DOWN_RIGHT : ((dx < -20) ? DIRECTION_DOWN_LEFT : DIRECTION_DOWN);
                  else lookDir = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
             }
             
             if (lookDir != DIRECTION_NONE) {
                  g_Players[i].Direction = lookDir;
                  g_Players[i].PatternId = GetNoMovingPlayerPatternId(lookDir);
             }
        }
        return; // END SETUP PHASE
    }

    // Move Text Clearing to here: When actually starting the action
    V9990_ClearTextFromLayerA(10, 12, 11);

    // -------------------------------------------------------------------------
    // 3. ACTION PHASE (Movement/Kick)
    // -------------------------------------------------------------------------
    
    // Safety Force Kicker Position (Again)
    if (kickerId != NO_VALUE) {
         g_Players[kickerId].X = g_Players[kickerId].TargetX;
         g_Players[kickerId].Y = g_Players[kickerId].TargetY;
    }
    
    bool isHuman = (g_RestartKickTeamId == TEAM_1 || (g_GameWith2Players && g_RestartKickTeamId == TEAM_2));
    
    // Timeout Logic (4 seconds = 240 frames)
    if (isHuman) s_ForceKickTimer++;

    if (isHuman) {
       
        // --- TEAM 1 HUMAN (North) ---
        u8 candLeft = NO_VALUE;
        u8 candRight = NO_VALUE;
        
        for(u8 c=0; c<14; c++) {
             if (g_Players[c].TeamId == TEAM_1 && c != kickerId && g_Players[c].Role != PLAYER_ROLE_GOALKEEPER) {
                  u8 tx = g_Players[c].TargetX;
                  // Widened ranges to ensure we catch the players even if they are slightly off
                  if (tx >= 40 && tx <= 110) candLeft = c;
                  if (tx >= 130 && tx <= 220) candRight = c;
             }
        }
        if (candLeft == NO_VALUE) candLeft = GetPlayerIdByRole(TEAM_1, PLAYER_ROLE_LEFT_HALFFIELDER);
        if (candRight == NO_VALUE) candRight = GetPlayerIdByRole(TEAM_1, PLAYER_ROLE_RIGHT_HALFFIELDER);
        // Default
        if (g_CornerKickTargetId == NO_VALUE) {
             if (candLeft != NO_VALUE) g_CornerKickTargetId = candLeft;
             else if (candRight != NO_VALUE) g_CornerKickTargetId = candRight; 
        }
        
        // Input
        u8 joyDir = GetJoystickDirection();
        static bool joyMoved = false;
        
        if (joyDir == DIRECTION_LEFT && !joyMoved && candLeft != NO_VALUE) {
            g_CornerKickTargetId = candLeft; joyMoved = true;
        } else if (joyDir == DIRECTION_RIGHT && !joyMoved && candRight != NO_VALUE) {
            g_CornerKickTargetId = candRight; joyMoved = true;
        } else if (joyDir == DIRECTION_NONE) {
            joyMoved = false;
        }
        
        // Correction removed to avoid instability. We trust the selection.
        
        // --- KICKER LOCK RE-ENFORCE ---
        // Re-apply kicker lock here to prevent Input from rotating him
        if (kickerId != NO_VALUE) {
            u8 kDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_DOWN_RIGHT : DIRECTION_DOWN_LEFT;
            g_Players[kickerId].Direction = kDir;
            g_Players[kickerId].PatternId = GetNoMovingPlayerPatternId(kDir);
            g_Players[kickerId].X = g_Players[kickerId].TargetX;
            g_Players[kickerId].Y = g_Players[kickerId].TargetY;
            // Override status so MovePlayer might skip him if he has ball
            g_Players[kickerId].Status = PLAYER_STATUS_POSITIONED; 
        }
        // Trigger
        bool t1Trigger = IsJoystickTriggerPressed();
        static bool t1Latched = false;
        if (g_Timer == 180) t1Latched = true;
        if (!t1Trigger) t1Latched = false;
        
        // Highlight
        if (g_CornerKickTargetId != NO_VALUE) {
            g_Ball.PassTargetPlayerId = g_CornerKickTargetId;
            g_PassTargetPlayer = g_CornerKickTargetId;
        }
        if ((t1Trigger && !t1Latched || s_ForceKickTimer > 240) && g_CornerKickTargetId != NO_VALUE) {
            PerformPass(g_CornerKickTargetId);
            g_MatchStatus = MATCH_IN_ACTION;
            g_CornerKickTargetId = NO_VALUE;
        }
    
    } 
    else {
        // --- CPU LOGIC (Team 2 Standard) ---
        if (g_CornerKickTargetId == NO_VALUE) {
             u8 randomRole = ((g_Timer & 1) == 0) ? PLAYER_ROLE_LEFT_STRIKER : PLAYER_ROLE_RIGHT_STRIKER;
             u8 strikerId = GetPlayerIdByRole(g_RestartKickTeamId, randomRole);
             
             // Ensure we don't pick kicker or invalid
             if (strikerId != NO_VALUE && strikerId != kickerId) {
                 g_CornerKickTargetId = strikerId;
             } else {
                 g_CornerKickTargetId = GetClosestPlayerToBall(g_RestartKickTeamId, kickerId);
             }
        }
        
        if (g_Timer > 200) {
             if (g_CornerKickTargetId == NO_VALUE) g_CornerKickTargetId = GetClosestPlayerToBall(g_RestartKickTeamId, kickerId);
             
             PerformPass(g_CornerKickTargetId);
             g_MatchStatus = MATCH_IN_ACTION; 
             g_CornerKickTargetId = NO_VALUE;
        } else {
            g_Timer++;
        }
    }
}
// +++ Check joystick triggered +++
bool IsJoystickTriggerPressed(){
		u8 joyStat = Joystick_Read(JOY_PORT_1);
		if (IS_JOY_PRESSED(joyStat, JOY_INPUT_TRIGGER_A))
		{
			return TRUE;
		}
		
		if(Keyboard_IsKeyPressed(KEY_SPACE))
		{
			return TRUE;
		}		
	return FALSE;
}
// +++ Perform ball pass +++
void PerformPass(u8 toPlayerId) {
	
	u8 fromId = g_Ball.PossessionPlayerId;
    i16 dx, dy, adx, ady; 
    u8 newDir;

    if (fromId == NO_VALUE) return;
    if (toPlayerId == NO_VALUE) return;

    // Prevent passing TO Goalkeeper
    if (g_Players[toPlayerId].Role == PLAYER_ROLE_GOALKEEPER) return;

    // OFFSIDE CHECK (Prevent Pass)
    // Ignore offside if passer is Goalkeeper
    if (g_Players[fromId].Role != PLAYER_ROLE_GOALKEEPER) {
        if (IsOffside(toPlayerId)) {
            // Prevent pass to offside player
            return;
        }
    }
    
    // TURN PLAYER TOWARDS TARGET
    dx = (i16)g_Players[toPlayerId].X - (i16)g_Players[fromId].X;
    dy = (i16)g_Players[toPlayerId].Y - (i16)g_Players[fromId].Y;
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

    g_Players[fromId].Status = PLAYER_STATUS_POSITIONED; // Lock pose for this frame
    
    // Stop Player Movement (to preserve pose)
    g_Players[fromId].TargetX = g_Players[fromId].X;
    g_Players[fromId].TargetY = g_Players[fromId].Y;

    // Setup Ball for Pass
	SetPlayerBallPossession(NO_VALUE); 
    g_Ball.PossessionPlayerId = NO_VALUE; 
    
	g_Ball.PassTargetPlayerId = toPlayerId;
	g_Ball.ShotActive = 0; // Not a shot

    // GK Pass Fix: Offset ball start to avoid immediate self-collision
    if (g_Players[fromId].Role == PLAYER_ROLE_GOALKEEPER) {
   

        bool applyOffset = true;
        // Disable offset for Goal Kicks / Steals (Ground kicks where RecoilY is 0)
        if (g_GkIsGroundKick) {
            applyOffset = false;
            
            // FORCE RESET BALL POSITION for ground kicks to prevent "dribble" offsets
            // This ensures the ball starts exactly where the GK is holding it (or at feet)
            // without the 30px jump, and without any left/right shift from previous frames.
            // We use the current ball position which is already aligned by PutBallOnPlayerFeet.
            g_Ball.X = g_Ball.X; 
            g_Ball.Y = g_Ball.Y;
        }
        
        // Explicit User Request: Disable offset for Corner/Goal Kicks setup phases
        if (g_MatchStatus == MATCH_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_CORNER_KICK ||
            g_MatchStatus == MATCH_GOAL_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK) {
             applyOffset = false;
        }

       

        if (applyOffset) {
            i8 offX = 0; i8 offY = 0;
            switch (newDir) {
                case DIRECTION_UP:        offY = -30; break;
                case DIRECTION_DOWN:      offY = 30; break;
                case DIRECTION_LEFT:      offX = -30; break;
                case DIRECTION_RIGHT:     offX = 30; break;
                case DIRECTION_UP_LEFT:   offX = -21; offY = -21; break;
                case DIRECTION_UP_RIGHT:  offX = 21; offY = -21; break;
                case DIRECTION_DOWN_LEFT: offX = -21; offY = 21; break;
                case DIRECTION_DOWN_RIGHT:offX = 21; offY = 21; break;
            }
            g_Ball.X += offX;
            g_Ball.Y += offY;

        }
      
    }

    g_Ball.PassStartX = g_Ball.X;
    g_Ball.PassStartY = g_Ball.Y;
        
	// Prevent immediate re-interaction (Steal) and reset dribble state
    g_ActionCooldown = 20;
    g_Ball.KickMoveState = 0;

    dx = (i16)g_Players[toPlayerId].X - (i16)g_Ball.X;
    dy = (i16)g_Players[toPlayerId].Y - (i16)g_Ball.Y;
    g_Ball.PassTotalDist = (u16)((dx<0?-dx:dx) + (dy<0?-dy:dy)); 
}
// +++ Check offside position +++
bool IsOffside(u8 playerId) {
    u8 teamId = g_Players[playerId].TeamId;
    u16 playerY = g_Players[playerId].Y;
    u8 opponentCount = 0;
    u8 i;

    // 1. Halfway Line Check
    if (teamId == TEAM_1) {
        if (playerY >= FIELD_POS_Y_CENTER) return FALSE; // Own half
    } else {
        if (playerY <= FIELD_POS_Y_CENTER) return FALSE; // Own half
    }

    // 2. Ball Position Check (Nearer to goal than ball?)
    // Team 1 attacks UP (Small Y). Nearer means Y < Ball.Y
    if (teamId == TEAM_1) {
        if (playerY >= g_Ball.Y) return FALSE; 
    } else {
        if (playerY <= g_Ball.Y) return FALSE;
    }

    // 3. Second Last Opponent Check
    for (i = 0; i < 14; i++) {
        if (g_Players[i].TeamId == teamId) continue;
        
        // Check if opponent is nearer/equal to goal line than player
        if (teamId == TEAM_1) { // Attacking UP
             if (g_Players[i].Y <= playerY) opponentCount++;
        } else { // Attacking DOWN
             if (g_Players[i].Y >= playerY) opponentCount++;
        }
    }

    if (opponentCount < 2) return TRUE;
    return FALSE;
}
// Goal kick +++
void TickGoalKick() {
    if (g_MatchStatus != MATCH_BEFORE_GOAL_KICK) return;
    
    // Identify GK
    u8 gkId = NO_VALUE;
    if (g_RestartKickTeamId == TEAM_1) gkId = GetPlayerIdByRole(TEAM_1, PLAYER_ROLE_GOALKEEPER);
    else gkId = GetPlayerIdByRole(TEAM_2, PLAYER_ROLE_GOALKEEPER);
    
    if (gkId == NO_VALUE) return; 

    // WAITING PHASE (1 Second) to show ball out of bounds
    if (g_Timer < 60) {
        g_Timer++;
        return;
    }
    g_Ball.Size = 1;
    // Phase 1: Setup (First Frame of Action)
    if (g_Timer == 60) {
        // Coords
        u16 targetX;
        if (g_GoalKickSide == CORNER_SIDE_LEFT) targetX = GK_BOX_X_MIN;
        else targetX = GK_BOX_X_MAX;
        
        u16 ballY;
        if (g_RestartKickTeamId == TEAM_1) { // Bottom Goal
             ballY = GK_BOX_Y_BOTTOM_MIN; 
        } else { // Top Goal
             ballY = GK_BOX_Y_TOP_MAX; 
        }
        
        // Place Ball
        g_Ball.X = targetX;
        g_Ball.Y = ballY;
        g_Ball.PossessionPlayerId = NO_VALUE;
        
        // Set GK Target to RUN START POSITION (Further away for run-up)
        u16 runStartY;
        if (g_RestartKickTeamId == TEAM_1) {
             runStartY = ballY + 32; 
             if(runStartY > FIELD_BOUND_Y_BOTTOM) runStartY = FIELD_BOUND_Y_BOTTOM;
        } else {
             runStartY = ballY - 32;
             if(runStartY < FIELD_BOUND_Y_TOP) runStartY = FIELD_BOUND_Y_TOP;
        }

        g_Players[gkId].TargetX = targetX;
        g_Players[gkId].TargetY = runStartY;
        g_Players[gkId].Status = PLAYER_STATUS_NONE; 
        
        if (g_RestartKickTeamId == TEAM_1) g_Players[gkId].Direction = DIRECTION_UP;
        else g_Players[gkId].Direction = DIRECTION_DOWN;

        if (g_RestartKickTeamId == TEAM_1) Trampoline_VOID_P1(4,ShowFieldZone,FIELD_SOUTH_ZONE);
        else Trampoline_VOID_P1(4,ShowFieldZone,FIELD_NORTH_ZONE);
        
        // Position other players (Tactical Movement)
        for(u8 i=0; i<14; i++){
             if(i == gkId) continue;
             if(g_Players[i].TeamId == REFEREE) continue;
             if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
             
             // Unlock status to allow movement
             g_Players[i].Status = PLAYER_STATUS_NONE;
             
             u16 targetY = g_Players[i].Y;
             u16 targetX = g_Players[i].X;
             
             if (g_RestartKickTeamId == TEAM_1) {
                  // TEAM 1 Kicking (Bottom -> Up)
                  if(g_Players[i].TeamId == TEAM_1) {
                        // Move Upfield
                        targetY = 300; // Midfielders
                        if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 200;
                        if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 350; // Defenders move out of box
                  } else { // Team 2 Defending
                       targetY = 250;
                       if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 320; // Pressing High (but not too close)
                       if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 150;
                  }
             } else {
                  // TEAM 2 Kicking (Top -> Down)
                  if(g_Players[i].TeamId == TEAM_2) {
                        // Move Downfield
                        targetY = 150; 
                        if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 250;
                        if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 120; // Defenders move out of box
                  } else { // Team 1 Defending
                       targetY = 200;
                       if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 160; // Pressing High (but not too close)
                       if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 300;
                  }
             }
             
             // Keep X inside field
             if (targetX < 30) targetX = 30;
             if (targetX > 220) targetX = 220;
             
             g_Players[i].TargetX = targetX;
             g_Players[i].TargetY = targetY;
        }
    }
    
    // Check Arrival
    i16 dx = (i16)g_Players[gkId].X - (i16)g_Players[gkId].TargetX;
    i16 dy = (i16)g_Players[gkId].Y - (i16)g_Players[gkId].TargetY;
    
    bool arrived = (dx >= -4 && dx <= 4 && dy >= -4 && dy <= 4);
    
    if (arrived) {
        g_Players[gkId].X = g_Players[gkId].TargetX;
        g_Players[gkId].Y = g_Players[gkId].TargetY;
        
        if (g_RestartKickTeamId == TEAM_1) g_Players[gkId].Direction = DIRECTION_UP;
        else g_Players[gkId].Direction = DIRECTION_DOWN;
        g_Players[gkId].PatternId = GetNoMovingPlayerPatternId(g_Players[gkId].Direction);
        g_Players[gkId].Status = PLAYER_STATUS_POSITIONED;

        // Run-up Logic
        u16 distY = (g_Players[gkId].Y > g_Ball.Y) ? (g_Players[gkId].Y - g_Ball.Y) : (g_Ball.Y - g_Players[gkId].Y);
        
        if (distY > 16) {
             // At Start Position
             g_Timer++;
             if (g_Timer > 100) {
                 // Start Run
                 u16 kickY;
                 if (g_RestartKickTeamId == TEAM_1) kickY = g_Ball.Y + 6; 
                 else kickY = g_Ball.Y - 6;
                 
                 g_Players[gkId].TargetY = kickY;
                 g_Players[gkId].Status = PLAYER_STATUS_NONE;
             }
        } else {
             // At Kick Position
             g_Timer++;
             if (g_Timer > 110) {
                  V9990_ClearTextFromLayerA(10, 18, 9); 
                  GoalkeeperWithBall(g_RestartKickTeamId, true); 
                  g_GkRecoilY = 0;
             }
        }
    } else {
         // Moving
         if (g_Timer < 100) g_Timer = 61; // Hold at 61 while moving to start
         else g_Timer = 101; // Hold at 101 while moving to ball
    }
}
// +++ Goalkeeper with ball +++
void GoalkeeperWithBall(u8 teamId, bool isSteal) {
    u8 gkId = GetPlayerIdByRole(teamId, PLAYER_ROLE_GOALKEEPER);
    if(gkId == NO_VALUE) return;

    g_GkAnimPlayerId = gkId;
    g_GkAnimTimer = 0;
    
    // Set Pose based on Team
    if (teamId == TEAM_1) {
        g_Players[gkId].PatternId = PLAYER_POSE_TEAM1_GK_BALL_FRONT;
        g_Players[gkId].Direction = DIRECTION_UP; // Face Up (Attack Direction)
    }
    else {
        g_Players[gkId].PatternId = PLAYER_POSE_FRONT; // Team 2 GK plays like a player (feet)
        g_Players[gkId].Direction = DIRECTION_DOWN; // Face Down (Attack Direction)
    }
    
    // Lock Pose
    g_Players[gkId].Status = PLAYER_STATUS_POSITIONED;
    
    // Determine Recoil Direction (Same as Shot)
    // Team 1 attacks UP (Shoots UP). Team 2 defends. GK 2 moves UP (-1).
    bool closeToLine = false;
    if (teamId == TEAM_2) { // GK 2 (Top)
        g_GkRecoilY = -1;
        if (g_Players[gkId].Y <= FIELD_BOUND_Y_TOP + 4) closeToLine = true;
    } else { // GK 1 (Bottom)
        g_GkRecoilY = 1;
        if (g_Players[gkId].Y >= FIELD_BOUND_Y_BOTTOM - 4) closeToLine = true;
    }

    if (closeToLine || isSteal) g_GkRecoilY = 0; // No recoil for Steals
    g_GkIsGroundKick = isSteal; // Track if this is a ground kick (no offset needed)
   
    // Take Possession
    SetPlayerBallPossession(gkId);
    g_Ball.PossessionPlayerId = gkId; // Fix: Ensure AI knows GK has ball immediately to prevent chasing
    g_Ball.ShotActive = 0;
    
    g_MatchStatus = MATCH_BALL_ON_GOALKEEPER;

    // TACTICAL MOVEMENT: All players move while GK recoils
    for(u8 i=0; i<14; i++) {
        if(i == gkId) continue;
        if(g_Players[i].TeamId == REFEREE) continue;
        if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
        
        u16 tx, ty;
        // Reset current targets
        tx = g_Players[i].X;
        ty = g_Players[i].Y;

        if(g_Players[i].TeamId == teamId) {
             // TEAMMATE (Defending team) -> Advance (Counter-Attack)
             // Move towards center/opponent field
             if(teamId == TEAM_1) { // Moving UP
                  if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 160;
                  else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 240;
                  else ty = 350;
             } else { // Moving DOWN
                  if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 320;
                  else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 240;
                  else ty = 130;
             }
        } else {
             // OPPONENT (Attacking team) -> Retreat to defense
             // Move towards their own goal
             if(teamId == TEAM_1) { // Opponent is Team 2 (Top) -> Retreat UP? No, Team 2 Defends Top.
                  // Opponent (Team 2) retreats to Top (Move UP).
                  if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 243; // Midfield
                  else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 106;
                  else ty = 130;
             } else { // GK is Team 2 (Top Defending). Opponent is Team 1 (Attack Up).
                  // Opponent (Team 1) retreats to Bottom (Move DOWN).
                  if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 243;
                  else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 318;
                  else ty = 350;
             }
        }

        // Apply Target
        g_Players[i].TargetX = tx;
        g_Players[i].TargetY = ty;
        g_Players[i].Status = PLAYER_STATUS_NONE; // Unlock movement
    }
}
// +++ Kick off +++
void TickThrowIn() {
    if (g_MatchStatus != MATCH_BEFORE_THROW_IN) return;
    
    // Internal State vars
    static u8 s_ThrowTargetId = NO_VALUE;
    static bool s_JoyMoved = false;
    static u16 s_ForceThrowTimer = 0;

    if (g_Timer == 0) {
        s_ThrowTargetId = NO_VALUE;
        s_JoyMoved = false;
        s_ForceThrowTimer = 0;

		// 1. Clamp Ball Position to bounds (Leave it where it crossed, just ensure on line)
		if (g_Ball.X < FIELD_POS_X_CENTER) {
			g_Ball.X = FIELD_BOUND_X_LEFT;
		} else {
			g_Ball.X = FIELD_BOUND_X_RIGHT;
		}
		
		// Clamp Y
		if (g_Ball.Y < FIELD_BOUND_Y_TOP) g_Ball.Y = FIELD_BOUND_Y_TOP;
		if (g_Ball.Y > FIELD_BOUND_Y_BOTTOM) g_Ball.Y = FIELD_BOUND_Y_BOTTOM;
		
		g_Ball.PossessionPlayerId = NO_VALUE;

		// 2. Identify Thrower (Closest Teammate)
		u8 bestId = NO_VALUE;
		u16 minDist = 65535;
		
		// Helpers for crowd participants (2 nearest teammates, 2 nearest opponents)
		u8 t1=NO_VALUE, t2=NO_VALUE; u16 dt1=65535, dt2=65535;
		u8 o1=NO_VALUE, o2=NO_VALUE; u16 do1=65535, do2=65535;

		for(u8 i=0; i<14; i++) {
			 // Calculate Distance to Ball
			 u16 dist = 0;
			 if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
			 if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);

			 // Thrower Logic (RestartTeam only, No GK)
			 if(g_Players[i].TeamId == g_RestartKickTeamId && g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) {
				  if(dist < minDist) { minDist = dist; bestId = i; }
			 }
		}
		g_ThrowInPlayerId = bestId;
		
		// 3. Find Crowd Participants (Excluding Thrower)
		for(u8 i=0; i<14; i++) {
			 if(i == g_ThrowInPlayerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER || g_Players[i].TeamId == REFEREE) continue;

			 u16 dist = 0;
			 if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
			 if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);

			 if (g_Players[i].TeamId == g_RestartKickTeamId) {
				  // Teammate
				  if (dist < dt1) { dt2=dt1; t2=t1; dt1=dist; t1=i; }
				  else if (dist < dt2) { dt2=dist; t2=i; }
			 } else {
				  // Opponent
				  if (dist < do1) { do2=do1; o2=o1; do1=dist; o1=i; }
				  else if (dist < do2) { do2=dist; o2=i; }
			 }
		}
		
		// 4. Set Targets
		if (g_ThrowInPlayerId != NO_VALUE) {
			g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
			g_Players[g_ThrowInPlayerId].TargetY = g_Ball.Y;
			g_Players[g_ThrowInPlayerId].Status = PLAYER_STATUS_NONE;
			if (g_Ball.X < FIELD_POS_X_CENTER) g_Players[g_ThrowInPlayerId].Direction = DIRECTION_RIGHT;
			else g_Players[g_ThrowInPlayerId].Direction = DIRECTION_LEFT;
		}

		// Crowd Positioning: 50x100 Rect
		// Y Range: [BallY-50, BallY+50]. X Range: 50px inward.
		bool isLeft = (g_Ball.X < FIELD_POS_X_CENTER);
		u8 crowdIds[4] = {t1, t2, o1, o2};
		
		// Fixed offsets to distribute players in the 50x100 area
		i16 yOffsets[4] = {-30, 20, -15, 35}; 
		u16 xOffsets[4] = {15, 35, 25, 45}; 
		
		for(u8 k=0; k<4; k++) {
			u8 pid = crowdIds[k];
			if(pid != NO_VALUE) {
				g_Players[pid].Status = PLAYER_STATUS_NONE;
				
				// Y Position (BallY +/- 50 range)
				i16 ty = (i16)g_Ball.Y + yOffsets[k];
				// Clamp Y
				if(ty < FIELD_BOUND_Y_TOP) ty = FIELD_BOUND_Y_TOP;
				if(ty > FIELD_BOUND_Y_BOTTOM) ty = FIELD_BOUND_Y_BOTTOM;
				g_Players[pid].TargetY = (u16)ty;
				
				// X Position (50 px inward)
				if (isLeft) {
					g_Players[pid].TargetX = g_Ball.X + xOffsets[k];
					g_Players[pid].Direction = DIRECTION_LEFT; // Look at thrower
				} else {
					g_Players[pid].TargetX = g_Ball.X - xOffsets[k];
					g_Players[pid].Direction = DIRECTION_RIGHT; // Look at thrower
				}
			}
		}

        // --- NEW: Identify Backup Thrower IF the designated thrower was somehow part of the crowd 
        // (Logic above excludes Thrower from crowd search, so they are distinct)
        // But let's verify if user wants a CHANGE: "fai arrivare un altro giocatore (diverso da quelli che hai portato li)"
        
        // My code ALREADY picks Thrower FIRST (closest), and THEN picks crowd (closest remaining).
        // So they are distinct.
        // However, if the user means: "Pick a NEW thrower that is NOT the one currently closest"
        // I will assume the current logic is fine as long as they are distinct.
        // The user said: "arriva un altro giocatore (diverso da quelli che hai portato li)... sia targhetizzato sulla palla"
        
        // To be safe: Force Thrower target again here.
         if (g_ThrowInPlayerId != NO_VALUE) {
            g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
            g_Players[g_ThrowInPlayerId].TargetY = g_Ball.Y;
         }

        // Show Zone
        if (g_Ball.Y < 140) Trampoline_VOID_P1(4,ShowFieldZone,FIELD_NORTH_ZONE);
        else if (g_Ball.Y > 280) Trampoline_VOID_P1(4,ShowFieldZone,FIELD_SOUTH_ZONE);
        else Trampoline_VOID_P1(4,ShowFieldZone,FIELD_CENTRAL_ZONE);
    }
    
    // Check Thrower Arrival
    if (g_ThrowInPlayerId != NO_VALUE) {
        i16 dx = (i16)g_Players[g_ThrowInPlayerId].X - (i16)g_Players[g_ThrowInPlayerId].TargetX;
        i16 dy = (i16)g_Players[g_ThrowInPlayerId].Y - (i16)g_Players[g_ThrowInPlayerId].TargetY;
        
        if (dx >= -4 && dx <= 4 && dy >= -4 && dy <= 4) {
             g_Players[g_ThrowInPlayerId].X = g_Players[g_ThrowInPlayerId].TargetX;
             g_Players[g_ThrowInPlayerId].Y = g_Players[g_ThrowInPlayerId].TargetY;
             g_Players[g_ThrowInPlayerId].Status = PLAYER_STATUS_POSITIONED;

             // Set Sprite for Throw In
             if(g_Ball.X < FIELD_POS_X_CENTER) {
                 g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_LEFT_1;
                 g_Players[g_ThrowInPlayerId].Direction = DIRECTION_RIGHT;
             } else {
                 g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_RIGHT_1;
                 g_Players[g_ThrowInPlayerId].Direction = DIRECTION_LEFT;
             }
             
             // Set Ball Over Head
             g_Ball.X = g_Players[g_ThrowInPlayerId].X;
             // Adjust Height: Right side lower by 2 px (Y-12 instead of Y-14)
             if(g_Ball.X < FIELD_POS_X_CENTER) g_Ball.Y = g_Players[g_ThrowInPlayerId].Y - 14; 
             else g_Ball.Y = g_Players[g_ThrowInPlayerId].Y - 12;
             
             g_Ball.Size = 1;

             // Ensure Crowd is also ready (Wait for everyone near ball to stop moving)
             {
                 u8 crowdReady = 1;
                 u8 i; // Declare outside for-loop for C89/SDCC compat
                 for(i=0; i<14; i++) {
                     // Check if player target is near Ball (Crowd Zone approx 100px)
                     u16 tdx = (g_Players[i].TargetX > g_Ball.X) ? (g_Players[i].TargetX - g_Ball.X) : (g_Ball.X - g_Players[i].TargetX);
                     u16 tdy = (g_Players[i].TargetY > g_Ball.Y) ? (g_Players[i].TargetY - g_Ball.Y) : (g_Ball.Y - g_Players[i].TargetY);
                     
                     if (tdx < 100 && tdy < 100) {
                          // If target is in zone, are they there?
                          if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
                               // SNAPPING LOGIC: If very close, force positioned
                               i16 pdx = (i16)g_Players[i].X - (i16)g_Players[i].TargetX;
                               i16 pdy = (i16)g_Players[i].Y - (i16)g_Players[i].TargetY;
                               if (pdx >= -4 && pdx <= 4 && pdy >= -4 && pdy <= 4) {
                                    g_Players[i].X = g_Players[i].TargetX;
                                    g_Players[i].Y = g_Players[i].TargetY;
                                    g_Players[i].Status = PLAYER_STATUS_POSITIONED;
                               } else {
                                    crowdReady = 0;
                                    break;
                               }
                          }
                     }
                 }

                 if (crowdReady) {
                     g_Timer++;
                 } else {
                     g_Timer = 1; // Wait
                 }
             }

             if (g_Timer > 60) {
                  // Ready for Action (Interactive / CPU Phase)

                  // 1. Identify Candidates (Teammates near ball - INCREASE SEARCH RANGE)
                  u8 c1=NO_VALUE, c2=NO_VALUE;
                  {
                      u8 t1=NO_VALUE, t2=NO_VALUE; u16 dt1=65535, dt2=65535;
                      u8 i;
                      for(i=0; i<14; i++) {
                         if(i == g_ThrowInPlayerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER || g_Players[i].TeamId == REFEREE) continue;
                         
                         if (g_Players[i].TeamId == g_RestartKickTeamId) {
                              u16 dx = (g_Players[i].X > g_Ball.X) ? (g_Players[i].X - g_Ball.X) : (g_Ball.X - g_Players[i].X);
                              u16 dy = (g_Players[i].Y > g_Ball.Y) ? (g_Players[i].Y - g_Ball.Y) : (g_Ball.Y - g_Players[i].Y);
                              u16 d = dx+dy;
                              // Increased search range confirmation
                              if (d < 200) { // Safety check
                                  if (d < dt1) { dt2=dt1; t2=t1; dt1=d; t1=i; }
                                  else if (d < dt2) { dt2=d; t2=i; }
                              }
                         }
                      }
                      c1 = t1; c2 = t2;
                  }

                  // 2. Default Target
                  if (s_ThrowTargetId == NO_VALUE && c1 != NO_VALUE) s_ThrowTargetId = c1;
                  // FALLBACK: If still no target, pick ANY teammate (excluding GK/Thrower)
                  if (s_ThrowTargetId == NO_VALUE) {
                       s_ThrowTargetId = GetClosestPlayerToBall(g_RestartKickTeamId, g_ThrowInPlayerId);
                  }
                  
                  // 3. Determine Control Type
                  bool isHuman = (g_RestartKickTeamId == TEAM_1);
                  if (g_GameWith2Players) isHuman = true; 
                  if (g_RestartKickTeamId == TEAM_2 && !g_GameWith2Players) isHuman = false;

                  if (isHuman) {
                       // --- HUMAN LOGIC ---
                       u8 joy = GetJoystickDirection();
                       bool trig = IsJoystickTriggerPressed();

                       // Toggle Target
                       if (joy != DIRECTION_NONE && !s_JoyMoved) {
                            // If we have both candidates
                            if (c1 != NO_VALUE && c2 != NO_VALUE) {
                                if (s_ThrowTargetId == c1) s_ThrowTargetId = c2;
                                else s_ThrowTargetId = c1;
                            }
                            s_JoyMoved = true;
                       } else if (joy == DIRECTION_NONE) {
                            s_JoyMoved = false;
                       }
                       
                       // Visualize Target
                       g_PassTargetPlayer = s_ThrowTargetId; 
                       
                       // Timeout Logic (4 seconds = 240 frames)
                       s_ForceThrowTimer++;

                       // Execute
                       if ((trig || s_ForceThrowTimer > 240) && s_ThrowTargetId != NO_VALUE) {
                            g_Ball.PossessionPlayerId = g_ThrowInPlayerId;
                            SetPlayerBallPossession(g_ThrowInPlayerId);
                            g_Ball.Y = g_Players[g_ThrowInPlayerId].Y; // Reset to feet
                            PerformPass(s_ThrowTargetId);
                            g_MatchStatus = MATCH_IN_ACTION;
                            V9990_ClearTextFromLayerA(10, 18, 9); // Correct coords: 10, 18 (len 9 is enough for "THROW IN")
                            g_Ball.ShotActive = 1; // High Arc for throw
                            g_Ball.Size = 1;
                       }
                  } else {
                       // --- CPU LOGIC ---
                       if (g_Timer > 100) {
                            if (s_ThrowTargetId == NO_VALUE && c1 != NO_VALUE) s_ThrowTargetId = c1; 
                            if (s_ThrowTargetId == NO_VALUE) s_ThrowTargetId = GetClosestPlayerToBall(g_RestartKickTeamId, g_ThrowInPlayerId);

                            // Throw after delay
                            if (g_Timer > 120) {
                                g_Ball.PossessionPlayerId = g_ThrowInPlayerId;
                                SetPlayerBallPossession(g_ThrowInPlayerId);
                                g_Ball.Y = g_Players[g_ThrowInPlayerId].Y; 
                                PerformPass(s_ThrowTargetId);
                                g_MatchStatus = MATCH_IN_ACTION; 
                                V9990_ClearTextFromLayerA(10, 18, 9);
                                g_Ball.ShotActive = 1; 
                                g_Ball.Size = 1;
                            } else {
                                g_Timer++;
                            }
                       } else {
                            g_Timer++;
                       }
                  }
             }
        } else {
            g_Timer = 1; 
        }
    }
}
// +++ Player to own target +++
void TickPlayerToOwnTarget(){
	if(g_MatchStatus!=MATCH_NOT_STARTED){
		bool allPlayersInPosition = true;
		
		static u8 s_GkMoveTick = 0;
		s_GkMoveTick++;
		for(u8 i=0;i<15;i++){
			if (g_MatchStatus == MATCH_IN_ACTION && g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
                if (g_Ball.ShotActive) continue; 

				if ((s_GkMoveTick & 1) == 0) { 
					u16 minX = GOAL_X_MIN;
					u16 maxX = GOAL_X_MAX;
					u16 desiredX = g_Ball.X;

                    const TeamStats* stats = GetTeamStats(g_Players[i].TeamId);
                    if (stats->GkSkill >= 15) {
                         desiredX = (g_Ball.X + FIELD_POS_X_CENTER) / 2;
                    }
					
					if (desiredX < minX) desiredX = minX;
					if (desiredX > maxX) desiredX = maxX;
					
					i16 diff = (i16)desiredX - (i16)g_Players[i].X;
					
					// Deadzone di 2px per evitare micro-aggiustamenti continui
					if (diff > 2) g_Players[i].X++;
					else if (diff < -2) g_Players[i].X--;
				}
				// Sincronizza TargetX per evitare conflitti con la logica di movimento generica
				g_Players[i].TargetX = g_Players[i].X;
			}
			
			if(g_MatchStatus == MATCH_AFTER_IN_GOAL) {
				if(i != REFEREE) continue;
				// Force Referee Target to KickOff Position immediately
				g_Players[i].TargetX=FIELD_POS_X_CENTER - 30; 
				g_Players[i].TargetY=FIELD_POS_Y_CENTER - 40; 
			}

			if (i == REFEREE && (g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER)) continue;
			
			// SKIP ACTIVE PLAYERS (Controlled by Joystick) - UNLESS performing a set piece setup
			bool isSetPieceSetup = (g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK || g_MatchStatus == MATCH_BEFORE_OFFSIDE || g_MatchStatus == MATCH_BEFORE_THROW_IN);
			bool isGkRestart = (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER);
			
			if (!isSetPieceSetup && !isGkRestart) {
				if (g_Team1ActivePlayer != NO_VALUE && i == g_Team1ActivePlayer) continue;
				if (g_GameWith2Players && g_Team2ActivePlayer != NO_VALUE && i == g_Team2ActivePlayer) continue;
			}
			
			// Check if this specific player is in position
			bool playerInPosition = (g_Players[i].X == g_Players[i].TargetX && g_Players[i].Y == g_Players[i].TargetY);
            
            // Only care about "in position" for KickOff logic if we are in that phase
            if (g_MatchStatus == MATCH_BEFORE_KICK_OFF && !playerInPosition) {
                 allPlayersInPosition = false;
            }

			if(g_MatchStatus==MATCH_IN_ACTION){
                const TeamStats* stats = GetTeamStats(g_Players[i].TeamId);
                u8 speed = stats->Speed;
                
                // Speed Logic (Frame Skipping)
                // Human is 1/3 (20fps)
                // Speed 0: 1/4 (15fps) -> Run on 0
                // Speed 1: 1/3 (20fps) -> Run on 0
                // Speed 2: 1/2 (30fps) -> Run on 0, 2
                // Speed 3: 2/3 (40fps) -> Run on 0, 1 (Standard AI)
                // Speed 4: 3/4 (45fps) -> Run on 0, 1, 2
                // Speed 5: 1/1 (60fps) -> Run always
                
                u8 tick = g_FrameCounter % 12; // Common multiple
                bool move = false;
                if (speed == 0) { if ((tick % 4) == 0) move = true; }
                else if (speed == 1) { if ((tick % 3) == 0) move = true; }
                else if (speed == 2) { if ((tick % 2) == 0) move = true; }
                else if (speed == 3) { if ((tick % 3) != 2) move = true; } // 0, 1, 3, 4...
                else if (speed == 4) { if ((tick % 4) != 3) move = true; }
                else move = true;
                
                if (!move) continue;
			} else {
				g_Players[i].AiTickCounter=0;
			}
			
			if(!playerInPosition){
				g_Players[i].Status=PLAYER_STATUS_NONE;
				if(g_Players[i].X<g_Players[i].TargetX && g_Players[i].Y>g_Players[i].TargetY){
					g_Players[i].Direction=DIRECTION_UP_RIGHT;
					g_Players[i].X++;
					g_Players[i].Y--;
				}
				else if(g_Players[i].X>g_Players[i].TargetX && g_Players[i].Y>g_Players[i].TargetY){
					g_Players[i].Direction=DIRECTION_UP_LEFT;
					g_Players[i].X--;
					g_Players[i].Y--;
				}
				else if(g_Players[i].X>g_Players[i].TargetX && g_Players[i].Y<g_Players[i].TargetY){
					g_Players[i].Direction=DIRECTION_DOWN_LEFT;
					g_Players[i].X--;
					g_Players[i].Y++;
				}
				else if(g_Players[i].X<g_Players[i].TargetX && g_Players[i].Y<g_Players[i].TargetY){
					g_Players[i].Direction=DIRECTION_DOWN_RIGHT;
					g_Players[i].X++;
					g_Players[i].Y++;
				}
				else if(g_Players[i].X==g_Players[i].TargetX && g_Players[i].Y>g_Players[i].TargetY){
					g_Players[i].Direction=DIRECTION_UP;
					g_Players[i].Y--;
				}
				else if(g_Players[i].X==g_Players[i].TargetX && g_Players[i].Y<g_Players[i].TargetY){
					g_Players[i].Direction=DIRECTION_DOWN;
					g_Players[i].Y++;
				}
				else if(g_Players[i].X<g_Players[i].TargetX && g_Players[i].Y==g_Players[i].TargetY){
					g_Players[i].Direction=DIRECTION_RIGHT;
					g_Players[i].X++;
				}
				else if(g_Players[i].X>g_Players[i].TargetX && g_Players[i].Y==g_Players[i].TargetY){
					g_Players[i].Direction=DIRECTION_LEFT;
					g_Players[i].X--;
				}
				
				// Boundaries
                if(g_Players[i].Y < FIELD_BOUND_Y_TOP) g_Players[i].Y = FIELD_BOUND_Y_TOP;
		        if(g_Players[i].Y > FIELD_BOUND_Y_BOTTOM) g_Players[i].Y = FIELD_BOUND_Y_BOTTOM;
                if(g_Players[i].X < FIELD_BOUND_X_LEFT) g_Players[i].X = FIELD_BOUND_X_LEFT;
		        if(g_Players[i].X > FIELD_BOUND_X_RIGHT) g_Players[i].X = FIELD_BOUND_X_RIGHT;
			}
            
            // PutBall Logic (Moved outside to ensure it runs even when stopped)
            if (g_MatchStatus == MATCH_IN_ACTION || (isSetPieceSetup && g_Ball.PossessionPlayerId == i)) {
                if (g_Ball.PossessionPlayerId == i) {
                    // Only animate dribble if actually moving (not in position)
                    if (!playerInPosition && g_MatchStatus == MATCH_IN_ACTION) {
                        if (g_Ball.KickMoveState == NO_VALUE) g_Ball.KickMoveState = 0;
                        g_Ball.KickMoveState++;
                        if (g_Ball.KickMoveState > 3) g_Ball.KickMoveState = 0;
                        if (g_Ball.KickMoveState == 1) PlayAyFx(AYFX_BALL);
                    } else {
                        g_Ball.KickMoveState = 0;
                    }
                    PutBallOnPlayerFeet(i);
                }
            }

			if (playerInPosition) {
                // Stop animation when in position (Fix Moonwalking)
				if (g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK || 
                    g_MatchStatus == MATCH_BEFORE_OFFSIDE || g_MatchStatus == MATCH_BEFORE_THROW_IN) {
					if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
                        g_Players[i].Status = PLAYER_STATUS_POSITIONED;
						g_Players[i].Direction = DIRECTION_NONE;
                        u8 useDir = g_Players[i].PreviousDirection;
                        if (useDir == DIRECTION_NONE) {
                             // Fallback direction
                             if(g_MatchStatus == MATCH_BEFORE_THROW_IN) {
                                  // Look at field center
                                  if(g_Ball.X < 128) useDir = DIRECTION_RIGHT; else useDir = DIRECTION_LEFT;
                             } else {
                                  useDir = DIRECTION_DOWN; 
                             }
                        }
						g_Players[i].PatternId = GetNoMovingPlayerPatternId(useDir);
					}
				}
                // Not Moving (In Position)
                if(g_MatchStatus==MATCH_IN_ACTION){
				    g_Players[i].Status=PLAYER_STATUS_POSITIONED;
                }

				if (g_Players[i].TeamId == REFEREE) {
                     if(g_MatchStatus == MATCH_BEFORE_KICK_OFF || g_MatchStatus == MATCH_AFTER_IN_GOAL) {
                          g_Players[i].Direction = DIRECTION_DOWN;
                          g_Players[i].PatternId = PLAYER_POSE_FRONT;
                          g_Players[i].Status = PLAYER_STATUS_POSITIONED;
                          PutPlayerSprite(i);
                     }
                }
				
				

				if(g_MatchStatus==MATCH_BEFORE_KICK_OFF){
					
					if(g_Players[i].TeamId!=REFEREE && g_Players[i].PatternId!=PLAYER_POSE_BACK && g_Players[i].PatternId!=PLAYER_POSE_FRONT){
						g_Players[i].Status=PLAYER_STATUS_POSITIONED;
						// IF SCORING PLAYER, DON'T OVERRIDE PATTERN HERE (Handled in UpdatePlayerPatternByDirection)
						if (i != g_GoalScorerId) {
							if(g_Players[i].TeamId==TEAM_1){
								g_Players[i].PatternId=PLAYER_POSE_BACK;
								g_Players[i].Direction=DIRECTION_UP;
							}
							else{
								g_Players[i].PatternId=PLAYER_POSE_FRONT;
								g_Players[i].Direction=DIRECTION_DOWN;
							}
						} else {
							// Ensure scorer faces correct way eventually? 
							// Logic in UpdatePlayerPattern handles animation.
							// But when they STOP moving (reach target), we need to reset them to standard stance.
							if(g_Players[i].TeamId==TEAM_1) g_Players[i].Direction=DIRECTION_UP;
							else g_Players[i].Direction=DIRECTION_DOWN;
						}
						PutPlayerSprite(i);
					}
				}
			}
			
		}

		if(g_MatchStatus==MATCH_BEFORE_KICK_OFF && allPlayersInPosition && g_FieldScrollingActionInProgress==NO_VALUE){
			g_FieldScrollSpeed=FIELD_SCROLL_GAME_SPEED;
			g_MatchStatus=MATCH_KICK_OFF;
			
			g_Timer=0;
			g_GoalScorerId = NO_VALUE; // Reset scorer
		}
		
	}
}
// +++ Put player sprite on display +++
void PutPlayerSprite(u8 playerId){
	struct V9_Sprite attr;
	attr.D=0;
	attr.SC=2;
	u16 minY=g_FieldCurrentYPosition+16;
	u16 maxY=g_FieldCurrentYPosition+235;

	attr.Y = g_Players[playerId].Y-g_FieldCurrentYPosition;
	if(g_Players[playerId].TeamId==TEAM_2){
		attr.SC=3;
	}
	  
	if(g_Players[playerId].TeamId==REFEREE){
		attr.SC=1;
	}
	
	if(g_Players[playerId].Y>maxY){
		attr.D=1;
	}
	if(g_Players[playerId].Y<minY){
		attr.D=1;
	}
	if(g_MatchStatus!=MATCH_NOT_STARTED && g_MatchStatus!=MATCH_KICK_OFF){
		if(g_Players[playerId].Role!=PLAYER_ROLE_GOALKEEPER){
			UpdatePlayerPatternByDirection(playerId);
		}
	}
	if(g_Players[playerId].Role==PLAYER_ROLE_GOALKEEPER){
			   attr.SC=0;
			// --- Goalkeeper horizontal movement animation logic ---
			// Only animate during match in action
			if (g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
				g_Players[playerId].Status=PLAYER_STATUS_POSITIONED;
				u8 team = g_Players[playerId].TeamId;
				// Horizontal movement (right/left)
				if(g_Players[playerId].OldX!=g_Players[playerId].X || g_Players[playerId].OldY!=g_Players[playerId].Y){
					if(g_Players[playerId].LastPose==0){
						g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_1 : PLAYER_POSE_GK_H_MOVE_FRONT_1;
						g_Players[playerId].LastPose=1;
					}
					else{
						g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_2 : PLAYER_POSE_GK_H_MOVE_FRONT_2;
						g_Players[playerId].LastPose=0;
					}		
					g_Players[playerId].OldX=g_Players[playerId].X;
					g_Players[playerId].OldY=g_Players[playerId].Y;	
				}

			}
			else{
				UpdatePlayerPatternByDirection(playerId);
			}
	}
	attr.Pattern = g_Players[playerId].PatternId;
	
	// Highlight logic (Human Only)
	if(g_Players[playerId].TeamId != REFEREE && g_MatchStatus != MATCH_PENALTY_SHOOTOUT && g_MatchStatus != MATCH_PENALTY_SETUP && g_MatchStatus != MATCH_VICTORY_LAP)
	{
		bool isHumanTeam = (g_Players[playerId].TeamId == TEAM_1) || (g_GameWith2Players && g_Players[playerId].TeamId == TEAM_2);
		
		if (isHumanTeam) {
			// NEVER HIGHLIGHT GOALKEEPER
			if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) {
				if (playerId==g_Team1ActivePlayer || (g_GameWith2Players && playerId==g_Team2ActivePlayer)) {
					// Ensure we are not highlighting REFEREE even if logic fails (safety check)
					attr.Pattern=(u8)(attr.Pattern+64);

				}
			}
			// Highlight Pass Target if team has ball
			if (playerId == g_PassTargetPlayer) {
				attr.Pattern=(u8)(attr.Pattern+64);

			}
		}
	}
	
	attr.X = g_Players[playerId].X;
	attr.P = 1;
	V9_SetSpriteP1(playerId, &attr);

}
// +++ Uppdate player pattern by direction +++
void UpdatePlayerPatternByDirection(u8 playerId){
	if(g_Players[playerId].Status==PLAYER_STATUS_POSITIONED){
		return;
	}
	
	//u8 pose=g_Players[playerId].LastPose;
	if(g_Players[playerId].Direction!=g_Players[playerId].PreviousDirection){
		if(g_Players[playerId].Direction==DIRECTION_NONE){
			g_Players[playerId].PatternId=GetNoMovingPlayerPatternId(g_Players[playerId].PreviousDirection);
			g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
		}
		else{
			g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
			g_Players[playerId].LastPose=0;
			//pose=GetNewPoseByDirection(g_Players[playerId].Direction);
		}

	}
	else{
		if(g_Players[playerId].Direction!=DIRECTION_NONE){
			if(g_Players[playerId].LastPose==1){
				g_Players[playerId].LastPose=0;
			}
			else{
				g_Players[playerId].LastPose=1;
			}
		}
		
	}

	if(g_Players[playerId].TeamId==REFEREE && g_MatchStatus==MATCH_BEFORE_KICK_OFF ){
		// DISABLED: Allow REFEREE to animate during return phase
		// g_Players[playerId].PatternId=PLAYER_POSE_RIGHT;
        if(g_Players[playerId].Direction!=DIRECTION_NONE){
			g_Players[playerId].PatternId=GetPatternIdByPoseAndDirection(playerId);
		}
	}
	else{
		if(g_Players[playerId].Direction!=DIRECTION_NONE){
			g_Players[playerId].PatternId=GetPatternIdByPoseAndDirection(playerId);
		}
	}
}
// +++ Get pattern id by pose and direction +++
u8 GetPatternIdByPoseAndDirection(u8 playerId){
	u8 pose = g_Players[playerId].LastPose;
	u8 dir = g_Players[playerId].Direction;
    
    // Safety
    if (dir > 8) dir = DIRECTION_NONE;

    if (dir == DIRECTION_NONE) {
        return GetNoMovingPlayerPatternId(dir); // Assuming logic for NONE inside
    }
    
    // Lookup table for moving patterns (Pose 0, Pose 1)
    // Indexes: NONE, UP, UR, RI, DR, DO, DL, LE, UL
    // Note: NONE is handled above or uses index 0 (if valid)
    static const u8 k_MovePats[] = { 
        0, 0, // NONE
        PLAYER_POSE_MOVE_UP_1,          PLAYER_POSE_MOVE_UP_2,
        PLAYER_POSE_MOVE_UP_RIGHT_1,    PLAYER_POSE_MOVE_UP_RIGHT_2,
        PLAYER_POSE_MOVE_RIGHT_1,       PLAYER_POSE_MOVE_RIGHT_2,
        PLAYER_POSE_MOVE_DOWN_RIGHT_1,  PLAYER_POSE_MOVE_DOWN_RIGHT_2,
        PLAYER_POSE_MOVE_DOWN_1,        PLAYER_POSE_MOVE_DOWN_2,
        PLAYER_POSE_MOVE_DOWN_LEFT_1,   PLAYER_POSE_MOVE_DOWN_LEFT_2,
        PLAYER_POSE_MOVE_LEFT_1,        PLAYER_POSE_MOVE_LEFT_2,
        PLAYER_POSE_MOVE_UP_LEFT_1,     PLAYER_POSE_MOVE_UP_LEFT_2
    };

    return k_MovePats[dir * 2 + (pose ? 1 : 0)];
}
