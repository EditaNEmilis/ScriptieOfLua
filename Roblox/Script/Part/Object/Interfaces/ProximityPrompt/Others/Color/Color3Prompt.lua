local brick = script.Parent
local proximity = brick.ProximityPrompt

proximity.Triggered:Connect(function()
	brick.Color = Color3.new(0.666667, 0.333333, 0.498039)
end)