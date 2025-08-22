local part = script.Parent -- Local

-- Repeat loop
repeat
	-- Increase
	wait(1)
	part.Size = part.Size + Vector3.new(0.2, 0.2, 0.2)
	wait(1)
	part.Size = part.Size + Vector3.new(0.2, 0.2, 0.2)
	wait(1)
	part.Size = part.Size + Vector3.new(0.2, 0.2, 0.2)

	-- Decrease
	wait(1)
	part.Size = part.Size - Vector3.new(0.2, 0.2, 0.2)
	wait(1)
	part.Size = part.Size - Vector3.new(0.2, 0.2, 0.2)
	wait(1)
	part.Size = part.Size - Vector3.new(0.2, 0.2, 0.2)
until nil -- Forever repeat