-- DList
local DList = vgui.Create("DListView")
DList:SetPos(0, 50)
DList:SetSize(150, 250)
DList:AddColumn("Player Names")

-- AddLine
for _, v in ipairs(player.GetAll()) do
	DList:AddLine(v:Name())
end

-- DoDoubleClick function
function DList:DoDoubleClick(lineID, line)
	MsgN("Line " .. lineID .. " was double clicked!")
end