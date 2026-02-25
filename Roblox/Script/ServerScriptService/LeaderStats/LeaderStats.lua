-- Local function for leaderstats
local function onPlayerJoin(player)
	-- Leaderstats folder
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	-- Cashes
	local cash = Instance.new("IntValue")
	cash.Name = "Cashes"
	cash.Value = 0
	cash.Parent = leaderstats

	-- Levels
	local level = Instance.new("IntValue")
	level.Name = "Levels"
	level.Value = 0
	level.Parent = leaderstats
end

-- Run the function
game.Players.PlayerAdded:Connect(onPlayerJoin)