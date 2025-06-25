-- Locals
local x = 5
local y = 5
local z = 5

-- Looping
for x = 1, x do
	for y = 1, y do
		for z = 1, z do
			local brick = Instance.new("Part")
			brick.Size = Vector3.new(4,1,2)
			brick.Position = Vector3.new(x * 4, y * 1, z * 2)

			-- Color
			local color = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
			brick.BrickColor = BrickColor.new(color)

			brick.Anchored = true
			brick.Parent = workspace
		end
	end
end