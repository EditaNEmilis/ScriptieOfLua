--- Only works if there is 'leaderstats'.
local button = script.Parent

button.Touched:Connect(function(hit)
	local humanoid = hit.Parent:FindFirstChild("Humanoid")

	if humanoid then
		local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
		if plr:FindFirstChild("leaderstats"):FindFirstChild("Money") then
			plr.leaderstats.Money.Value += 10
		end
	end
end)