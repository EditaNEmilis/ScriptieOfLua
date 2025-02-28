-- Locals
local userinput = game:GetService("UserInputService")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Function
userinput.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.T then
		-- Jump
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)