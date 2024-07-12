--[[
    init.lua
    Created: 07/11/2024 20:18:13
    Description: Autogenerated script file for the map drenched_bluff_entrance.
]]--
-- Commonly included lua functions and data
require 'common'

-- Package name
local drenched_bluff_entrance = {}

-- Local, localized strings table
-- Use this to display the named strings you added in the strings files for the map!
-- Ex:
--      local localizedstring = MapStrings['SomeStringName']
local MapStrings = {}

-------------------------------
-- Map Callbacks
-------------------------------
---drenched_bluff_entrance.Init(map)
--Engine callback function
function drenched_bluff_entrance.Init(map)

  --This will fill the localized strings table automatically based on the locale the game is 
  -- currently in. You can use the MapStrings table after this line!
  MapStrings = COMMON.AutoLoadLocalizedStrings()

end

---drenched_bluff_entrance.Enter(map)
--Engine callback function
function drenched_bluff_entrance.Enter(map)

  GAME:FadeIn(20)

end

---drenched_bluff_entrance.Exit(map)
--Engine callback function
function drenched_bluff_entrance.Exit(map)


end

---drenched_bluff_entrance.Update(map)
--Engine callback function
function drenched_bluff_entrance.Update(map)


end

---drenched_bluff_entrance.GameSave(map)
--Engine callback function
function drenched_bluff_entrance.GameSave(map)


end

---drenched_bluff_entrance.GameLoad(map)
--Engine callback function
function drenched_bluff_entrance.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------


return drenched_bluff_entrance

