-- Locals
local badgeservice = game:GetService("BadgeService")
local players = game.Players

local badgeid = 66918518 -- Natural Disaster Survival badge

-- Function
players.PlayerAdded:Connect(function(player)
	local hasbadge = pcall(function()
		return badgeservice:UserHasBadgeAsync(player.UserId, badgeid)
	end)

	-- Badge checking
	if hasbadge then -- If the player has the badge
		print(player.Name, "Has gotten the badge!")
	elseif not hasbadge then -- If the player hasn't gotten the badge
		print(player.Name, "Hasn't gotten the badge!")
	end
end)