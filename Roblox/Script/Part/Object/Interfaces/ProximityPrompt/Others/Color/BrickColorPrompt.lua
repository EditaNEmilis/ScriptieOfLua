local brick = script.Parent
local proximity = brick.ProximityPrompt

proximity.Triggered:Connect(function()
	brick.BrickColor = BrickColor.new("Really blue")
end)