local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

while wait(0.1) do
	print(mouse.X, mouse.Y) -- X and Y mouse position
end