-- Function to display a message at the top of the screen that stays forever
local function displayTopMessageForever(c00lhackk is here hahaha)
    -- Create a ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.Name = "TopMessageGui"

    -- message
    local MessageFrame = Instance.new("Frame")
    MessageFrame.Parent = ScreenGui
    MessageFrame.Size = UDim2.new(1, 0, 0.1, 0) -- Full width, 10% height
    MessageFrame.Position = UDim2.new(0, 0 MessageFrame.BorderSizePixel = 0

    -- Add a TextLabel for the message
    local MessageLabel = Instance.new("TextLabel")
    MessageLabel.Parent = MessageFrame
    MessageLabel.Size = UDim2.new(1, 0, 1, 0) -- Fill the frame
    MessageLabel.Text = c00lhackk is here hahaha
    MessageLabel.TextColor3 = Color3.new(1, 1, 1) -- White text
    MessageLabel.TextScaled = true -- Scale text automatically
    MessageLabel.Font = Enum.Font.SourceSansBold -- Bold font
    MessageLabel.BackgroundTransparency = 1 -- Transparent background for text

    -- Send a notification to the player in chat
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = "Notification: The the notification
        Font = Enum.Font.SourceSansBold;
        FontSize = Enum.FontSize.Size18;
    })

    print("Top message displayed forever and notification sent: " .. messageText)
end

-- Example usage
displayTopMessageForever("c00lhackk is here hahaha!") -- Message stays on top forever