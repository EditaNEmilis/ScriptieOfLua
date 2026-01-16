-- Window local frame for containing text
local frame = vgui.Create("DFrame")
frame:SetSize(200, 150)
frame:Center()
frame:MakePopup()

-- Rich Text panel
local richtext = vgui.Create("RichText", frame)
richtext:Dock(FILL)

-- Texts
-- Text segment #1, grayish color
richtext:InsertColorChange(192, 192, 192, 255)
richtext:AppendText("This \nRichText \nis \n")

-- Text segment #2, light yellow
richtext:InsertColorChange(255, 255, 224, 255)
richtext:AppendText("AWESOME\n\n")

-- Text segment #3, red ESRB notice localized string
richtext:InsertColorChange(255, 64, 64, 255)
richtext:AppendText("#ServerBrowser_ESRBNotice") -- ServerBrowser