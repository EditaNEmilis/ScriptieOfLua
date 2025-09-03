local lightningMaterial = Material("sprites/lgtning")

hook.Add("PreDrawTranslucentRenderables", "LightningExample", function(isDrawingDepth, isDrawingSkybox)

	-- Check if drawing depth and skybox
	if isDrawingDepth or isDrawingSkybox then return end

	-- Player local
	local ply = Entity(1)

	-- Check if the player is valid
	if !IsValid(ply) then return end

	-- Calculate a random UV to use for the lightning to give it some movement
	local uv = math.Rand(0, 1)

	-- Enable blend override to interpret the color and alpha from the texture
	render.OverrideBlend(true, BLEND_SRC_COLOR, BLEND_SRC_ALPHA, BLENDFUNC_ADD, BLEND_ONE, BLEND_ZERO, BLENDFUNC_ADD)

	-- Set material for the lightning
	render.SetMaterial(lightningMaterial)

	-- Render a lightning beam along points randomly offset from a line above the player
	render.StartBeam(5)

	render.AddBeam(ply:GetPos() + Vector(0,0,035), 20, uv, Color(255,255,255,255))
	render.AddBeam(ply:GetPos() + Vector(0,0,135) + Vector(math.Rand(-20,20),math.Rand(-20,20), 0), 20, uv * 2, Color(255,255,255,255))
	render.AddBeam(ply:GetPos() + Vector(0,0,235) + Vector(math.Rand(-20,20),math.Rand(-20,20), 0), 20, uv * 3, Color(255,255,255,255))
	render.AddBeam(ply:GetPos() + Vector(0,0,335) + Vector(math.Rand(-20,20),math.Rand(-20,20), 0), 20, uv * 4, Color(255,255,255,255))
	render.AddBeam(ply:GetPos() + Vector(0,0,435) + Vector(math.Rand(-20,20),math.Rand(-20,20), 0), 20, uv * 5, Color(255,255,255,255))

	render.EndBeam()

	 -- Disable blend override
	render.OverrideBlend(false)
end)