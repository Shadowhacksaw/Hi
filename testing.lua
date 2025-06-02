-- Create a RemoteEvent to broadcast the GUI message
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RemoteEvent = Instance.new("RemoteEvent")
RemoteEvent.Name = ".Parent = ReplicatedStorage

-- Function to broadcast a message
local function broadcastMessage(messageText)
    RemoteEvent:FireAllClients(messageText) -- Send the message to all clients
end

-- Example: Broadcast a message when the game starts
game.Players.PlayerAdded:Connect(function(player)
    wait(2) -- Small delay for GUI to load
    broadcastMessage("c00lhackk is here hahaha") -- Replace with your custom message
end)