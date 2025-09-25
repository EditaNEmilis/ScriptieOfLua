-- Material
local mat = CreateMaterial("showz_resolvedfullframedepth", "showz", {
    ["$ALPHADEPTH"] = 0,
})

-- Set texture as base for Depth
mat:SetTexture("$BASETEXTURE", render.GetResolvedFullFrameDepth())
RunConsoleCommand("r_showz_power", 1)

-- Add hook
hook.Add("HUDPaint", "showz_test", function()
    render.SetMaterial(mat)
    render.DrawScreenQuad()
end)