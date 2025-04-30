local textButton = script.Parent

textButton.MouseButton1Click:Connect(function()
	local brick = Instance.new("Part")
	brick.Size = Vector3.new(2, 2, 2)
	brick.Position = Vector3.new(0, 10, 0)
	brick.Parent = game.Workspace
end)