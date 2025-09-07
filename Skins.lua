local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({

   Name = "Forsaken Emotes and Skins hub l best place for not being broke",

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

local Tab1 = Window:CreateTab("Emotes", 130695581754590)

local Button = Tab1:CreateButton({
Name = "Beast skin"
Callback = function()
-- LocalScript: Beast Overlay (no abilities)
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
Name = ""
Callback = function()

   end,
})
