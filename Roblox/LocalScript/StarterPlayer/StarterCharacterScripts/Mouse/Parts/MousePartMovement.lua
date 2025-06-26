-- Locals
local players = game.Players.LocalPlayer
local mouse = players:GetMouse()

-- Movement Mouse Function
mouse.Move:Connect(function()
	local part = game.Workspace.Part

	-- If the mouse is over the part
	if mouse.Target == part then
		part.Transparency = 0.5 -- Make it half the visibility
	else
		part.Transparency = 0 -- Make it fully visible
	end
end)