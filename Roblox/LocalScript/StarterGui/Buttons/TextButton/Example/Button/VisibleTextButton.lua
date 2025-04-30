local textButton = script.Parent.TextButton

textButton.MouseButton1Click:Connect(function()
	local textLabel = script.Parent.TextLabel

	if textLabel then
		textLabel.Visible = true
	end
end)