-- Create a GUI for the tag
local tagGui = Instance.new("BillboardGui")
local tagLabel = Instance.new("TextLabel")

-- Set up the BillboardGui
tagGui.Parent = game.Players.LocalPlayer.Character:WaitForChild("Head") -- Attach to the player's head
tagGui.Adornee = game.Players.LocalPlayer.Character.Head
tagGui2.new(0, 200, 0, 50) -- Adjust size
tagGui.StudsOffset = Vector3.new(0, 2, 0) -- Position above the player's head
tagGui.AlwaysOnTop = true
tagGui.Name = "DeveloperTag"

-- Set up the TextLabel
tagLabel.Parent = tagGui
tagLabel.Size = UDim2.new(1, 0, 1, 0) -- Fill the BillboardGui
tagLabel.BackgroundTransparency = 1
tagLabel.Text = "[local Scripter]" -- Developer tag text
tagLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red text color
tagLabel.Font = Enum.Font.SourceSansBold
tagLabel.TextScaled = true

-- Only display for specific players
local allowedPlayers = { "Min3rZ3roAqua89", "pizzahexl" }

if table.find(allowedPlayers, game.Players.LocalPlayer.Name) then
    tagGui.Enabled = true
else
    tagGui.Enabled = false
end