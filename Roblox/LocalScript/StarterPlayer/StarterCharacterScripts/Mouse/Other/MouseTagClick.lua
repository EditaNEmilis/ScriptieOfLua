-- Locals
local collection = game:GetService("CollectionService")
local players = game.Players.LocalPlayer
local mouse = players:GetMouse()

-- Mouse Function
mouse.Button1Down:Connect(function()
	if not mouse.Target then
		return nil
	end

	-- Collection checking
	if collection:HasTag(mouse.Target, "Click") then
		print("Clicked!")
	end
end)