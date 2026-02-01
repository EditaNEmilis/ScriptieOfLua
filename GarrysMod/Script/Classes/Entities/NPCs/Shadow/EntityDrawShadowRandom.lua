for _, npc in ipairs(ents.FindByClass("npc_*")) do
    local drawing = math.random(1, 2) -- Random
    if drawing == 1 then -- Draw the shadows
        npc:DrawModel()
        npc:DrawShadow(true)
    elseif drawing == 2 then -- Don't draw the shadows
        npc:DrawModel()
        npc:DrawShadow(false)
    end
end