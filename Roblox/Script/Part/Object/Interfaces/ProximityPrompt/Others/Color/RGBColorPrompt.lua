local brick = script.Parent
local proximity = brick.ProximityPrompt

proximity.Triggered:Connect(function()
	brick.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
end)