-- Function
function hitListener(hit)
    print(hit.Name .. "touched the brick!")
end

-- Listener
-- Connect if it has been touched
game["Environment"]["Brick"].Touched:Connect(hitListener)
wait(2) -- Wait..
-- Disconnect when the event is fired
game["Environment"]["Brick"].Touched:Disconnect(hitListener)