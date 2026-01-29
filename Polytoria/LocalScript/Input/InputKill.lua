game["Players"].PlayerAdded:Connect(function(player)
    Input.KeyDown:Connect(function(key)
        if key == "R" then -- Key
            player.Health = 0 -- Set the player health to 0
        end
    end)
end)