local seat = game["Environment"]["Seat"]

seat.Sat:Connect(function()
    print("A player is seated.")
end)