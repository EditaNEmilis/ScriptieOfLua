local message = NetMessage.New() -- NetMessage
message.AddString("key", "value") -- Add string to the NetMessage

netEvent.InvokeClients(message) -- Sends a network event to all players from the server