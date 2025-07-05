local brick = game["Environment"]["Brick"]
local valueRot = 0

while true do
    wait(0.1)
    valueRot = valueRot + 5
    brick:MoveRotation(Vector3.New(0, valueRot, 0))
end