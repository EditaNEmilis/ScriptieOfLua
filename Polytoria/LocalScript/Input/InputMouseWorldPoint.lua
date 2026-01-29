Input.KeyDown:Connect(function(key)
    if key == "M" then -- Key
        print("Mouse WorldPoint coordinates: " .. tostring(Input.GetMouseWorldPoint())) -- Print coordinates
    end
end)