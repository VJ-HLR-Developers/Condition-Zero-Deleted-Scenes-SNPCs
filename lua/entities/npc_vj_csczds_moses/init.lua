AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/czeror/drug_lord.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.VJ_NPC_Class = {"CLASS_CS_TERRORIST"}
ENT.StartHealth = 400
ENT.TimeUntilGrenadeIsReleased = 0.9
ENT.MoveRandomlyWhenShooting = true
ENT.AnimTbl_Flinch = {ACT_SMALL_FLINCH,ACT_BIG_FLINCH}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Faction_CustomOnInitialize()
	self.SoundTbl_Idle = {}
	self.SoundTbl_IdleDialogue = {}
	self.SoundTbl_IdleDialogueAnswer = {}
	self.SoundTbl_CombatIdle = {"vj_hlr/czeror_npc/moses/moses_upicantkill.wav","vj_hlr/czeror_npc/moses/moses_takebas.wav"}
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
	self.SoundTbl_Alert = {"vj_hlr/czeror_npc/moses/moses_comeme.wav","vj_hlr/czeror_npc/moses/moses_killpigs.wav"}
	self.SoundTbl_CallForHelp = {}
	self.SoundTbl_BecomeEnemyToPlayer = {}
	self.SoundTbl_Suppressing = {}
	self.SoundTbl_WeaponReload = {}
	self.SoundTbl_BeforeMeleeAttack = {}
	self.SoundTbl_MeleeAttack = {}
	self.SoundTbl_MeleeAttackExtra = {}
	self.SoundTbl_MeleeAttackMiss = {}
	self.SoundTbl_GrenadeAttack = {"vj_hlr/czeror_npc/moses/moses_eaththis.wav"}
	self.SoundTbl_OnGrenadeSight = {"vj_hlr/czeror_npc/moses/moses_run.wav"}
	self.SoundTbl_OnKilledEnemy = {}
	self.SoundTbl_AllyDeath = {}
	self.SoundTbl_Pain = {"vj_hlr/czeror_npc/t/t_pain1_sp.wav","vj_hlr/czeror_npc/t/t_pain2_sp.wav","vj_hlr/czeror_npc/t/t_pain3_sp.wav","vj_hlr/czeror_npc/t/t_pain4_sp.wav",}
	self.SoundTbl_Death = {"vj_hlr/czeror_npc/moses/moses_death.wav"}
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMoveRandomlyWhenShooting()
	self:VJ_ACT_PLAYACTIVITY({ACT_STRAFE_RIGHT,ACT_STRAFE_LEFT},true,false,false)
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/