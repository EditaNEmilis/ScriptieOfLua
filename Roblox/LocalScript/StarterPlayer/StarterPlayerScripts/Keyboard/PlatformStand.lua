-- Locals
local userinput = game:GetService("UserInputService")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Function
userinput.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.T then
		-- PlatformStand switch
		if humanoid.PlatformStand == false then
			humanoid.PlatformStand = true
		else
			humanoid.PlatformStand = false
		end
	end
end)