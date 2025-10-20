local tool = script.Parent

-- When tool is activated
tool.Activated:Connect(function()
    tool:Play("slash") -- Play the emote animation for slashing
end)