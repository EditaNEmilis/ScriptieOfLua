-- Intersections
local intersections = game["Environment"]:OverlapBox(Vector3.New(0, 0, 0), Vector3.New(2, 2, 3), Vector3.New(0, 0, 0))

-- Return list
for _,v in ipairs(intersections) do
    print(v.Name .." is intersecting the box")
end