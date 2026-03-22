-- Locals
local userinput = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")

local candoublejump = false -- Boolean
local hasdoublejump = false -- Boolean
local timing = 0.2 -- Time

-- Function Jump
function Jump()
	if not char or not humanoid or not char:IsDescendantOf(workspace) or humanoid:GetState() == Enum.HumanoidStateType.Dead then
		return
	end

	-- Check
	if candoublejump == true and hasdoublejump == false then
		hasdoublejump = true
		humanoid.JumpPower = 50
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end

-- Function CharacterAdded
local function charadded(newchar)
	candoublejump = false
	hasdoublejump = false

	humanoid.StateChanged:connect(function(state)
		if state == Enum.HumanoidStateType.Landed then
			candoublejump = false
			hasdoublejump = false
			humanoid.JumpPower = 50

		elseif state == Enum.HumanoidStateType.Freefall then
			wait(timing)
			candoublejump = true
		end
	end)
end

-- Minor Connecting
if player.Character then
	charadded(player.Character)
end

-- Connecting
userinput.JumpRequest:Connect(Jump)
player.CharacterAdded:Connect(charadded)