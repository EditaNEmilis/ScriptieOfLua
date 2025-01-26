local ent = Entity(1)

-- OnPlayerJump hook
hook.Add("OnPlayerJump", "ExplodeJump", function()
    if ent:IsPlayer() then -- If the player jumps
        local explo = ents.Create("env_explosion") -- Create explosion
        explo:SetPos(ent:GetPos())
        explo:Spawn()
        explo:Fire("Explode")
        explo:SetKeyValue("IMagnitude", 20)
    end
end)