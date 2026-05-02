-- Tab settings
local tab = {
	["$pp_colour_addr"] = 0, -- Red addition
	["$pp_colour_addg"] = 0, -- Green addition
	["$pp_colour_addb"] = 0, -- Blue addition
	["$pp_colour_brightness"] = -0.04, -- Brightness
	["$pp_colour_contrast"] = 1.35, -- Contrast
	["$pp_colour_colour"] = 5, -- Colour
	["$pp_colour_mulr"] = 0, -- Red multiply
	["$pp_colour_mulg"] = 0, -- Green multiply
	["$pp_colour_mulb"] = 0 -- Blue multiply
}

-- Add hook
hook.Add("RenderScreenspaceEffects", "PostProcessingExample", function()
	DrawColorModify(tab) -- Draws Color Modify effect
	DrawSobel(0.5) -- Draws Sobel effect
end)