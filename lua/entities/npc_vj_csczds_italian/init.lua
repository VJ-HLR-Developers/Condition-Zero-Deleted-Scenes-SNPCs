AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/czeror/italian_vip.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.VJ_NPC_Class = {"CLASS_CS_TERRORIST"}
ENT.StartHealth = 180
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Faction_CustomOnInitialize()
	self.SoundTbl_Idle = {"vj_hlr/czeror_npc/t/t_beonlook_ge.wav","vj_hlr/czeror_npc/t/t_couldshow_ge.wav","vj_hlr/czeror_npc/t/t_damnrats_ge.wav","vj_hlr/czeror_npc/t/t_idle1_am.wav","vj_hlr/czeror_npc/t/t_idle2_am.wav","vj_hlr/czeror_npc/t/t_idle3_am.wav","vj_hlr/czeror_npc/t/t_idle4_am.wav"}
	self.SoundTbl_IdleDialogue = {"vj_hlr/czeror_npc/t/t_whatstat_ge.wav","vj_hlr/czeror_npc/t/t_repin_ge.wav","vj_hlr/czeror_npc/t/t_anysign_ge.wav","vj_hlr/czeror_npc/t/t_echeckin_ge.wav","vj_hlr/czeror_npc/t/t_makesno_ge.wav"}
	self.SoundTbl_IdleDialogueAnswer = {"vj_hlr/czeror_npc/t/t_rogerl_ge.wav","vj_hlr/czeror_npc/t/t_allq_ge.wav","vj_hlr/czeror_npc/t/t_areasec_ge.wav"}
	self.SoundTbl_CombatIdle = {"vj_hlr/czeror_npc/t/t_youdie_ge.wav","vj_hlr/czeror_npc/t/t_letsgo_ge.wav","vj_hlr/czeror_npc/t/t_movein_ge.wav","vj_hlr/czeror_npc/t/t_nochance_ge.wav","vj_hlr/czeror_npc/t/t_wemakesrry_ge.wav"}
	self.SoundTbl_Investigate = {"vj_hlr/czeror_npc/t/t_whos_ge.wav","vj_hlr/czeror_npc/t/t_stayalm_ge.wav","vj_hlr/czeror_npc/t/t_defnotwind_ge.wav","vj_hlr/czeror_npc/t/t_gotanint_ge.wav","vj_hlr/czeror_npc/t/t_heardsomw_ge.wav","vj_hlr/czeror_npc/t/t_heywhat_ge.wav","vj_hlr/czeror_npc/t/t_heyyou_ge.wav","vj_hlr/czeror_npc/t/t_igocheck_ge.wav","vj_hlr/czeror_npc/t/t_ithink_ge.wav","vj_hlr/czeror_npc/t/t_menweapr_ge.wav"}
	self.SoundTbl_LostEnemy = {"vj_hlr/czeror_npc/t/t_whereare_ge.wav","vj_hlr/czeror_npc/t/t_mustbewind_ge.wav"}
	self.SoundTbl_Alert = {"vj_hlr/czeror_npc/t/t_theretheya_ge.wav","vj_hlr/czeror_npc/t/t_shootthem_ge.wav","vj_hlr/czeror_npc/t/t_attack_ge.wav","vj_hlr/czeror_npc/t/t_diepig_ge.wav","vj_hlr/czeror_npc/t/t_gethim_ge.wav","vj_hlr/czeror_npc/t/t_intrudov_ge.wav","vj_hlr/czeror_npc/t/t_kilhim_ge.wav","vj_hlr/czeror_npc/t/t_killthemall_ge.wav"}
	self.SoundTbl_GrenadeAttack = {"vj_hlr/czeror_npc/t/t_grenade_ge.wav"}
	self.SoundTbl_OnGrenadeSight = {"vj_hlr/czeror_npc/t/t_lookout_ge.wav","vj_hlr/czeror_npc/t/t_run_ge.wav","vj_hlr/czeror_npc/t/t_takecov_ge.wav"}
	self.SoundTbl_OnKilledEnemy = {"vj_hlr/czeror_npc/t/t_gonnag_ge.wav","vj_hlr/czeror_npc/t/t_thatall_ge.wav"}
	self.SoundTbl_AllyDeath = {"vj_hlr/czeror_npc/t/t_whathapp_ge.wav",}
	self.SoundTbl_Pain = {"vj_hlr/czeror_npc/t/t_pain1_ge.wav","vj_hlr/czeror_npc/t/t_pain2_ge.wav","vj_hlr/czeror_npc/t/t_pain3_ge.wav","vj_hlr/czeror_npc/t/t_pain4_ge.wav","vj_hlr/czeror_npc/t/t_pain3_ge.wav"}
	self.SoundTbl_Death = {"vj_hlr/czeror_npc/t/t_death1_ge.wav","vj_hlr/czeror_npc/t/t_death2_ge.wav","vj_hlr/czeror_npc/t/t_death3_ge.wav","vj_hlr/czeror_npc/t/t_death4_ge.wav"}
	local randwep = math.random(1,3)
		if randwep == 1 then
			self:SetBodygroup(1,0) --mp5
		elseif randwep == 2 then
			self:SetBodygroup(1,5) --glock
		elseif randwep == 3 then
			self:SetBodygroup(1,7) --m60
		end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/