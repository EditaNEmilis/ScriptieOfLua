-- The default functionality taken from the base gamemode
function GM:MouthMoveAnimation(ply)
	-- Flexes ID
    local flexes = {
		ply:GetFlexIDByName("jaw_drop"),
		ply:GetFlexIDByName("left_part"),
		ply:GetFlexIDByName("right_part"),
		ply:GetFlexIDByName("left_mouth_drop"),
		ply:GetFlexIDByName("right_mouth_drop")
	}

	-- Weight
	local weight = ply:IsSpeaking() && math.Clamp(ply:VoiceVolume() * 2, 0, 2) || 0

	-- Loop pairs
	for k, v in pairs(flexes) do
		ply:SetFlexWeight(v, weight)
	end
end