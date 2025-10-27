local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Twilight Area | i got nothing to say",
    Icon = 0,
    LoadingTitle = "No more problems",
    LoadingSubtitle = "by Unknown dude",
    Theme = "DarkBlue"
})

local Tab1 = Window:CreateTab("Main", 130695581754590)
local Tab2 = Window:CreateTab("ESP", 130695581754590)

-- ===== HELPERS =====
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
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if root and part then
        root.CFrame = part.CFrame * CFrame.new(0, 2, offset or 2)
    end
end

local function interactWithModel(model)
    if not model or not model.Parent then return end
    for _, p in ipairs(model:GetDescendants()) do
        if p:IsA("ProximityPrompt") then
            fireproximityprompt(p)
            return
        elseif p:IsA("ClickDetector") then
            fireclickdetector(p)
            return
        end
    end
end

local function isFuseLike(name)
    if not name then return false end
    local s = tostring(name):lower()
    return s:find("fuse") or s:find("fusebox") or s:find("fuse_box")
end

-- ===== GATHER OBJECTS =====
local function gatherItems()
    local items = {}
    if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Items") then
        local currencies = Workspace.Floor.Items:FindFirstChild("Currencies")
        if currencies then
            for _, item in ipairs(currencies:GetChildren()) do
                if item:IsA("Model") or item:IsA("BasePart") then
                    table.insert(items, item)
                end
            end
        end
    end
    return items
end

local function gatherMachineParts()
    local parts, folders = {}, {}
    if Workspace:FindFirstChild("Machines") then table.insert(folders, Workspace.Machines) end
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
    for _, folder in ipairs(folders) do
        for _, machine in ipairs(folder:GetChildren()) do
            if machine:IsA("Model") and not isFuseLike(machine.Name) then
                local rep = findRepresentativePart(machine)
                if rep then table.insert(parts, rep) end
            end
        end
    end
    return parts
end

local function findElevatorSpawn()
    local elevator = Workspace:FindFirstChild("Elevator")
    if not elevator then return nil end
    return elevator:FindFirstChild("ElevatorSpawn") or findRepresentativePart(elevator)
end

-- ===== GODMODE / Infinite Stamina =====
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

-- ===== AUTO SKILL CHECK =====
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

-- ===== GODMODE LOOP (HitPlayer removal) =====
task.spawn(function()
    while true do
        if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Spirits") then
            for _, folder in ipairs(Workspace.Floor.Spirits:GetChildren()) do
                for _, v in ipairs(folder:GetChildren()) do
                    if v.Name == "HitPlayer" then
                        v:Destroy()
                    end
                end
            end
        end
        task.wait(0.5)
    end
end)

-- ===== AUTO FARM LOOP =====
local autoFarmEnabled = false
task.spawn(function()
    while true do
        if autoFarmEnabled then
            -- Pick up items
            local items = gatherItems()
            for _, item in ipairs(items) do
                local rep = findRepresentativePart(item) or item
                teleportToPart(rep)
                task.wait(0.2)
                interactWithModel(item)
                task.wait(0.5)
            end

            -- Repair machines
            local machines = {}
            for _, part in ipairs(gatherMachineParts()) do
                if part and part.Parent:IsA("Model") then
                    table.insert(machines, part.Parent)
                end
            end

            for i, machine in ipairs(machines) do
                local rep = findRepresentativePart(machine)
                teleportToPart(rep)
                task.wait(0.2)
                interactWithModel(machine)
                local repairTime = (i == #machines) and 30 or 40
                local elapsed = 0
                while elapsed < repairTime and machine.Parent do
                    if not autoFarmEnabled then break end
                    task.wait(0.5)
                    elapsed = elapsed + 0.5
                end
            end

            -- Teleport to elevator
            local elevator = findElevatorSpawn()
            if elevator then teleportToPart(elevator, 2) end
            task.wait(2)
        else
            task.wait(1)
        end
    end
end)

-- ===== ESP =====
local espMachinesOn, espSpiritsOn = false, false
local espMap = {}

local function createHighlightForModel(model,color)
    if not model or not model.Parent or espMap[model] then return end
    local hl = Instance.new("Highlight")
    hl.Name = "TZ_HL"
    hl.Adornee = model
    hl.FillColor, hl.OutlineColor = color, color
    hl.FillTransparency = 0.55
    hl.Parent = workspace
    espMap[model]=hl
end

local function clearAllHighlights()
    for model, hl in pairs(espMap) do
        pcall(function() if hl then hl:Destroy() end end)
    end
    espMap={}
end

task.spawn(function()
    while true do
        for model, hl in pairs(espMap) do
            if not model or not model.Parent then
                pcall(function() if hl then hl:Destroy() end end)
                espMap[model]=nil
            end
        end

        if espMachinesOn then
            for _, machine in ipairs(gatherMachineParts()) do
                createHighlightForModel(machine.Parent, Color3.fromRGB(0,200,0))
            end
        end
        if espSpiritsOn and Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Spirits") then
            for _, folder in ipairs(Workspace.Floor.Spirits:GetChildren()) do
                for _, spirit in ipairs(folder:GetChildren()) do
                    createHighlightForModel(spirit, Color3.fromRGB(200,0,200))
                end
            end
        end
        task.wait(1)
    end
end)

-- ===== Rayfield Toggles =====
local Toggle1 = Tab1:CreateToggle({Name="Infinite Stamina", CurrentValue=false, Callback=function(v) staminaFlag=v end})
local Toggle2 = Tab1:CreateToggle({Name="Auto Farm (Experimental)", CurrentValue=false, Callback=function(v) autoFarmEnabled=v end})
local Button = Tab1:CreateButton({Name="Teleport to Elevator", Callback=function() teleportToPart(findElevatorSpawn(),2) end})

local ToggleESP1 = Tab2:CreateToggle({Name="ESP Machines", CurrentValue=false, Callback=function(v) espMachinesOn=v; if not v then clearAllHighlights() end end})
local ToggleESP2 = Tab2:CreateToggle({Name="ESP Spirits", CurrentValue=false, Callback=function(v) espSpiritsOn=v; if not v then clearAllHighlights() end end})

game.StarterGui:SetCore("SendNotification",{Title="Twilight", Text="Auto Skillcheck is working!", Duration=8})