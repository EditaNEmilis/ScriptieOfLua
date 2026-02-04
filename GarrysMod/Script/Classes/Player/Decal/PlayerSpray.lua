hook.Add("PlayerSpray", "DisablePlayerSpray", function(ply)
	return not ply:IsAdmin() -- Only the admins can spray
end)