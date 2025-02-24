local brick = script.Parent
local x = 0

while wait(1) do
	brick.Transparency = x / 100

	x = math.random(0, 100)
end