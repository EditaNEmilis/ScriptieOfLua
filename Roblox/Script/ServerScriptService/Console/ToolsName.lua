local players = game.Players

players.PlayerAdded:Connect(function(ply)
	-- Locals
	local character = ply.Character or ply.CharacterAdded:Wait()
	local backpack = ply:WaitForChild("Backpack")

    -- Loop pair
	for _, item in pairs(backpack:GetChildren()) do
		if item:IsA("Tool") then
			print(item.Name)
		end
	end
end)