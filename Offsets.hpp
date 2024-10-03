#pragma once
// generated by apexdumper
// [Miscellaneous]
constexpr char OFF_GAME_VERSION[] = "v3.0.81.36"; //[Miscellaneous]->GameVersion
constexpr long OFF_ENTITY_LIST = 0x1f61048; //[Miscellaneous]->cl_entitylist
constexpr long OFF_LOCAL_ENTITY_HANDLE = 0x1766238; //[Miscellaneous]->LocalEntityHandle
constexpr long OFF_LOCAL_PLAYER = 0x24342b8; //[Miscellaneous]->LocalPlayer
constexpr long OFF_GLOBAL_VARS = 0x18351c0; //[Miscellaneous]->GlobalVars
constexpr long OFF_NAME_LIST = 0xd426160; //[Miscellaneous]->NameList
constexpr long OFF_VIEW_RENDER = 0x76e88b8; //[Miscellaneous]->ViewRender
constexpr long OFF_VIEW_MATRIX = 0x11a350; //[Miscellaneous]->ViewMatrix
constexpr long OFF_LEVEL_NAME = 0x18356c4; //[Miscellaneous]->LevelName
constexpr long OFF_PROJECTILE_SPEED = 0x04ec + 0x19d8; //[Miscellaneous]->CWeaponX!m_flProjectileSpeed //[WeaponSettings]->projectile_launch_speed + [WeaponSettingsMeta]->base
constexpr long OFF_PROJECTILE_SCALE = OFF_PROJECTILE_SPEED + 0x8; //[Miscellaneous]->CWeaponX!m_flProjectileScale //[WeaponSettings]->projectile_gravity_scale + [WeaponSettingsMeta]->base
constexpr long OFF_CAMERA_ORIGIN = 0x1ee0; //[Miscellaneous]->CPlayer!camera_origin
constexpr long OFF_STUDIO_HDR = 0x1000; //[Miscellaneous]->CBaseAnimating!m_pStudioHdr
// [RecvTable.DT_BaseAnimating]
constexpr long OFF_BONE = 0x0db0 + 0x48; //[RecvTable.DT_BaseAnimating]->m_nForceBone + 0x48
// [RecvTable.DT_BaseCombatCharacter]
constexpr long OFF_WEAPON_HANDLE = 0x1944; //[RecvTable.DT_BaseCombatCharacter]->m_latestPrimaryWeapons
constexpr long OFF_GRENADE_HANDLE = 0x1954; //[RecvTable.DT_BaseCombatCharacter]->m_latestNonOffhandWeapons
constexpr long OFF_LAST_VISIBLE_TIME = 0x19a0; //[Miscellaneous]->CPlayer!lastVisibleTime //[RecvTable.DT_BaseCombatCharacter]->m_hudInfo_visibilityTestAlwaysPasses + 0x2
constexpr long OFF_LAST_AIMEDAT_TIME = 0x19a8; //[Miscellaneous]->CWeaponX!lastCrosshairTargetTime //[RecvTable.DT_BaseCombatCharacter]->m_hudInfo_visibilityTestAlwaysPasses + 0x2 + 0x8
// [RecvTable.DT_BaseEntity]
constexpr long OFF_SHIELD = 0x01a0; //[RecvTable.DT_BaseEntity]->m_shieldHealth
constexpr long OFF_TEAM_NUMBER = 0x0338; //[RecvTable.DT_BaseEntity]->m_iTeamNum
constexpr long OFF_SQUAD_ID = 0x0344; //[RecvTable.DT_BaseEntity]->m_squadID
constexpr long OFF_NAME = 0x0481; //[RecvTable.DT_BaseEntity]->m_iName
constexpr long OFF_NAME_INDEX = 0x38; //[RecvTable.DT_BaseEntity]
// [RecvTable.DT_LocalPlayerExclusive]
constexpr long OFF_TRAVERSAL_PROGRESS = 0x2b6c; //[RecvTable.DT_LocalPlayerExclusive]->m_traversalProgress
constexpr long OFF_TRAVERSAL_START_TIME = 0x2b70; //[RecvTable.DT_LocalPlayerExclusive]->m_traversalStartTime
// [RecvTable.DT_Player]
constexpr long OFF_HEALTH = 0x0328; //[RecvTable.DT_Player]->m_iHealth
constexpr long OFF_LIFE_STATE = 0x0690; //[RecvTable.DT_Player]->m_lifeState
constexpr long OFF_BLEEDOUT_STATE = 0x2760; //[RecvTable.DT_Player]->m_bleedoutState
constexpr long OFF_XP_LEVEL = 0x3784; //[RecvTable.DT_Player]->m_xp
//[RecvTable.DT_PropSurvival]
constexpr long OFF_ITEM_HANDLE = 0x1568; //[RecvTable.DT_PropSurvival]->m_customScriptInt
// [RecvTable.DT_WeaponX]
constexpr long OFF_WEAPON_INDEX = 0x1788; //[RecvTable.DT_WeaponX]->m_weaponNameIndex
// [DataMap.C_BaseEntity]
constexpr long OFF_LOCAL_ORIGIN = 0x017c; //[DataMap.C_BaseEntity]->m_vecAbsOrigin
// [DataMap.C_Player]
constexpr long OFF_ZOOMING = 0x1be1; //[DataMap.C_Player]->m_bZooming
constexpr long OFF_TIME_BASE = 0x2088; //[DataMap.C_Player]->m_currentFramePlayer.timeBase
constexpr long OFF_YAW = 0x223c - 0x8; //[DataMap.C_Player]->m_currentFramePlayer.m_ammoPoolCount - 0x8
constexpr long OFF_VIEW_ANGLES = 0x2534 - 0x14; //[DataMap.C_Player]->m_ammoPoolCapacity - 0x14
// [DataMap.WeaponPlayerData]
constexpr long OFF_ZOOM_FOV = 0x15e0 + 0x00bc; //[RecvTable.DT_WeaponX]->m_playerData + [DataMap.WeaponPlayerData]->m_targetZoomFOV
// [ConVars]
constexpr long OFF_GAME_MODE = 0x0246c460; //[ConVars]->mp_gamemode
// [Static]
constexpr long OFF_REGION = 0x140000000; //[Static]->Region
// [IDA]
constexpr long OFF_OBSERVER_LIST = 0x01f60fa0 + 0x20c8; //[ConVars]->gamepad_aim_assist_melee + 0x20c8 //IDA signature >> [48 8B 0D ? ? ? ? 48 85 C9 74 ? 48 8B 01 FF ? ? 48 85 C0 74 ? 48 63 4E 38]
constexpr long OFF_OBSERVER_ARRAY = 0x974; //[RecvTable.DT_GlobalNonRewinding]->m_gameTimescale //IDA signature >> [8B 84 C8 ? ? ? ? 83 F8]
