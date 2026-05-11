local brick = game["Environment"]["Brick"]

-- Loop
while true do
    brick.Size = brick.Size + Vector3.New(1, 0, 0) -- Add
    wait(0.5)
    brick.Size = brick.Size - Vector3.New(1, 0, 0) -- Subtract
    wait(0.5)
end