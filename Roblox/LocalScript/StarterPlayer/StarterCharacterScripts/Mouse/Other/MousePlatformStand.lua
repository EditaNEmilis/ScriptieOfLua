-- Locals
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Function
mouse.Button2Down:Connect(function()
	-- PlatformStand switch
	if humanoid.PlatformStand == false then
		humanoid.PlatformStand = true
	else
		humanoid.PlatformStand = false
	end
end)