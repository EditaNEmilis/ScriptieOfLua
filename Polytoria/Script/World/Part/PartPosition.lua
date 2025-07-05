local brick = game["Environment"]["Brick"]
local valuePos = 0

while true do
    wait(0.1)
    valuePos = valuePos + 0.1
    brick:MovePosition(Vector3.New(valuePos, 0, 0))
end