-- Locals
local players = game.Players.LocalPlayer
local mouse = players:GetMouse()

local part = game.Workspace.Part

-- Mouse movement function
mouse.Move:Connect(function()
	part.Position = Vector3.new(mouse.Hit.Position.X, part.Position.Y, mouse.Hit.Position.Z) -- Part follows the mouse position space
end)