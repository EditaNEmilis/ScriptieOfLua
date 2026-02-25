-- Get HTTPService
local HttpService = game:GetService("HttpService")

-- URL for the International Space Station location
local URL_ISS = "http://api.open-notify.org/iss-now.json"

-- Function
local function printISS()
	local response
	local data

	-- Use pcall in case something goes wrong
	pcall(function()
		response = HttpService:GetAsync(URL_ISS)
		data = HttpService:JSONDecode(response)
	end)

	-- Check if our request fail OR our JSON fail to parse?
	if not data then
		return false
	end

	-- Check if the request succeeded
	if data.message == "success" and data.iss_position then
		if data.iss_position.latitude and data.iss_position.longitude then
			print("The International Space Station (ISS) is currently at:")
			print(data.iss_position.latitude .. ", " .. data.iss_position.longitude) -- Print data
			return true
		end
	end
	return false
end

-- Check
if printISS() then
	print("Success HTTP request") -- Print working
else
	warn("Something went wrong with the request") -- Failed to print something
end