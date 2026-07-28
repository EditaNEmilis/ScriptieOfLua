function ColorLight()
	local x = 0 -- Value

	-- Add value
	x = x + 1

	-- Over color value length
	if x > 255 then
		x = 0 -- Reset to 0
	end

	return x
end