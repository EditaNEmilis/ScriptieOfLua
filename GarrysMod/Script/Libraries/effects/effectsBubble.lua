-- Console Command
concommand.Add("effects_bubbles", function(ply)
    -- Settings
	local pos = ply:GetEyeTrace().HitPos
	local mins = Vector(100, 100, 0)
	local maxs = Vector(100, 100, 100)

    -- Add bubbles
	effects.Bubbles(pos - mins, pos + maxs, 100, 200, 0) -- Min, Max, Count, Height, Speed, Delay
end )