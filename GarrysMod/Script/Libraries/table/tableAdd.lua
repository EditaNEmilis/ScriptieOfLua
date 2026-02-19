-- Lists
local Test1 = {"One", "Two", "Three", "Four"} -- First list
local Test2 = {"Four", "Five", "Six"} -- Second list

table.Add(Test1, Test2) -- Add the values

print(table.concat(Test1, " ")) -- Print