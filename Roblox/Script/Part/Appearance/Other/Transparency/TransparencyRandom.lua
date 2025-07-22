local brick = script.Parent
local x = 0

while wait(1) do
	x = math.random(0, 100)
	brick.Transparency = x / 100
end