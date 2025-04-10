-- DP CreateRow local
local choice = DP:CreateRow("Choices", "Hello world")
choice:Setup("Combo") -- Setup the row

-- Choices
choice:AddChoice("Choice #1", {})
choice:AddChoice("Choice #2", 8)
choice:AddChoice("Choice #3", "Hello world", true)
choice:SetSelected(2) -- Even if "Choice #3" is selected by default, "Choice #2" will be selected