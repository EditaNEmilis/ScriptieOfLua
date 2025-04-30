local textButton = script.Parent
local remoteEvent = script.Parent.RemoteEvent

textButton.MouseButton1Click:Connect(function()
	remoteEvent:FireServer()
end)