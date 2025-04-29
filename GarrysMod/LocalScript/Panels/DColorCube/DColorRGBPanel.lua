-- Local DColoCube
local colorCube = vgui.Create("DColorCube")

-- Set size and centering
colorCube:SetSize(200, 200)
colorCube:Center()

-- Set color to cyan
colorCube:SetColor(Color(0, 255, 255))

-- 50% saturated, 50% valued
colorCube:TranslateValues(0.5, 0.5)

-- Print set color
PrintTable(colorCube:GetRGB())