-- ADDON CREATED BY EMILIZ
-- https://github.com/EditaNEmilis
-- https://editanemilis.github.io/

------------------------------------------

if SERVER then
    AddCSLuaFile()
end

if CLIENT then
    SWEP.WepSelectIcon = surface.GetTextureID("weapons/mk3a2")
end

local MAT = "models/weapons/mk3a2"

-- Auto detection sub material override
local VM_SUBMAT_OVERRIDE = nil

SWEP.PrintName = "MK3A2 Offensive Hand Grenade"
SWEP.Author = "Emiliz"
SWEP.Purpose = "Hand Grenade, Based off TC 3-23.30." 
SWEP.Category = "Emiliz"

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.HoldType = "grenade"
SWEP.Slot = 4
SWEP.SlotPos = 1

SWEP.WorldModel = "models/weapons/w_grenade.mdl"
SWEP.ViewModel = "models/weapons/v_grenade.mdl"

SWEP.Primary = {}
SWEP.Primary.ClipSize = 3
SWEP.Primary.DefaultClip = 3
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "Grenade"
SWEP.Primary.Delay = 1.2

SWEP.Secondary = {}
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 1
SWEP.DrawAmmo = true
SWEP.DrawCrosshair = true

function SWEP:Initialize()
    self:SetHoldType("grenade")
    self:SetMaterial(MAT)
end

function SWEP:Deploy()
    self:SetMaterial(MAT)

    local owner = self:GetOwner()
    if not IsValid(owner) then return true end

    self:SendWeaponAnim(ACT_VM_DRAW)

    if SERVER and self:Clip1() <= 0 then
        local reserve = owner:GetAmmoCount(self.Primary.Ammo)
        if reserve > 0 then
            local load = math.min(self.Primary.ClipSize, reserve)
            self:SetClip1(load)
            owner:RemoveAmmo(load, self.Primary.Ammo)
        end
    end

    return true
end

function SWEP:Reload()
    if self:Clip1() >= self.Primary.ClipSize then return end

    local owner = self:GetOwner()
    if not IsValid(owner) then return end

    self:SendWeaponAnim(ACT_VM_DRAW)
    owner:SetAnimation(PLAYER_RELOAD)
    self:SetNextPrimaryFire(CurTime() + 1)

    if SERVER then
        local reserve = owner:GetAmmoCount(self.Primary.Ammo)
        if reserve <= 0 then return end

        local load = math.min(self.Primary.ClipSize - self:Clip1(), reserve)
        self:SetClip1(self:Clip1() + load)
        owner:RemoveAmmo(load, self.Primary.Ammo)
    end
end

function SWEP:PrimaryAttack()
    if self:Clip1() <= 0 or self:GetNextPrimaryFire() > CurTime() then return end

    local owner = self:GetOwner()
    if not IsValid(owner) then return end

    self:TakePrimaryAmmo(1)
    self:SendWeaponAnim(ACT_VM_THROW)
    owner:SetAnimation(PLAYER_ATTACK1)
    self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)

    if SERVER then
        local ent = ents.Create("mk3a2_thrown")
        if IsValid(ent) then
            local aim = owner:GetAimVector()

            ent:SetPos(owner:GetShootPos() + aim * 24 + Vector(0, 0, -6))
            ent:SetOwner(owner)
            ent:SetAngles(aim:Angle())
			ent:Spawn()

			-- ent:SetMaterial(MAT)
			-- ent:SetSubMaterial(0, MAT)

			local phys = ent:GetPhysicsObject()
            if IsValid(phys) then
                phys:SetVelocity(aim * 1000 + owner:GetVelocity() + Vector(0, 0, 120))
                phys:AddAngleVelocity(Vector(0, 600, 0))
            end

            ent:Fuse(math.Rand(4.0, 5.5))
        end
    end

    timer.Simple(0.5, function()
        if IsValid(self) then
            self:SendWeaponAnim(ACT_VM_IDLE)
        end
    end)

    if SERVER and self:Clip1() <= 0 then
        timer.Simple(0.8, function()
            if not IsValid(self) then return end

            local owner = self:GetOwner()
            if not IsValid(owner) then return end

            if owner:GetAmmoCount(self.Primary.Ammo) <= 0 then
                self:Remove()
            else
                self:Reload()
            end
        end)
    end
end

function SWEP:SecondaryAttack()
end

if CLIENT then
    local HAND_HINTS = {
        "hand",
        "arm",
        "sleeve",
        "glove",
        "citizen"
    }
	
	SWEP.WepSelectIcon = surface.GetTextureID("weapons/mk3a2")
	
	-- Icon Width and Height
    local ICON_W, ICON_H = 1024, 512
	
	function SWEP:DrawWeaponSelection(x, y, wide, tall, alpha)
        surface.SetDrawColor(255, 255, 255, alpha)
        surface.SetTexture(self.WepSelectIcon)

        local scale = math.min(wide / ICON_W, tall / ICON_H)
        local w, h = ICON_W * scale, ICON_H * scale
        surface.DrawTexturedRect(x + (wide - w) * 0.5, y + (tall - h) * 0.5, w, h)
	end

    local function IsHandMaterial(mat)
        mat = string.lower(mat)

        for _, hint in ipairs(HAND_HINTS) do
            if string.find(mat, hint, 1, true) then
                return true
            end
        end

        return false
    end

    local function ResetViewModelMaterial(swep)
        local owner = swep:GetOwner()
        if not IsValid(owner) then return end

        local vm = owner:GetViewModel()
        if not IsValid(vm) then return end

        local idx = swep.MK3A2_VMIndex
        if idx == nil then
            idx = VM_SUBMAT_OVERRIDE
        end

        if idx ~= nil then
            vm:SetSubMaterial(idx, nil)
        end
    end

    function SWEP:GetViewModelBodyIndex(vm)
        if VM_SUBMAT_OVERRIDE ~= nil then
            return VM_SUBMAT_OVERRIDE
        end

        local model = vm:GetModel()

        if self.MK3A2_VMModel ~= model then
            self.MK3A2_VMModel = model
            self.MK3A2_VMIndex = nil

            local mats = vm:GetMaterials() or {}
            local fallback = nil

            for i, mat in ipairs(mats) do
                local low = string.lower(mat)

                if string.find(low, "grenade body", 1, true) then
                    self.MK3A2_VMIndex = i - 1
                    break
                end

                if fallback == nil and string.find(low, "v_grenade", 1, true) and not IsHandMaterial(low) then
                    fallback = i - 1
                end
            end

            if self.MK3A2_VMIndex == nil then
                self.MK3A2_VMIndex = fallback
            end
        end

        return self.MK3A2_VMIndex
    end

    function SWEP:PreDrawViewModel(vm)
        if not IsValid(vm) then return end

        local idx = self:GetViewModelBodyIndex(vm)
        if idx ~= nil then
            vm:SetSubMaterial(idx, MAT)
        end
    end

    function SWEP:PostDrawViewModel(vm)
        if not IsValid(vm) then return end

        local idx = self.MK3A2_VMIndex
        if idx == nil then
            idx = VM_SUBMAT_OVERRIDE
        end

        if idx ~= nil then
            vm:SetSubMaterial(idx, nil)
        end
    end

    function SWEP:Holster()
        ResetViewModelMaterial(self)
        return true
    end

    function SWEP:OnRemove()
        ResetViewModelMaterial(self)
    end
end