local brick = script.Parent
local x = 0 -- Color Value

while true do
	brick.Color = Color3.fromHSV(x, 1, 1) -- HSV

	x = x + 1 / 255
	if x >= 1 then
		x = 0
	end

	wait() -- Wait Delay
end