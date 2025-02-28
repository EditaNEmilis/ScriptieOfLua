-- Locals
local players = game.Players.LocalPlayer
local mouse = players:GetMouse()

-- Right Mouse Function
mouse.Button2Down:Connect(function()
	-- Charcter and humanoid locals
	local character = players.Character or players.CharacterAdded:Wait()
	local humanoid = character.Humanoid

	humanoid:ChangeState(Enum.HumanoidStateType.Jumping) -- Make the player jump
end)