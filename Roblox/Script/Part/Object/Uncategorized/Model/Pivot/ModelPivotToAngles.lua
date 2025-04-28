local brick = script.Parent
local model = brick.Model

local modelPivot = model:GetPivot()
local pivot = modelPivot * CFrame.Angles(20, 50, 100)

model:PivotTo(pivot)