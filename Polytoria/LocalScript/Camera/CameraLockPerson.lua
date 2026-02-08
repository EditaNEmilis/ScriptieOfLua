local camera = game['Environment']['Camera']

-- Key Function
Input.KeyDown:Connect(function(key)
    if key == "C" and camera.MaxDistance == 0 then -- Normal
        -- MaxDistance at 50 and minium at 5
        camera.MaxDistance = 50
        camera.MinDistance = 5
    elseif key == "C" and camera.MaxDistance ~= 0 then -- Locked
        -- Both at 0
        camera.MaxDistance = 0
        camera.MinDistance = 0
    end
end)