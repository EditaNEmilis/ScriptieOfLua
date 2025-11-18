-- Intersections
local intersections = game["Environment"]:OverlapSphere(Vector3.New(100, 0, 45), 25)

-- Return list
for _,v in ipairs(intersections) do
    print(v.Name .." is intersecting the sphere")
end