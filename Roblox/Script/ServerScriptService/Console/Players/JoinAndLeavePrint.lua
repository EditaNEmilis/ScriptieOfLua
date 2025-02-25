local players = game.Players

-- PlayerAdded function
players.PlayerAdded:Connect(function(char)
	-- Joining
	char.CharacterAdded:Connect(function()
		print(char.Name, "has joined the server")

	end)

	-- Leaving
	char.CharacterRemoving:Connect(function()
		print(char.Name, "has left the server")
	end)
end)