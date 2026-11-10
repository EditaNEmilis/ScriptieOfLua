-- ADDON CREATED BY EMILIZ
-- https://github.com/EditaNEmilis
-- https://editanemilis.github.io/

------------------------------------------

local MAT = "models/weapons/mk3a2"
local KILL_R = 2 * 39.37008
local MAX_R  = 5 * 39.37008

local MK3A2 = {
    Blasting = false,
    Pos      = Vector(),
    Inf      = nil,
    Attacker = nil,
}

if SERVER then
    AddCSLuaFile()
    util.AddNetworkString("MK3A2_BOOM")

    hook.Add("EntityTakeDamage", "MK3A2_TameForce", function(ent, di)
        if not MK3A2.Blasting then return end

        local dir = ent:GetPos() - MK3A2.Pos
        dir.z = 0
        if dir:LengthSqr() < 1 then dir = Vector(1, 0, 0) end
        dir:Normalize()

        if not ent:IsPlayer() then
            -- Small explicit nonzero force for NPCs and ragdolls. Zero would
            -- make the engine synthesize a much larger one on death.
            di:SetDamageForce(dir * 80)
            return
        end

        -- Block the engine blast on players, then reapply the same damage
        -- with a negligible force. This removes the launch.
        local dmg = di:GetDamage()
        if dmg <= 0 then return true end

        local victim    = ent
        local attacker  = IsValid(MK3A2.Attacker) and MK3A2.Attacker or nil
        local inflictor = IsValid(MK3A2.Inf) and MK3A2.Inf or nil
        local blastPos  = Vector(MK3A2.Pos)
        local pushDir   = Vector(dir)

        timer.Simple(0, function()
            if not IsValid(victim) then return end

            local di2 = DamageInfo()
            di2:SetDamage(dmg)
            di2:SetAttacker(IsValid(attacker) and attacker or victim)
            di2:SetInflictor(IsValid(inflictor) and inflictor or victim)
            di2:SetDamageType(DMG_BLAST)
            di2:SetDamagePosition(blastPos)
            di2:SetDamageForce(pushDir * 20)
            victim:TakeDamageInfo(di2)
            victim:ViewPunch(Angle(-4, math.Rand(-5, 5), 0))
        end)

        return true
    end)

    hook.Add("SetupMove", "MK3A2_LaunchGuard", function(ply, mv, cmd)
        local untilT = ply.MK3A2_GuardUntil
        if not untilT then return end

        if CurTime() > untilT then
            ply.MK3A2_GuardUntil = nil
            return
        end

        local vel  = mv:GetVelocity()
        local flat = Vector(vel.x, vel.y, 0)
        if flat:Length() > 350 then
            flat = flat:GetNormalized() * 350
        end

        local z = math.Clamp(vel.z, -90, 90)
        mv:SetVelocity(Vector(flat.x, flat.y, z))
    end)
end

ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "MK3A2"
ENT.Spawnable = false
ENT.AutomaticFrameAdvance = true

function ENT:Initialize()
    self:SetModel("models/weapons/w_grenade.mdl")
    self:SetMaterial(MAT)
    self:SetSubMaterial()
    if SERVER then
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
    end
    self.Armed = false
end

function ENT:Think()
    if SERVER then self:NextThink(CurTime()) end
    return true
end

function ENT:Fuse(t)
    self.FuseT = t
    self.Armed = true
    timer.Simple(t - 1.0, function()
        if IsValid(self) then self:EmitSound("weapons/pistol/pistol_empty.wav", 40, 120) end
    end)
    timer.Simple(t, function()
        if IsValid(self) then self:Detonate() end
    end)
end

function ENT:Detonate()
    if not self.Armed then return end

    local pos      = self:GetPos()
    local attacker = IsValid(self:GetOwner()) and self:GetOwner() or self
    local blastR   = KILL_R * 1.6

    for _, p in pairs(ents.FindInSphere(pos, blastR)) do
        if IsValid(p) and p:IsPlayer() then
            p.MK3A2_GuardUntil = CurTime() + 0.3
        end
    end

    MK3A2.Pos      = pos
    MK3A2.Inf      = self
    MK3A2.Attacker = attacker
    MK3A2.Blasting = true
    util.BlastDamage(self, attacker, pos, blastR, 350)
    MK3A2.Blasting = false

    for _, v in pairs(ents.FindInSphere(pos, MAX_R)) do
        if v == self or not IsValid(v) or v:IsWorld() then continue end

        local center  = v:WorldSpaceCenter()
        local d       = center:Distance(pos)
        local falloff = math.Clamp(1 - (d - KILL_R) / (MAX_R - KILL_R), 0, 1)
        falloff = falloff * falloff
        if falloff <= 0 then continue end

        local dir = center - pos
        if dir:LengthSqr() < 1 then dir = Vector(0, 0, 1) end
        dir:Normalize()

        if v:IsPlayer() or v:IsNPC() or (v.IsNextBot and v:IsNextBot()) then
            if d <= blastR then continue end

            dir.z = 0
            if dir:LengthSqr() < 1 then dir = Vector(1, 0, 0) end
            dir:Normalize()
            local push = 70 * falloff

            if v:IsPlayer() and v:Alive() then
                timer.Simple(0, function()
                    if IsValid(v) and v:Alive() then
                        v:SetVelocity(v:GetVelocity() + dir * push)
                        v:ViewPunch(Angle(-7, math.Rand(-9, 9), 0) * (0.4 + falloff * 0.6))
                    end
                end)
            elseif v:IsNPC() and v:Health() > 0 then
                v:SetVelocity(v:GetVelocity() + dir * push * 0.5)
            end
        else
            local phys = v:GetPhysicsObject()
            if IsValid(phys) then
                dir.z = dir.z + 0.35
                dir:Normalize()
                local mass = math.Clamp(phys:GetMass(), 2, 150)
                phys:Wake()
                phys:AddVelocity(dir * (2200 / math.sqrt(mass)) * falloff)
                phys:AddAngleVelocity(VectorRand() * 200 * falloff)
            end

            local hp = v:Health()
            if hp and hp > 0 then
                local dmg = d <= KILL_R and 200 or 200 * falloff
                local di = DamageInfo()
                di:SetDamage(dmg)
                di:SetAttacker(attacker)
                di:SetInflictor(self)
                di:SetDamageType(DMG_BLAST)
                di:SetDamagePosition(pos)
                di:SetDamageForce(dir * math.min(dmg * 8, 1200))
                v:TakeDamageInfo(di)
            end
        end
    end

    util.ScreenShake(pos, 6, 2, 0.8, MAX_R * 2)
    sound.Play("ambient/explosions/explode_4.wav", pos, 140, 100)

    net.Start("MK3A2_BOOM")
        net.WriteVector(pos)
    net.Broadcast()

    self:Remove()
end

function ENT:PhysicsCollide(data)
    if data.Speed > 50 then
        self:EmitSound("weapons/hegrenade/he_bounce-1.wav")
    end
end

if CLIENT then
    function ENT:Draw(flags)
        self:DrawModel(flags)
    end

    function ENT:DrawTranslucent(flags)
        self:Draw(flags)
    end

    net.Receive("MK3A2_BOOM", function()
        local pos = net.ReadVector()
        ParticleEffect("grenade_explosion_01", pos, Angle())
        local e = EffectData()
        e:SetOrigin(pos)
        e:SetScale(0.4)
        util.Effect("Explosion", e, true, true)
    end)
end