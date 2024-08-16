#! /usr/bin/bash

me=$(basename "$0")
target="${me%.sh}"

GameVersion=$(sed -nr "/^\[Miscellaneous\]/ { :l /^GameVersion[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
cl_entitylist=$(sed -nr "/^\[Miscellaneous\]/ { :l /^cl_entitylist[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
LocalPlayer=$(sed -nr "/^\[Miscellaneous\]/ { :l /^LocalPlayer[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
GlobalVars=$(sed -nr "/^\[Miscellaneous\]/ { :l /^GlobalVars[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
NameList=$(sed -nr "/^\[Miscellaneous\]/ { :l /^NameList[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
ViewRender=$(sed -nr "/^\[Miscellaneous\]/ { :l /^ViewRender[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
ViewMatrix=$(sed -nr "/^\[Miscellaneous\]/ { :l /^ViewMatrix[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
LevelName=$(sed -nr "/^\[Miscellaneous\]/ { :l /^LevelName[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
projectile_launch_speed=$(sed -nr "/^\[WeaponSettings\]/ { :l /^projectile_launch_speed[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
base=$(sed -nr "/^\[WeaponSettingsMeta\]/ { :l /^base[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
camera_origin=$(sed -nr "/^\[Miscellaneous\]/ { :l /^CPlayer!camera_origin[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_pStudioHdr=$(sed -nr "/^\[Miscellaneous\]/ { :l /^CBaseAnimating!m_pStudioHdr[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
in_attack=$(sed -nr "/^\[Buttons\]/ { :l /^in_attack[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_nForceBone=$(sed -nr "/^\[RecvTable.DT_BaseAnimating\]/ { :l /^m_nForceBone[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_latestPrimaryWeapons=$(sed -nr "/^\[RecvTable.DT_BaseCombatCharacter\]/ { :l /^m_latestPrimaryWeapons[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_latestNonOffhandWeapons=$(sed -nr "/^\[RecvTable.DT_BaseCombatCharacter\]/ { :l /^m_latestNonOffhandWeapons[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
lastVisibleTime=$(sed -nr "/^\[Miscellaneous\]/ { :l /^CPlayer!lastVisibleTime[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
lastCrosshairTargetTime=$(sed -nr "/^\[Miscellaneous\]/ { :l /^CWeaponX!lastCrosshairTargetTime[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_shieldHealth=$(sed -nr "/^\[RecvTable.DT_BaseEntity\]/ { :l /^m_shieldHealth[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_iTeamNum=$(sed -nr "/^\[RecvTable.DT_BaseEntity\]/ { :l /^m_iTeamNum[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_squadID=$(sed -nr "/^\[RecvTable.DT_BaseEntity\]/ { :l /^m_squadID[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_iName=$(sed -nr "/^\[RecvTable.DT_BaseEntity\]/ { :l /^m_iName[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_traversalProgress=$(sed -nr "/^\[RecvTable.DT_LocalPlayerExclusive\]/ { :l /^m_traversalProgress[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_traversalStartTime=$(sed -nr "/^\[RecvTable.DT_LocalPlayerExclusive\]/ { :l /^m_traversalStartTime[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_traversalReleaseTime=$(sed -nr "/^\[RecvTable.DT_LocalPlayerExclusive\]/ { :l /^m_traversalReleaseTime[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_iHealth=$(sed -nr "/^\[RecvTable.DT_Player\]/ { :l /^m_iHealth[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_lifeState=$(sed -nr "/^\[RecvTable.DT_Player\]/ { :l /^m_lifeState[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_bleedoutState=$(sed -nr "/^\[RecvTable.DT_Player\]/ { :l /^m_bleedoutState[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_xp=$(sed -nr "/^\[RecvTable.DT_Player\]/ { :l /^m_xp[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_weaponNameIndex=$(sed -nr "/^\[RecvTable.DT_WeaponX\]/ { :l /^m_weaponNameIndex[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_vecAbsVelocity=$(sed -nr "/^\[DataMap.C_BaseEntity\]/ { :l /^m_vecAbsVelocity[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_vecAbsOrigin=$(sed -nr "/^\[DataMap.C_BaseEntity\]/ { :l /^m_vecAbsOrigin[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_bZooming=$(sed -nr "/^\[DataMap.C_Player\]/ { :l /^m_bZooming[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
timeBase=$(sed -nr "/^\[DataMap.C_Player\]/ { :l /^m_currentFramePlayer.timeBase[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_ammoPoolCount=$(sed -nr "/^\[DataMap.C_Player\]/ { :l /^m_currentFramePlayer.m_ammoPoolCount[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_ammoPoolCapacity=$(sed -nr "/^\[DataMap.C_Player\]/ { :l /^m_ammoPoolCapacity[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_playerData=$(sed -nr "/^\[RecvTable.DT_WeaponX\]/ { :l /^m_playerData[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
m_targetZoomFOV=$(sed -nr "/^\[DataMap.WeaponPlayerData\]/ { :l /^m_targetZoomFOV[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)
mp_gamemode=$(sed -nr "/^\[DataMap.C_Player\]/ { :l /^mp_gamemode[ ]*=/ { s/[^=]*=[ ]*//; p; q;}; n; b l;}" ./$target.txt)

echo "#pragma once"
echo "// generated by ${target}"
echo "// [Miscellaneous]"
echo "constexpr std::string OFF_GAME_VERSION = \"${GameVersion::-1}\"; //[Miscellaneous]->GameVersion"
echo "constexpr long OFF_ENTITY_LIST = ${cl_entitylist::-1}; //[Miscellaneous]->cl_entitylist"
echo "constexpr long OFF_LOCAL_PLAYER = ${LocalPlayer::-1}; //[Miscellaneous]->LocalPlayer"
echo "constexpr long OFF_GLOBAL_VARS = ${GlobalVars::-1}; //[Miscellaneous]->GlobalVars"
echo "constexpr long OFF_NAMELIST = ${NameList::-1}; //[Miscellaneous]->NameList"
echo "constexpr long OFF_VIEW_RENDER = ${ViewRender::-1}; //[Miscellaneous]->ViewRender"
echo "constexpr long OFF_VIEW_MATRIX = ${ViewMatrix::-1}; //[Miscellaneous]->ViewMatrix"
echo "constexpr long OFF_LEVEL = ${LevelName::-1}; //[Miscellaneous]->LevelName"
echo "constexpr long OFF_PROJECTILESPEED = ${projectile_launch_speed::-1} + ${base::-1}; //[Miscellaneous]->CWeaponX!m_flProjectileSpeed //[WeaponSettings]->projectile_launch_speed + [WeaponSettingsMeta]->base"
echo "constexpr long OFF_PROJECTILESCALE = OFF_PROJECTILESPEED + 0x8; //[Miscellaneous]->CWeaponX!m_flProjectileScale //[WeaponSettings]->projectile_gravity_scale + [WeaponSettingsMeta]->base"
echo "constexpr long OFF_CAMERAORIGIN = ${camera_origin::-1}; //[Miscellaneous]->CPlayer!camera_origin"
echo "constexpr long OFF_STUDIOHDR = ${m_pStudioHdr::-1}; //[Miscellaneous]->CBaseAnimating!m_pStudioHdr"
echo "// [Buttons]"
echo "constexpr long OFF_IN_ATTACK = ${in_attack::-1}; //[Buttons]->in_attack"
echo "// [RecvTable.DT_BaseAnimating]"
echo "constexpr long OFF_BONES = ${m_nForceBone::-1} + 0x48; //[RecvTable.DT_BaseAnimating]->m_nForceBone + 0x48"
echo "// [RecvTable.DT_BaseCombatCharacter]"
echo "constexpr long OFF_WEAPON_HANDLE = ${m_latestPrimaryWeapons::-1}; //[RecvTable.DT_BaseCombatCharacter]->m_latestPrimaryWeapons"
echo "constexpr long OFF_GRENADE_HANDLE = ${m_latestNonOffhandWeapons::-1}; //[RecvTable.DT_BaseCombatCharacter]->m_latestNonOffhandWeapons"
echo "constexpr long OFF_LAST_VISIBLE_TIME = ${lastVisibleTime::-1}; //[Miscellaneous]->CPlayer!lastVisibleTime //[RecvTable.DT_BaseCombatCharacter]->m_hudInfo_visibilityTestAlwaysPasses + 0x2"
echo "constexpr long OFF_LAST_AIMEDAT_TIME = ${lastCrosshairTargetTime::-1}; //[Miscellaneous]->CWeaponX!lastCrosshairTargetTime //[RecvTable.DT_BaseCombatCharacter]->m_hudInfo_visibilityTestAlwaysPasses + 0x2 + 0x8"
echo "// [RecvTable.DT_BaseEntity]"
echo "constexpr long OFF_CURRENT_SHIELDS = ${m_shieldHealth::-1}; //[RecvTable.DT_BaseEntity]->m_shieldHealth"
echo "constexpr long OFF_TEAM_NUMBER = ${m_iTeamNum::-1}; //[RecvTable.DT_BaseEntity]->m_iTeamNum"
echo "constexpr long OFF_SQUAD_ID = ${m_squadID::-1}; //[RecvTable.DT_BaseEntity]->m_squadID"
echo "constexpr long OFF_NAME = ${m_iName::-1}; //[RecvTable.DT_BaseEntity]->m_iName"
echo "constexpr long OFF_NAMEINDEX = 0x38; //[RecvTable.DT_BaseEntity]"
echo "// [RecvTable.DT_LocalPlayerExclusive]"
echo "constexpr long OFFSET_TRAVERSAL_PROGRESS = ${m_traversalProgress::-1}; //[RecvTable.DT_LocalPlayerExclusive]->m_traversalProgress"
echo "constexpr long OFFSET_TRAVERSAL_START_TIME = ${m_traversalStartTime::-1}; //[RecvTable.DT_LocalPlayerExclusive]->m_traversalStartTime"
echo "constexpr long OFFSET_TRAVERSAL_RELEASE_TIME = ${m_traversalReleaseTime::-1}; //[RecvTable.DT_LocalPlayerExclusive]->m_traversalReleaseTime"
echo "// [RecvTable.DT_Player]"
echo "constexpr long OFF_CURRENT_HEALTH = ${m_iHealth::-1}; //[RecvTable.DT_Player]->m_iHealth"
echo "constexpr long OFF_LIFE_STATE = ${m_lifeState::-1}; //[RecvTable.DT_Player]->m_lifeState"
echo "constexpr long OFF_BLEEDOUT_STATE = ${m_bleedoutState::-1}; //[RecvTable.DT_Player]->m_bleedoutState"
echo "constexpr long OFF_XPLEVEL = ${m_xp::-1}; //[RecvTable.DT_Player]->m_xp"
echo "// [RecvTable.DT_WeaponX]"
echo "constexpr long OFF_WEAPON_INDEX = ${m_weaponNameIndex::-1}; //[RecvTable.DT_WeaponX]->m_weaponNameIndex"
echo "// [DataMap.C_BaseEntity]"
echo "constexpr long OFF_ABSVELOCITY = ${m_vecAbsVelocity::-1}; //[DataMap.C_BaseEntity]->m_vecAbsVelocity"
echo "constexpr long OFF_LOCAL_ORIGIN = ${m_vecAbsOrigin::-1}; //[DataMap.C_BaseEntity]->m_vecAbsOrigin"
echo "// [DataMap.C_Player]"
echo "constexpr long OFF_ZOOMING = ${m_bZooming::-1}; //[DataMap.C_Player]->m_bZooming"
echo "constexpr long OFFSET_TIME_BASE = ${timeBase::-1}; //[DataMap.C_Player]->m_currentFramePlayer.timeBase"
echo "constexpr long OFF_YAW = ${m_ammoPoolCount::-1} - 0x8; //[DataMap.C_Player]->m_currentFramePlayer.m_ammoPoolCount - 0x8"
echo "constexpr long OFF_VIEW_ANGLES = ${m_ammoPoolCapacity::-1} - 0x14; //[DataMap.C_Player]->m_ammoPoolCapacity - 0x14"
echo "// [DataMap.WeaponPlayerData]"
echo "constexpr long OFF_ZOOM_FOV = ${m_playerData::-1} + ${m_targetZoomFOV::-1}; //[RecvTable.DT_WeaponX]->m_playerData + [DataMap.WeaponPlayerData]->m_targetZoomFOV"
echo "// [ConVars]"
echo "constexpr long OFF_GAMEMODE = ${mp_gamemode::-1}; //[ConVars]->mp_gamemode"
echo "// [Static]"
echo "constexpr long OFF_REGION = 0x140000000; //[Static]->Region"
echo "// [IDA]"
echo "constexpr long OFF_OBSERVER_LIST = 0x1f17ee8; //IDA signature >> [48 8B 0D ? ? ? ? 48 85 C9 74 ? 48 8B 01 FF ? ? 48 85 C0 74 ? 48 63 4E 38]"
echo "constexpr long OFF_OBSERVER_ARRAY = 0x964;// + 0x10;"
