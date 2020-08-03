AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/czeror/guerilla.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.VJ_NPC_Class = {"CLASS_CS_TERRORIST"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Faction_CustomOnInitialize()
	self.SoundTbl_Idle = {"vj_hlr/czeror_npc/t/t_beonlook_sp.wav","vj_hlr/czeror_npc/t/t_couldshow_sp.wav","vj_hlr/czeror_npc/t/t_damnrats_sp.wav","vj_hlr/czeror_npc/t/t_idle1_am.wav","vj_hlr/czeror_npc/t/t_idle2_am.wav","vj_hlr/czeror_npc/t/t_idle3_am.wav","vj_hlr/czeror_npc/t/t_idle4_am.wav"}
	self.SoundTbl_IdleDialogue = {"vj_hlr/czeror_npc/t/t_whatstat_sp.wav","vj_hlr/czeror_npc/t/t_repin_sp.wav","vj_hlr/czeror_npc/t/t_anysign_sp.wav","vj_hlr/czeror_npc/t/t_echeckin_sp.wav","vj_hlr/czeror_npc/t/t_makesno_sp.wav"}
	self.SoundTbl_IdleDialogueAnswer = {"vj_hlr/czeror_npc/t/t_rogerl_sp.wav","vj_hlr/czeror_npc/t/t_allq_sp.wav","vj_hlr/czeror_npc/t/t_areasec_sp.wav"}
	self.SoundTbl_CombatIdle = {"vj_hlr/czeror_npc/t/t_youdie_sp.wav","vj_hlr/czeror_npc/t/t_letsgo_sp.wav","vj_hlr/czeror_npc/t/t_movein_sp.wav","vj_hlr/czeror_npc/t/t_nochance_sp.wav","vj_hlr/czeror_npc/t/t_wemakesrry_sp.wav"}
	self.SoundTbl_Investigate = {"vj_hlr/czeror_npc/t/t_whos_sp.wav","vj_hlr/czeror_npc/t/t_stayalm_sp.wav","vj_hlr/czeror_npc/t/t_defnotwind_sp.wav","vj_hlr/czeror_npc/t/t_gotanint_sp.wav","vj_hlr/czeror_npc/t/t_heardsomw_sp.wav","vj_hlr/czeror_npc/t/t_heywhat_sp.wav","vj_hlr/czeror_npc/t/t_heyyou_sp.wav","vj_hlr/czeror_npc/t/t_igocheck_sp.wav","vj_hlr/czeror_npc/t/t_ithink_sp.wav","vj_hlr/czeror_npc/t/t_menweapr_sp.wav"}
	self.SoundTbl_LostEnemy = {"vj_hlr/czeror_npc/t/t_whereare_sp.wav","vj_hlr/czeror_npc/t/t_mustbewind_sp.wav"}
	self.SoundTbl_Alert = {"vj_hlr/czeror_npc/t/t_theretheya_sp.wav","vj_hlr/czeror_npc/t/t_shootthem_sp.wav","vj_hlr/czeror_npc/t/t_attack_sp.wav","vj_hlr/czeror_npc/t/t_diepig_sp.wav","vj_hlr/czeror_npc/t/t_gethim_sp.wav","vj_hlr/czeror_npc/t/t_intrudov_sp.wav","vj_hlr/czeror_npc/t/t_kilhim_sp.wav","vj_hlr/czeror_npc/t/t_killthemall_sp.wav"}
	self.SoundTbl_GrenadeAttack = {"vj_hlr/czeror_npc/t/t_grenade_sp.wav"}
	self.SoundTbl_OnGrenadeSight = {"vj_hlr/czeror_npc/t/t_lookout_sp.wav","vj_hlr/czeror_npc/t/t_run_sp.wav","vj_hlr/czeror_npc/t/t_takecov_sp.wav"}
	self.SoundTbl_OnKilledEnemy = {"vj_hlr/czeror_npc/t/t_gonnag_sp.wav","vj_hlr/czeror_npc/t/t_thatall_sp.wav"}
	self.SoundTbl_AllyDeath = {"vj_hlr/czeror_npc/t/t_whathapp_sp.wav",}
	self.SoundTbl_Pain = {"vj_hlr/czeror_npc/t/t_pain1_sp.wav","vj_hlr/czeror_npc/t/t_pain2_sp.wav","vj_hlr/czeror_npc/t/t_pain3_sp.wav","vj_hlr/czeror_npc/t/t_pain4_sp.wav","vj_hlr/czeror_npc/t/t_pain3_sp.wav"}
	self.SoundTbl_Death = {"vj_hlr/czeror_npc/t/t_death1_sp.wav","vj_hlr/czeror_npc/t/t_death2_sp.wav","vj_hlr/czeror_npc/t/t_death3_sp.wav","vj_hlr/czeror_npc/t/t_death4_sp.wav"}
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