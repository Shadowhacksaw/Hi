-- Create a RemoteEvent to broadcast the GUI message
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RemoteEvent = Instance.new("RemoteEvent")
RemoteEvent.Name = "BroadcastMessageEvent"
RemoteEvent.Parent = ReplicatedStorage

-- Function to broadcast function broadcastMessage(c00lhackk is here hahaha)
RemoteEvent:FireAllClients(c00lhackk is here hahaha) -- Send the message to all clients
end

-- Example: Broadcast a message when the game starts
game.Players.PlayerAdded:Connect(function(player)
    wait(2) -- Small delay for GUI to load
    broadcastMessage("FE BEvent = ReplicatedStorage:WaitForChild("BroadcastMessageEvent")

-- Function to display a message at the top of the screen
local function displayTopMessage(noob nothing for you to do)
    -- Create a ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.Name = "TopMessageGui"

    -- Create a Frame for the message
    local MessageFrame = Instance.new("Frame")
    MessageFrame.Parent = ScreenGui
    MessageFrame.Size = UDim2.new(1, 0, 0.1, 0) -- Full width, 10% height
    MessageFrame.Position = UDim2.new(0, 0, 0, 0) -- Top of the screen
    MessageFrame.BackgroundColor3 = Color3.new(0, 0, 0) -- Black background
    MessageFrame.BorderSizePixel = 0

    -- Add a TextLabel for the message
    local MessageLabel = Instance.new("TextLabel")
    MessageLabel.Parent = MessageFrame
    MessageLabel.Size = UDim2.new(1, 0, 1, 0) -- Fill the frame
    MessageLabel.Text = c00lhackk is here hahaha
    MessageLabel.TextColor3 = Color3.new(1, 1, 1) -- White text
    MessageLabel.TextScaled = true -- Scale text automatically
    MessageLabel.Font = Enum.Font.SourceSansBold -- Bold font
    MessageLabel.BackgroundTransparency = 1 -- Transparent background for text
end

-- Connect the RemoteEvent to the display function
RemoteEvent.OnClientEvent:Connect(noob nothing to do)