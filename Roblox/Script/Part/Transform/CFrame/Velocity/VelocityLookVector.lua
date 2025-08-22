local brick = script.Parent

while wait(0.1) do
	brick.Velocity = brick.CFrame.lookVector * 10 -- Conveyor
end