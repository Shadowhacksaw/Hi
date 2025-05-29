-- Create the GUI for the notification
local notificationGui = Instance.new("ScreenGui")
local notificationFrame = Instance.new("Frame")
local notificationText = Instance.new("TextLabel")

-- Set up the ScreenGui
notificationGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
notificationGui.Name = "NotificationGui"

-- Set up the Frame (background for the notification)
notificationFrame.Parent = notificationGui
notificationFrame.Size = UDim2.new(0.4, 0, 0.1, 0) -- Adjust size (width and height)
notificationFrame.Position = UDim2.new(0.3, 0, 0.8, 0) -- Adjust position (bottom-center)
notificationFrame.BackgroundColor = 0
notificationFrame.BackgroundTransparency = 0.2
notificationFrame.Visible = true

-- Set up the TextLabel (displays the notification text)
notificationText.Parent = notificationFrame
notificationText.Size = UDim2.new(1, 0, 1, 0) -- Fill the entire frame
notificationText.Text = "Custom Notification Example!" -- Default message
notificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
notificationText.TextScaled = true
notificationText.Font = Enum.Font.SourceSansBold
notificationText.BackgroundTransparency = 1

-- Function to show a custom notification
local function showNotification(message, duration)
    notificationText.Text = message -- Set the notification message
    notificationFrame.Visible = true -- Make the notification visible
    wait(duration or 3) -- Keep it visible for the specified duration (default is 3 seconds)
    notificationFrame.Visible = false -- Hide the notification
end

-- Example: Show a custom notification
task.spawn(function()
    showNotification("Welcome to the game!", 5) -- Show for 5 seconds
    wait(2)
    showNotification("Have fun exploring!", 4) -- Show for 4 seconds
end)