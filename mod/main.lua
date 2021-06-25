--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]

local ____modules = {}
local ____moduleCache = {}
local ____originalRequire = require
local function require(file)
    if ____moduleCache[file] then
        return ____moduleCache[file]
    end
    if ____modules[file] then
        ____moduleCache[file] = ____modules[file]()
        return ____moduleCache[file]
    else
        if ____originalRequire then
            return ____originalRequire(file)
        else
            error("module '" .. file .. "' not found")
        end
    end
end
____modules = {
["main"] = function() --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
GreekMod = RegisterMod("GreekMod", 1)
function postGameStarted(self)
    Isaac.DebugString("Callback triggered: MC_POST_GAME_STARTED")
end
GreekMod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, postGameStarted)
Isaac.DebugString("GreekMod initialized.")
 end,
}
return require("main")
