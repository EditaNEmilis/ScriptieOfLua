-- Structure
local struct = {
    ["Gun"] = {
        ["Info"] = "A pistol that fires bullets, basic as that.",
        ["Price"] = "100",
        ["Damage"] = "10",
        ["Ammo"] = "7",
    }
}

-- Print the struct table
for i in pairs(struct) do
    -- Gun table
    if i == "Gun" then
        for j in pairs(struct[i]) do
            -- Print the key and value
            print(j .. ": " .. struct[i][j])
        end
    end
end