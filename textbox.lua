local ScrnGui = Instance.new("ScreenGui")
local MnPrt = Instance.new("Frame")
local InPrt = Instance.new("Frame")
local Cody = Instance.new("TextBox")

ScrnGui.Name = "c00lhackkBackdoor"
ScrnGui.Parent = game:GetService('CoreGui')
ScrnGui.ResetOnSpawn = false

MnPrt.Active = true
MnPrt.BackgroundColor3 = Color3.new(0,0,0)
MnPrt.BorderColor3 = Color3.new(1,0,0)
MnPrt.Name = "MainPart"
MnPrt.Parent = ScrnGui
MnPrt.Position = UDim2.new(.5,-180,.5,-120)
MnPrt.Size = UDim2.new(0,360,0,240)
MnPrt.Draggable = true

InPrt.Active = true
InPrt.BackgroundColor3 = Color3.new(0,0,0)
InPrt.BorderColor3 = Color3.new(1,0,0)
InPrt.Name = "Inside"
InPrt.Parent = MnPrt
InPrt.Position = UDim2.new(0,0,0,50)
InPrt.Size = UDim2.new(0,360,0,190)
InPrt.Draggable = false


Cody.Active = true
Cody.BackgroundColor3 = Color3.new(0,0,0)
Cody.BorderColor3 = Color3.new(1,0,0)
Cody.ClearTextOnFocus = false
Cody.MultiLine = true
Cody.Name = "Code"
Cody.Parent = InPrt
Cody.Position = UDim2.new(0,5,0,5)
Cody.Size = UDim2.new(0,350,0,140)
Cody.Font = Enum.Font.Legacy
Cody.FontSize = Enum.FontSize.Size8
Cody.Text = game:HttpGet('https://raw.githubusercontent.com/Shadowhacksaw/Hi/refs/heads/main/c00lhackkbackdoor.checker')
Cody.TextColor3 = Color3.new(1,0,0)
Cody.TextWrapped = true
Cody.TextXAlignment = Enum.TextXAlignment.Left
Cody.TextYAlignment = Enum.TextYAlignment.Top