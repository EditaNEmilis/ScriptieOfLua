function TakeDamage(victim, damage, attacker, inflictor)
	local dmg = DamageInfo() -- Create a server-side damage information class
	dmg:SetDamage(damage) -- Set Damage
	dmg:SetAttacker(attacker) -- Set Attacker
	dmg:SetInflictor(inflictor) -- Set Inflictor
	dmg:SetDamageType(DMG_ENERGYBEAM) -- Set Damage Type
	victim:TakeDamageInfo(dmg) -- Take Damage Info
end

-- Command function
concommand.Add("kill_this_entity", function(ply, cmd, args)
	local target = ply:GetEyeTrace().Entity
	if (target:IsVehicle()) then
		target = target:GetDriver() -- Convert this to damage the plater inside
	end

	-- When target is a player in a vehicle will not get damaged
	TakeDamage(target, target:Health(), ply, ply:GetActiveWeapon())
end)