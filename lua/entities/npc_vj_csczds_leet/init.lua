AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/czeror/leet.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.VJ_NPC_Class = {"CLASS_CS_TERRORIST"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Faction_CustomOnInitialize()
	self.SoundTbl_Idle = {"vj_hlr/czeror_npc/t/t_beonlook_ar.wav","vj_hlr/czeror_npc/t/t_couldshow_ar.wav","vj_hlr/czeror_npc/t/t_damnrats_ar.wav","vj_hlr/czeror_npc/t/t_idle1_am.wav","vj_hlr/czeror_npc/t/t_idle2_am.wav","vj_hlr/czeror_npc/t/t_idle3_am.wav","vj_hlr/czeror_npc/t/t_idle4_am.wav"}
	self.SoundTbl_IdleDialogue = {"vj_hlr/czeror_npc/t/t_whatstat_ar.wav","vj_hlr/czeror_npc/t/t_repin_ar.wav","vj_hlr/czeror_npc/t/t_anysign_ar.wav","vj_hlr/czeror_npc/t/t_echeckin_ar.wav","vj_hlr/czeror_npc/t/t_makesno_ar.wav"}
	self.SoundTbl_IdleDialogueAnswer = {"vj_hlr/czeror_npc/t/t_rogerl_ar.wav","vj_hlr/czeror_npc/t/t_allq_ar.wav","vj_hlr/czeror_npc/t/t_areasec_ar.wav"}
	self.SoundTbl_CombatIdle = {"vj_hlr/czeror_npc/t/t_youdie_ar.wav","vj_hlr/czeror_npc/t/t_letsgo_ar.wav","vj_hlr/czeror_npc/t/t_movein_ar.wav","vj_hlr/czeror_npc/t/t_nochance_ar.wav","vj_hlr/czeror_npc/t/t_wemakesrry_ar.wav"}
	self.SoundTbl_Investigate = {"vj_hlr/czeror_npc/t/t_whos_ar.wav","vj_hlr/czeror_npc/t/t_stayalm_ar.wav","vj_hlr/czeror_npc/t/t_defnotwind_ar.wav","vj_hlr/czeror_npc/t/t_gotanint_ar.wav","vj_hlr/czeror_npc/t/t_heardsomw_ar.wav","vj_hlr/czeror_npc/t/t_heywhat_ar.wav","vj_hlr/czeror_npc/t/t_heyyou_ar.wav","vj_hlr/czeror_npc/t/t_igocheck_ar.wav","vj_hlr/czeror_npc/t/t_ithink_ar.wav","vj_hlr/czeror_npc/t/t_menweapr_ar.wav"}
	self.SoundTbl_LostEnemy = {"vj_hlr/czeror_npc/t/t_whereare_ar.wav","vj_hlr/czeror_npc/t/t_mustbewind_ar.wav"}
	self.SoundTbl_Alert = {"vj_hlr/czeror_npc/t/t_theretheya_ar.wav","vj_hlr/czeror_npc/t/t_shootthem_ar.wav","vj_hlr/czeror_npc/t/t_attack_ar.wav","vj_hlr/czeror_npc/t/t_diepig_ar.wav","vj_hlr/czeror_npc/t/t_gethim_ar.wav","vj_hlr/czeror_npc/t/t_intrudov_ar.wav","vj_hlr/czeror_npc/t/t_kilhim_ar.wav","vj_hlr/czeror_npc/t/t_killthemall_ar.wav"}
	self.SoundTbl_GrenadeAttack = {"vj_hlr/czeror_npc/t/t_grenade_ar.wav"}
	self.SoundTbl_OnGrenadeSight = {"vj_hlr/czeror_npc/t/t_lookout_ar.wav","vj_hlr/czeror_npc/t/t_run_ar.wav","vj_hlr/czeror_npc/t/t_takecov_ar.wav"}
	self.SoundTbl_OnKilledEnemy = {"vj_hlr/czeror_npc/t/t_gonnag_ar.wav","vj_hlr/czeror_npc/t/t_thatall_ar.wav"}
	self.SoundTbl_AllyDeath = {"vj_hlr/czeror_npc/t/t_whathapp_ar.wav",}
	self.SoundTbl_Pain = {"vj_hlr/czeror_npc/t/t_pain1_ar.wav","vj_hlr/czeror_npc/t/t_pain2_ar.wav","vj_hlr/czeror_npc/t/t_pain3_ar.wav","vj_hlr/czeror_npc/t/t_pain4_ar.wav","vj_hlr/czeror_npc/t/t_pain3_ar.wav"}
	self.SoundTbl_Death = {"vj_hlr/czeror_npc/t/t_death1_ar.wav","vj_hlr/czeror_npc/t/t_death2_ar.wav","vj_hlr/czeror_npc/t/t_death3_ar.wav","vj_hlr/czeror_npc/t/t_death4_ar.wav"}
	self:SetSkin(math.random(0,3))
	self:SetBodygroup(1,math.random(0,4))
	local randwep = math.random(1,15)
		if randwep == 1 then
			self:SetBodygroup(2,0) --mp5
		elseif randwep == 2 then
			self:SetBodygroup(2,1) --xm
		elseif randwep == 3 then
			self:SetBodygroup(2,2) --law
		elseif randwep == 4 then
			self:SetBodygroup(2,3) --awm
		elseif randwep == 5 then
			self:SetBodygroup(2,4) --ak47
		elseif randwep == 6 then
			self:SetBodygroup(2,5) --glock
		elseif randwep == 70 then
			self:SetBodygroup(2,6) --machete (non-functional yet)
		elseif randwep == 7 then
			self:SetBodygroup(2,7) --m60
		elseif randwep == 8 then
			self:SetBodygroup(2,8) --tmp
		elseif randwep == 9 then
			self:SetBodygroup(2,0) --mp5
		elseif randwep == 10 then
			self:SetBodygroup(2,1) --xm
		elseif randwep == 11 then
			self:SetBodygroup(2,3) --awm
		elseif randwep == 12 then
			self:SetBodygroup(2,4) --ak47
		elseif randwep == 13 then
			self:SetBodygroup(2,5) --glock
		elseif randwep == 14 then
			self:SetBodygroup(2,7) --m60
		elseif randwep == 15 then
			self:SetBodygroup(2,8) --tmp
		end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/