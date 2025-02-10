-- Locals
local brick = script.Parent
local random = math.random(0, 360)

-- Randomize X, Y, Z rotation
while wait(1) do
	brick.Rotation = Vector3.new(random, random, random)
end