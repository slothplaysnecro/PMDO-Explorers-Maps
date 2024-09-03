--[[
    init.lua
    Created: 09/03/2024 13:48:40
    Description: Autogenerated script file for the map amp_plains_entrance.
]]--
-- Commonly included lua functions and data
require 'origin.common'

-- Package name
local amp_plains_entrance = {}

-------------------------------
-- Map Callbacks
-------------------------------
---amp_plains_entrance.Init(map)
--Engine callback function
function amp_plains_entrance.Init(map)


end

---amp_plains_entrance.Enter(map)
--Engine callback function
function amp_plains_entrance.Enter(map)

  GAME:FadeIn(20)

end

---amp_plains_entrance.Exit(map)
--Engine callback function
function amp_plains_entrance.Exit(map)


end

---amp_plains_entrance.Update(map)
--Engine callback function
function amp_plains_entrance.Update(map)


end

---amp_plains_entrance.GameSave(map)
--Engine callback function
function amp_plains_entrance.GameSave(map)


end

---amp_plains_entrance.GameLoad(map)
--Engine callback function
function amp_plains_entrance.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------


return amp_plains_entrance

