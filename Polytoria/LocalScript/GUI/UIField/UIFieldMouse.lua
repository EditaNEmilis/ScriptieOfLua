local gui = game["PlayerGUI"]["GUI"]
local field = gui["UIField"]

-- Mouse Down
field.MouseDown:Connect(function()
    field.Text = "Mouse Pressed"
end)

-- Mouse Up
field.MouseUp:Connect(function()
    field.Text = "Mouse Released"
end)