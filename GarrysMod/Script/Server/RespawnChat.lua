-- Add hook function
hook.Add("PlayerSay", "RespawnCommand", function(ply, text)
	if (string.lower(text) == "/respawn") then -- Check if the player said the command
		ply:Kill() -- Kill first
		ply:Spawn() -- Then respawn
    else
		return nil -- No respawn
	end
end)