-- Locals
local tool = script.Parent
local handle = tool:WaitForChild("Handle")

-- Check if the tool is being held
tool.Equipped:Connect(function()
	local character = tool.Parent
	local player = game.Players:GetPlayerFromCharacter(character)

	if player and player.Character == character then
		-- Function
		function Transparent()
			for i = 1, 10 do
				handle.Transparency = handle.Transparency + 0.1
				wait(0.1)
			end

			wait(0.33) -- Delay

			for i = 1, 10 do
				handle.Transparency = handle.Transparency - 0.1
				wait(0.1)
			end
		end
	end
end)

-- Task loop
while task.wait(0) do
	Transparent()
end