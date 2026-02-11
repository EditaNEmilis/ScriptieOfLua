-- Get the service
local textservice = game:GetService("TextChatService")

-- Function
textservice.OnIncomingMessage = function(msg: TextChatMessage)
	local propertry = Instance.new("TextChatMessageProperties")

	if msg.TextSource then -- If the message has sent
		local player = game:GetService("Players")
		local id = player:GetPlayerByUserId(msg.TextSource.UserId)

		-- Check Player name or UserID
		if id.Name == "Roblox" or id.UserId == 1 then -- Set your Name or UserId
			propertry.PrefixText = "<font color='#123456'>[Creator]</font> ".. msg.PrefixText
		else -- Else set it to guest
			propertry.PrefixText = "<font color='#654321'>[Guest]</font> ".. msg.PrefixText
		end
	end
	return propertry -- Return back
end