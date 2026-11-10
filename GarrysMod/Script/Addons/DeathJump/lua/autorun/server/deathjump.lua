-- ADDON CREATED BY EMILIZ
-- https://github.com/EditaNEmilis
-- https://editanemilis.github.io/

function JumpDeath(ply)
    if ply:IsPlayer() then -- If the player jumps
        ply:Kill()
    end
end

-- Add hook and connect the function
hook.Add("OnPlayerJump", "DeathJump", JumpDeath)