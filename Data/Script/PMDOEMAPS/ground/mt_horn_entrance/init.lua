--[[
    init.lua
    Created: 08/26/2024 20:28:19
    Description: Autogenerated script file for the map mt_horn_entrance.
]]--
-- Commonly included lua functions and data
require 'origin.common'

-- Package name
local mt_horn_entrance = {}

-------------------------------
-- Map Callbacks
-------------------------------
---mt_horn_entrance.Init(map)
--Engine callback function
function mt_horn_entrance.Init(map)


end

---mt_horn_entrance.Enter(map)
--Engine callback function
function mt_horn_entrance.Enter(map)

  GAME:FadeIn(20)

end

---mt_horn_entrance.Exit(map)
--Engine callback function
function mt_horn_entrance.Exit(map)


end

---mt_horn_entrance.Update(map)
--Engine callback function
function mt_horn_entrance.Update(map)


end

---mt_horn_entrance.GameSave(map)
--Engine callback function
function mt_horn_entrance.GameSave(map)


end

---mt_horn_entrance.GameLoad(map)
--Engine callback function
function mt_horn_entrance.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------


return mt_horn_entrance

