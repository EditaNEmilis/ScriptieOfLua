local npc = script.Parent

-- NPC function
npc.Died:Connect(function()
    print("NPC died!")
end)