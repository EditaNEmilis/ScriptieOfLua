hook.Add("CanDrive", "DrivingPermission", function(ply, ent)
	-- Stops nonadmins from using Prop Drive
    if !ply:IsAdmin() then
		return false
	end
end)