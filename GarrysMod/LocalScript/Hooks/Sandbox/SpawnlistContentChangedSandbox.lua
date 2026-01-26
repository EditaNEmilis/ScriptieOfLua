hook.Add("SpawnlistContentChanged", "SurfaceSoundPlay", function()
    -- Locals
    local audio = "ambient/water/drip" -- Sound path
    local format = ".wav" -- Sound format

    surface.PlaySound(audio .. math.random(1, 4) .. format) -- PlaySound
end)