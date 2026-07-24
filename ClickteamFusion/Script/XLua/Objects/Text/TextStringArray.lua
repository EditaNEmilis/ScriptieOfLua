function StringArray()
	-- Array
	local textArray = {
	[1] = "Banana",
	[2] = "Apple",
	[3] = "Lemon"
	}

	-- Randomizer
	local rand = math.random(1, #textArray)

	return textArray[rand]
end