-- Base
local BASE = {}

-- Function base
function BASE:Init()
	print("Base Init Called")
end

-- Panel
local PANEL = {}

-- Function panel
function PANEL:Init()
	print("Panel Init Called")
end

-- Register
vgui.Register("MyBase", BASE, "DFrame")
vgui.Register("MyPanel", PANEL, "MyBase")

-- Create Panel
local panel = vgui.Create("MyPanel")