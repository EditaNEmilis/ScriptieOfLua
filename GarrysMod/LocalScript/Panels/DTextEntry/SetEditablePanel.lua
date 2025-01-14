local TextEntry = vgui.Create("DTextEntry", frame) -- create the form as a child of frame

TextEntry:SetPos(25, 50)
TextEntry:SetSize(75, 85)
TextEntry:SetText("Sample String")
TextEntry:SetEditable(false) -- Whether the DTextEntry should be editable or not