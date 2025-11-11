-- Main Frame
local Frame = vgui.Create( "DFrame" )
Frame:SetSize(400, 200)
Frame:Center()
Frame:MakePopup()

-- Drawer
local Drawer = vgui.Create( "DDrawer", Frame )
Drawer:SetOpenSize(75)    -- Default OpenSize is 100
Drawer:SetOpenTime(0.2)	-- Default OpenTime is 0.3
Drawer:Open()   -- You can also use Drawer:Close() and Drawer:Toggle()

-- Panel
local PanelInDrawer = vgui.Create("DPanel", Drawer)
PanelInDrawer:Dock(FILL)    -- Make PanelInDrawer fill place of Drawer
PanelInDrawer:DockMargin(3, 0, 3, 3)    -- Margins for the dock