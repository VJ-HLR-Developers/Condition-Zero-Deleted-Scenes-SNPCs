AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/czeror/sas.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY"}
ENT.FriendsWithAllPlayerAllies = true
ENT.HasOnPlayerSight = true
ENT.BecomeEnemyToPlayer = true
-- unused
//vj_hlr/czeror_npc/ct/ct_blinded_ja.wav
//vj_hlr/czeror_npc/ct/ct_braceflash_ja.wav
//vj_hlr/czeror_npc/ct/ct_damnfl_ja.wav
//vj_hlr/czeror_npc/ct/ct_damnsmoke_ja.wav
//vj_hlr/czeror_npc/ct/ct_flashout_ja.wav
//vj_hlr/czeror_npc/ct/ct_handtohand_ja.wav

//vj_hlr/czeror_npc/ct/ct_howsbr_ja.wav

//vj_hlr/czeror_npc/ct/ct_doordown_ja.wav

//vj_hlr/czeror_npc/ct/ct_inpos4_fr.wav

--cant go further
//vj_hlr/czeror_npc/ct/ct_cantgof_ja.wav
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Faction_CustomOnInitialize()
	self:SetBodygroup(1,math.random(3,4))
	
	self.SoundTbl_Idle = {"vj_hlr/czeror_npc/ct/ct_maintalert_ja.wav","vj_hlr/czeror_npc/ct/ct_keepitdown_ja.wav","vj_hlr/czeror_npc/ct/ct_checksights_ja.wav","vj_hlr/czeror_npc/ct/ct_alltsound_ja.wav","vj_hlr/czeror_npc/ct/ct_adjustsite_ja.wav","vj_hlr/czeror_npc/t/t_idle1_am.wav","vj_hlr/czeror_npc/t/t_idle2_am.wav","vj_hlr/czeror_npc/t/t_idle3_am.wav","vj_hlr/czeror_npc/t/t_idle4_am.wav"}
	self.SoundTbl_IdleDialogue = {"vj_hlr/czeror_npc/ct/ct_scanperi_ja.wav","vj_hlr/czeror_npc/ct/ct_repinteam_ja.wav","vj_hlr/czeror_npc/ct/ct_pointsec_ja.wav","vj_hlr/czeror_npc/ct/ct_checkforclr_ja.wav","vj_hlr/czeror_npc/ct/ct_allposch_ja.wav"}
	self.SoundTbl_IdleDialogueAnswer = {"vj_hlr/czeror_npc/ct/ct_readytor_ja.wav","vj_hlr/czeror_npc/ct/ct_nomovesec_ja.wav","vj_hlr/czeror_npc/ct/ct_clear3_ja.wav","vj_hlr/czeror_npc/ct/ct_atcheck4_ja.wav","vj_hlr/czeror_npc/ct/ct_allq_ja.wav","vj_hlr/czeror_npc/ct/ct_allclear2_ja.wav","vj_hlr/czeror_npc/ct/ct_allclear_ja.wav"}
	self.SoundTbl_CombatIdle = {"vj_hlr/czeror_npc/ct/ct_movein_ja.wav","vj_hlr/czeror_npc/ct/ct_letsmove2_ja.wav","vj_hlr/czeror_npc/ct/ct_letsmove_ja.wav","vj_hlr/czeror_npc/ct/ct_gogogo_ja.wav"}
	self.SoundTbl_OnReceiveOrder = {"vj_hlr/czeror_npc/ct/ct_rogerthat_ja.wav","vj_hlr/czeror_npc/ct/ct_movingout4_ja.wav","vj_hlr/czeror_npc/ct/ct_moving4_ja.wav","vj_hlr/czeror_npc/ct/ct_confirm_ja.wav","vj_hlr/czeror_npc/ct/ct_affirm2_ja.wav","vj_hlr/czeror_npc/ct/ct_affirmative_ja.wav"}
	self.SoundTbl_FollowPlayer = {"vj_hlr/czeror_npc/ct/ct_lockloadsir_ja.wav","vj_hlr/czeror_npc/ct/ct_gotusix_ja.wav","vj_hlr/czeror_npc/ct/ct_gotsixsir_ja.wav"}
	self.SoundTbl_UnFollowPlayer = {"vj_hlr/czeror_npc/ct/ct_rightstay_ja.wav","vj_hlr/czeror_npc/ct/ct_endofline_ja.wav"}
	self.SoundTbl_OnPlayerSight = {"vj_hlr/czeror_npc/ct/ct_hellosir2_ja.wav","vj_hlr/czeror_npc/ct/ct_gootos_ja.wav","vj_hlr/czeror_npc/ct/ct_goodtosee2_ja.wav","vj_hlr/czeror_npc/ct/ct_dogoodsir_ja.wav"}
	self.SoundTbl_Investigate = {"vj_hlr/czeror_npc/ct/ct_holditsaw_ja.wav","vj_hlr/czeror_npc/ct/ct_gorpoth_ja.wav"}
	//self.SoundTbl_LostEnemy = {"vj_hlr/czeror_npc/ct/ct_scanperi_ja.wav"}
	self.SoundTbl_Alert = {"vj_hlr/czeror_npc/ct/ct_openfire_ja.wav","vj_hlr/czeror_npc/ct/ct_intspotted_ja.wav","vj_hlr/czeror_npc/ct/ct_incoming_ja.wav","vj_hlr/czeror_npc/ct/ct_hosspot_ja.wav","vj_hlr/czeror_npc/ct/ct_heascomp_ja.wav","vj_hlr/czeror_npc/ct/ct_gothos_ja.wav","vj_hlr/czeror_npc/ct/ct_fire_ja.wav","vj_hlr/czeror_npc/ct/ct_enemhead_ja.wav","vj_hlr/czeror_npc/ct/ct_enespot4_ja.wav","vj_hlr/czeror_npc/ct/ct_enespot_ja.wav"}
	self.SoundTbl_CallForHelp = {"vj_hlr/czeror_npc/ct/ct_needbackp_ja.wav","vj_hlr/czeror_npc/ct/ct_needgunsup_ja.wav","vj_hlr/czeror_npc/ct/ct_needsupp_ja.wav"}
	self.SoundTbl_BecomeEnemyToPlayer = {"vj_hlr/czeror_npc/ct/ct_okthatis_ja.wav","vj_hlr/czeror_npc/ct/ct_gottrait_ja.wav","vj_hlr/czeror_npc/ct/ct_gonero_ja.wav"}
	self.SoundTbl_Suppressing = {"vj_hlr/czeror_npc/ct/ct_firing4_ja.wav","vj_hlr/czeror_npc/ct/ct_entereng_ja.wav","vj_hlr/czeror_npc/ct/ct_engagtarg_ja.wav","vj_hlr/czeror_npc/ct/ct_engaging4_ja.wav"}
	self.SoundTbl_GrenadeAttack = {"vj_hlr/czeror_npc/ct/ct_fragout_ja.wav","vj_hlr/czeror_npc/ct/ct_firehole_ja.wav"}
	self.SoundTbl_OnGrenadeSight = {"vj_hlr/czeror_npc/ct/ct_grenade_ja.wav"}
	self.SoundTbl_Pain = {"vj_hlr/czeror_npc/ct/ct_pain1_ja.wav","vj_hlr/czeror_npc/ct/ct_pain2_ja.wav","vj_hlr/czeror_npc/ct/ct_pain3_ja.wav","vj_hlr/czeror_npc/ct/ct_pain4_ja.wav","vj_hlr/czeror_npc/ct/ct_medic_ja.wav","vj_hlr/czeror_npc/ct/ct_addamnh_ja.wav","vj_hlr/czeror_npc/ct/ct_imhit_ja.wav"}
	self.SoundTbl_DamageByPlayer = {"vj_hlr/czeror_npc/ct/ct_holdfire2_ja.wav","vj_hlr/czeror_npc/ct/ct_ceasef_ja.wav","vj_hlr/czeror_npc/ct/ct_checkfire_ja.wav"}
	self.SoundTbl_Death = {"vj_hlr/czeror_npc/ct/ct_death1_ja.wav","vj_hlr/czeror_npc/ct/ct_death2_ja.wav","vj_hlr/czeror_npc/ct/ct_death3_ja.wav","vj_hlr/czeror_npc/ct/ct_death4_ja.wav"}

	local randwep = math.random(1,7)
		if randwep == 1 then
			self:SetBodygroup(2,0) --mp5
		elseif randwep == 2 then
			self:SetBodygroup(2,1) --xm1014
		elseif randwep == 3 then
			self:SetBodygroup(2,3) --scout
		elseif randwep == 4 then
			self:SetBodygroup(2,4) --m4a1
		elseif randwep == 5 then
			self:SetBodygroup(2,5) --usp
		elseif randwep == 6 then
			self:SetBodygroup(2,6) --m60
		elseif randwep == 7 then
			self:SetBodygroup(2,7) --mac10
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/