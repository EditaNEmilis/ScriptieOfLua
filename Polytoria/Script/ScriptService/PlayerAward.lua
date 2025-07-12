game["Players"].PlayerAdded:Connect(function(plr)
    wait(2) -- Delay

    -- Award achievement system
    Achievements:Award(plr.UserID, 12345, function(success, error)
        if success then -- If the achievement is successful
            print("Awarded achievement")
        else -- Error if not succeed
            print("Error awarding achievement: " .. error)
        end
    end)
end)