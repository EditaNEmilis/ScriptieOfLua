local entity = Entity(1)
local tr = entity:GetEyeTrace()

-- BeamRingPoint
effects.BeamRingPoint(tr.HitPos +
                Vector(0, 0, 10), -- Position
                2.5, -- Lifetime
                0, -- Start Radius
                250, -- End Radius
                15, -- Width
                0, -- Amplitude
                Color(255, 255, 255) -- Color
                )