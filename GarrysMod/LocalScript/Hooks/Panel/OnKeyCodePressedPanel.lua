concommand.Add("testvgui", function(ply)
	local DFrame = vgui.Create("DFrame")	-- The name of the panel, we don't have to parent it
	DFrame:SetPos(100, 100)				-- Set the position to 100x by 100y 
	DFrame:SetSize(300, 200)				-- Set the size to 300x by 200y
	DFrame:SetTitle("Derma Frame")		-- Set the title in the top left to 'Derma Frame'
	DFrame:MakePopup()						-- Make the frame take user's input

	-- Function
	function DFrame:OnKeyCodePressed(...)
		print("OnKeyCodePressed", ...)	-- Print something when a key is pressed
	end
end)