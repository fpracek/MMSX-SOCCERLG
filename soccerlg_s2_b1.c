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
	Trampoline_VOID(3,InitializeMenuV9990Layers);
	Trampoline_VOID(4,ShowMenu);
	V9_SetPort(V9_P15, 0x10);
    
	
}
