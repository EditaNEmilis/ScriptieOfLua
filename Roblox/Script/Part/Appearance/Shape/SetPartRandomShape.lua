-- Locals
local brick = script.Parent
local shapes = {
	"Ball",
	"Block",
	"CornerWedge",
	"Cylinder",
	"Wedge"
}

-- Randomness to select a shape
local i = math.random(1, #shapes)
brick.Shape = shapes[i] -- Apply