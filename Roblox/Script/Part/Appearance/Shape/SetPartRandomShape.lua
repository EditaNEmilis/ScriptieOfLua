local brick = script.Parent
local shapes = {
	"Ball",
	"Block",
	"CornerWedge",
	"Cylinder",
	"Wedge"
}

local i = math.random(1, #shapes)
brick.Shape = shapes[i]