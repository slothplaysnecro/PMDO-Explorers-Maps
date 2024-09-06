--[[
    init.lua
    Created: 09/06/2024 15:10:55
    Description: Autogenerated script file for the map dark_hill_entrance.
]]--
-- Commonly included lua functions and data
require 'origin.common'

-- Package name
local dark_hill_entrance = {}

-------------------------------
-- Map Callbacks
-------------------------------
---dark_hill_entrance.Init(map)
--Engine callback function
function dark_hill_entrance.Init(map)


end

---dark_hill_entrance.Enter(map)
--Engine callback function
function dark_hill_entrance.Enter(map)

  GAME:FadeIn(20)

end

---dark_hill_entrance.Exit(map)
--Engine callback function
function dark_hill_entrance.Exit(map)


end

---dark_hill_entrance.Update(map)
--Engine callback function
function dark_hill_entrance.Update(map)


end

---dark_hill_entrance.GameSave(map)
--Engine callback function
function dark_hill_entrance.GameSave(map)


end

---dark_hill_entrance.GameLoad(map)
--Engine callback function
function dark_hill_entrance.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------


return dark_hill_entrance

