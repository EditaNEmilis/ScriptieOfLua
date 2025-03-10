local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidrootpart = character:WaitForChild("HumanoidRootPart")

while wait(0.1) do
	print("X coordinate: ".. humanoidrootpart.Position.X)
	print("Y coordinate: ".. humanoidrootpart.Position.Y)
	print("Z coordinate: ".. humanoidrootpart.Position.Z)
end