local ply = Entity(1)
local eyepos = ply:EyePos()

ply:SprayDecal(eyepos, eyepos + ply:GetAimVector() * 500) -- Makes the player spray their decal 5000 units away