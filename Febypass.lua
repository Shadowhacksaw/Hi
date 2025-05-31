local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "FEBYPASS"

-- Create the Frame to Cover the Entire Screen
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(1, 0, 1, 0) -- Full screen
Frame.Position = UDim2.new(0, 0, 0, 0) -- Top-left corner
Frame.BackgroundColor3 = Color3.new(0, 0, 0) -- Black background
Frame.BorderSizePixel = 0

-- Add a TextLabel for = Frame
TextLabel.Size = UDim2.new(0.8, 0, 0.2, 0) -- Centered and smaller
TextLabel.Position = UDim2.new(0.1, 0, 0.4, 0) -- Centered vertically and horizontally
TextLabel.Text = "FE Bypass Activated!!!".SourceSansBold -- Bold font
TextLabel.BackgroundTransparency = 1 -- Transparent background for the text

-- Add Fade-In and Fade-Out Animation for the Entire Screen
coroutine.wrap(function()
    for i = 1, 10 do
        Frame.BackgroundTransparency = i * 0.1 -- Gradually fade in for 2 seconds
    for i = 10, 1, -1 do
        Frame.BackgroundTransparency = i * 0.1 -- Gradually fade out
        TextLabel.TextTransparency = i * 0.1 -- Gradually hide the text
        wait(0.1)
    end
   TextColor3 = Color3.new(1, 0, 0)