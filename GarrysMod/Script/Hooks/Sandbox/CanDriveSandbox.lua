hook.Add("CanDrive", "DrivingPermission", function(ply, ent)
	-- Stops non admins from using Prop Drive
    if !ply:IsAdmin() then
		return false
	end
end)