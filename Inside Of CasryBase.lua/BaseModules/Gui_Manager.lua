local includer = require(script.Parent.Parent.Includer)
local styles = includer.RequireModule("Styles", script.Parent)
local playergui = includer.GetPlayerChild("PlayerGui", game.Players.LocalPlayer)

local gui_manager = {}

function gui_manager.createconfigurations(
    MenuName : string,
    style : string,
    creator : string,
    MenuSize : UDim2,
    MenuPosition : UDim2
)
    
    -- For MenuSize and MenuPosition I recommend putting nil or UDim2.new(0,0,0,0)
    
    local ui_list = {
        ["MENU_NAME"] = MenuName,
        ["MENU_STYLE"] = style,
        ["MENU_CREATOR"] = creator,
        ["MENU_POSITION"] = MenuPosition
    }
    
    if styles[style] == nil then
        table.remove(ui_list, 2)
    end
    
    if MenuPosition == nil then
        table.remove(ui_list, 4)
    end
    
    return ui_list
end

function gui_manager.createmenu(list)
    local gui = Instance.new("ScreenGui")
    local main_frame = Instance.new("Frame", gui)
    gui.Name = list["MENU_NAME"]
    
    local default_size_frame = UDim2.new(0.37, 0, 0.544, 0) -- Messing around with these values may cause the menu to be mis-positioned
    local default_position_frame = UDim2.new(0.189, 0, 0.228, 0)
    main_frame.Name = "MAIN_FRAME"
    main_frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    
    local title = Instance.new("TextLabel", main_frame)
    title.Name = "TITLE"
    title.Text = list["MENU_NAME"]
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(0.394, 0, 0.071, 0)
    title.Position = UDim2.new(0.018, 0, 0.016, 0)
    title.Font = Enum.Font.GothamBlack
    title.TextScaled = true
    title.BorderSizePixel = 0
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextColor3 = Color3.fromRGB(255, 255, 255)

    local ui_corner = Instance.new("UICorner", main_frame)
    ui_corner.CornerRadius = UDim.new(0, 8)
    
    main_frame.Size = default_size_frame
    
    if list["MENU_POSITION"] == nil then
        main_frame.Position = default_position_frame
    end
    
    return gui
end

return gui_manager