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

local Tab1 = Window:CreateTab("Main", 130695581754590)
local Tab2 = Window:CreateTab("Esp", 130695581754590)


-- Helper: Find all "Machines" folders/models
local function findMachinesFolders()
    local folders = {}
    if Workspace:FindFirstChild("Machines") then
        table.insert(folders, Workspace.Machines)
    end
    if Workspace:FindFirstChild("Floor") then
        for _, obj in ipairs(Workspace.Floor:GetDescendants()) do
            if (obj:IsA("Folder") or obj:IsA("Model")) and tostring(obj.Name):lower() == "machines" then
                table.insert(folders, obj)
            end
        end
    end
    for _, obj in ipairs(Workspace:GetDescendants()) do
        if (obj:IsA("Folder") or obj:IsA("Model")) and tostring(obj.Name):lower() == "machines" then
            table.insert(folders, obj)
        end
    end
    local seen = {}
    local unique = {}
    for _, f in ipairs(folders) do
        if f and not seen[f] then
            seen[f] = true
            table.insert(unique, f)
        end
    end
    return unique
end

-- Helper: Find a good part to highlight in a model
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

-- Helper: Exclude fuses
local function isFuseLike(name)
    if not name then return false end
    local s = tostring(name):lower()
    return s:find("fuse") or s:find("fusebox") or s:find("fuse_box")
end

-- Gather all machine models (representative parts)
local function gatherMachineParts()
    local parts = {}
    local folders = findMachinesFolders()
    for _, machinesFolder in ipairs(folders) do
        for _, machine in ipairs(machinesFolder:GetChildren()) do
            if machine:IsA("Model") and not isFuseLike(machine.Name) then
                local rep = findRepresentativePart(machine) or machine
                if rep then table.insert(parts, rep) end
            end
        end
    end
    if #parts == 0 then
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj:IsA("Model") and not isFuseLike(obj.Name) then
                if tostring(obj.Name):lower():find("machine") then
                    local rep = findRepresentativePart(obj) or obj
                    table.insert(parts, rep)
                end
            end
        end
    end
    if #parts == 0 and Workspace:FindFirstChild("Floor") then
        for _, obj in ipairs(Workspace.Floor:GetDescendants()) do
            if obj:IsA("Model") and not isFuseLike(obj.Name) then
                local rep = findRepresentativePart(obj)
                if rep and (tostring(obj.Name):lower():find("machine") or rep.Name:lower():find("machine") ) then
                    table.insert(parts, rep)
                end
            end
        end
    end
    return parts
end

-- Gather all spirit models under "Spirits" folders
local function gatherSpiritModels()
    local spirits = {}
    local foundSpiritFolders = {}
    if Workspace:FindFirstChild("Floor") then
        for _, obj in ipairs(Workspace.Floor:GetDescendants()) do
            if (obj:IsA("Folder") or obj:IsA("Model")) and tostring(obj.Name):lower() == "spirits" then
                table.insert(foundSpiritFolders, obj)
            end
        end
    end
    for _, obj in ipairs(Workspace:GetDescendants()) do
        if (obj:IsA("Folder") or obj:IsA("Model")) and tostring(obj.Name):lower() == "spirits" then
            table.insert(foundSpiritFolders, obj)
        end
    end
    local seen = {}
    for _, folder in ipairs(foundSpiritFolders) do
        if folder and not seen[folder] then
            seen[folder] = true
            for _, spirit in ipairs(folder:GetChildren()) do
                if spirit:IsA("Model") then
                    local rep = findRepresentativePart(spirit) or spirit
                    if rep then table.insert(spirits, rep) end
                end
            end
        end
    end
    return spirits
end

-- ESP logic
local espMachinesOn = false
local espSpiritsOn = false
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

local function cleanupDeadHighlights()
    for model, hl in pairs(espMap) do
        if not model or not model.Parent then
            pcall(function() if hl then hl:Destroy() end end)
            espMap[model] = nil
        end
    end
end

-- Main ESP loop
task.spawn(function()
    while true do
        cleanupDeadHighlights()
        -- Machines ESP
        if espMachinesOn then
            local parts = gatherMachineParts()
            for _, rep in ipairs(parts) do
                local model = rep and rep:IsA("BasePart") and rep.Parent or rep
                if model and model:IsA("Model") and not espMap[model] then
                    createHighlightForModel(model, Color3.fromRGB(0,200,0))
                end
            end
        end
        -- Spirits ESP
        if espSpiritsOn then
            local spirits = gatherSpiritModels()
            for _, rep in ipairs(spirits) do
                local model = rep and rep:IsA("BasePart") and rep.Parent or rep
                if model and model:IsA("Model") and not espMap[model] then
                    createHighlightForModel(model, Color3.fromRGB(200,0,200))
                end
            end
        end
        -- If both off, clear highlights
        if not espMachinesOn and not espSpiritsOn then
            clearAllHighlights()
        end
        task.wait(1)
    end
end)


local staminaFlag = false
local AddStamina
pcall(function()
    AddStamina = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Gameplay"):WaitForChild("AddStamina")
end)

task.spawn(function()
    while true do
        if staminaFlag and AddStamina then
            pcall(function() firesignal(AddStamina.OnClientEvent, 45) end)
        end
        task.wait(0.2)
    end
end)

local function teleportToPart(part, yOffset)
    yOffset = yOffset or 5
    if not part then return false end
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local hrp = char:FindFirstChild("HumanoidRootPart") or char:WaitForChild("HumanoidRootPart", 2)
    if not hrp then return false end
    pcall(function() hrp.CFrame = part.CFrame + Vector3.new(0, yOffset, 0) end)
    return true
end

local function teleportToElevator()
    local elevator = Workspace:FindFirstChild("Elevator")
    if not elevator then return false end
    local spawn = elevator:FindFirstChild("ElevatorSpawn") or elevator:FindFirstChild("Elevator1") or elevator:FindFirstChild("Elevator2") or findRepresentativePart(elevator)
    if not spawn then return false end
    return teleportToPart(spawn, 2)
end


-- // AutoSkill
do
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
end

-- Toggle variable (link this to your Rayfield toggle)
local autoFarmEnabled = false

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

-- === SKILL CHECK BYPASS ===
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

-- === HELPERS ===
local function isValidMachine(model)
    if not model or not model:IsA("Model") then return false end
    local hasPrompt = false
    local hasPart = false
    for _, obj in ipairs(model:GetDescendants()) do
        if obj:IsA("ProximityPrompt") then hasPrompt = true end
        if obj:IsA("BasePart") then hasPart = true end
    end
    return hasPrompt and hasPart
end

local function gatherMachines()
    local machines = {}
    if Workspace:FindFirstChild("Floor") then
        for _, obj in ipairs(Workspace.Floor:GetDescendants()) do
            if obj:IsA("Model") and obj.Name:lower():find("machine") then
                if isValidMachine(obj) then
                    table.insert(machines, obj)
                end
            end
        end
    end
    return machines
end

local function teleportToPart(part, offset)
    local char = game.Players.LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if root and part then
        root.CFrame = part.CFrame + Vector3.new(0, (offset or 2), 0)
    end
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

-- === MAIN AFK AUTO FARM LOOP ===
task.spawn(function()
    while true do
        if autoFarmEnabled then
            local machines = gatherMachines()
            local i = 1

            while i <= #machines do
                if autoFarmEnabled then
                    local machine = machines[i]
                    local repPart = machine:FindFirstChild("HumanoidRootPart") or machine.PrimaryPart or machine:FindFirstChildWhichIsA("BasePart", true)
                    if repPart then
                        teleportToPart(repPart, 2)
                        interactWithMachine(machine)

                        -- Incremental wait for repair (117s)
                        local repairTime = 117
                        local elapsed = 0
                        while elapsed < repairTime do
                            if autoFarmEnabled then
                                task.wait(0.5)
                                elapsed = elapsed + 0.5
                            else
                                task.wait(0.5)
                            end
                        end
                    end
                    i = i + 1
                else
                    task.wait(0.5)
                end
            end

            -- Teleport to elevator continuously after finishing floor
            while autoFarmEnabled do
                local elevator = findElevatorSpawn()
                if elevator then
                    teleportToPart(elevator, 2)
                end
                task.wait(1)

                -- Check if new floor exists by gathering machines again
                local newMachines = gatherMachines()
                if #newMachines > 0 then
                    break -- new floor found, loop will continue
                end
            end
        else
            task.wait(1)
        end
    end
end)

local Toggle = Tab1:CreateToggle({Name = "Infinite Stamina", CurrentValue = false, Callback = function(v) staminaFlag = v end})

local Button = Tab1:CreateButton({Name = "Teleport to Elevator", Callback = teleportToElevator})

local Toggle = Tab1:CreateToggle({
    Name = "Auto Farm (Experimental)",
    CurrentValue = false,
    Flag = "AutoFarmToggle",
    Callback = function(value)
        autoFarmEnabled = value
    end
})

local Toggle = Tab2:CreateToggle({Name = "ESP Machines", CurrentValue = false, Callback = function(v) espMachinesOn = v; if not v then clearAllHighlights() end end})
local Toggle = Tab2:CreateToggle({Name = "ESP Spirits", CurrentValue = false, Callback = function(v) espSpiritsOn = v; if not v then clearAllHighlights() end end})

game.StarterGui:SetCore("SendNotification", {
    Title = "Twilight",
    Text = "Auto Skillcheck is Working!",
    Duration = 8
})
