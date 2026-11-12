-- ADDON CREATED BY EMILIZ
-- https://github.com/EditaNEmilis
-- https://editanemilis.github.io/

------------------------------------------

if SERVER then
    AddCSLuaFile("SStec9.lua")

    SWEP.Weight = 5

    SWEP.AutoSwitchTo = false
    SWEP.AutoSwitchFrom = false
end

if CLIENT then
    SWEP.Slot = 2
    SWEP.SlotPos = 2

    SWEP.DrawCrosshair = false
    SWEP.ViewModelFOV = 70
    SWEP.ViewModelFlip = false
    SWEP.DrawWeaponInfoBox	= false
    SWEP.BounceWeaponIcon = false
end

SWEP.WepSelectIcon = surface.GetTextureID("weapons/SStec9")
SWEP.Category = "Emiliz"
SWEP.PrintName = "Tec-9"
SWEP.Author = "Emiliz"
SWEP.Purpose = "A TEC9 weapon model from School Shooter: North American Tour 2012 by Checkerboarded Studios"

SWEP.Spawnable = true

SWEP.ViewModel = Model("models/weapons/SStec9.mdl")
SWEP.WorldModel = Model("models/weapons/w_pistol.mdl") -- 2 lazy to make a worldmodel
SWEP.HoldType = "pistol"
SWEP.UseHands = false

SWEP.Primary.ClipSize = 32
SWEP.Primary.DefaultClip = 32
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "SMG1"
SWEP.Primary.Recoil = 0.2
SWEP.Primary.Damage = 9

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

sound.Add(
{
    name = "TEC9.Fire",
	channel	= CHAN_WEAPON,
	volume = 1.0,
	soundlevel = SNDLVL_GUNFIRE,
    sound = "SSNAT/weapons/TEC9/tec9-1.wav"
})

sound.Add(
{
    name = "TEC9.Reload",
	channel	= CHAN_WEAPON,
	volume = 1.0,
	soundlevel = SNDLVL_GUNFIRE,
    sound = "SSNAT/weapons/TEC9/reload.wav"
})

function SWEP:PrimaryAttack()
    if (not self:CanPrimaryAttack()) then return end

    local Bullet = {}
    Bullet.Src = self.Owner:GetShootPos()
    Bullet.Dir = self.Owner:GetAimVector()
    Bullet.Spread = Vector(self.Primary.Spread, self.Primary.Spread, 0)
    Bullet.Damage = self.Primary.Damage
    Bullet.AmmoType = self.Primary.Ammo

    self:FireBullets(Bullet, 1)
    self:EmitSound("TEC9.Fire")
    self:TakePrimaryAmmo(1)
    self:SendWeaponAnim(ACT_VM_PRIMARYATTACK);
    self:ResetEmptySound()
end

function SWEP:Reload()
    self:EmitSound("Tec9.Reload")
    self.Weapon:DefaultReload(ACT_VM_RELOAD);
    self:ResetEmptySound()
end