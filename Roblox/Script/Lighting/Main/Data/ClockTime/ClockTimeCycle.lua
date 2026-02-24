-- Note, this is same as TimeOfDay.
local lighting = game.Lighting
local ct = 14 -- ClockTime

-- Loop Cycle
while wait(0.1) do
	lighting.ClockTime = (ct)
	ct = ct + 0.01

	-- Reset if its past 24
	if ct >= 24 then
		ct = 0
	end
end