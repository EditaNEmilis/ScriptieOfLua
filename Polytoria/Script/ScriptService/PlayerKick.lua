game["Players"].PlayerAdded:Connect(function(player)
    if player.Name == "Player" then -- Check for specifiec player name
        player:Kick("This is a test kick.")
    end
end)