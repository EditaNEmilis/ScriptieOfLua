local textlabel = script.Parent.TextLabel
local players = game.Players.LocalPlayer

local char = players.Character or players.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")

textlabel.Text = humanoid.JumpPower