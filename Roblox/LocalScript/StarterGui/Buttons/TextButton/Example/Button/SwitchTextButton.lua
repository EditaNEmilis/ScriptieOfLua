local textButton = script.Parent.TextButton
local bool = true

textButton.MouseButton1Click:Connect(function()
	local frame = script.Parent.Frame

	if bool == true then
		frame.Visible = false
		bool = false
	else
		frame.Visible = true
		bool = true
	end
end)