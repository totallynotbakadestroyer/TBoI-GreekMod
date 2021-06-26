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
["constants"] = function() --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
____exports.CollectibleTypeCustom = CollectibleTypeCustom or ({})
____exports.CollectibleTypeCustom.COLLECTIBLE_HERMES_SANDALS = Isaac.GetItemIdByName("Hermes Sandals")
____exports.CollectibleTypeCustom[____exports.CollectibleTypeCustom.COLLECTIBLE_HERMES_SANDALS] = "COLLECTIBLE_HERMES_SANDALS"
return ____exports
 end,
["callbacks.evaluateCache"] = function() --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____constants = require("constants")
local CollectibleTypeCustom = ____constants.CollectibleTypeCustom
____exports.evaluateCache = function(____, player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_SPEED then
        if player:HasCollectible(CollectibleTypeCustom.COLLECTIBLE_HERMES_SANDALS) then
            if player.MoveSpeed >= 1.7 then
                player.MoveSpeed = 2
            else
                player.MoveSpeed = player.MoveSpeed + 0.3
            end
        end
    end
end
return ____exports
 end,
["items.hermesSandals"] = function() --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____constants = require("constants")
local CollectibleTypeCustom = ____constants.CollectibleTypeCustom
local added = 0
____exports.checkApplyEffect = function(____, player)
    if player:HasCollectible(CollectibleTypeCustom.COLLECTIBLE_HERMES_SANDALS) then
        if player:GetMovementDirection() ~= Direction.NO_DIRECTION then
            if ((Isaac.GetFrameCount() % 8) == 0) and (player.MoveSpeed < 1.99) then
                added = added + 0.01
                player.MoveSpeed = player.MoveSpeed + 0.01
                player:EvaluateItems()
            end
        else
            player.MoveSpeed = player.MoveSpeed - added
            added = 0
        end
    end
end
return ____exports
 end,
["callbacks.postPlayerUpdate"] = function() --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____hermesSandals = require("items.hermesSandals")
local checkApplyEffect = ____hermesSandals.checkApplyEffect
____exports.postPlayerUpdate = function(____, player)
    checkApplyEffect(nil, player)
end
return ____exports
 end,
["main"] = function() --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____evaluateCache = require("callbacks.evaluateCache")
local evaluateCache = ____evaluateCache.evaluateCache
local ____postPlayerUpdate = require("callbacks.postPlayerUpdate")
local postPlayerUpdate = ____postPlayerUpdate.postPlayerUpdate
local GreekMod = RegisterMod("GreekMod", 1)
local function postGameStarted(self)
    Isaac.ConsoleOutput("started")
end
GreekMod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, postGameStarted)
GreekMod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, postPlayerUpdate)
GreekMod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, evaluateCache)
Isaac.DebugString("GreekMod initialized.")
return ____exports
 end,
}
return require("main")
