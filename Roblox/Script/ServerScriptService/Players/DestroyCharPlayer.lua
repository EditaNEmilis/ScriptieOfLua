local players = game.Players

-- PlayerAdded function
players.PlayerAdded:Connect(function(player)
	while true do
		local char = player.CharacterAdded:Wait() -- Get Character

		char.Humanoid.Died:Connect(function()
			char:Destroy() -- Destroy the character ingame
		end)
	end
end)