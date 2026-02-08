local seat = game["Environment"]["Seat"]

-- Not Seated
seat.Vacated:Connect(function()
    print("A player is not seated.")
end)