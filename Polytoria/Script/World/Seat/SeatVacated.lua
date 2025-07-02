local seat = game["Environment"]["Seat"]

seat.Vacated:Connect(function()
    print("A player is not seated.")
end)