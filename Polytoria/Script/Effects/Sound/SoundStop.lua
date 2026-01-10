local sound = game["Environment"]["Sound"]

-- If the sound is loaded in
sound.Loaded:Connect(function()
    sound.Stop() -- Stops the audio
end)