-- Locals
local brick = script.Parent
local random = math.random(0, 10)

-- Randomize X and Z scale
while wait(1) do
	brick.Size = Vector3.new(random, 1, random)
end