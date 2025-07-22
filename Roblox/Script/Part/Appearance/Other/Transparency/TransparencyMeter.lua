local brick = script.Parent
local x = 0

while wait(.01) do
	x = x + 0.01
	
	-- If the transparency is full
	if x >= 1 then
		x = 0 -- Reset
	end
	
	brick.Transparency = x
end