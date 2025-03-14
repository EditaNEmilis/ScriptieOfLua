local textbox = script.Parent.TextBox
local players = game.Players.LocalPlayer

local char = players.Character or players.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")

textbox.Text = humanoid.JumpPower