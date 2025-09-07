local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({

   Name = "Residence Massacre Skins hub l best place for not being broke",

   Icon = 0,

   LoadingTitle = "No more buying",
   LoadingSubtitle = "by Unknown dude",

   Theme = "DarkBlue",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Emotes"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,

   KeySettings = {
      Title = "c00hackk hub l key system",
      Subtitle = "key is backstorysoon",
      Note = "Key is backstorysoon",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"backstorysoon"}
   }

})

local Tab1 = Window:CreateTab("Skins", 130695581754590)

local Button = Tab1:CreateButton({
Name = "Beast"
Callback = function()
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Beast")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)
   end, 
})
local Button = Tab1:CreateButton({
Name = "Bloody Zombie"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Bloody Zombie")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Cake Master"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Cake Master")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Camper"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Camper")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)
end

   end,
})
local Button = Tab1:CreateButton({
Name = "Dracula"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Dracula")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Frozen"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Frozen")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Ghost"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Ghost")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Golden"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Golden")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)
end

   end,
})
local Button = Tab1:CreateButton({
Name = "Jerry"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Jerry")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Jolly Elf"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Jolly Elf")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Krampus"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Krampus")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Mutation"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Mutation")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "None"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("None")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Operator"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Operator")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character) 

   end,
})
local Button = Tab1:CreateButton({
Name = "Partygoer"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Partygoer")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)


   end,
})
local Button = Tab1:CreateButton({
Name = "Partygoer"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Partygoer")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Pirate"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Pirate")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Raver"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Raver")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Sacrifice"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Sacrifice")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Santa"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Santa")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Specter"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Specter")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Survivor"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Beast")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)


   end,
})
local Button = Tab1:CreateButton({
Name = "Vampire"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Vampire")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Winterhorn"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Winterhorn")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Worker"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Worker")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})
local Button = Tab1:CreateButton({
Name = "Zombie"
Callback = function() -- LocalScript: Beast Overlay (no abilities)
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local beastPath = ReplicatedStorage.Outfits:FindFirstChild("Zombie")

----------------------------------------------------
-- APPLY BEAST OVERLAY
----------------------------------------------------
local function applyBeast(character)
	if not beastPath then return end

	local humanoid = character:WaitForChild("Humanoid")
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Remove player's accessories & clothing (overlay handles visuals)
	for _, acc in ipairs(character:GetChildren()) do
		if acc:IsA("Accessory") or acc:IsA("Shirt") or acc:IsA("Pants") then
			acc:Destroy()
		end
	end

	-- Hide original body parts (but keep HumanoidRootPart visible for welds)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Transparency = 1
		end
	end

	-- Clone Beast
	local beastClone = beastPath:Clone()
	beastClone.Name = player.Name -- ✅ keep your username instead of "Beast"
	beastClone.Parent = character

	-- Keep Beast's Humanoid but disable its movement
	local beastHum = beastClone:FindFirstChildOfClass("Humanoid")
	if beastHum then
		beastHum.WalkSpeed = 0
		beastHum.JumpPower = 0
		beastHum.AutoRotate = false
		beastHum:ChangeState(Enum.HumanoidStateType.Physics)
	end

	-- Set PrimaryPart if missing
	if not beastClone.PrimaryPart then
		local root = beastClone:FindFirstChild("HumanoidRootPart") or beastClone:FindFirstChild("Torso")
		if root then beastClone.PrimaryPart = root end
	end

	-- Weld Beast parts to player
	for _, part in ipairs(beastClone:GetChildren()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			local corresponding = character:FindFirstChild(part.Name)
			if corresponding then
				part.CFrame = corresponding.CFrame
				part.Anchored = false
				part.CanCollide = false
				part.Massless = true

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = corresponding
				weld.Part1 = part
				weld.Parent = part
			end
		end
	end

	-- Align Beast root
	if beastClone.PrimaryPart then
		beastClone:SetPrimaryPartCFrame(hrp.CFrame)
	end
end

----------------------------------------------------
-- CLEAR
----------------------------------------------------
local function clearAll()
	if player.Character then
		local overlay = player.Character:FindFirstChild(player.Name)
		if overlay then overlay:Destroy() end
	end
end

----------------------------------------------------
-- HOOKS
----------------------------------------------------
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	applyBeast(char)
end)

player.CharacterRemoving:Connect(clearAll)

-- Initial
if player.Character then
	task.wait(1)
	applyBeast(player.Character)

   end,
})










