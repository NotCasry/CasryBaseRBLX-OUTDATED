local includer = require(script.Parent.Parent.Includer)

local gui_manager_module = includer.RequireModule("Gui_Manager", script.Parent)
local playergui = includer.GetPlayerChild("PlayerGui", game.Players.LocalPlayer)

local list = gui_manager_module.createconfigurations(
    "Terabyte",
    nil,
    "Casry",
    nil,
    nil
)

local injector = {}

function injector.LOAD()
    local gui = gui_manager_module.createmenu(list)
    
    repeat wait(.1) until gui
    
    gui.Parent = playergui
    
    warn("[BASE NOTIFICATION] LOADED | (MENU NAME: "..list["MENU_NAME"]..")")
end

function injector.UNLOAD()
    
    if playergui:FindFirstChild(list["MENU_NAME"]) then
        playergui:FindFirstChild(list["MENU_NAME"]):Destroy()
    end
    
    warn("[BASE NOTIFICATION] UNLOADED | (MENU NAME: "..list["MENU_NAME"]..")")
end

return injector