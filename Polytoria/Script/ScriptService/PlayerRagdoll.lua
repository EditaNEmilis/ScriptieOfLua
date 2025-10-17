game["Players"].PlayerAdded:Connect(function(player)
    -- Key function
    Input.KeyDown:Connect(function(key)
        if key == "R" then
            player.Health = 0
        end

        if player.Health == 0 then
            player.RespawnTime = 9999 -- Set RespawnTime

            -- GUI button
            local respawnButton = game["PlayerGUI"]["GUI"]["Respawn"]
            respawnButton.Visible = true

            -- Respawn the player
            respawnButton.Clicked:Connect(function()
                wait(0.33)
                player:Respawn()
                respawnButton.Visible = false
            end)
        end
    end)
end)