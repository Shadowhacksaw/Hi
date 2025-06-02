-- Services
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Main UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomConsoleUI"
Screen Instance.new("Frame")
ConsoleFrame.Name = "ConsoleFrame"
ConsoleFrame.Size = UDim2.new(0.5, 0, 0.4, 0) -- 50% width, 40% height
ConsoleFrame.Position = UDim2.new(0.25, 0, 0Gui

-- Title Bar
local TitleBar = Instance.new("TextLabel")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0.1, 0) -- 10% height
TitleBar.BackgroundColor3 = Color3.fromRGB(40,  (ScrollingFrame)
local LogDisplay = Instance.new("ScrollingFrame")
LogDisplay.Name = "LogDisplay"
LogDisplay.Size = UDim2.new(1, -10, 0.8, -10) -- Slightly inset
LogDisplay.Position = UDim2.new(0, 5, 0.0
LogDisplay.Parent = ConsoleFrame

-- Log Template (TextLabel)
local LogTemplate = Instance.new("TextLabel")
LogTemplate.Size = UDim2.new(1, -10, 0, 20) -- Adjust height for each log
LogTemplate.Position = UDim2.new(0, 5
LogTemplate.TextXAlignment = Enum.TextXAlignment.Left

-- Input Box for Commands
local InputBox = Instance.new("TextBox")
InputBox.Name = "InputBox"
InputBox.Size = UDim2.new(1, -10, 0.1, -5) -- 10% height
InputBox.Position = UDim, 40, 40)
InputBox.Text = "Type your command here..."
InputBox.TextSize = 14
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.Font = Enum.Font.SourceSans
InputBox.ClearTextOnFocus = true
InputBox.Parent =    Log.Parent = LogDisplay
    LogDisplay.CanvasSize = UDim2.new(0, 0, 0, #LogDisplay:GetChildren() * 20) -- Adjust canvas size
end

-- Listen for Custom Command
local ChatService = game:GetService("Chat")
ChatService.Chatted:Connect(function(message)
    if message == "/c00lhackk console" then
       
        addLog("Command: " .. command)
        InputBox.Text = ""
        -- Add custom command handling here
        if command == "clear" then
            for _, child in ipairs(LogDisplay:GetChildren()) do
                if child:IsA("TextLabel") then
                    child:Destroy()
                end
            end
            addLog("Console cleared.")
        elseif command == "test" then
            addLog("Test command executed.")
        else
            addLog("Unknown command: " .. command)
        end
    end
end)

-- Example Logs
addLog("Custom Console Initialized.")
addLog("Type /c00lhackk consolein chat to toggle.")