-- AddAmmoType
game.AddAmmoType({
	name = "BULLET_PLAYER_556MM", -- Note that whenever picked up, the localization string will be '#BULLET_PLAYER_556MM_ammo'
	dmgtype = DMG_BULLET, -- Damage bullet type
	tracer = TRACER_LINE, -- Tracer line
	plydmg = 0, -- This can either be a number or a ConVar name.
	npcdmg = 0, -- Ditto.
	force = 2000, -- Force
	maxcarry = 120, -- Ditto.
	minsplash = 10, -- Minimum splash
	maxsplash = 5 -- Maximum splash
})