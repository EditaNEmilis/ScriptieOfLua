--- ONLY WORKS IF THE GAME IS PUBLISHED, PLUS 'Allow Third Party Teleports' FROM THE GAME SETTINGS
local teleportservice = game:GetService("TeleportService")
local button = script.Parent

button.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)

	if player then
		teleportservice:Teleport(1334669864, player)
	end
end)