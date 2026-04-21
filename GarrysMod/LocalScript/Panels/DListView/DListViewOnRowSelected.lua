-- DFrame
local frame = vgui.Create("DFrame")
frame:SetSize(300, 300)
frame:MakePopup()

-- DListView
local listView = frame:Add("DListView")
listView:Dock(FILL)

-- Columns
listView:AddColumn("Nick")
listView:AddColumn("Frags")

-- AddLine
for _, ply in ipairs(player.GetAll()) do
	listView:AddLine(ply:Nick(), ply:Frags())
end

-- OnRowSelected function
listView.OnRowSelected = function(panel, rowIndex, row)
	print(row:GetValue(1))
	print(row:GetValue(2))
end