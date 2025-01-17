hook.Add("CanTool", "CanToolExample", function(ply, tr, toolname, tool, button)
	if toolname == "remover" and IsValid(tr.Entity) and tr.Entity:GetClass() == "prop_door_rotating" then
		return false -- Prevent the players from removing doors
	end
end)