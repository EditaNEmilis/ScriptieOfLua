local npc = script.Parent

npc.Died:Connect(function()
    print("NPC died!")
end)