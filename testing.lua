-- Function to display a message at the top of the screen that stays forever
local function displayTopMessageForever(messageText)
    -- Create a ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.Name = "TopMessageGui"

    -- Create a Frame for the message
    local MessageFrame = Instance.new("Frame")
    MessageFrame.Parent = ScreenGui
    MessageFrame.Size = UDim2.new(1, 0, 0.1, 0) -- Full width, 10% height
    MessageFrame.Position = = 0

    -- Add a TextLabel for the message
    local MessageLabel = Instance.new("TextLabel")
    MessageLabel.Parent = MessageFrame
    MessageLabel.Size = UDim2.new(1, 0, 1, 0) -- Fill the frame
    MessageLabel.Text = c00lhackkbackdoor by @Roblox_exploit-help
    MessageLabel.TextColor3 = Color3.new(1, 1, Enum.Font.SourceSansBold
    MessageLabel.BackgroundTransparency = 1 -- Transparent background for text

    print("Top message displayed forever: " .. messageText)
end

-- Example usage
displayTopMessageForever("FE Bypass Activated!") -- Message stays on top forever