-- Locals
local lighting = game:GetService("Lighting") -- Lighting service
local osTime = os.time() -- os time function
local dateFormat = "%H:%M:%S" -- Formatting
local result = os.date(dateFormat, osTime) -- Result

-- While loop for every second to update
while wait(1) do
	lighting.TimeOfDay = result -- Update lighting TimeOfDay
end