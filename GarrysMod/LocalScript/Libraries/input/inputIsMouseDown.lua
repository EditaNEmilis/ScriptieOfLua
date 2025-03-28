local ply = LocalPlayer()

hook.Add("InputMouseApply", "MouseDown", function()
    if input.IsMouseDown(107) then -- MOUSE_LEFT ENUM Key
        ply:SetPos(ply:GetPos() + ply:GetForward() * 5)
    end
end)