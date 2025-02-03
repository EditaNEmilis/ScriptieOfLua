-- Locals
local character = script.Parent
local players = game.Players

-- If the player dies
character.Humanoid.Died:Connect(function()
	for _, tool in pairs(character:GetChildren()) do
		if (tool.ClassName == "Tool") then
			tool.Parent = game.Workspace -- Remove it from the player
		end
	end

	if players[character.Name]:FindFirstChild("Backpack") then
		for _, tool in pairs(players[character.Name].Backpack:GetChildren()) do
			tool.Parent = game.Workspace -- Remove it from the backpack

			-- RootPart
			local rootPart = character:FindFirstChild("HumanoidRootPart")
			tool:FindFirstChild("Handle").Position = rootPart.Position -- Set the tool(s) to the RootPart position
		end
	end
end)