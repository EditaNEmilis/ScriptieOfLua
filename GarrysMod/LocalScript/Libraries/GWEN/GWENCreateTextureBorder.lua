-- Local paintBox
local paintBox = GWEN.CreateTextureBorder(
    384, -- X Coordinate
    32, -- Y Coordinate
    31, -- Width
    31, -- Height
    4, -- Left Border
    4, -- Top Border
    4, -- Right Border
    4 -- Down Border
)

-- Hook
hook.Add("HUDPaint", "PaintStuff", function()
    paintBox(0, 0, 100, 100)
end)