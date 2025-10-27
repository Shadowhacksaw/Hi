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
   ConfigurationSaving = {Enabled = true, FolderName = nil, FileName = "Twilight"},
   Discord = {Enabled = false, Invite = "noinvitelink", RememberJoins = true},
   KeySystem = false,
   KeySettings = {Title = "c00hackk hub l key system", Subtitle = "key is backstorysoon", Note = "Key is backstorysoon", FileName = "Key", SaveKey = true, GrabKeyFromSite = false, Key = {"backstorysoon"}}
})

local Tab1 = Window:CreateTab("Main", 130695581754590)
local Tab2 = Window:CreateTab("Esp", 130695581754590)

-- ================= HELPERS =================
local function findRepresentativePart(model)
    if not model then return nil end
    if model:IsA("BasePart") then return model end
    local names = {"Front","front","Head","head","HumanoidRootPart","PrimaryPart"}
    for _, n in ipairs(names) do
        local f = model:FindFirstChild(n)
        if f and f:IsA("BasePart") then return f end
    end
    if model.PrimaryPart and model.PrimaryPart:IsA("BasePart") then return model.PrimaryPart end
    return model:FindFirstChildWhichIsA("BasePart", true)
end

local function isFuseLike(name)
    if not name then return false end
    local s = tostring(name):lower()
    return s:find("fuse") or s:find("fusebox") or s:find("fuse_box")
end

local function teleportToPart(part, offset)
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hrp and part then
        pcall(function() hrp.CFrame = part.CFrame + Vector3.new(0, offset or 2, 0) end)
    end
end

local function interactWithPrompt(obj)
    if obj and obj:IsA("ProximityPrompt") then
        fireproximityprompt(obj)
        return true
    end
    return false
end

-- ================= GATHER OBJECTS =================
local function gatherItems()
    local items = {}
    if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Items") then
        local currencies = Workspace.Floor.Items:FindFirstChild("Currencies")
        if currencies then
            for _, item in ipairs(currencies:GetChildren()) do
                if item:FindFirstChildWhichIsA("ProximityPrompt") then
                    table.insert(items, item)
                end
            end
        end
    end
    return items
end

local function gatherMachines()
    local machines = {}
    if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Machines") then
        for _, machine in ipairs(Workspace.Floor.Machines:GetChildren()) do
            if not isFuseLike(machine.Name) and machine:FindFirstChildWhichIsA("ProximityPrompt") then
                table.insert(machines, machine)
            end
        end
    end
    return machines
end

local function findElevatorSpawn()
    local elevator = Workspace:FindFirstChild("Elevator")
    if not elevator then return nil end
    return elevator:FindFirstChild("ElevatorSpawn") 
        or elevator:FindFirstChild("Elevator1") 
        or elevator:FindFirstChild("Elevator2") 
        or findRepresentativePart(elevator)
end

-- ================= GODMODE =================
local autoFarmEnabled = false
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

-- ================= AUTO SKILLCHECK =================
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

-- ================= INFINITE STAMINA =================
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

-- ================= MAIN AUTO FARM LOOP =================
task.spawn(function()
    while true do
        if autoFarmEnabled then
            -- 1️⃣ Pick up items first
            local items = gatherItems()
            for _, item in ipairs(items) do
                if not autoFarmEnabled then break end
                local part = findRepresentativePart(item)
                if part then
                    teleportToPart(part, 2)
                    local prompt = item:FindFirstChildWhichIsA("ProximityPrompt", true)
                    interactWithPrompt(prompt)
                    task.wait(0.5)
                end
            end

            -- 2️⃣ Interact with machines
            local machines = gatherMachines()
            for _, machine in ipairs(machines) do
                if not autoFarmEnabled then break end
                local part = findRepresentativePart(machine)
                if part then
                    teleportToPart(part, 2)
                    local prompt = machine:FindFirstChildWhichIsA("ProximityPrompt", true)
                    interactWithPrompt(prompt)
                    -- wait for repair
                    local elapsed = 0
                    local repairTime = 117
                    while elapsed < repairTime and machine.Parent do
                        if not autoFarmEnabled then break end
                        task.wait(0.5)
                        elapsed = elapsed + 0.5
                    end
                end
            end

            -- 3️⃣ Teleport to elevator and wait for next floor
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

-- ================= ESP =================
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

task.spawn(function()
    while true do
        cleanupDeadHighlights()
        if espMachinesOn then
            local machines = gatherMachines()
            for _, m in ipairs(machines) do
                createHighlightForModel(m, Color3.fromRGB(0,200,0))
            end
        end
        if espSpiritsOn then
            if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Spirits") then
                for _, folder in ipairs(Workspace.Floor.Spirits:GetChildren()) do
                    for _, spirit in ipairs(folder:GetChildren()) do
                        createHighlightForModel(spirit, Color3.fromRGB(200,0,200))
                    end
                end
            end
        end
        task.wait(1)
    end
end)

-- ================= TOGGLES =================
Tab1:CreateToggle({Name = "Infinite Stamina", CurrentValue = false, Callback = function(v) staminaFlag = v end})
Tab1:CreateButton({Name = "Teleport to Elevator", Callback = function() local e = findElevatorSpawn(); if e then teleportToPart(e,2) end end})
Tab1:CreateToggle({Name = "Auto Farm (Experimental)", CurrentValue = false, Callback = function(v) autoFarmEnabled = v end})
Tab2:CreateToggle({Name = "ESP Machines", CurrentValue = false, Callback = function(v) espMachinesOn = v; if not v then clearAllHighlights() end end})
Tab2:CreateToggle({Name = "ESP Spirits", CurrentValue = false, Callback = function(v) espSpiritsOn = v; if not v then clearAllHighlights() end end})

game.StarterGui:SetCore("SendNotification", {
    Title = "Twilight",
    Text = "Auto Skillcheck is Working!",
    Duration = 8
})