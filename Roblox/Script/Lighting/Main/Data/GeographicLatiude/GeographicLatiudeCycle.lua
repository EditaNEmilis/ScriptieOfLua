local lighting = game.Lighting
local gl = 45 -- GeographicLatitude

-- Loop Cycle
while wait(0.01) do
	lighting.GeographicLatitude = (gl)
	gl = gl + 0.1

	if gl >= 360 then
		gl = 0
	end
end