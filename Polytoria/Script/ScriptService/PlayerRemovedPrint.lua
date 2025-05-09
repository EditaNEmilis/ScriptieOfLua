game["Players"].PlayerRemoved:Connect(function(player)
    if player.Name == "Player" then
        print("A player has left the server.")
    end
end)