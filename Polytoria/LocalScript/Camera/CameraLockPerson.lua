local camera = game['Environment']['Camera']

Input.KeyDown:Connect(function(key)
    if key == "C" and camera.MaxDistance == 0 then
        camera.MaxDistance = 50
        camera.MinDistance = 5
    elseif key == "C" and camera.MaxDistance ~= 0 then
        camera.MaxDistance = 0
        camera.MinDistance = 0
    end
end)