-- Locals
local cas = game:GetService("ContextActionService")

-- Player
local player = game.Players.LocalPlayer
local character = player.Character
local mouse = player:GetMouse()
local camera = game.Workspace.CurrentCamera

-- Grab and Drag
local grabobject = nil
local grabstart = false
local drag = nil

--- Functions
-- Grab
function Grab(actionName, UserInputState, InputObject)
	if actionName == "Grab" then
		if UserInputState == Enum.UserInputState.Begin then
			-- Start grabbing
			local magnitude = (mouse.Hit.Position - character.Head.Position).Magnitude
			if magnitude < 15 then
				if mouse.Target then
					grabobject = mouse.Target
					grabstart = true

					local dragball = CreateDragBall()
					dragball.CFrame = mouse.Hit
					drag = dragball

					mouse.TargetFilter = grabobject

					local dragballweld = WeldBetween(dragball, grabobject)
					Mover(dragball)

					while drag and wait(0.01) do
						-- Create Ray
						local cf = CFrame.new(character.Head.Position, mouse.Hit.Position)
						drag.Mover.Position = (cf + (cf.LookVector * 10)).Position -- Often getting this error if drag is nil
						drag.RotMover.CFrame = camera.CFrame * CFrame.Angles(drag.RotOffset.Value.X, drag.RotOffset.Value.Y, drag.RotOffset.Value.Z)
					end
					mouse.TargetFilter = nil
				end
			end
		elseif UserInputState == Enum.UserInputState.End then
			grabobject = nil
			grabstart = false
			if drag then
				drag:Destroy()
				drag = nil
			end
		end
	end
end

-- WeldBetweem
function WeldBetween(a, b)
	-- Weld
	local weld = Instance.new("ManualWeld", a)
	weld.C0 = a.CFrame:inverse() * b.CFrame
	weld.Part0 = a
	weld.Part1 = b
	return weld
end

-- Mover
function Mover(part)
	-- NewMover
	local newmover = Instance.new("BodyPosition")
	newmover.Parent = part
	newmover.MaxForce = Vector3.new(2000, 2000, 2000)
	newmover.P = 2000
	newmover.D = 500
	newmover.Position = part.Position
	newmover.Name = "Mover"

	-- RotMover
	local newrot = Instance.new("BodyGyro")
	newrot.Parent = part
	newrot.MaxTorque = Vector3.new(1000, 1000, 1000)
	newrot.P = 1000
	newrot.D = 500
	newrot.CFrame = game.Workspace.CurrentCamera.CFrame
	newrot.Name = "RotMover"

	-- RotOffset
	local rotoffset = Instance.new("CFrameValue")
	rotoffset.Name = "RotOffset"
	rotoffset.Parent = part
end

-- CreateDragBall
function CreateDragBall()
	-- DragBall
	local dragball = Instance.new("Part")
	dragball.BrickColor = BrickColor.new("Really blue")
	dragball.Material = Enum.Material.SmoothPlastic
	dragball.Size = Vector3.new(0.2, 0.2, 0.2)
	dragball.Shape = "Ball"
	dragball.Parent = workspace
	return dragball
end

-- Bind
cas:BindAction("Grab", Grab, false, Enum.UserInputType.MouseButton1)