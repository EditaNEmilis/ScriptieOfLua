local message = NetMessage.New() -- NetMessage
message.AddString("key", "value") -- Add string to the NetMessage

netEvent.InvokeServer(message) -- Sends a network event to the server from the client