local button = script.Parent

button.Touched:Connect(function(hit) --i use part instead of hit
	if hit.Parent:FindFirstChild("Humanoid") then
		local humanoid = hit.Parent:WaitForChild("Humanoid")

		humanoid.Health = 0
	end
end)