local brick = script.Parent
local x = 0

-- Sin/Cos growing and shrinking
while wait(0.01) do
	x = x + 0.1
	brick.Size = Vector3.new(math.sin(x) * 5, math.cos(x) * 5, 3)
end