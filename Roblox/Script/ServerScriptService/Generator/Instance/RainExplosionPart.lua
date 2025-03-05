-- Looping
while wait(0.1) do
	-- Create instances
	local part = Instance.new("Part")
	part.Position = Vector3.new(math.random(1, 100), 30, math.random(1, 100))
	part.Size = Vector3.new(0.5, 3, 0.5)
	part.Parent = game.Workspace

	-- If the part touches the ground (Baseplate)
	part.Touched:Connect(function(touch)
		touch = game.Workspace.Baseplate
		if touch then
			-- Explode instance
			local explosion = Instance.new("Explosion")
			explosion.BlastRadius = 10
			explosion.Position = part.Position
			explosion.Parent = game.Workspace

			wait(0.2) -- Small delay before destorying it

			part:Destroy()
		end
	end)
end