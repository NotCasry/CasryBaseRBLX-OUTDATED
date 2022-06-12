-- This is a tool for people

local Players = game:GetService("Players")
local includer = {}

function includer.GetPlayer()
    return Players.LocalPlayer
end

function includer.GetPlayerName()
    return Players.LocalPlayer.Name
end

function includer.GetPlayerUserId()
    return Players.LocalPlayer.UserId
end

function includer.GetPlayerChild(name, parent)
    
    if parent then
        
        for index, child in pairs(parent:GetDescendants()) do
            
            if child.Name == name then
                
                return child
                
            end
            
        end
        
    end
end

function includer.GetPlayerParent()
    return Players.LocalPlayer.Parent
end

function includer.PingCheck()
    return Players.LocalPlayer:GetNetworkPing()
end

function includer.FpsCheck()
    
end

function includer.RequireModule(name, parent) -- Will be here soon 🙂
    local parent = script.Parent
    
    if parent then
        
        for index, child in pairs(parent:GetDescendants()) do
            
            if child.Name == name then
                
                return require(child)
                
            end
            
        end
        
    end
end

return includer