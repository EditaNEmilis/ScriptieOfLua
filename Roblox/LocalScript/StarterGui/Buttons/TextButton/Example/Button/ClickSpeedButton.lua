local textButton = script.Parent
local click = 0
local clickBest = 0 -- High score of the clicks in one second

-- Function
textButton.MouseButton1Click:Connect(function()
	if click >= 0 then
		click = click + 1
		print("Clicks: " .. click)
	end

	-- Triggers when the button is clicked
	while click >= 1 do
		wait(1)

		-- Check if the new score is higher than the old one
		if clickBest <= click then
			clickBest = click
			print("NEW HIGHSCORE: " .. clickBest)
		end

		print("SCORE: " .. click)
		click = 0 -- Reset
	end
end)