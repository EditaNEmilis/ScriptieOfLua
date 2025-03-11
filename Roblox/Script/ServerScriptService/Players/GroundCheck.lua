local players = game.Players

-- PlayerAdded function
players.PlayerAdded:Connect(function(player)
	local char = player.Character or player.CharacterAdded:Wait()
	local humanoid = char:WaitForChild("Humanoid")

	-- Check if the player is on ground
	local onGround = humanoid.FloorMaterial ~= Enum.Material.Air
	-- Set JumpPower based on the player's position
	if onGround then
		humanoid.JumpPower = 0
	else
		humanoid.JumpPower = 50
	end
end)