-- UserInputService local
local userinput = game:GetService("UserInputService")

-- If shift is held down
userinput.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		game.Workspace.Camera.FieldOfView += 5
	end
end)

-- If shift is not held down
userinput.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		game.Workspace.Camera.FieldOfView -= 5
	end
end)