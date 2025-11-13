-- Locals
local x = 10
local y = 10
local z = 10

-- Folder
local folder = Instance.new("Folder")
folder.Name = "Parts"
folder.Parent = game.Workspace

-- Looping
for i = 1, x do
	for j = 1, y do
		for k = 1, z do
			wait(.01)

			local part = Instance.new("Part")

			part.Size = Vector3.new(1, 1, 1)
			part.Position = Vector3.new(i, 5 + j, k)
			part.Parent = folder
			part.Anchored = true
		end
	end
end

print("Parts collected, waiting to deanchor..")

wait(5)

-- Deanchor
for i, part in ipairs(folder:GetChildren()) do
	part.Anchored = false
end