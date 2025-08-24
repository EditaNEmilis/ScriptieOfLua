-- GetService 'Teams' local
local teams = game:GetService("Teams")

--- Teams
-- Red
local redteam = Instance.new("Team")
redteam.TeamColor = BrickColor.new("Really red")
redteam.AutoAssignable = true
redteam.Name = "RED"
redteam.Parent = teams

-- Blue
local blueteam = Instance.new("Team")
blueteam.TeamColor = BrickColor.new("Really blue")
blueteam.AutoAssignable = true
blueteam.Name = "BLUE"
blueteam.Parent = teams

-- Locals
local numred = 0
local numblue = 0

-- PlayerAdded function
local function PlayerAdded(team)
	if team == redteam then
		numred = numred + 1
	elseif team == blueteam then
		numred = numred + 1
	end
end

-- PlayerRemoved functiom
local function PlayerRemoved(team)
	if team == redteam then
		numred = numred - 1
	elseif team == blueteam then
		numblue = numblue - 1
	end

	-- Small and big locals
	local smallteam = nil
	local bigteam = nil

	-- Unbalance check
	if (numred - numblue) > 2 then
		bigteam = redteam
		smallteam = blueteam
	elseif (numblue - numred) > 2 then
		bigteam = blueteam
		smallteam = redteam
	end

	if bigteam then
		-- Player locals
		local playerlist = bigteam:GetPlayers()
		local player = playerlist[math.random(1, #playerlist)]

		-- If player exists
		if player then
			player.TeamColor = smallteam.TeamColor
			-- Change player team
			player:LoadCharacter()
		end
	end
end

-- Connect functions
-- Red Team
redteam.PlayerAdded:Connect(function(_player)
	PlayerAdded(redteam)
end)

redteam.PlayerRemoved:Connect(function(_player)
	PlayerRemoved(redteam)
end)

-- Blue Team
blueteam.PlayerAdded:Connect(function(_player)
	PlayerAdded(blueteam)
end)

blueteam.PlayerRemoved:Connect(function(_player)
	PlayerRemoved(blueteam)
end)