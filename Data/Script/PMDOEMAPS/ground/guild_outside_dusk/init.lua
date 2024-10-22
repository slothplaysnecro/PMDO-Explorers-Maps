--[[
    init.lua
    Created: 11/22/2023 13:09:48
    Description: Autogenerated script file for the map guild_outside_dusk.
]]--
-- Commonly included lua functions and data
require 'origin.common'
require 'PMDOEMAPS.CharacterActions'

-- Package name
local guild_outside_dusk = {}

-- Local, localized strings table
-- Use this to display the named strings you added in the strings files for the map!
-- Ex:
--      local localizedstring = STRINGS.MapStrings['SomeStringName']


-------------------------------
-- Map Callbacks
-------------------------------
---guild_outside_dusk.Init(map)
--Engine callback function
function guild_outside_dusk.Init(map)

  --This will fill the localized strings table automatically based on the locale the game is 
  -- currently in. You can use the MapStrings table after this line!
  

end

---guild_outside_dusk.Enter(map)
--Engine callback function
function guild_outside_dusk.Enter(map)


  if SV.Progression.Chapter == 1 then
	GAME:CutsceneMode(true)
  
    guild_outside_dusk.PartnerWimpsOut()
	
	GAME:WaitFrames(60)
	
	--next scene
	GAME:EnterGroundMap("dusk_beach", "C1S1_PlayerSpawn")
	--GAME:RestartToTitle()
	
  end

end

---guild_outside_dusk.Exit(map)
--Engine callback function
function guild_outside_dusk.Exit(map)


end

---guild_outside_dusk.Update(map)
--Engine callback function
function guild_outside_dusk.Update(map)


end

---guild_outside_dusk.GameSave(map)
--Engine callback function
function guild_outside_dusk.GameSave(map)


end

---guild_outside_dusk.GameLoad(map)
--Engine callback function
function guild_outside_dusk.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------



-------------------------------
-- Cutscene Functions
-------------------------------

function guild_outside_dusk.PartnerWimpsOut()
	local hTalkKind = SV.Personality.HeroTalkKind
	local pTalkKind = SV.Personality.PartnerTalkKind
	
	GROUND:SetPlayer(GAME:GetPlayerPartyMember(1))
	UI:SetSpeaker(GAME:GetPlayerPartyMember(1))
	local player = CH("PLAYER")
	local marker = MRKR("CH1_PartnerSpawn")
	local cam = MRKR("CamPos_1")
	GROUND:TeleportTo(player, marker.Position.X, marker.Position.Y, Direction.Up)
	GAME:MoveCamera(cam.Position.X, cam.Position.Y, 1, false)
  
    local coro1 = TASK:BranchCoroutine(function() SOUND:FadeInSE("Ambient/AMB_Fire_Loud", 60) end)
	local coro2 = TASK:BranchCoroutine(function() GAME:FadeIn(60) end)
	TASK:JoinCoroutines({coro1, coro2})
	
    GAME:WaitFrames(60)
    UI:SetSpeakerEmotion("Worried")
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_1']))
	
	GROUND:MoveInDirection(player, Direction.Right, 24, false, 1)
	GROUND:MoveInDirection(player, Direction.Left, 48, false, 1)
	GROUND:MoveInDirection(player, Direction.Right, 48, false, 1)
	GROUND:MoveInDirection(player, Direction.Left, 24, false, 1)
	
	GAME:WaitFrames(45)
	
	GROUND:CharAnimateTurnTo(player, Direction.Up, 2)
	
	UI:SetSpeakerEmotion("Determined")
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_2']))
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_3_'..tostring(pTalkKind)]))
	
	GROUND:MoveInDirection(player, Direction.Up, 24, false, 1)
	
	SOUND:PlayBattleSE("EVT_Emote_Shock")
	GROUND:CharSetEmote(player, "shock", 1)
	UI:ResetSpeaker()
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Unknown_1']))
	
	CharacterActions.ScaredJump(player, Direction.Up)
	
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Unknown_2']))
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Unknown_3'], _DATA:GetMonster(GAME:GetPlayerPartyMember(1).CurrentForm.Species):GetColoredName()))
	
	GROUND:CharSetEmote(player, "shock", 1)
	GROUND:AnimateInDirection(player, "Walk", Direction.Up, Direction.Down, 12, 1, 2)
	UI:SetSpeaker(GAME:GetPlayerPartyMember(1))
	UI:SetSpeakerEmotion("Surprised")
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_4']))
	
	SOUND:PlayBattleSE("EVT_Emote_Confused_2")
    GROUND:CharSetEmote(player, "sweating", 1)
    GROUND:CharAnimateTurnTo(player, Direction.Right, 1)
    GAME:WaitFrames(5)
    GROUND:CharAnimateTurnTo(player, Direction.Left, 1)
    GAME:WaitFrames(15)
    GROUND:CharAnimateTurnTo(player, Direction.Right, 1)
    GAME:WaitFrames(5)
    GROUND:CharAnimateTurnTo(player, Direction.Up, 1)
    GAME:WaitFrames(45)
    GROUND:CharSetEmote(player, "sweating", 1)
	
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_5_'..tostring(pTalkKind)]))
	
	GAME:WaitFrames(30)
	SOUND:PlayBattleSE("EVT_Emote_Sweatdrop")
	GROUND:CharSetEmote(player, "sweatdrop", 1)
	UI:SetSpeakerEmotion("Sigh")
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_6']))
	
	GAME:WaitFrames(15)
	UI:SetSpeakerEmotion("Sad")
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_7_'..tostring(pTalkKind)]))
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_8_'..tostring(pTalkKind)]))
	
	GROUND:MoveInDirection(player, Direction.Up, 16, false, 1)
	SOUND:PlayBattleSE("EVT_CH02_Item_Place")
	GROUND:TeleportTo(OBJ("RelicFragment"), player.Position.X, player.Position.Y - 1, Direction.Down)
	GAME:WaitFrames(15)
	GROUND:AnimateInDirection(player, "Walk", Direction.Up, Direction.Down, 16, 1, 1)
	GAME:WaitFrames(30)
	
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_9']))
	
	GAME:WaitFrames(30)
	GROUND:MoveInDirection(player, Direction.Up, 16, false, 1)
	GROUND:Hide("RelicFragment")
	GAME:WaitFrames(15)
	GROUND:AnimateInDirection(player, "Walk", Direction.Up, Direction.Down, 16, 1, 1)
	
	GAME:WaitFrames(45)
	CharacterActions.ShakeHead(player, Direction.Up)
	GAME:WaitFrames(30)
	
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_10_'..tostring(pTalkKind)]))
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_11']))
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Partner_12']))
	
	GROUND:CharAnimateTurnTo(player, Direction.Down, 5)
	GAME:WaitFrames(20)
	
	local coro1 = TASK:BranchCoroutine(function() GROUND:MoveInDirection(player, Direction.Down, 240, false, 1) end)
	local coro2 = TASK:BranchCoroutine(function() GAME:MoveCamera(cam.Position.X, (cam.Position.Y + 125), 120, false) end)
	TASK:JoinCoroutines({coro1, coro2})
	
	GAME:WaitFrames(90)
	
	local koffing = CH("Koffing")
	local zubat = CH("Zubat")
	marker = MRKR("CH1_KoffingSpawn")
	GROUND:TeleportTo(koffing, marker.Position.X, (marker.Position.Y - 20), Direction.Down)
	marker = MRKR("CH1_ZubatSpawn")
	GROUND:TeleportTo(zubat, marker.Position.X, (marker.Position.Y - 20), Direction.Down)
	
	local pos1 = MRKR("CH1_KoffingPos")
	local pos2 = MRKR("CH1_ZubatPos")
	
	local coro1 = TASK:BranchCoroutine(function() GAME:WaitFrames(10)
										GROUND:MoveToPosition(koffing, pos1.Position.X, pos1.Position.Y, false, 1)
										GROUND:CharAnimateTurnTo(koffing, Direction.Down, 5)	end)
	local coro2 = TASK:BranchCoroutine(function() GROUND:MoveToPosition(zubat, pos2.Position.X, pos2.Position.Y, false, 1)
										GROUND:CharAnimateTurnTo(zubat, Direction.Down, 5)	end)
	local coro3 = TASK:BranchCoroutine(function() GAME:MoveCamera(cam.Position.X, cam.Position.Y, 180, false) end)
	TASK:JoinCoroutines({coro1, coro2, coro3})
	
	GAME:WaitFrames(45)
	
	--"\uE040"
	UI:SetSpeaker('', true, koffing.CurrentForm.Species, koffing.CurrentForm.Form, koffing.CurrentForm.Skin, koffing.CurrentForm.Gender)
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Koffing_1'], zubat:GetDisplayName()))
	
	GAME:WaitFrames(10)
	UI:SetSpeaker(zubat)
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Zubat_1'], koffing:GetDisplayName()))
	
	GAME:WaitFrames(10)
	UI:SetSpeaker(koffing)
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Koffing_2']))
	
	GAME:WaitFrames(10)
	UI:SetSpeaker(zubat)
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Zubat_2']))
	
	GAME:WaitFrames(10)
	GROUND:CharTurnToCharAnimated(koffing, zubat, 4, true)
	UI:SetSpeaker(koffing)
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Koffing_3']))
	
	GAME:WaitFrames(10)
	GROUND:CharTurnToCharAnimated(zubat, koffing, 4, true)
	UI:SetSpeaker(zubat)
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH1_Zubat_3']))
	
	--nod
	local coro1 = TASK:BranchCoroutine(function() GROUND:CharSetAnim(koffing, "Nod", false)
										GAME:WaitFrames(45)
										GROUND:MoveInDirection(koffing, Direction.Down, 180, false, 1)	end)
	local coro2 = TASK:BranchCoroutine(function() GROUND:CharSetAnim(zubat, "Nod", false)
										GAME:WaitFrames(45)
										GAME:WaitFrames(10)
										GROUND:MoveInDirection(zubat, Direction.Down, 180, false, 1)	end)
	local coro3 = TASK:BranchCoroutine(function() GAME:WaitFrames(300)
										GAME:FadeOut(false, 60) end)
	local coro4 = TASK:BranchCoroutine(function() GAME:WaitFrames(300)
										SOUND:FadeOutSE("Ambient/AMB_Fire_Loud", 150)
										end)
	TASK:JoinCoroutines({coro1, coro2, coro3, coro4})
end


return guild_outside_dusk

