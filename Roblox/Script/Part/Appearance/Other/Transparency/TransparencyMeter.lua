local brick = script.Parent
local x = 0

while wait(.01) do
	brick.Transparency = x
	x = x + 0.01
	
	if x >= 1 then
		x = 0
	end
end