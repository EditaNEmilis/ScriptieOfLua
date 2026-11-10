-- ADDON CREATED BY EMILIZ
-- https://github.com/EditaNEmilis
-- https://editanemilis.github.io/

------------------------------------------

if SERVER then
    AddCSLuaFile()
end

local MAT = "models/weapons/mk3a2"

if CLIENT then
    function ENT:Draw()
        self:SetSubMaterial()
        self:SetMaterial(MAT)
        self:DrawModel()
    end
end

ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "MK3A2 Grenade"
ENT.Spawnable = true
ENT.Category = "Emiliz"

function ENT:Initialize()
    self:SetModel("models/weapons/w_grenade.mdl")
    self:SetMaterial(MAT)
    self:SetSubMaterial()

    self:SetSolid(SOLID_VPHYSICS)
    self:PhysicsInit(SOLID_VPHYSICS)

    self.Amount = 1
    self.AmmoType = "Grenade"

    local phys = self:GetPhysicsObject()
    if phys and phys:IsValid() then
        phys:Wake()
    end
end

function ENT:OnTakeDamage(dmginfo)
    local phys = self:GetPhysicsObject()
    if phys and phys:IsValid() then
        phys:AddVelocity(dmginfo:GetDamageForce() * 0.1)
    end
end

function ENT:StartTouch(ent)
    if SERVER and ent:IsPlayer() then
        ent:GiveAmmo(self.Amount, self.AmmoType)

        if not ent:HasWeapon("mk3a2_grenade") then
            ent:Give("mk3a2_grenade")
        end

        self:Remove()
    end
end