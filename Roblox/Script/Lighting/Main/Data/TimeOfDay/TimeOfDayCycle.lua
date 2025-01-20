local lighting = game.Lighting
local hr = 14 -- Hour
local min = 0 -- Minute
local sec = 0 -- Second

-- Loop Cycle
while wait(0.1) do
	lighting.TimeOfDay = ((hr)..":"..(min)..":"..(sec))
	sec = sec + 30

	if sec >= 60 then
		min = min + 1
		sec = 0
	elseif min >= 60 then
		hr = hr + 1
		min = 0
	elseif hr >= 24 then
		hr = 0
	end
end