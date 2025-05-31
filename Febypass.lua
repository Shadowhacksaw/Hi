-- Create the ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "FEBYPASS"

-- Create the Frame to Hold the Message
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 400, 0, 100)
Frame.Position = UDim2.new(0.5, -200, 0.5, -50)
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0

-- Add a TextLabel for the Message
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = Frame
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = "FE Bypass Activated!"
TextLabel.TextColor3 = Color3.new(0, 1, 0) -- Green text
TextLabel.TextScaled = true
TextLabel.Font =()
    for i = 1, 10 do
        Frame.BackgroundTransparency = i * 0.1
        wait(0.1)
    end
    wait(2)
    for i = 10, 1, -1 do
        Frame.BackgroundTransparency = i * 0.1