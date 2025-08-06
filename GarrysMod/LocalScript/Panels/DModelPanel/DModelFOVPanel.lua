-- Panel
local mdl = vgui.Create("DModelPanel")
mdl:SetPos(50, 50)
mdl:SetSize(640, 360)

mdl:SetModel("models/props_junk/watermelon01.mdl") -- Set Model

print(mdl:GetFOV()) -- Print FOV