-- Function
function ChatDeath(ply)
    if ply:IsPlayer() then -- If the player jumps
        ply:Kill()
    end
end

-- Add hook and connect the function
hook.Add("OnPlayerJump", "DeathJump", ChatDeath)