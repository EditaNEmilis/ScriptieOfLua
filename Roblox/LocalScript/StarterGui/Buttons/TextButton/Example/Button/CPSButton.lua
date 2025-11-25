local textButton = script.Parent
local click = 0

-- Function
textButton.MouseButton1Click:Connect(function()
	if click >= 0 then
		click = click + 1
		print("Clicks: " .. click)
	end

	-- Triggers when the button is clicked
	while click >= 1 do
		wait(5) -- Timer

		-- Calculate CPS (Clicks per second)
		local CPS = click / 5
		print("CPS: " .. CPS)

		print("CLICKS: " .. click)
		click = 0 -- Reset
	end
end)