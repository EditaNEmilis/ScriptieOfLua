-- Angle
print(Angle(1, 2, 3)) -- Interger
print(Angle("4 5 6")) -- Strings

-- Local
local test = Angle(7, 8, 9)
print(Angle(test))

-- Doesn't work
print(Angle("4 5 test"))
print(Angle())