Input.KeyDown:Connect(function(key)
    if key == "M" then
        print("Mouse WorldPoint coordinates: " .. tostring(Input.GetMouseWorldPoint()))
    end
end)