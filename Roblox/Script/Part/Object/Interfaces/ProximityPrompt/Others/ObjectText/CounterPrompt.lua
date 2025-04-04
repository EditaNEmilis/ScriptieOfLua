-- Locals
local brick = script.Parent
local proximity = brick.ProximityPrompt
local counter = 0

-- Trigger
proximity.Triggered:Connect(function()
	counter += 1
end)

-- ObjectText update
while task.wait(.01) do
	proximity.ObjectText = "Pressed: "..counter
end