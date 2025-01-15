local button = script.Parent -- Part 1
local target = workspace.Part2 -- Part 2

button.Touched:Connect(function(hit)
	if hit == target then
		print("Pressed!")
	end
end)