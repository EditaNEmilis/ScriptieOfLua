-- Looping
while wait(0.1) do
	-- Create instances
	local part = Instance.New("Part")
	part.Position = Vector3.new(math.random(1, 100), 30, math.random(1, 100))
	part.Size = Vector3.new(0.5, 3, 0.5)
    part.Anchored = false
	part.Parent = game['Environment']

	-- If the part touches the ground (Baseplate)
	part.Touched:Connect(function(touch)
		touch = game['Environment']['Part']
		if touch then
			wait(0.2) -- Small delay before destorying it
			part:Destroy()
		end
	end)
end