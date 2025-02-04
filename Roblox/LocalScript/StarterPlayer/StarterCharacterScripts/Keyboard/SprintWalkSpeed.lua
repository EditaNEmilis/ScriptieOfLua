-- Locals
local userinput = game:GetService("UserInputService")
local players = game.Players.LocalPlayer

--  If pressed
userinput.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		game.Workspace[players.Name].Humanoid.WalkSpeed = 32
	end
end)

-- If not pressed
userinput.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		game.Workspace[players.Name].Humanoid.WalkSpeed = 16
	end
end)