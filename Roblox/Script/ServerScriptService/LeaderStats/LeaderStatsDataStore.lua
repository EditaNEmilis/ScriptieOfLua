--- ONLY WORKS IF THE GAME IS PUBLISHED, PLUS 'Allow HTTP Requests' AND 'Enable Studio Access to API Services' FROM THE GAME SETTINGS
-- Get the service
local datastore = game:GetService("DataStoreService"):GetDataStore("PlayerExperience")

game.Players.PlayerAdded:Connect(function(plr)
	-- Set leaderstats
	local leaderstats = Instance.new("Folder", plr)
	leaderstats.Name = "leaderstats"

	-- New instance NumberValue
	local money = Instance.new("NumberValue", leaderstats)
	money.Name = "Money"
	money.Value = 0
	money.Parent = leaderstats

	-- GetAsync DATA
	local dataload = datastore:GetAsync(tostring(plr.UserId))
	if dataload then
		print("Data success!")
		money.Value = dataload[1]
	end
end)

game.Players.PlayerRemoving:Connect(function(plr)
	-- SetAsync DATA
	datastore:SetAsync(tostring(plr.UserId),{
		plr.leaderstats.Money.Value
	})
end)