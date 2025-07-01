local sound = game["Environment"]["Sound"]

sound.Loaded:Connect(function()
    sound.Play()
end)