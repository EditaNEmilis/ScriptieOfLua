-- GameEvent listening
gameevent.Listen("player_connect")

-- Hook for player connection
hook.Add("player_disconnect", "AnnounceDisconnection", function(data)
	for _, ply in ipairs(player.GetAll()) do -- ipairs for players when leaving the server
		ply:ChatPrint(data.name .. " has disconnected to the server.") -- ChatPrint
	end
end)