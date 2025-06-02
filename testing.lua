-- DEX Explorer with Script Injection
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Create the main GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DEXExplorer"
ScreenGui.Parent = PlayerGui

-- Explorer Frame
local ExplorerFrame = Instance.new("Frame")
ExplorerFrame.Name = "ExplorerFrame"
ExplorerFrame.Size = UDim2.new(0.3, 0, 0.6, 0) -- 30% width, 60% height
ExplorerFrame.Position = UDim2.new(0.02, 0, 0.02, 0) -- Top-left corner
ExplorerFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Dark gray
ExplorerFrame.BorderSizePixel = 0
ExplorerFrame.Parent = ScreenGui

-- Scrolling Frame for hierarchy
local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Name = "Hierarchy"
ScrollFrame.Size = UDim2.new(1, -10, 1, -10)
ScrollFrame.Position = UDim2.new(0, 5, 0, 5)
ScrollFrame.CanvasSize = UDim2.new(0, 0, 5, 0)
ScrollFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Darker gray
ScrollFrame.BorderSizePixel = 0
ScrollFrame.Parent = ExplorerFrame

-- Template for object buttons
local ObjectTemplate = Instance.new("TextButton")
ObjectTemplate.Text = ""
ObjectTemplate.Size = UDim2.new(1, -20, 0, 30) -- Adjust height for each object
ObjectTemplate.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Medium gray
ObjectTemplate.TextColor3 = Color3.new(1, 1, 1) -- White text
ObjectTemplate.TextScaled = true
ObjectTemplate.BorderSizePixel = 0

-- Selected Object Information
local SelectedObject = nil

-- Function to populate the hierarchy
local function populateHierarchy(parent, container)
    for _, child in pairs(parent:GetChildren()) do
        local ObjectButton = ObjectTemplate:Clone()
        ObjectButton.Text = child.Name .. " (" .. child.ClassName .. ")"
        ObjectButton.Parent = container

        ObjectButton.MouseButton1Click:Connect(function()
            SelectedObject = child
            print("Selected:", child.Name)
        end)

        -- Recursively add children
        if #child:GetChildren() > 0 then
            populateHierarchy(child, container)
        end
    end
end

-- Populate the hierarchy starting from the Workspace
populateHierarchy(game.Workspace, ScrollFrame)

-- Script Injection GUI
local ScriptFrame = Instance.new("Frame")
ScriptFrame.Name = "ScriptFrame"
ScriptFrame.Size = UDim2.new(0.3, 0, 0.3, 0) -- 30% width, 30% height
ScriptFrame.Position = UDim2.new(0.35, 0, 0.02, 0) -- Next to the Explorer
ScriptFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Dark gray
ScriptFrame.BorderSizePixel = 0
ScriptFrame.Parent = ScreenGui

-- TextBox for custom script code
local ScriptTextBox = Instance.new("TextBox")
ScriptTextBox.Size = UDim2.new(1, -10, 0.6, -10)
ScriptTextBox.Position = UDim2.new(0, 5, 0, 5)
ScriptTextBox.Text = "-- Enter your script code here\nprint(\"Hello, world!\")"
ScriptTextBox.TextColor3 = Color3.new(1, 1, 1)
ScriptTextBox.Font = Enum.Font.SourceSans
ScriptTextBox.TextSize = 14
ScriptTextBox.TextWrapped = true
ScriptTextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScriptTextBox.BorderSizePixel = 0
ScriptTextBox.MultiLine = true
ScriptTextBox.Parent = ScriptFrame

-- Button to inject the script
local InjectButton = Instance.new("TextButton")
InjectButton.Size = UDim2.new(1, -10, 0.2, 0) -- 20% height
InjectButton.Position = UDim2.new(0, 5, 0.7, 5)
InjectButton.Text = "Inject Script"
InjectButton.TextColor3 = Color3.new(1, 1, 1)
InjectButton.Font = Enum.Font.SourceSansBold
InjectButton.TextSize = 18
InjectButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InjectButton.BorderSizePixel = 0
InjectButton.Parent = ScriptFrame

-- Inject Script Functionality
InjectButton.MouseButton1Click:Connect(function()
    if SelectedObject then
        local scriptCode = ScriptTextBox.Text
        local newScript = Instance.new("LocalScript")
        newScript.Source = scriptCode
        newScript.Parent = SelectedObject
        print("Injected script into:", SelectedObject.Name)
    else
        print("No object selected!")
    end
end)