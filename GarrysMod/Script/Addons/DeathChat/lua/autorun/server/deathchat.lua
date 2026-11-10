-- ADDON CREATED BY EMILIZ
-- https://github.com/EditaNEmilis

function chatdeath(ply, text, team)
    if text ~= "" then
        ply:Kill()
    end
end

hook.Add("PlayerSay", "UnquieName", chatdeath)