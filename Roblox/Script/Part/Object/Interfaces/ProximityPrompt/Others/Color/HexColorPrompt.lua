local brick = script.Parent
local proximity = brick.ProximityPrompt

proximity.Triggered:Connect(function()
	brick.Color = Color3.fromHex("#4fe9a5")
end)