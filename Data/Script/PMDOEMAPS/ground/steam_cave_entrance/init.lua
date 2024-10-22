--[[
    init.lua
    Created: 08/27/2024 19:03:51
    Description: Autogenerated script file for the map steam_cave_entrance.
]]--
-- Commonly included lua functions and data
require 'origin.common'

-- Package name
local steam_cave_entrance = {}

-------------------------------
-- Map Callbacks
-------------------------------
---steam_cave_entrance.Init(map)
--Engine callback function
function steam_cave_entrance.Init(map)


end

---steam_cave_entrance.Enter(map)
--Engine callback function
function steam_cave_entrance.Enter(map)

  GAME:FadeIn(20)

end

---steam_cave_entrance.Exit(map)
--Engine callback function
function steam_cave_entrance.Exit(map)


end

---steam_cave_entrance.Update(map)
--Engine callback function
function steam_cave_entrance.Update(map)


end

---steam_cave_entrance.GameSave(map)
--Engine callback function
function steam_cave_entrance.GameSave(map)


end

---steam_cave_entrance.GameLoad(map)
--Engine callback function
function steam_cave_entrance.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------


return steam_cave_entrance

