game["Players"].PlayerAdded:Connect(function(player)
    Input.KeyDown:Connect(function(key)
        if key == "R" then
            player.Health = 0
        end
    end)
end)