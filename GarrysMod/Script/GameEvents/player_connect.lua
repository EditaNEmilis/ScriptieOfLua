-- GameEvent listening
gameevent.Listen("player_connect")

-- Hook for player connection
hook.Add("player_connect", "AnnounceConnection", function(data)
	for _, ply in ipairs(player.GetAll()) do -- ipairs for players when joining the server
		ply:ChatPrint(data.name .. " has connected to the server.") -- ChatPrint
	end
end)