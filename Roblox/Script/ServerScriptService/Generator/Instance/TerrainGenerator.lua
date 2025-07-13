-- Locals
local x = 50
local z = 50

local grid = {}

-- Grid set
for x = 1, x do
	grid[x] = {}

	for z = 1, z do
		grid[x][z] = math.noise(x/10, z/10) * 15
	end
end

-- Noising the part
for x = 1, x do
	for z = 1, z do
		local ypos = grid[x][z]

		local part = Instance.new("Part")
		part.Anchored = true

        -- If ypos is 0 or less, make the material 'Sand' and brickcolor 'Cool yellow'
		if ypos < 0 then
			part.Material = Enum.Material.Sand
			part.BrickColor = BrickColor.new("Cool yellow")
        -- But if ypos is not 0 or less, make the material 'Grass' and brick 'Sea green'
		else
			part.Material = Enum.Material.Grass
			part.BrickColor = BrickColor.new("Sea green")
		end

        -- Set part position, size and parent
		part.Position = Vector3.new(x*5, grid[x][z], z*5)
		part.Size = Vector3.new(5, math.random(1, 10), 5)
		part.Parent = workspace
	end
end