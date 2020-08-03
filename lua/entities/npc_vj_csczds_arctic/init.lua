AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/czeror/arctic.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.VJ_NPC_Class = {"CLASS_CS_TERRORIST"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Faction_CustomOnInitialize()
	self.SoundTbl_Idle = {"vj_hlr/czeror_npc/t/t_beonlook_ru.wav","vj_hlr/czeror_npc/t/t_couldshow_ru.wav","vj_hlr/czeror_npc/t/t_damnrats_ru.wav","vj_hlr/czeror_npc/t/t_idle1_am.wav","vj_hlr/czeror_npc/t/t_idle2_am.wav","vj_hlr/czeror_npc/t/t_idle3_am.wav","vj_hlr/czeror_npc/t/t_idle4_am.wav"}
	self.SoundTbl_IdleDialogue = {"vj_hlr/czeror_npc/t/t_whatstat_ru.wav","vj_hlr/czeror_npc/t/t_repin_ru.wav","vj_hlr/czeror_npc/t/t_anysign_ru.wav","vj_hlr/czeror_npc/t/t_echeckin_ru.wav","vj_hlr/czeror_npc/t/t_makesno_ru.wav"}
	self.SoundTbl_IdleDialogueAnswer = {"vj_hlr/czeror_npc/t/t_rogerl_ru.wav","vj_hlr/czeror_npc/t/t_allq_ru.wav","vj_hlr/czeror_npc/t/t_areasec_ru.wav"}
	self.SoundTbl_CombatIdle = {"vj_hlr/czeror_npc/t/t_youdie_ru.wav","vj_hlr/czeror_npc/t/t_letsgo_ru.wav","vj_hlr/czeror_npc/t/t_movein_ru.wav","vj_hlr/czeror_npc/t/t_nochance_ru.wav","vj_hlr/czeror_npc/t/t_wemakesrry_ru.wav"}
	self.SoundTbl_Investigate = {"vj_hlr/czeror_npc/t/t_whos_ru.wav","vj_hlr/czeror_npc/t/t_stayalm_ru.wav","vj_hlr/czeror_npc/t/t_defnotwind_ru.wav","vj_hlr/czeror_npc/t/t_gotanint_ru.wav","vj_hlr/czeror_npc/t/t_heardsomw_ru.wav","vj_hlr/czeror_npc/t/t_heywhat_ru.wav","vj_hlr/czeror_npc/t/t_heyyou_ru.wav","vj_hlr/czeror_npc/t/t_igocheck_ru.wav","vj_hlr/czeror_npc/t/t_ithink_ru.wav","vj_hlr/czeror_npc/t/t_menweapr_ru.wav"}
	self.SoundTbl_LostEnemy = {"vj_hlr/czeror_npc/t/t_whereare_ru.wav","vj_hlr/czeror_npc/t/t_mustbewind_ru.wav"}
	self.SoundTbl_Alert = {"vj_hlr/czeror_npc/t/t_theretheya_ru.wav","vj_hlr/czeror_npc/t/t_shootthem_ru.wav","vj_hlr/czeror_npc/t/t_attack_ru.wav","vj_hlr/czeror_npc/t/t_diepig_ru.wav","vj_hlr/czeror_npc/t/t_gethim_ru.wav","vj_hlr/czeror_npc/t/t_intrudov_ru.wav","vj_hlr/czeror_npc/t/t_kilhim_ru.wav","vj_hlr/czeror_npc/t/t_killthemall_ru.wav"}
	self.SoundTbl_GrenadeAttack = {"vj_hlr/czeror_npc/t/t_grenade_ru.wav"}
	self.SoundTbl_OnGrenadeSight = {"vj_hlr/czeror_npc/t/t_lookout_ru.wav","vj_hlr/czeror_npc/t/t_run_ru.wav","vj_hlr/czeror_npc/t/t_takecov_ru.wav"}
	self.SoundTbl_OnKilledEnemy = {"vj_hlr/czeror_npc/t/t_gonnag_ru.wav","vj_hlr/czeror_npc/t/t_thatall_ru.wav"}
	self.SoundTbl_AllyDeath = {"vj_hlr/czeror_npc/t/t_whathapp_ru.wav",}
	self.SoundTbl_Pain = {"vj_hlr/czeror_npc/t/t_pain1_ru.wav","vj_hlr/czeror_npc/t/t_pain2_ru.wav","vj_hlr/czeror_npc/t/t_pain3_ru.wav","vj_hlr/czeror_npc/t/t_pain4_ru.wav","vj_hlr/czeror_npc/t/t_pain3_ru.wav"}
	self.SoundTbl_Death = {"vj_hlr/czeror_npc/t/t_death1_ru.wav","vj_hlr/czeror_npc/t/t_death2_ru.wav","vj_hlr/czeror_npc/t/t_death3_ru.wav","vj_hlr/czeror_npc/t/t_death4_ru.wav"}
	
	self:SetBodygroup(1,math.random(0,4))
	if self:GetModel() == "models/vj_hlr/czeror/terror.mdl" then
		self:SetSkin(math.random(0,3))
	end
	
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