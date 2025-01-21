-- A hook to draw a bloom effect
hook.Add("RenderScreenspaceEffects", "BloomEffect", function()
	DrawBloom(
	0.65, -- Darken
	2, -- Multiply
	9, -- SizeX
	9, -- SizeY
	1, -- Passes
	1, -- ColorMultiply
	1, -- Red
	1, -- Green
	1 -- Blue
	)
end)