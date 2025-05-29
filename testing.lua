-- Create the GUI
local messageGui = Instance.new("ScreenGui")
local messageFrame = Instance.new("Frame")
local messageText = Instance.new("TextLabel")

-- Set up the ScreenGui
messageGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
messageGui.Name = "MessageGui"

-- Set up the Frame
messageFrame.Parent = messageGui
messageFrame.Size = UDim2.new(0.5, 0, 0.2, 0) -- Adjust size (width and height)
messageFrame.Position = UDim2.new(0.25, 0, 0.4, 03 = Color3.fromRGB(50, 50, 50)
messageFrame.BorderSizePixel = 0
messageFrame.BackgroundTransparency = 0.2

-- Set up the TextLabel
messageText.Parent = messageFrame
messageText.Size = UDim2.new(1, 0, 1, 0) -- Fill the entire frame
messageText.Text = "test" -- Initial text
messageText.TextColor3 = Color3.fromRGB(255, 255, 255)
messageText.TextScaled = true
messageText.Font = Enum.Font.SourceSansBold
messageText.BackgroundTransparency = 1