AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/czeror/gign.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY"}
ENT.FriendsWithAllPlayerAllies = true
ENT.HasOnPlayerSight = true
ENT.BecomeEnemyToPlayer = true
-- unused
//vj_hlr/czeror_npc/ct/ct_blinded_fr.wav
//vj_hlr/czeror_npc/ct/ct_braceflash_fr.wav
//vj_hlr/czeror_npc/ct/ct_damnfl_fr.wav
//vj_hlr/czeror_npc/ct/ct_damnsmoke_fr.wav
//vj_hlr/czeror_npc/ct/ct_flashout_fr.wav
//vj_hlr/czeror_npc/ct/ct_handtohand_fr.wav
//vj_hlr/czeror_npc/ct/ct_adjustsite_fr.wav
//vj_hlr/czeror_npc/ct/ct_howsbr_fr.wav

//vj_hlr/czeror_npc/ct/ct_doordown_fr.wav

//vj_hlr/czeror_npc/ct/ct_inpos4_ja.wav

--cant go further
//vj_hlr/czeror_npc/ct/ct_cantgof_fr.wav
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Faction_CustomOnInitialize()
	self.SoundTbl_Idle = {"vj_hlr/czeror_npc/ct/ct_adjustsite_fr.wav","vj_hlr/czeror_npc/ct/ct_checksights_fr.wav","vj_hlr/czeror_npc/t/t_idle1_am.wav","vj_hlr/czeror_npc/t/t_idle2_am.wav","vj_hlr/czeror_npc/t/t_idle3_am.wav","vj_hlr/czeror_npc/t/t_idle4_am.wav","vj_hlr/czeror_npc/ct/ct_maintalert_fr.wav","vj_hlr/czeror_npc/ct/ct_keepitdown_fr.wav","vj_hlr/czeror_npc/ct/ct_alltsound_fr.wav"}
	self.SoundTbl_IdleDialogue = {"vj_hlr/czeror_npc/ct/ct_scanperi_fr.wav","vj_hlr/czeror_npc/ct/ct_repinteam_fr.wav","vj_hlr/czeror_npc/ct/ct_pointsec_fr.wav","vj_hlr/czeror_npc/ct/ct_nomovesec_fr.wav","vj_hlr/czeror_npc/ct/ct_checkforclr_fr.wav","vj_hlr/czeror_npc/ct/ct_allposch_fr.wav"}
	self.SoundTbl_IdleDialogueAnswer = {"vj_hlr/czeror_npc/ct/ct_atcheck4_fr.wav","vj_hlr/czeror_npc/ct/ct_readytor_fr.wav","vj_hlr/czeror_npc/ct/ct_clear3_fr.wav","vj_hlr/czeror_npc/ct/ct_allq_fr.wav","vj_hlr/czeror_npc/ct/ct_allclear_fr.wav","vj_hlr/czeror_npc/ct/ct_allclear2_fr.wav"}
	self.SoundTbl_CombatIdle = {"vj_hlr/czeror_npc/ct/ct_movein_fr.wav","vj_hlr/czeror_npc/ct/ct_letsmove_fr.wav","vj_hlr/czeror_npc/ct/ct_letsmove2_fr.wav","vj_hlr/czeror_npc/ct/ct_gogogo_fr.wav"}
	self.SoundTbl_OnReceiveOrder = {"vj_hlr/czeror_npc/ct/ct_rogerthat_fr.wav","vj_hlr/czeror_npc/ct/ct_movingout4_fr.wav","vj_hlr/czeror_npc/ct/ct_moving4_fr.wav","vj_hlr/czeror_npc/ct/ct_confirm_fr.wav","vj_hlr/czeror_npc/ct/ct_affirm2_fr.wav","vj_hlr/czeror_npc/ct/ct_affirmative_fr.wav"}
	self.SoundTbl_FollowPlayer = {"vj_hlr/czeror_npc/ct/ct_rogerthat_fr.wav","vj_hlr/czeror_npc/ct/ct_lockloadsir_fr.wav","vj_hlr/czeror_npc/ct/ct_gotusix_fr.wav","vj_hlr/czeror_npc/ct/ct_gotsixsir_fr.wav"}
	self.SoundTbl_UnFollowPlayer = {"vj_hlr/czeror_npc/ct/ct_rightstay_fr.wav","vj_hlr/czeror_npc/ct/ct_endofline_fr.wav"}
	self.SoundTbl_MoveOutOfPlayersWay = {"vj_hlr/czeror_npc/ct/ct_movingout4_fr.wav",}
	self.SoundTbl_OnPlayerSight = {"vj_hlr/czeror_npc/ct/ct_hellosir2_fr.wav","vj_hlr/czeror_npc/ct/ct_gootos_fr.wav","vj_hlr/czeror_npc/ct/ct_goodtosee2_fr.wav","vj_hlr/czeror_npc/ct/ct_dogoodsir_fr.wav"}
	self.SoundTbl_Investigate = {"vj_hlr/czeror_npc/ct/ct_holditsaw_fr.wav","vj_hlr/czeror_npc/ct/ct_gorpoth_fr.wav"}
	//self.SoundTbl_LostEnemy = {"vj_hlr/czeror_npc/ct/ct_scanperi_fr.wav"}
	self.SoundTbl_Alert = {"vj_hlr/czeror_npc/ct/ct_openfire_fr.wav","vj_hlr/czeror_npc/ct/ct_intspotted_fr.wav","vj_hlr/czeror_npc/ct/ct_incoming_fr.wav","vj_hlr/czeror_npc/ct/ct_hosspot_fr.wav","vj_hlr/czeror_npc/ct/ct_heascomp_fr.wav","vj_hlr/czeror_npc/ct/ct_gothos_fr.wav","vj_hlr/czeror_npc/ct/ct_enemhead_fr.wav","vj_hlr/czeror_npc/ct/ct_enespot4_fr.wav","vj_hlr/czeror_npc/ct/ct_enespot_fr.wav","vj_hlr/czeror_npc/ct/ct_fire_fr.wav"}
	self.SoundTbl_CallForHelp = {"vj_hlr/czeror_npc/ct/ct_needbackp_fr.wav","vj_hlr/czeror_npc/ct/ct_needgunsup_fr.wav","vj_hlr/czeror_npc/ct/ct_needsupp_fr.wav"}
	self.SoundTbl_BecomeEnemyToPlayer = {"vj_hlr/czeror_npc/ct/ct_okthatis_fr.wav","vj_hlr/czeror_npc/ct/ct_gottrait_fr.wav","vj_hlr/czeror_npc/ct/ct_gonero_fr.wav"}
	self.SoundTbl_Suppressing = {"vj_hlr/czeror_npc/ct/ct_engaging4_fr.wav","vj_hlr/czeror_npc/ct/ct_engagtarg_fr.wav","vj_hlr/czeror_npc/ct/ct_entereng_fr.wav","vj_hlr/czeror_npc/ct/ct_firing4_fr.wav"}
	self.SoundTbl_GrenadeAttack = {"vj_hlr/czeror_npc/ct/ct_firehole_fr.wav","vj_hlr/czeror_npc/ct/ct_fragout_fr.wav"}
	self.SoundTbl_OnGrenadeSight = {"vj_hlr/czeror_npc/ct/ct_grenade_fr.wav"}
	self.SoundTbl_Pain = {"vj_hlr/czeror_npc/ct/ct_pain1_fr.wav","vj_hlr/czeror_npc/ct/ct_pain2_fr.wav","vj_hlr/czeror_npc/ct/ct_pain3_fr.wav","vj_hlr/czeror_npc/ct/ct_pain4_fr.wav","vj_hlr/czeror_npc/ct/ct_medic_fr.wav","vj_hlr/czeror_npc/ct/ct_imhit_fr.wav","vj_hlr/czeror_npc/ct/ct_addamnh_fr.wav"}
	self.SoundTbl_DamageByPlayer = {"vj_hlr/czeror_npc/ct/ct_ceasef_fr.wav","vj_hlr/czeror_npc/ct/ct_holdfire2_fr.wav","vj_hlr/czeror_npc/ct/ct_checkfire_fr.wav"}
	self.SoundTbl_Death = {"vj_hlr/czeror_npc/ct/ct_death1_fr.wav","vj_hlr/czeror_npc/ct/ct_death2_fr.wav","vj_hlr/czeror_npc/ct/ct_death3_fr.wav","vj_hlr/czeror_npc/ct/ct_death4_fr.wav"}
	
	self:SetBodygroup(1,math.random(0,3))
	
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