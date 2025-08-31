-- Locals
local runservice = game:GetService("RunService")

local char = script.Parent
local humanoid = char:WaitForChild("Humanoid")

-- Bobbing Effecet function
function BobbingEffect()
	local currenttime = tick()
	if humanoid.MoveDirection.Magnitude > 0 then
		local bobbleX = math.cos(currenttime * 10) * .25
		local bobbleY = math.abs(math.sin(currenttime *25)) * .25

		local bobble = Vector3.new(bobbleX, bobbleY, 0)

		humanoid.CameraOffset = humanoid.CameraOffset:lerp(bobble, .25)
	else
		humanoid.CameraOffset = humanoid.CameraOffset * .75
	end
end

-- Running
runservice.RenderStepped:Connect(BobbingEffect)