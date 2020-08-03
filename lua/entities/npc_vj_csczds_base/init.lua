AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/czeror/t_ct_shared.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 80
ENT.HullType = HULL_HUMAN
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
--ENT.CustomBlood_Particle = {"vj_hl_blood_red"}
ENT.CustomBlood_Decal = {"VJ_HLR_Blood_Red"} -- Decals to spawn when it's damaged
ENT.CustomBlood_Particle = {"vj_hl_blood_red"}
ENT.HasBloodPool = false -- Does it have a blood pool?
ENT.VJ_NPC_Class = {"CLASS_UNITED_STATES"} -- NPCs with the same class with be allied to each other
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1} -- Melee Attack Animations
ENT.MeleeAttackDamage = 10
ENT.TimeUntilMeleeAttackDamage = false -- This counted in seconds | This calculates the time until it hits something
ENT.HasGrenadeAttack = true -- Should the SNPC have a grenade attack?
ENT.GrenadeAttackModel = "models/vj_hlr/czeror/weapons/w_hegrenade.mdl"
ENT.AnimTbl_GrenadeAttack = {ACT_SPECIAL_ATTACK2} -- Grenade Attack Animations
ENT.GrenadeAttackAttachment = "1" -- The attachment that the grenade will spawn at
ENT.TimeUntilGrenadeIsReleased = 1.8 -- Time until the grenade is released
ENT.NextThrowGrenadeTime1 = 10 -- Time until it runs the throw grenade code again | The first # in math.random
ENT.NextThrowGrenadeTime2 = 12 -- Time until it runs the throw grenade code again | The second # in math.random
ENT.ThrowGrenadeChance = 3 -- Chance that it will throw the grenade | Set to 1 to throw all the time
ENT.Medic_DisableAnimation = true -- if true, it will disable the animation code
ENT.Medic_SpawnPropOnHeal = false -- Should it spawn a prop, such as small health vial at a attachment when healing an ally?
ENT.Medic_TimeUntilHeal = 4 -- Time until the ally receives health | Set to false to let the base decide the time
ENT.Weapon_NoSpawnMenu = true -- If set to true, the NPC weapon setting in the spawnmenu will not be applied for this SNPC
ENT.DisableWeaponFiringGesture = true -- If set to true, it will disable the weapon firing gestures
ENT.MoveRandomlyWhenShooting = false -- Should it move randomly when shooting?
//ENT.PoseParameterLooking_InvertPitch = true -- Inverts the pitch poseparameters (X)
//ENT.PoseParameterLooking_Names = {pitch={"XR"},yaw={},roll={"ZR"}} -- Custom pose parameters to use, can put as many as needed
ENT.AnimTbl_ShootWhileMovingRun = {ACT_SPRINT} -- Animations it will play when shooting while running | NOTE: Weapon may translate the animation that they see fit!
ENT.AnimTbl_ShootWhileMovingWalk = {ACT_SPRINT} -- Animations it will play when shooting while walking | NOTE: Weapon may translate the animation that they see fit!
ENT.CallForBackUpOnDamageAnimation = {ACT_SIGNAL3} -- Animation used if the SNPC does the CallForBackUpOnDamage function
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
ENT.AnimTbl_CallForHelp = {ACT_SIGNAL1} -- Call For Help Animations
ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.AnimTbl_Death = {ACT_DIEBACKWARD,ACT_DIEFORWARD,ACT_DIE_GUTSHOT,ACT_DIE_HEADSHOT,ACT_DIESIMPLE} -- Death Animations
ENT.DeathAnimationTime = 0.8 -- Time until the SNPC spawns its corpse and gets removed
ENT.AnimTbl_TakingCover = {ACT_CROUCHIDLE} -- The animation it plays when hiding in a covered position, leave empty to let the base decide
ENT.AnimTbl_AlertFriendsOnDeath = {"vjseq_idle2"} -- Animations it plays when an ally dies that also has AlertFriendsOnDeath set to true
ENT.DropWeaponOnDeathAttachment = "rhand" -- Which attachment should it use for the weapon's position
ENT.HasLostWeaponSightAnimation = true -- Set to true if you would like the SNPC to play a different animation when it has lost sight of the enemy and can't fire at it
ENT.AnimTbl_WeaponReload = {ACT_RELOAD_SMG1} -- Animations that play when the SNPC reloads
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.AnimTbl_Flinch = {ACT_SMALL_FLINCH} -- If it uses normal based animation, use this
ENT.HasHitGroupFlinching = true -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_LEFTLEG}, Animation = {ACT_FLINCH_LEFTLEG}},{HitGroup = {HITGROUP_RIGHTLEG}, Animation = {ACT_FLINCH_RIGHTLEG}}}

	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {"vj_hlr/czeror_fx/npc_step1.wav","vj_hlr/czeror_fx/npc_step2.wav","vj_hlr/czeror_fx/npc_step3.wav","vj_hlr/czeror_fx/npc_step4.wav"}
	-- ====== Controller Variables ====== --
ENT.Controller_FirstPersonBone = "Bip01 Head"
ENT.Controller_FirstPersonOffset = Vector(4,0,5)
ENT.Controller_FirstPersonAngle = Angle(90,0,90)

-- Custom
ENT.Faction_Type = 0
	-- 0 = CS:CZDS Terrorists
	-- 1 = CS:CZDS Counter-Terrorists
	-- 2 = Special/Boss
ENT.Faction_WepBG = 2 -- The bodygroup that the weapons are in (Ourish e amen modelneroun)
ENT.Faction_LastBodyGroup = 99
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Faction_CustomOnInitialize()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self.SoundTbl_Idle = {}
	self.SoundTbl_IdleDialogue = {}
	self.SoundTbl_IdleDialogueAnswer = {}
	self.SoundTbl_CombatIdle = {}
	self.SoundTbl_OnReceiveOrder = {}
	self.SoundTbl_FollowPlayer = {}
	self.SoundTbl_UnFollowPlayer = {}
	self.SoundTbl_MoveOutOfPlayersWay = {}
	self.SoundTbl_MedicBeforeHeal = {}
	self.SoundTbl_MedicAfterHeal = {}
	self.SoundTbl_MedicReceiveHeal = {}
	self.SoundTbl_OnPlayerSight = {}
	self.SoundTbl_Investigate = {}
	self.SoundTbl_LostEnemy = {}
	self.SoundTbl_Alert = {}
	self.SoundTbl_CallForHelp = {}
	self.SoundTbl_BecomeEnemyToPlayer = {}
	self.SoundTbl_Suppressing = {}
	self.SoundTbl_WeaponReload = {}
	self.SoundTbl_BeforeMeleeAttack = {}
	self.SoundTbl_MeleeAttack = {}
	self.SoundTbl_MeleeAttackExtra = {}
	self.SoundTbl_MeleeAttackMiss = {}
	self.SoundTbl_GrenadeAttack = {}
	self.SoundTbl_OnGrenadeSight = {}
	self.SoundTbl_OnKilledEnemy = {}
	self.SoundTbl_AllyDeath = {}
	self.SoundTbl_Pain = {}
	self.SoundTbl_Impact = {}
	self.SoundTbl_DamageByPlayer = {}
	self.SoundTbl_Death = {}
	
	self:SetCollisionBounds(Vector(15, 15, 68), Vector(-15, -15, 0))
	self.Faction_WepBG = 2
	if self:GetModel() == "models/vj_hlr/czeror/arctic.mdl" or self:GetModel() == "models/vj_hlr/czeror/terror.mdl" or self:GetModel() == "models/vj_hlr/czeror/guerilla.mdl" or self:GetModel() == "models/vj_hlr/czeror/asian.mdl" or self:GetModel() == "models/vj_hlr/czeror/asian_punk.mdl" then
		self.Faction_Type = 0
	elseif self:GetModel() == "models/vj_hlr/czeror/gign.mdl" or self:GetModel() == "models/vj_hlr/czeror/gsg9.mdl" then
		self.Faction_Type = 1
	elseif self:GetModel() == "models/vj_hlr/czeror/drug_lord.mdl" or self:GetModel() == "models/vj_hlr/czeror/italian_vip.mdl" then
		self.Faction_WepBG = 1
		self.Faction_Type = 2
	end
	
	self.Faction_NextMouthMove = CurTime()
	self:Faction_CustomOnInitialize()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnPlayCreateSound(SoundData,SoundFile)
	if !self.SoundTbl_Breath[SoundFile] then
		self.Faction_NextMouthMove = CurTime() + SoundDuration(SoundFile)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	//print(key)
	if key == "step" then
		self:FootStepSoundCode()
	end
	if key == "melee" or key == "machete_melee" then
		self:MeleeAttackCode()
	end
	if key == "fire" then
		local wep = self:GetActiveWeapon()
		if IsValid(wep) then
			wep:NPCShoot_Primary(ShootPos,ShootDir)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Faction_CustomOnThink()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	self:Faction_CustomOnThink()
	-- Veravorvadz kalel
	if self:Health() <= (self:GetMaxHealth() / 2.2) && self.Faction_Type != 6 && self.Faction_Type != 7 then
		self.AnimTbl_Walk = {ACT_WALK_HURT}
		self.AnimTbl_Run = {ACT_RUN_HURT}
		self.AnimTbl_ShootWhileMovingWalk = {ACT_WALK_HURT}
		self.AnimTbl_ShootWhileMovingRun = {ACT_RUN_HURT}
	else
		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_RUN}
		self.AnimTbl_ShootWhileMovingWalk = {ACT_WALK}
		self.AnimTbl_ShootWhileMovingRun = {ACT_RUN}
	end
	
	local bgroup = self:GetBodygroup(self.Faction_WepBG)
	if self.Faction_LastBodyGroup != bgroup then
		self.Faction_LastBodyGroup = bgroup
		if self.Faction_Type == 0 then
			if bgroup == 0 then -- MP5
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_mp5")
				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1_LOW}
				self.Weapon_StartingAmmoAmount = 30
			elseif bgroup == 1 then -- XM1014
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_xm1014")
				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SHOTGUN}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SHOTGUN_LOW}
				self.AnimTbl_WeaponReload = {ACT_RELOAD_SHOTGUN}
				self.Weapon_StartingAmmoAmount = 7
			elseif bgroup == 2 then -- M72 LAW
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_law")
				self.AnimTbl_WeaponReload = {ACT_HL2MP_GESTURE_RELOAD_RPG}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK2}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK2}
				self.AnimTbl_IdleStand = {ACT_IDLE_RPG}
				self.AnimTbl_Walk = {ACT_IDLE_RPG}
				self.AnimTbl_Run = {ACT_RUN_RPG}
				self.AnimTbl_LostWeaponSight = {ACT_IDLE_ANGRY_RPG}
				self.Weapon_StartingAmmoAmount = 1
			elseif bgroup == 3 then -- AWM
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_awm")
				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_LostWeaponSight = {ACT_HL2MP_IDLE_AR2}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_AR2}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_AR2_LOW}
				self.Weapon_StartingAmmoAmount = 10
			elseif bgroup == 4 then -- AK-47
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_ak47")
				self.AnimTbl_IdleStand = {ACT_IDLE_SMG1}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1_LOW}
				self.Weapon_StartingAmmoAmount = 30
			elseif bgroup == 5 then -- Glock-18
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_glock18")
				self.AnimTbl_IdleStand = {ACT_IDLE_PISTOL}
				self.AnimTbl_WeaponReload = {ACT_RELOAD_PISTOL}
				self.AnimTbl_LostWeaponSight = {ACT_IDLE_ANGRY_PISTOL}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_PISTOL}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_PISTOL_LOW}
				self.Weapon_StartingAmmoAmount = 20
			elseif bgroup == 6 then -- Machete (WIP, not sure how to implement this properly)
				self.NoWeapon_UseScaredBehavior = false
				self.MeleeAttackDamage = 35
				self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK_SWING}
			elseif bgroup == 7 then -- M60
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_m60")
				self.AnimTbl_IdleStand = {ACT_IDLE_SMG1}
				self.AnimTbl_WeaponAttack = {ACT_GESTURE_RANGE_ATTACK_HMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_GESTURE_RANGE_ATTACK_HMG1}
				self.Weapon_StartingAmmoAmount = 100
			elseif bgroup == 8 then -- TMP
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_tmp")
				self.AnimTbl_IdleStand = {ACT_IDLE_SMG1}
				self.AnimTbl_WeaponAttack = {ACT_MP_ATTACK_STAND_PRIMARYFIRE}
				self.AnimTbl_WeaponAttackCrouch = {ACT_MP_ATTACK_CROUCH_PRIMARYFIRE}
				self.Weapon_StartingAmmoAmount = 30
			end
		elseif self.Faction_Type == 1 then
			if bgroup == 0 then -- MP5
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_mp5")
				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1_LOW}
				self.Weapon_StartingAmmoAmount = 30
			elseif bgroup == 1 then -- XM1014
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_xm1014")
				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SHOTGUN}
				self.AnimTbl_WeaponReload = {ACT_RELOAD_SHOTGUN}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SHOTGUN_LOW}
				self.Weapon_StartingAmmoAmount = 7
			elseif bgroup == 2 then -- M72 LAW
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_law")
				self.AnimTbl_WeaponReload = {ACT_HL2MP_GESTURE_RELOAD_RPG}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK2}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK2}
				self.AnimTbl_IdleStand = {ACT_IDLE_RPG}
				self.AnimTbl_Walk = {ACT_IDLE_RPG}
				self.AnimTbl_Run = {ACT_RUN_RPG}
				self.AnimTbl_LostWeaponSight = {ACT_IDLE_ANGRY_RPG}
				self.Weapon_StartingAmmoAmount = 1
			elseif bgroup == 3 then -- Scout
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_scout")
				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_LostWeaponSight = {ACT_HL2MP_IDLE_AR2}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_AR2}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_AR2_LOW}
				self.Weapon_StartingAmmoAmount = 10
			elseif bgroup == 4 then -- M4A1
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_m4a1")
				self.AnimTbl_IdleStand = {ACT_IDLE_SMG1}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1_LOW}
				self.Weapon_StartingAmmoAmount = 30
			elseif bgroup == 5 then -- USP
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_usp")
				self.AnimTbl_IdleStand = {ACT_IDLE_PISTOL}
				self.AnimTbl_WeaponReload = {ACT_RELOAD_PISTOL}
				self.AnimTbl_LostWeaponSight = {ACT_IDLE_ANGRY_PISTOL}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_PISTOL}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_PISTOL_LOW}
				self.Weapon_StartingAmmoAmount = 12
			elseif bgroup == 6 then -- M60
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_m60")
				self.AnimTbl_IdleStand = {ACT_IDLE_SMG1}
				self.AnimTbl_WeaponAttack = {ACT_GESTURE_RANGE_ATTACK_HMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_GESTURE_RANGE_ATTACK_HMG1}
				self.Weapon_StartingAmmoAmount = 100
			elseif bgroup == 7 then -- MAC-10
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_mac10")
				self.AnimTbl_IdleStand = {ACT_IDLE_SMG1}
				self.AnimTbl_WeaponAttack = {ACT_MP_ATTACK_STAND_PRIMARYFIRE}
				self.AnimTbl_WeaponAttackCrouch = {ACT_MP_ATTACK_CROUCH_PRIMARYFIRE}
				self.Weapon_StartingAmmoAmount = 30
			end
		end
		if self.Faction_Type == 2 then
			if bgroup == 0 and self:GetModel() == "models/vj_hlr/czeror/drug_lord.mdl" then -- M60
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_m60")
				self.AnimTbl_IdleStand = {ACT_IDLE_SMG1}
				self.AnimTbl_WeaponAttack = {ACT_GESTURE_RANGE_ATTACK_HMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_GESTURE_RANGE_ATTACK_HMG1}
				self.Weapon_StartingAmmoAmount = 100
			elseif bgroup == 0 then -- MP5
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_mp5")
				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1_LOW}
				self.Weapon_StartingAmmoAmount = 30
			elseif bgroup == 1 then -- XM1014
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_xm1014")
				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SHOTGUN}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SHOTGUN_LOW}
				self.Weapon_StartingAmmoAmount = 7
			elseif bgroup == 2 then -- M72 LAW
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_law")
				self.AnimTbl_WeaponReload = {ACT_HL2MP_GESTURE_RELOAD_RPG}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK2}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK2}
				self.AnimTbl_IdleStand = {ACT_IDLE_RPG}
				self.AnimTbl_Walk = {ACT_IDLE_RPG}
				self.AnimTbl_Run = {ACT_RUN_RPG}
				self.AnimTbl_LostWeaponSight = {ACT_IDLE_ANGRY_RPG}
				self.Weapon_StartingAmmoAmount = 1
			elseif bgroup == 3 then -- AWM
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_awm")
				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_LostWeaponSight = {ACT_HL2MP_IDLE_AR2}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_AR2}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_AR2_LOW}
				self.Weapon_StartingAmmoAmount = 10
			elseif bgroup == 4 then -- AK-47
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_ak47")
				self.AnimTbl_IdleStand = {ACT_IDLE_SMG1}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_SMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_SMG1_LOW}
				self.Weapon_StartingAmmoAmount = 30
			elseif bgroup == 5 then -- Glock-18
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_glock18")
				self.AnimTbl_IdleStand = {ACT_IDLE_PISTOL}
				self.AnimTbl_LostWeaponSight = {ACT_IDLE_ANGRY_PISTOL}
				self.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK_PISTOL}
				self.AnimTbl_WeaponAttackCrouch = {ACT_RANGE_ATTACK_PISTOL_LOW}
				self.Weapon_StartingAmmoAmount = 20
			elseif bgroup == 6 then -- Machete (WIP, not sure how to implement this properly)
				self.NoWeapon_UseScaredBehavior = false
				self.MeleeAttackDamage = 35
				self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK_SWING}
			elseif bgroup == 7 then -- M60
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_m60")
				self.AnimTbl_IdleStand = {ACT_IDLE_SMG1}
				self.AnimTbl_WeaponAttack = {ACT_GESTURE_RANGE_ATTACK_HMG1}
				self.AnimTbl_WeaponAttackCrouch = {ACT_GESTURE_RANGE_ATTACK_HMG1}
				self.Weapon_StartingAmmoAmount = 100
			elseif bgroup == 8 then -- TMP
				self.MeleeAttackDistance = 30
				self:DoChangeWeapon("weapon_vj_csczds_tmp")
				self.AnimTbl_IdleStand = {ACT_IDLE_SMG1}
				self.AnimTbl_WeaponAttack = {ACT_MP_ATTACK_STAND_PRIMARYFIRE}
				self.AnimTbl_WeaponAttackCrouch = {ACT_MP_ATTACK_CROUCH_PRIMARYFIRE}
				self.Weapon_StartingAmmoAmount = 30
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnGrenadeAttack_OnThrow(GrenadeEntity)
	GrenadeEntity.DecalTbl_DeathDecals = {"VJ_HLR_Scorch"}
	GrenadeEntity.SoundTbl_OnCollide = {"vj_hlr/czeror_weapon/he_bounce-1.wav"}
	GrenadeEntity.SoundTbl_OnRemove = {"vj_hlr/czeror_weapon/hegrenade-1.wav","vj_hlr/czeror_weapon/hegrenade-2.wav"}
	GrenadeEntity.OnRemoveSoundLevel = 100
	
	function GrenadeEntity:CustomOnPhysicsCollide(data,phys)
		getvelocity = phys:GetVelocity()
		velocityspeed = getvelocity:Length()
		phys:SetVelocity(getvelocity * 0.5)
		
		if velocityspeed > 100 then -- If the grenade is going faster than 100, then play the touch sound
			self:OnCollideSoundCode()
		end
	end
	
	function GrenadeEntity:DeathEffects()
		spr = ents.Create("env_sprite")
		spr:SetKeyValue("model","vj_hl/sprites/zerogxplode.vmt")
		spr:SetKeyValue("GlowProxySize","2.0")
		spr:SetKeyValue("HDRColorScale","1.0")
		spr:SetKeyValue("renderfx","14")
		spr:SetKeyValue("rendermode","5")
		spr:SetKeyValue("renderamt","255")
		spr:SetKeyValue("disablereceiveshadows","0")
		spr:SetKeyValue("mindxlevel","0")
		spr:SetKeyValue("maxdxlevel","0")
		spr:SetKeyValue("framerate","15.0")
		spr:SetKeyValue("spawnflags","0")
		spr:SetKeyValue("scale","4")
		spr:SetPos(GrenadeEntity:GetPos() + Vector(0,0,90))
		spr:Spawn()
		spr:Fire("Kill","",0.9)
		timer.Simple(0.9,function() if IsValid(spr) then spr:Remove() end end)
		
		light = ents.Create("light_dynamic")
		light:SetKeyValue("brightness", "4")
		light:SetKeyValue("distance", "300")
		light:SetLocalPos(GrenadeEntity:GetPos())
		light:SetLocalAngles( GrenadeEntity:GetAngles() )
		light:Fire("Color", "255 150 0")
		light:SetParent(GrenadeEntity)
		light:Spawn()
		light:Activate()
		light:Fire("TurnOn", "", 0)
		GrenadeEntity:DeleteOnRemove(light)
		util.ScreenShake(GrenadeEntity:GetPos(), 100, 200, 1, 2500)
		
		GrenadeEntity:SetLocalPos(Vector(GrenadeEntity:GetPos().x,GrenadeEntity:GetPos().y,GrenadeEntity:GetPos().z +4)) -- Because the entity is too close to the ground
		local tr = util.TraceLine({
		start = GrenadeEntity:GetPos(),
		endpos = GrenadeEntity:GetPos() - Vector(0, 0, 100),
		filter = GrenadeEntity })
		util.Decal(VJ_PICK(GrenadeEntity.DecalTbl_DeathDecals),tr.HitPos+tr.HitNormal,tr.HitPos-tr.HitNormal)
		
		GrenadeEntity:DoDamageCode()
		GrenadeEntity:SetDeathVariablesTrue(nil,nil,false)
		VJ_EmitSound(self,"vj_hlr/czeror_weapon/debris"..math.random(1,3)..".wav",80,math.random(100,100))
		GrenadeEntity:Remove()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetUpGibesOnDeath(dmginfo,hitgroup)
	self.HasDeathSounds = false
	if hitgroup == HITGROUP_HEAD then
		//self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_skull.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,60))})
		self.HasDeathAnimation = false
		return true,{DeathAnim=false,AllowCorpse=true}
	else
		if self.HasGibDeathParticles == true then
			local bloodeffect = EffectData()
			bloodeffect:SetOrigin(self:GetPos() +self:OBBCenter())
			bloodeffect:SetColor(VJ_Color2Byte(Color(130,19,10)))
			bloodeffect:SetScale(120)
			util.Effect("VJ_Blood1",bloodeffect)
			
			local bloodspray = EffectData()
			bloodspray:SetOrigin(self:GetPos())
			bloodspray:SetScale(8)
			bloodspray:SetFlags(3)
			bloodspray:SetColor(0)
			util.Effect("bloodspray",bloodspray)
			util.Effect("bloodspray",bloodspray)
		end
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/flesh1.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/flesh2.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/flesh3.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/flesh4.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_b_bone.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,50))})
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_b_gib.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_guts.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_hmeat.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,45))})
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_lung.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,45))})
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_skull.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,60))})
		self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_legbone.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,15))})
		return true
	end
	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomGibOnDeathSounds(dmginfo,hitgroup)
	if hitgroup == HITGROUP_HEAD then
		VJ_EmitSound(self,{"vj_hlr/czeror_fx/headshot1.wav","vj_hlr/czeror_fx/headshot2.wav","vj_hlr/czeror_fx/headshot3.wav"},75,math.random(100,100))
	else
		VJ_EmitSound(self,"vj_hlr/czeror_fx/bodysplat"..math.random(1,3)..".wav",100,math.random(100,100))
	end
	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo,hitgroup)
	-- Regular Human Grunt head gib
	if hitgroup == HITGROUP_HEAD && dmginfo:GetDamageForce():Length() > 1 then
		self.GibOnDeathDamagesTable = {"All"}
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo, hitgroup)
	self:DropWeaponOnDeathCode(dmginfo, hitgroup)
	self:CustomOnDeath_BeforeCorpseSpawned(dmginfo, hitgroup)
	if IsValid(self:GetActiveWeapon()) then self:GetActiveWeapon():Remove() end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_BeforeCorpseSpawned(dmginfo,hitgroup)
	if self.Faction_Type == 0 then
		self:SetBodygroup(self.Faction_WepBG,9)
	elseif self.Faction_Type == 2 and self:GetModel() == "models/vj_hlr/czeror/drug_lord.mdl" then
		self:SetBodygroup(self.Faction_WepBG,1)
	elseif self.Faction_Type == 2 and self:GetModel() == "models/vj_hlr/czeror/italian_vip.mdl" then
		self:SetBodygroup(self.Faction_WepBG,9)
	else
		self:SetBodygroup(self.Faction_WepBG,8)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDropWeapon_AfterWeaponSpawned(dmginfo,hitgroup,GetWeapon)
	GetWeapon.WorldModel_Invisible = false
	GetWeapon:SetNWBool("VJ_WorldModel_Invisible",false)
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/