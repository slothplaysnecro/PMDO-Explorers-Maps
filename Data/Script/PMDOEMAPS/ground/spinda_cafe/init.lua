--[[
    init.lua
    Created: 07/11/2024 17:58:23
    Description: Autogenerated script file for the map spinda_cafe.
]]--
-- Commonly included lua functions and data
require 'origin.common'

-- Package name
local spinda_cafe = {}

-- Local, localized strings table
-- Use this to display the named strings you added in the strings files for the map!
-- Ex:
--      local localizedstring = STRINGS.MapStrings['SomeStringName']


-------------------------------
-- Map Callbacks
-------------------------------
---spinda_cafe.Init(map)
--Engine callback function
function spinda_cafe.Init(map)

  --This will fill the localized strings table automatically based on the locale the game is 
  -- currently in. You can use the MapStrings table after this line!
  

end

---spinda_cafe.Enter(map)
--Engine callback function
function spinda_cafe.Enter(map)

  GAME:FadeIn(20)

end

---spinda_cafe.Exit(map)
--Engine callback function
function spinda_cafe.Exit(map)


end

---spinda_cafe.Update(map)
--Engine callback function
function spinda_cafe.Update(map)


end

---spinda_cafe.GameSave(map)
--Engine callback function
function spinda_cafe.GameSave(map)


end

---spinda_cafe.GameLoad(map)
--Engine callback function
function spinda_cafe.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------


return spinda_cafe

