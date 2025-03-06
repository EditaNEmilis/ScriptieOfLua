local brick = script.Parent

brick.Touched:Connect(function(plr)
	local humanoid = plr.Parent:FindFirstChild("Humanoid")
	if humanoid then
		print(humanoid.Health)
	end
end)