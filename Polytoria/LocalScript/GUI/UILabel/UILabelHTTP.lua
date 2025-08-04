local gui = game["PlayerGUI"]["GUI"]
local label = gui["UILabel"]

-- Get API data via HTTP function
Http:Get("https://api.polytoria.com/v1/store/25272", function (data, error, errmsg)
    if not error then -- If the HTTP request was successful
        label.Color = Color.New(1, 1, 1)
        label.Text = data
        print("Data succesful")
    else -- If the HTTP request failed to get the data
        label.Color = Color.New(1, 0, 0)
        label.Text = errmsg
        print("Error: " .. errmsg)
    end
end,{})