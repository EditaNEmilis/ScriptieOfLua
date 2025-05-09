game["Players"].PlayerAdded:Connect(function(player)
    if player.Name == "Player" then
        print("A player has joined the server.")
    end
end)