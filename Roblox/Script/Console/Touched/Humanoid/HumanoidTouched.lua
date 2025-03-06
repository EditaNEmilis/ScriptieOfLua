local brick = script.Parent

brick.Touched:Connect(function(plr)
	local humanoid = plr.Parent:FindFirstChild("Humanoid")
	if humanoid then
		print("Player touched!")
	end
end)