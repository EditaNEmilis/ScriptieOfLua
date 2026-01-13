local message = NetMessage.New()
message.AddString("key", "value")
netEvent.InvokeServer(message) -- Sends a network event to the server from the client