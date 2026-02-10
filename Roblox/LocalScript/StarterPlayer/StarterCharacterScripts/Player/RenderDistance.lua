-- Locals
local runservice = game:GetService("RunService")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidrootpart = character:WaitForChild("HumanoidRootPart")

-- Function Render
function Render()
	local workspace = game.Workspace:GetChildren()

    -- Finding Parts
	for i = 1, #workspace do
		if (workspace[i].Name == "Part") then
			local dist = (workspace[i].CFrame.Position - humanoidrootpart.CFrame.Position).Magnitude

			dist = math.floor(dist + 0.5)

            -- Check distance
			if dist >= 100 then
				workspace[i].Transparency = 1 -- Hide
			else
				workspace[i].Transparency = 0 -- Visible
			end
		end
	end
end

-- RunService
runservice.RenderStepped:Connect(Render)