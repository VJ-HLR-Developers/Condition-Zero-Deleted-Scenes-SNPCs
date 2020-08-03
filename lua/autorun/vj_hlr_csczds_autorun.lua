/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local PublicAddonName = "Half-Life Resurgence Condition Zero Deleted Scenes"
local AddonName = "Half-Life Resurgence Condition Zero Deleted Scenes"
local AddonType = "SNPC"
local AutorunFile = "autorun/vj_hlr_csczds_autorun.lua"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
if VJExists == true then
	include('autorun/vj_controls.lua')
	
	local vCat = "Half-Life Resurgence: CS:CZDS"
	VJ.AddCategoryInfo(vCat, {Icon = "vj_hl/icons/csczds.png"})
		
		-- Counter-Terrorist factions
		VJ.AddNPC("GIGN","npc_vj_csczds_gign",vCat)
		-- Terrorist factions
		VJ.AddNPC("Arctic Avengers","npc_vj_csczds_arctic",vCat)
		VJ.AddNPC("Akunin","npc_vj_csczds_akunin",vCat)
		VJ.AddNPC("Akunin Leader","npc_vj_csczds_akunin_leader",vCat)
		VJ.AddNPC("Phoenix Connexion","npc_vj_csczds_terror",vCat)
		VJ.AddNPC("Elite Crew","npc_vj_csczds_leet",vCat)
		VJ.AddNPC("Kidotai","npc_vj_csczds_kidotai",vCat)
		VJ.AddNPC("GSG-9","npc_vj_csczds_gsg9",vCat)
		VJ.AddNPC("Moses Sepulveda","npc_vj_csczds_moses",vCat)
		VJ.AddNPC("Guerilla Warfare","npc_vj_csczds_guerilla",vCat)
		VJ.AddNPC("Hans Dietrich","npc_vj_csczds_italian",vCat)
		VJ.AddNPC("Midwest Militia","npc_vj_csczds_militia",vCat)
		VJ.AddNPC("Arctic Avenger Boss","npc_vj_csczds_russianboss",vCat)
		VJ.AddNPC("SAS","npc_vj_csczds_sas",vCat)
		VJ.AddNPC("Spetsnaz","npc_vj_csczds_spetsnaz",vCat)
	
-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile(AutorunFile)
	VJ.AddAddonProperty(AddonName,AddonType)
else
	if (CLIENT) then
		chat.AddText(Color(0,200,200),PublicAddonName,
		Color(0,255,0)," was unable to install, you are missing ",
		Color(255,100,0),"VJ Base!")
	end
	timer.Simple(1,function()
		if not VJF then
			if (CLIENT) then
				VJF = vgui.Create("DFrame")
				VJF:SetTitle("ERROR!")
				VJF:SetSize(790,560)
				VJF:SetPos((ScrW()-VJF:GetWide())/2,(ScrH()-VJF:GetTall())/2)
				VJF:MakePopup()
				VJF.Paint = function()
					draw.RoundedBox(8,0,0,VJF:GetWide(),VJF:GetTall(),Color(200,0,0,150))
				end

				local VJURL = vgui.Create("DHTML",VJF)
				VJURL:SetPos(VJF:GetWide()*0.005, VJF:GetTall()*0.03)
				VJURL:Dock(FILL)
				VJURL:SetAllowLua(true)
				VJURL:OpenURL("https://sites.google.com/site/vrejgaming/vjbasemissing")
			elseif (SERVER) then
				timer.Create("VJBASEMissing",5,0,function() print("VJ Base is Missing! Download it from the workshop!") end)
			end
		end
	end)
end