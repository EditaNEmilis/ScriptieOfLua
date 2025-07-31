local gui = game["PlayerGUI"]["GUI"]
local textInput = gui["UITextInput"]

-- Prints out for every input on the UI
textInput.Changed:Connect(function()
    print(textInput.Text)
end)