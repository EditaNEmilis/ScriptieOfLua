local environment = game["Environment"]
local vectorValue = environment["Vector3Value"]

vectorValue.Value = Vector3.New(10, 50, 123) -- Vector3

print(vectorValue.Value)