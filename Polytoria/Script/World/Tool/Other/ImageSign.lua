local tool = script.Parent
local handle = tool["Handle"]
local decal = handle["ImageSignPart"]["Decal"]

local imageID = 0

-- Equip
tool.Equipped:Connect(function()
    -- Create GUI
    local gui = Instance.New("GUI", game["PlayerGUI"])
    local input = Instance.New("UITextInput", gui)
    local button = Instance.New("UIButton", gui)

    -- Config UIs
    -- Input
    input.FontSize = 44
    input.CornerRadius = 10
    input.PositionRelative = Vector2.New(0.5, 0.3)
    input.SizeOffset = Vector2.New(400, 100)

    -- Button
    button.FontSize = 22
    button.CornerRadius = 10
    button.PositionRelative = Vector2.New(0.5, 0.20)
    button.SizeOffset = Vector2.New(200, 40)
    button.Text = "Apply"

    -- Function Click
    button.Clicked:Connect(function()
        local getID = input.Text

        if getID == "" then
            return nil
        else
            imageID = tonumber(getID)
            decal.ImageID = imageID
        end
    end)
end)

-- Unequip
tool.Unequipped:Connect(function()
    -- Destroy GUI
    local gui = game['PlayerGUI']["GUI"]

    if gui then
        gui:Destroy()
    else
        return nil
    end
end)