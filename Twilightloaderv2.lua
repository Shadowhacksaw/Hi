local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Twilight Area l i got nothing to say ",
   Icon = 0,
   LoadingTitle = "No more problems",
   LoadingSubtitle = "by Unknown dude",
   Theme = "DarkBlue",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Twilight"
   },
   Discord = {Enabled = false, Invite = "noinvitelink", RememberJoins = true},
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

local Tab1 = Window:CreateTab("Main", 130695581754590)
local Tab2 = Window:CreateTab("Esp", 130695581754590)

-- === HELPERS ===
local function isFuseLike(name)
    if not name then return false end
    local s = tostring(name):lower()
    return s:find("fuse") or s:find("fusebox") or s:find("fuse_box")
end

local function findRepresentativePart(model)
    if not model then return nil end
    if model:IsA("BasePart") then return model end
    local names = {"Front","front","Head","head","HumanoidRootPart","PrimaryPart"}
    for _,n in ipairs(names) do
        local f = model:FindFirstChild(n)
        if f and f:IsA("BasePart") then return f end
    end
    if model.PrimaryPart and model.PrimaryPart:IsA("BasePart") then return model.PrimaryPart end
    return model:FindFirstChildWhichIsA("BasePart", true)
end

local function teleportToPart(part, offset)
    offset = offset or 2
    if not part then return false end
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local hrp = char:FindFirstChild("HumanoidRootPart") or char:WaitForChild("HumanoidRootPart", 2)
    if not hrp then return false end
    hrp.CFrame = part.CFrame + Vector3.new(0, offset, 0)
    return true
end

local function interactWithMachine(machine)
    for _, obj in ipairs(machine:GetDescendants()) do
        if obj:IsA("ProximityPrompt") then
            fireproximityprompt(obj)
            return
        end
    end
end

local function findElevatorSpawn()
    local elevator = Workspace:FindFirstChild("Elevator")
    if not elevator then return nil end
    return elevator:FindFirstChild("ElevatorSpawn") or elevator:FindFirstChildWhichIsA("BasePart", true)
end

-- === AUTO SKILL CHECK ===
local function tryAttachSkillCheck(remote)
    if not remote then return end
    if remote:IsA("RemoteFunction") then
        remote.OnClientInvoke = function(...) return 2 end
    elseif remote:IsA("RemoteEvent") then
        remote.OnClientEvent:Connect(function(...) end)
    end
end

for _, v in ipairs(ReplicatedStorage:GetDescendants()) do
    if (v:IsA("RemoteFunction") or v:IsA("RemoteEvent")) and tostring(v.Name):lower():find("skill") then
        tryAttachSkillCheck(v)
    end
end
ReplicatedStorage.DescendantAdded:Connect(function(desc)
    if (desc:IsA("RemoteFunction") or desc:IsA("RemoteEvent")) and tostring(desc.Name):lower():find("skill") then
        tryAttachSkillCheck(desc)
    end
end)

-- === ESP ===
local espMachinesOn, espSpiritsOn = false, false
local espMap = {}

local function createHighlightForModel(model, color)
    if not model or not model.Parent or espMap[model] then return end
    local hl = Instance.new("Highlight")
    hl.Name = "TZ_HL"
    hl.Adornee = model
    hl.FillColor, hl.OutlineColor = color, color
    hl.FillTransparency = 0.55
    hl.Parent = workspace
    espMap[model] = hl
end

local function clearAllHighlights()
    for model, hl in pairs(espMap) do
        pcall(function() if hl then hl:Destroy() end end)
    end
    espMap = {}
end

local function gatherMachineParts()
    local parts = {}
    if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Machines") then
        for _, machine in ipairs(Workspace.Floor.Machines:GetChildren()) do
            if machine:IsA("Model") and not isFuseLike(machine.Name) then
                local rep = findRepresentativePart(machine)
                if rep then table.insert(parts, rep) end
            end
        end
    end
    return parts
end

local function gatherSpiritModels()
    local spirits = {}
    if Workspace:FindFirstChild("Floor") then
        for _, folder in ipairs(Workspace.Floor:GetDescendants()) do
            if (folder:IsA("Folder") or folder:IsA("Model")) and folder.Name:lower() == "spirits" then
                for _, spirit in ipairs(folder:GetChildren()) do
                    local rep = findRepresentativePart(spirit)
                    if rep then table.insert(spirits, rep) end
                end
            end
        end
    end
    return spirits
end

task.spawn(function()
    while true do
        -- Machines ESP
        if espMachinesOn then
            for _, rep in ipairs(gatherMachineParts()) do
                local model = rep.Parent or rep
                createHighlightForModel(model, Color3.fromRGB(0,200,0))
            end
        end
        -- Spirits ESP
        if espSpiritsOn then
            for _, rep in ipairs(gatherSpiritModels()) do
                local model = rep.Parent or rep
                createHighlightForModel(model, Color3.fromRGB(200,0,200))
            end
        end
        if not espMachinesOn and not espSpiritsOn then clearAllHighlights() end
        task.wait(1)
    end
end)

-- === GODMODE LOOP ===
task.spawn(function()
    while true do
        if autoFarmEnabled then
            pcall(function()
                if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Spirits") then
                    for _, folder in ipairs(Workspace.Floor.Spirits:GetChildren()) do
                        for _, v in ipairs(folder:GetChildren()) do
                            if v.Name == "HitPlayer" then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end
        task.wait(0.5)
    end
end)

-- === AUTO FARM ===
local function gatherMachines()
    local machines = {}
    if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Machines") then
        for _, machine in ipairs(Workspace.Floor.Machines:GetChildren()) do
            if machine:IsA("Model") and machine:FindFirstChildWhichIsA("ProximityPrompt") and not isFuseLike(machine.Name) then
                table.insert(machines, machine)
            end
        end
    end
    return machines
end

local function gatherCurrencies()
    local items = {}
    if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Items") and Workspace.Floor.Items:FindFirstChild("Currencies") then
        for _, item in ipairs(Workspace.Floor.Items.Currencies:GetChildren()) do
            local part = findRepresentativePart(item)
            if part then table.insert(items, part) end
        end
    end
    return items
end

task.spawn(function()
    while true do
        if autoFarmEnabled then
            -- Pick up items first
            for _, part in ipairs(gatherCurrencies()) do
                teleportToPart(part, 2)
                task.wait(0.3)
            end

            -- Repair machines
            for _, machine in ipairs(gatherMachines()) do
                local repPart = findRepresentativePart(machine)
                if repPart then
                    teleportToPart(repPart, 2)
                    interactWithMachine(machine)

                    local elapsed, repairTime = 0, 117
                    while elapsed < repairTime and machine.Parent do
                        task.wait(0.5)
                        elapsed = elapsed + 0.5
                    end
                end
            end

            -- Teleport to elevator
            while autoFarmEnabled do
                local elevator = findElevatorSpawn()
                if elevator then teleportToPart(elevator, 2) end
                task.wait(1)
                if #gatherMachines() > 0 then break end
            end
        else
            task.wait(1)
        end
    end
end)

-- === UI TOGGLES ===
local Toggle1 = Tab1:CreateToggle({Name = "Infinite Stamina", CurrentValue = false, Callback = function(v) staminaFlag = v end})
local Toggle2 = Tab1:CreateToggle({Name = "Auto Farm", CurrentValue = false, Flag = "AutoFarmToggle", Callback = function(v) autoFarmEnabled = v end})
local Button1 = Tab1:CreateButton({Name = "Teleport to Elevator", Callback = function() teleportToPart(findElevatorSpawn(), 2) end})
local Toggle3 = Tab2:CreateToggle({Name = "ESP Machines", CurrentValue = false, Callback = function(v) espMachinesOn = v; if not v then clearAllHighlights() end end})
local Toggle4 = Tab2:CreateToggle({Name = "ESP Spirits", CurrentValue = false, Callback = function(v) espSpiritsOn = v; if not v then clearAllHighlights() end end})

game.StarterGui:SetCore("SendNotification", {
    Title = "Twilight",
    Text = "Auto Skillcheck is Working!",
    Duration = 8
})