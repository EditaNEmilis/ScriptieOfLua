-- Locals
local runservice = game:GetService("RunService")
local userinputservice = game:GetService("UserInputService")
local players = game:GetService("Players").LocalPlayer
local mouse = players:GetMouse()

-- Camera locals
local camera = workspace.CurrentCamera
local currcam = CFrame.new(0, 5, 0)
local camrotation = Vector2.new(0, 0)
local speed = 2.5
local sensitivity = 0.01

-- Camera Movement Function
runservice.RenderStepped:Connect(function()
	camera.CameraType = Enum.CameraType.Scriptable

	---
	-- Movement
	if userinputservice:IsKeyDown(Enum.KeyCode.W) then
		currcam += camera.CFrame.LookVector * speed
	end

	if userinputservice:IsKeyDown(Enum.KeyCode.S) then
		currcam -= camera.CFrame.LookVector * speed
	end

	if userinputservice:IsKeyDown(Enum.KeyCode.A) then
		currcam -= camera.CFrame.RightVector * speed
	end

	if userinputservice:IsKeyDown(Enum.KeyCode.D) then
		currcam += camera.CFrame.RightVector * speed
	end
	---

	---
	-- Up and Down
	if userinputservice:IsKeyDown(Enum.KeyCode.Q) then
		currcam += camera.CFrame.UpVector * speed
	end

	if userinputservice:IsKeyDown(Enum.KeyCode.E) then
		currcam -= camera.CFrame.UpVector * speed
	end
	---

	-- Look
	local delta = userinputservice:GetMouseDelta() * sensitivity
	camrotation -= Vector2.new(delta.Y, delta.X)

	-- Lerping
	camera.CFrame = camera.CFrame:Lerp(currcam * CFrame.fromOrientation(camrotation.X, camrotation.Y,0), .2)
end)

-- Mouse Function
mouse.Button2Down:Connect(function()
	userinputservice.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
	mouse.Button2Up:Wait()
	userinputservice.MouseBehavior = Enum.MouseBehavior.Default
end)