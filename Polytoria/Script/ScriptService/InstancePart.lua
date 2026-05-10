for i = 1, 100 do
    local brick = Instance.New("Part")

    brick.Size = Vector3.New(4, 2, 2)
    brick.Position = Vector3.New(math.random(1, 100), 0, math.random(1, 100)) -- Set random position of X and Z
    brick.Parent = game['Environment'] -- Parent to the game environment
end