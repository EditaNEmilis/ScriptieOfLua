local environment = game["Environment"]
local boolValue = environment["BoolValue"]

-- Change boolean value
boolValue.Changed:Connect(function()
    print("My new value is " .. boolValue.Value)
end)