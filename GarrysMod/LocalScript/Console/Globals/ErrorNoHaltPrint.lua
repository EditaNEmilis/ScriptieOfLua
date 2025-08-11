local value = 11

-- If the value number is between 10 and 0
if (value <= 10 and value >= 0 ) then
	print("The number is", value)
else
	ErrorNoHalt("Number out of range!\n") -- ErrorNoHalt function
	print("This line will be printed")
end