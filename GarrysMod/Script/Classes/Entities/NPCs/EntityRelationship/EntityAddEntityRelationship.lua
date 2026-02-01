-- Locals
local entity = Entity(1)
local manhack = ents.Create("npc_manhack")

manhack:Spawn()
manhack:AddEntityRelationship(entity, D_FR, 99)