local textButton = script.Parent
local counter = 0

textButton.MouseButton1Click:Connect(function()
    counter = counter + 1
    print(counter)
end)