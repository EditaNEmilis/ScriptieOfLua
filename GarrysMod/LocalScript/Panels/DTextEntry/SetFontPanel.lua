local TextEntry = vgui.Create("DTextEntry", frame) -- create the form as a child of frame

TextEntry:SetPos(25, 50)
TextEntry:SetSize(100, 50) -- Restores the original font the the DTextEntry
TextEntry:SetFont("DermaDefault")
TextEntry:SetText("String Font")