hook.Add("InputMouseApply", "FreezeTurningMouse", function(cmd)
    -- Lock Mouse X and Y
	cmd:SetMouseX(0)
	cmd:SetMouseY(0)

	return true
end)