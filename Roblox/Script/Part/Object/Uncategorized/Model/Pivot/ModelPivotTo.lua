local brick = script.Parent
local model = brick.Model

local modelPivot = model:GetPivot()
local pivot = modelPivot * CFrame.new(5, 0, 5)

model:PivotTo(pivot)