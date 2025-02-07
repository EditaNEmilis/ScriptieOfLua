-- Frame
local frame = vgui.Create("DFrame")
frame:SetSize(500, 500)
frame:Center()
frame:MakePopup()

-- Button
local butt = frame:Add("DButton")
butt:SetPos(5, 30)
butt:SetSize(100, 40)

-- Button function
function butt:doAnim()
	local anim = self:NewAnimation(10, 0, 1, function(anim, pnl) -- Animation
		self:doAnim()
	end)

    -- Think
	anim.Think = function( anim, pnl, fraction )
		local radius = 200

        -- Position
		pnl:SetPos(250 + math.sin(Lerp( fraction, -math.pi, math.pi )) * radius - pnl:GetWide() / 2,
					250 + math.cos(Lerp( fraction, -math.pi, math.pi )) * radius - pnl:GetTall() / 2)

        -- Button Text for fraction and time
		pnl:SetText("Frac: " .. fraction .. "\nTime: " .. (SysTime() - anim.StartTime))
	end
end

-- Run Animation
butt:doAnim()