local seat = game["Environment"]["Seat"]

-- Seated
seat.Sat:Connect(function()
    print("A player is seated.")
end)