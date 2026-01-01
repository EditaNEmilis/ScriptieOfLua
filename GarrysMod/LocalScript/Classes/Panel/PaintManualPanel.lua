-- Frame local
local frame = vgui.Create("DFrame")
frame:SetTitle("PaintManual Test")
frame:SetSize(500, 500)
frame:SetPaintedManually(true)

-- Hook PaintManual
hook.Add("PostDrawTranslucentRenderables", "PaintManual Test", function()
    -- If frame is valid
	if IsValid(frame) then
		local eyePos = Entity(1):EyePos()
		local forward = Entity(1):GetForward()
		local forwardAngle = forward:Angle()

        -- Camera
		cam.Start3D2D(eyePos + (forward * 250), Angle(0, forwardAngle.y - 90, forwardAngle.r + 90), 0.2)
			frame:PaintManual()
		cam.End3D2D()
	end
end)