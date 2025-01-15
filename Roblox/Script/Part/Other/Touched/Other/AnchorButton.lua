local button = script.Parent

button.Touched:Connect(function(hit)
	local humanoid = hit.Parent:FindFirstChild("Humanoid")

	if humanoid then
		button.Anchored = false
	end
end)