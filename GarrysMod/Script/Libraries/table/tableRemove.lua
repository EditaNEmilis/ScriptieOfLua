-- Array list
local array = {
    [1] = "A",
    [2] = "B",
    -- [3] = nil,
    [4] = "D"
}

table.remove(array, 3) -- Remove one of the nil in the array

-- Print
for k, v in ipairs(array) do
    print(v)
end