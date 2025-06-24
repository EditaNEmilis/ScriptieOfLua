hook.Add("SpawnlistContentChanged", "SurfaceSoundPlay", function()
    -- Locals
    local audio = "ambient/water/drip"
    local format = ".wav"

    surface.PlaySound(audio .. math.random(1, 4) .. format) -- PlaySound
end)