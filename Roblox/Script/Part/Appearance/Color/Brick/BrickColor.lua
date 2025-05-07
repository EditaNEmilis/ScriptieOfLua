local brick = script.Parent

-- Repeat Loop
while true do
	brick.BrickColor = BrickColor.new("Really red") -- Red
	wait(1)
	brick.BrickColor = BrickColor.new("Really blue") -- Blue
	wait(1)
	brick.BrickColor = BrickColor.new("Sea green") -- Green
	wait(1)
	-- So on..
end