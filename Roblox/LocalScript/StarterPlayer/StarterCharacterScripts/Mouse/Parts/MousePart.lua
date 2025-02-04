-- Locals
local players = game.Players.LocalPlayer
local mouse = players:GetMouse()

-- Right Mouse Function
mouse.Button2Down:Connect(function()
	local part = game.Workspace.Part

	-- If the mouse is over the part
	if mouse.Target == part then
		part.Transparency = 0.5 -- Make it half the visibility
	end
end)