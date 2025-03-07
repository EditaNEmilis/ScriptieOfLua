local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidrootpart = character:WaitForChild("HumanoidRootPart")

while wait(0.1) do
	print("X orientation: ".. humanoidrootpart.Rotation.X)
	print("Y orientation: ".. humanoidrootpart.Rotation.Y)
	print("Z orientation: ".. humanoidrootpart.Rotation.Z)
end