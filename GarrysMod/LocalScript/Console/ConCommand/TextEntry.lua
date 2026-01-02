-- Command
concommand.Add("test_textentry", function(ply)

	-- Frame
	local frame = vgui.Create("DFrame")
	frame:SetSize(500, 250)
	frame:Center()
	frame:MakePopup()

	-- Text Entry
	local TextEntry = vgui.Create("DTextEntry", frame) -- create the form as a child of frame
	TextEntry:Dock(FILL)
	TextEntry:SetMultiline(true)
	TextEntry.OnChange = function(self)
		chat.AddText(self:GetValue()) -- Print the textentry text as a chat message
	end
end)