local ply = LocalPlayer() -- Player

-- AddText, player with the weapon and class
chat.AddText(Color(100, 100, 255), ply, ", you are holding ", Color(100, 255, 100), ply:GetActiveWeapon():GetClass())