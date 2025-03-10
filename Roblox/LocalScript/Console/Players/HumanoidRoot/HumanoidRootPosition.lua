local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidrootpart = character:WaitForChild("HumanoidRootPart")

print(humanoidrootpart.Position)