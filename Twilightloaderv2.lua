local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Twilight Area | AFK Helper",
    Icon = 0,
    LoadingTitle = "No more problems",
    LoadingSubtitle = "by Unknown dude",
    Theme = "DarkBlue",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {Enabled = true, FolderName = nil, FileName = "Twilight"},
    Discord = {Enabled = false, Invite = "noinvitelink", RememberJoins = true},
    KeySystem = false,
    KeySettings = {Title = "c00hackk hub | Key System", Subtitle = "key is backstorysoon", Note = "Key is backstorysoon", FileName = "Key", SaveKey = true, GrabKeyFromSite = false, Key = {"backstorysoon"}}
})

local Tab1 = Window:CreateTab("Main", 130695581754590)
local Tab2 = Window:CreateTab("ESP", 130695581754590)

-- ===== Helpers =====
local function teleportToPart(part, yOffset)
    yOffset = yOffset or 2
    if not part then return end
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local hrp = char:FindFirstChild("HumanoidRootPart") or char:WaitForChild("HumanoidRootPart",2)
    if hrp then
        hrp.CFrame = part.CFrame + Vector3.new(0,yOffset,0)
    end
end

-- ✅ Interact using both ProximityPrompt and ClickDetector
local function interactWithModel(model)
    if not model or not model.Parent then return end

    -- ProximityPrompt
    local prompt = model:FindFirstChildWhichIsA("ProximityPrompt", true)
    if prompt then
        pcall(function() fireproximityprompt(prompt) end)
    end

    -- ClickDetector
    local click = model:FindFirstChildWhichIsA("ClickDetector", true)
    if click then
        pcall(function() click:FireClick(LocalPlayer) end)
    end
end

local function isFuseLike(name)
    if not name then return false end
    local s = tostring(name):lower()
    return s:find("fuse") or s:find("fusebox") or s:find("fuse_box")
end

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

local function gatherMachines()
    local machines = {}
    if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Machines") then
        for _, machine in ipairs(Workspace.Floor.Machines:GetChildren()) do
            if machine:IsA("Model") and not isFuseLike(machine.Name) then
                table.insert(machines, machine)
            end
        end
    end
    return machines
end

local function findElevatorSpawn()
    local elevator = Workspace:FindFirstChild("Elevator")
    if not elevator then return nil end
    return elevator:FindFirstChild("ElevatorSpawn") or elevator:FindFirstChildWhichIsA("BasePart",true)
end

-- ===== AutoSkillCheck =====
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

-- ===== Godmode / Infinite Stamina =====
local staminaFlag = false
local AddStamina
pcall(function()
    AddStamina = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Gameplay"):WaitForChild("AddStamina")
end)

task.spawn(function()
    while true do
        if staminaFlag and AddStamina then
            pcall(function() firesignal(AddStamina.OnClientEvent,45) end)
        end
        task.wait(0.2)
    end
end)

task.spawn(function()
    while true do
        if autoFarmEnabled then
            if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Spirits") then
                for _, folder in ipairs(Workspace.Floor.Spirits:GetChildren()) do
                    for _, v in ipairs(folder:GetChildren()) do
                        if v.Name == "HitPlayer" then
                            v:Destroy()
                        end
                    end
                end
            end
        end
        task.wait(0.5)
    end
end)

-- ===== AutoFarm =====
local autoFarmEnabled = false
task.spawn(function()
    while true do
        if autoFarmEnabled then
            -- 1️⃣ Pick up items first
            local items = gatherItems()
            for _, item in ipairs(items) do
                if not autoFarmEnabled then break end
                local repPart = item:FindFirstChildWhichIsA("BasePart") or item
                if repPart then
                    teleportToPart(repPart, 2)
                    interactWithModel(item)
                    task.wait(0.5)
                end
            end

            -- 2️⃣ Repair machines
            local machines = gatherMachines()
            for _, machine in ipairs(machines) do
                if not autoFarmEnabled then break end
                local repPart = machine:FindFirstChildWhichIsA("BasePart", true)
                if repPart then
                    teleportToPart(repPart, 2)
                    interactWithModel(machine)
                    -- Wait 117 seconds for repair
                    local repairTime = 117
                    local elapsed = 0
                    while elapsed < repairTime and machine.Parent do
                        if not autoFarmEnabled then break end
                        task.wait(0.5)
                        elapsed = elapsed + 0.5
                    end
                end
            end

            -- 3️⃣ Teleport to elevator after floor
            while autoFarmEnabled do
                local elevator = findElevatorSpawn()
                if elevator then
                    teleportToPart(elevator, 2)
                end
                task.wait(1)
                local newMachines = gatherMachines()
                if #newMachines > 0 then break end
            end
        else
            task.wait(1)
        end
    end
end)

-- ===== Rayfield Toggles =====
local Toggle = Tab1:CreateToggle({Name="Infinite Stamina", CurrentValue=false, Callback=function(v) staminaFlag=v end})
local Button = Tab1:CreateButton({Name="Teleport to Elevator", Callback=function() teleportToPart(findElevatorSpawn(),2) end})
local Toggle = Tab1:CreateToggle({Name="Auto Farm (Experimental)", CurrentValue=false, Flag="AutoFarmToggle", Callback=function(v) autoFarmEnabled=v end})

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
            for _, machine in ipairs(gatherMachines()) do
                createHighlightForModel(machine, Color3.fromRGB(0,200,0))
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

local Toggle = Tab2:CreateToggle({Name="ESP Machines", CurrentValue=false, Callback=function(v) espMachinesOn=v; if not v then clearAllHighlights() end end})
local Toggle = Tab2:CreateToggle({Name="ESP Spirits", CurrentValue=false, Callback=function(v) espSpiritsOn=v; if not v then clearAllHighlights() end end})

game.StarterGui:SetCore("SendNotification",{Title="Twilight", Text="Auto Skillcheck + AFK Farm Ready!", Duration=8})