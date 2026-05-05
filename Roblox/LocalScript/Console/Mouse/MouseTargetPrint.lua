local players = game.Players.LocalPlayer
local mouse = players:GetMouse()

while wait(0.1) do
	-- If there is a surface
	if mouse.Target then
		print("The mouse is pointing to the " .. mouse.TargetSurface.Name .. " side of " .. mouse.Target.Name)
	else -- No surface
		print("The mouse is not pointing at anything")
	end
end