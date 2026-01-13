local message = NetMessage.New()
message.AddString("key", "value")
netEvent.InvokeClients(message) -- Sends a network event to all players from the server