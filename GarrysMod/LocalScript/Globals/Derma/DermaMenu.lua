local menu = DermaMenu() -- Local Menu

menu:AddOption("Die", function() RunConsoleCommand("kill") end) -- Kills the player
menu:AddOption("Close", function() print("Close pressed") end) -- Removes the DermaMenu

menu:Open() -- Open