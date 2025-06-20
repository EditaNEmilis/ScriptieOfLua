local brick = script.Parent
local proximity = brick.ProximityPrompt

proximity.Triggered:Connect(function()
	brick.Color = Color3.fromHSV(0.8, 0.55, 1)
end)