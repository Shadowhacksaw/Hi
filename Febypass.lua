game:GetService("StarterGui"):SetCore("SendNotification",{  Title = "FE BYPASS",      
Text = "testing",
})

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "FEBYPASS"

-- Create the Frame for the Message
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(100, 400, 400, 100)
Frame.Position = UDim2.new(0.5, -200, 0.5, -50)
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0

-- Add a TextLabel to Display the Message
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = Frame
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = "FE Bypass Activated!"
TextLabel.TextColor3 = Color3.new(0, 1, 0) -- Green text for effect
TextLabel.TextScaled = true
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.BackgroundTransparency = 1

-- Add Fade-In and Fade-Out Animation
coroutine.wrap(function()
    for i = 1, 10 do
        Frame.BackgroundTransparency = i * 0.1
        wait(0.1)
    end
    wait(2) -- Keep the message visible for 2 seconds
    for i = 10, 1, -1 do
        Frame.BackgroundTransparency = i * 0.1
        wait(0.1)
    end
    ScreenGui:Destroy()
end)()

print("Fake FE Bypass message displayed successfully!")