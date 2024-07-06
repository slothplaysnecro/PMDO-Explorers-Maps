--[[
    init.lua
    Created: 12/15/2023 13:42:42
    Description: Autogenerated script file for the map title_catch.
]]--
-- Commonly included lua functions and data
require 'common'

-- Package name
local title_catch = {}

-- Local, localized strings table
-- Use this to display the named strings you added in the strings files for the map!
-- Ex:
--      local localizedstring = MapStrings['SomeStringName']
local MapStrings = {}

-------------------------------
-- Map Callbacks
-------------------------------
---title_catch.Init(map)
--Engine callback function
function title_catch.Init(map)

  --This will fill the localized strings table automatically based on the locale the game is 
  -- currently in. You can use the MapStrings table after this line!
  MapStrings = COMMON.AutoLoadLocalizedStrings()

end

---title_catch.Enter(map)
--Engine callback function
function title_catch.Enter(map)

	GROUND:Hide('PLAYER')
	GAME:CutsceneMode(true)

	local coro1 = TASK:BranchCoroutine(function() SOUND:PlayBGM("007 - Title Theme.ogg", false)
												GAME:WaitFrames(830) 
												SOUND:StopBGM() end) 
	local coro2 = TASK:BranchCoroutine(function() GAME:WaitFrames(150)
												GAME:FadeIn(60)
												UI:WaitShowBG("TitleCatchPresents", 1, 60)
												GAME:WaitFrames(150)
												UI:WaitHideBG(60)
												UI:WaitShowBG("TitleCatchLogo", 1, 60) end)
	TASK:JoinCoroutines({coro1, coro2})
	
	GAME:WaitFrames(90)
	
	local coro1 = TASK:BranchCoroutine(function() GAME:FadeOut(false, 120) end) 
	local coro2 = TASK:BranchCoroutine(function() UI:WaitHideBG(120) end)
	TASK:JoinCoroutines({coro1, coro2})
	
	GAME:CutsceneMode(false)
	
	--debug end
	GAME:RestartToTitle()
	
end

---title_catch.Exit(map)
--Engine callback function
function title_catch.Exit(map)


end

---title_catch.Update(map)
--Engine callback function
function title_catch.Update(map)


end

---title_catch.GameSave(map)
--Engine callback function
function title_catch.GameSave(map)


end

---title_catch.GameLoad(map)
--Engine callback function
function title_catch.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------


return title_catch

