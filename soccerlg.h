// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────



#ifndef STRUCTURES_DEFINITION
#define STRUCTURES_DEFINITION

// ------------------
// *** STRUCTURES ***
// ------------------



typedef struct PlayerInfo
{
	u16		Y;		
	u16     X;	
	u16     OldX;
	u16     OldY;
	u8      PatternId;
	u8      TeamId;
	u8      Direction;
	u8      PreviousDirection;
	u8      LastPose;
	u8      Role;
	u16     TargetY;
	u16     TargetX;
	u16     Status;   
	u8      AiTickCounter;
} PlayerInfo;
typedef struct PonPonGirlInfo
{
	u16		Y;		
	u16     X;
	u8      PatternId;	
} PonPonGirlInfo;
typedef struct BallInfo
{
	u16		Y;		
	u16     X;	
	u8		Size;	
	u8      Direction;
	u8      PossessionPlayerId;
	u16     PreviousY;
	u16     OldX;
	u16     OldY;
	u8      KickMoveState;
	u8      LastTouchTeamId;
	u8      StealCooldown;
	u8      PassTargetPlayerId; // ID of player being passed to (NO_VALUE if none)
	u16     PassStartX;         // Starting X of pass (for parabola)
	u16     PassStartY;         // Starting Y of pass
	u16     PassTotalDist;      // Total distance of pass
	u16     TargetX;            // For shots or fixed point passes
	u16     TargetY;            // For shots or fixed point passes
	u8      ShotActive;         // 1 if ball is flying as a shot
	u8      PossessionTimer;    // Frames since possession started
	u8      ComingFromRestart;  // 1 if pass originated from a restart
} BallInfo;

typedef struct TeamStats
{
    u8 Speed;           // 0-5 (3=Standard)
    u8 Aggression;      // Tackle distance (e.g. 12-20)
    u8 ShotFreq;        // 0-10 (higher = more frequent)
    u8 PassFreq;        // 0-10
    u8 GkSkill;         // GK save range (e.g. 12-18)
} TeamStats;
#endif


// -----------------
// *** VARIABLES ***
// -----------------

extern bool 			g_VSynch;
extern u8				g_FrameCounter;
extern bool 			g_VSynch;
extern u8				g_FrameCounter;
extern u8       		g_Timer;
extern u8               g_FieldScrollingActionInProgress;
extern int              g_FieldCurrentYPosition;
extern u8               g_FieldScrollSpeed;
extern u8               g_ActiveFieldZone;
extern u8               g_MatchStatus;
extern PonPonGirlInfo   g_PonPonGirls[6];	
extern BallInfo         g_Ball;
extern PlayerInfo  		g_Players[15];
extern u8               g_Team1PaletteId;
extern u8               g_Team2PaletteId;
extern bool				g_ShowButtonsInfo;
extern u8          		g_Team1ActivePlayer;
extern u8          		g_Team2ActivePlayer;

// ---------------
// *** DEFINES ***
// ---------------

#define VGM_MENU                            0
#define VGM_MATCH                           1

#define SPRITE_BALL	11

#define MENU_POS_1							0
#define MENU_POS_2							1
#define MENU_POS_3							2
#define MENU_POS_4							3
#define MENU_POS_5							4
#define MENU_POS_6							5

#define FIELD_BOUND_X_LEFT                  10
#define FIELD_BOUND_X_RIGHT                 236
#define FIELD_BOUND_Y_TOP                   50
#define FIELD_BOUND_Y_BOTTOM                430

#define PCM_CORNERKICK						0
#define PCM_KICKOFF							1
#define PCM_INGOAL							2
#define PCM_THROWIN							3
#define PCM_GOALKICK						4
#define PCM_TEAM_SELECTION					5

#define GOAL_X_MIN                          96
#define GOAL_X_MAX                          144
#define GK_BOX_X_MIN                        80
#define GK_BOX_X_MAX                        160
#define GK_BOX_Y_TOP_MIN                    35
#define GK_BOX_Y_TOP_MAX                    75
#define GK_BOX_Y_BOTTOM_MIN                 405
#define GK_BOX_Y_BOTTOM_MAX                 435

#define PENALTY_BOX_Y_TOP                   130 // FIELD_BOUND_Y_TOP + 80
#define PENALTY_BOX_Y_BOTTOM                350 // FIELD_BOUND_Y_BOTTOM - 80

#define CORNER_SIDE_LEFT                    0
#define CORNER_SIDE_RIGHT                   1

#define DEFENDER_MAX_Y_UP                   180 // Difensori Team 1 non salgono oltre qui (met? campo alta)
#define DEFENDER_MIN_Y_DOWN                 300 // Difensori Team 2 non scendono oltre qui (met? campo bassa)
#define MATCH_DURATION                      120

#define PLAYER_STATUS_NONE                  0
#define PLAYER_STATUS_HAS_BALL              1
#define PLAYER_STATUS_BALL_CHASER           2
#define PLAYER_STATUS_PASS_RECIPIENT        3
#define PLAYER_STATUS_POSITIONED            4

#define FIELD_NORTH_ZONE                    0
#define FIELD_CENTRAL_ZONE                  1
#define FIELD_SOUTH_ZONE                    2

#define FIELD_SCROLL_GAME_SPEED             5
#define FIELD_SCROLL_PRESENTATION_SPEED     1

#define FIELD_TOP_Y                         1
#define FIELD_BOTTOM_Y                      280
#define FIELD_CENTRAL_Y                     140

#define DIRECTION_NONE  			        0
#define DIRECTION_UP    			        1
#define DIRECTION_UP_RIGHT  		        2
#define DIRECTION_RIGHT  		            3
#define DIRECTION_DOWN_RIGHT  	            4
#define DIRECTION_DOWN         	            5
#define DIRECTION_DOWN_LEFT  	            6
#define DIRECTION_LEFT  			        7
#define DIRECTION_UP_LEFT  		            8

#define TEAM_1                              1
#define TEAM_2                              2
#define REFEREE                             14

#define TEAM_AUS                            0
#define TEAM_GER                            1
#define TEAM_ITA                            2
#define TEAM_BRA                            3
#define TEAM_FRA                            4
#define TEAM_GBR                            5

#define PLAYER_POSE_FRONT                   16
#define PLAYER_POSE_BACK                    17

#define PLAYER_POSE_GK_H_MOVE_FRONT_1       43
#define PLAYER_POSE_GK_H_MOVE_FRONT_2       44
#define PLAYER_POSE_GK_H_MOVE_BACK_1        164
#define PLAYER_POSE_GK_H_MOVE_BACK_2        163
#define PLAYER_POSE_RIGHT                   157
#define PLAYER_POSE_LEFT                    18
#define PLAYER_POSE_MOVE_UP_RIGHT_1         13
#define PLAYER_POSE_MOVE_UP_RIGHT_2         14
#define PLAYER_POSE_MOVE_DOWN_RIGHT_1       133
#define PLAYER_POSE_MOVE_DOWN_RIGHT_2       134
#define PLAYER_POSE_MOVE_DOWN_1             0
#define PLAYER_POSE_MOVE_DOWN_2             1
#define PLAYER_POSE_MOVE_UP_1               2
#define PLAYER_POSE_MOVE_UP_2               3
#define PLAYER_POSE_MOVE_LEFT_1             5
#define PLAYER_POSE_MOVE_LEFT_2             6
#define PLAYER_POSE_MOVE_RIGHT_1            137
#define PLAYER_POSE_MOVE_RIGHT_2            138
#define PLAYER_POSE_MOVE_UP_LEFT_1          131
#define PLAYER_POSE_MOVE_UP_LEFT_2          130
#define PLAYER_POSE_MOVE_DOWN_LEFT_1        9
#define PLAYER_POSE_MOVE_DOWN_LEFT_2        10
#define PLAYER_POSE_FRONT_PLAYING           19
#define PLAYER_POSE_BACK_PLAYING            22
#define PLAYER_POSE_SHOT_FRONT    			24
#define PLAYER_POSE_SHOT_BACK    			21
#define PLAYER_POSE_SHOT_RIGHT    			27
#define PLAYER_POSE_SHOT_LEFT    			164
#define PLAYER_POSE_TACKLE_FROM_UP_LEFT		36
#define PLAYER_POSE_TACKLE_FROM_UP_RIGHT	172
#define PLAYER_POSE_TACKLE_FROM_DOWN_LEFT   34
#define PLAYER_POSE_TACKLE_FROM_DOWN_RIGHT  174
#define PLAYER_POSE_TEAM2_GK_BALL_FRONT     61
#define PLAYER_POSE_TEAM2_GK_UP_RIGHT       62
#define PLAYER_POSE_TEAM2_GK_DOWN_RIGHT     47
#define PLAYER_POSE_TEAM2_GK_DOWN_LEFT      160
#define PLAYER_POSE_TEAM2_GK_UP_LEFT        145
#define PLAYER_POSE_TEAM2_RESTART_RIGHT     203
#define PLAYER_POSE_TEAM2_RESTART_LEFT      68
#define PLAYER_POSE_TEAM2_RESTART_FRONT     69

#define PLAYER_POSE_TEAM1_GK_BALL_FRONT     158
#define PLAYER_POSE_TEAM1_GK_UP_RIGHT       62
#define PLAYER_POSE_TEAM1_GK_DOWN_RIGHT     63
#define PLAYER_POSE_TEAM1_GK_DOWN_LEFT      160
#define PLAYER_POSE_TEAM1_GK_UP_LEFT        161
#define PLAYER_POSE_TEAM1_RESTART_RIGHT     203
#define PLAYER_POSE_TEAM1_RESTART_LEFT      68
#define PLAYER_POSE_TEAM1_RESTART_FRONT     69

#define PLAYER_POSE_CELEBRATION_BACK_1 		50
#define PLAYER_POSE_CELEBRATION_BACK_2 		51
#define PLAYER_POSE_CELEBRATION_FRONT_1 	48
#define PLAYER_POSE_CELEBRATION_FRONT_2 	49
#define PLAYER_POSE_THROWIN_RIGHT_1 		28
#define PLAYER_POSE_THROWIN_LEFT_1 			147
#define PLAYER_ROLE_GOALKEEPER              0
#define PLAYER_ROLE_LEFT_DEFENDER           1
#define PLAYER_ROLE_RIGHT_DEFENDER          2
#define PLAYER_ROLE_LEFT_HALFFIELDER        3
#define PLAYER_ROLE_RIGHT_HALFFIELDER       4 
#define PLAYER_ROLE_LEFT_STRIKER            5
#define PLAYER_ROLE_RIGHT_STRIKER           6

#define PLAYER_POSE_CELEBRATION_BACK_1 		50
#define PLAYER_POSE_CELEBRATION_BACK_2 		51
#define PLAYER_POSE_CELEBRATION_FRONT_1 	48
#define PLAYER_POSE_CELEBRATION_FRONT_2 	49

#define SPRITE_DOWN_ARROW					121

#define SPRITE_PLAYER						245
#define SPRITE_CPU                          245

#define SPRITE_GIRL_1						122
#define SPRITE_GIRL_2						123
#define SPRITE_GIRL_3						124
#define SPRITE_GIRL_4						125
#define SPRITE_GIRL_5						126
#define SPRITE_GIRL_6						127
#define SPRITE_GIRL_7						240
#define SPRITE_GIRL_8						241
#define SPRITE_GIRL_9						242

#define BALL_SIZE_1                         57
#define BALL_SIZE_2                         58
#define BALL_SIZE_3                         59
#define BALL_SIZE_4                         60
#define BALL_SIZE_5                         61
#define BALL_SIZE_6                         62
#define BALL_SIZE_7                         63
#define BALL_SIZE_8                         116

#define MATCH_NOT_STARTED                   0
#define MATCH_BEFORE_KICK_OFF               1
#define MATCH_BEFORE_CORNER_KICK            2
#define MATCH_BEFORE_THROW_IN               3
#define MATCH_BEFORE_GOALKEEPER_KICK        4
#define MATCH_BEFORE_GOAL_KICK              5
#define MATCH_AFTER_IN_GOAL                 6
#define MATCH_KICK_OFF                      7
#define MATCH_THROW_IN                      8
#define MATCH_CORNER_KICK                   9
#define MATCH_GOAL_KICK                     10
#define MATCH_PLAYERS_PRESENTATION          11
#define MATCH_IN_ACTION                     12
#define MATCH_BALL_ON_GOALKEEPER			13
#define MATCH_BEFORE_OFFSIDE                14
#define MATCH_PRESENTATION					15
#define MATCH_VICTORY_LAP					16
#define MATCH_PENALTY_SHOOTOUT              17
#define MATCH_PENALTY_SETUP                 18
#define MATCH_SHOW_MENU                     19

#define PON_PON_GIRLS_POSE_SPEED			3

#define AI_TICK_SPEED						1

#define FIELD_POS_X_CENTER                  120
#define FIELD_POS_X_LEFT                    40
#define FIELD_POS_X_RIGHT                   198
#define FIELD_POS_Y_CENTER                  243
#define FIELD_POS_Y_TEAM1_GOALKEEPER        424
#define FIELD_POS_Y_TEAM1_DEFENDERS         374
#define FIELD_POS_Y_TEAM1_HALFFIELDERS      284
#define FIELD_POS_Y_TEAM1_STRIKERS          154
#define FIELD_POS_Y_TEAM2_GOALKEEPER        50
#define FIELD_POS_Y_TEAM2_DEFENDERS         130
#define FIELD_POS_Y_TEAM2_HALFFIELDERS      220
#define FIELD_POS_Y_TEAM2_STRIKERS          350

#define BALL_DISTANCE_FROM_PLAYER			7

#define PUBLIC_TILE_1						0
#define PUBLIC_TILE_2						2049


#define NO_VALUE                            255

#define PT3_VRAM_MENU_DATA_ADDRESS			0x7B000

// ------------------
// *** PROTOTYPES ***
// ------------------

// +++ SEGMENT 0 +++
void main();
void WaitV9990Synch();
void LoadMsxVdpFonts();
void V9990_LoadImagePresentationData();
void V9990_LoadMenuTeamsData();
void V9990_LoadP1LayerA();
void V9_InterruptVBlank();
void V9990_LoadSprites();
void V9990_LoadButtonsImageData();
void InterruptHook();
void Trampoline_VOID(u8 bank, void (*func)());
void Trampoline_VOID_P1(u8 bank, void (*func)(u8), u8 p1);
u8 Trampoline_VOID_RETURN(u8 bank, u8 (*func)());
void PlayVGM(u8 vgmId);
void PlayPcm(u8 id);

// +++ SEGMENT 2 +++
void MainSub();
void LoadPresentation();
void TickGameFieldScrolling();	
void InitVariables();
u8 GetJoystickDirection();
bool IsTeamJoystickTriggerPressed();

// +++ SEGMENT 3 +++
void PutPonPonGirlSprite(u8 ponPonGirlId);
void InitializeMenuV9990Layers();
void InitPalette();
void V9990_PrintLayerAStringAtPos(u8 x, u8 y, const c8* str);
void SetPlayerBallPossession(u8 playerId);

// +++ SEGMENT 4 +++
u8 SelectTeam(u8 cursorPatternId, u8 excludeIndex);
void ShowMenu();
void MenuSpriteBlinking();
void ResetPlayersInfo();

// +++ SEGMENT 5 +++

