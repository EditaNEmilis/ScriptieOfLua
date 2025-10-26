local entity = Entity(1)
local tr = entity:GetEyeTrace()

-- Checking if the trace position is underwater
print(bit.band(util.PointContents(tr.HitPos ), CONTENTS_WATER) == CONTENTS_WATER)