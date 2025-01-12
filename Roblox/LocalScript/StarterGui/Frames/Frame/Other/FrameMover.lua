-- Local userInput
local userInput = game:GetService("UserInputService")

-- Function
userInput.InputBegan:Connect(function(key)
	local XPadding = 10
	local YPadding = 10

	local obj = script.Parent.Frame

	if key.KeyCode == Enum.KeyCode.W then
		obj.Position = obj.Position + UDim2.new(0, 0, 0, -YPadding)
	elseif key.KeyCode == Enum.KeyCode.A then
		obj.Position = obj.Position + UDim2.new(0, -XPadding, 0, 0)
	elseif key.KeyCode == Enum.KeyCode.S then
		obj.Position = obj.Position + UDim2.new(0, 0, 0, YPadding)
	elseif key.KeyCode == Enum.KeyCode.D then
		obj.Position = obj.Position + UDim2.new(0, XPadding, 0, 0)
	end
end)