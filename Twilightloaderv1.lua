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

local function teleportToPart(part, yOffset)
    yOffset = yOffset or 2
    if not part then return end
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local hrp = char:FindFirstChild("HumanoidRootPart") or char:WaitForChild("HumanoidRootPart",2)
    if hrp then
        hrp.CFrame = part.CFrame + Vector3.new(0,yOffset,0)
    end
end

local function interactWithModel(model)
    for _, obj in ipairs(model:GetDescendants()) do
        if obj:IsA("ProximityPrompt") then
            fireproximityprompt(obj)
            return
        elseif obj:IsA("ClickDetector") then
            fireclickdetector(obj)
            return
        end
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

local function gatherSpirits()
    local spirits = {}
    if Workspace:FindFirstChild("Floor") and Workspace.Floor:FindFirstChild("Spirits") then
        for _, folder in ipairs(Workspace.Floor.Spirits:GetChildren()) do
            for _, spirit in ipairs(folder:GetChildren()) do
                if spirit:IsA("Model") then
                    table.insert(spirits, spirit)
                end
            end
        end
    end
    return spirits
end

local function findElevatorSpawn()
    local elevator = Workspace:FindFirstChild("Elevator")
    if not elevator then return nil end
    return elevator:FindFirstChild("ElevatorSpawn") or findRepresentativePart(elevator)
end

-- ===== AUTO SKILL CHECK BYPASS =====
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

-- ===== AUTO FARM WITH SPIRIT AWARENESS =====
local autoFarmEnabled = false
local infiniteStamina = false

task.spawn(function()
    local currentMachineIndex = 1
    local machines = gatherMachines()
    
    while true do
        if autoFarmEnabled then
            local char = LocalPlayer.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            
            -- 1️⃣ Check for nearby spirits
            local spiritNearby = false
            if hrp then
                for _, spirit in ipairs(gatherSpirits()) do
                    local rep = findRepresentativePart(spirit)
                    if rep and (rep.Position - hrp.Position).Magnitude <= 10 then
                        spiritNearby = true
                        break
                    end
                end
            end
            
            if spiritNearby then
                -- Go underground to elevator
                local elevator = findElevatorSpawn()
                if elevator then
                    teleportToPart(elevator, -10)
                end
                task.wait(1)
            else
                -- 2️⃣ Pick up items
                for _, item in ipairs(gatherItems()) do
                    local rep = findRepresentativePart(item) or item
                    if rep then
                        teleportToPart(rep,2)
                        interactWithModel(item)
                        task.wait(0.5)
                    end
                end

                -- 3️⃣ Repair machines, resume where left off
                machines = gatherMachines()
                if #machines > 0 and currentMachineIndex <= #machines then
                    local machine = machines[currentMachineIndex]
                    local rep = findRepresentativePart(machine)
                    if rep then
                        teleportToPart(rep,2)
                        interactWithModel(machine)
                        task.wait(40)
                    end
                    currentMachineIndex = currentMachineIndex + 1
                    if currentMachineIndex > #machines then
                        currentMachineIndex = 1
                    end
                end
            end
        else
            task.wait(1)
        end
        task.wait(0.5)
    end
end)

-- ===== INFINITE STAMINA =====
local AddStamina
pcall(function()
    AddStamina = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Gameplay"):WaitForChild("AddStamina")
end)
task.spawn(function()
    while true do
        if infiniteStamina and AddStamina then
            pcall(function() firesignal(AddStamina.OnClientEvent,45) end)
        end
        task.wait(0.2)
    end
end)

-- ===== ESP =====
local espMachinesOn, espSpiritsOn = false,false
local espMap = {}

local function createHighlightForModel(model,color)
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

task.spawn(function()
    while true do
        for model, hl in pairs(espMap) do
            if not model or not model.Parent then
                pcall(function() if hl then hl:Destroy() end end)
                espMap[model]=nil
            end
        end
        if espMachinesOn then
            for _, m in ipairs(gatherMachines()) do
                createHighlightForModel(m, Color3.fromRGB(0,200,0))
            end
        end
        if espSpiritsOn then
            for _, s in ipairs(gatherSpirits()) do
                createHighlightForModel(s, Color3.fromRGB(200,0,200))
            end
        end
        task.wait(1)
    end
end)

-- ===== RAYFIELD TOGGLES =====
local Toggle = Tab1:CreateToggle({Name="Infinite Stamina", CurrentValue=false, Callback=function(v) infiniteStamina=v end})
local Toggle = Tab1:CreateToggle({Name="Auto Farm (Experimental)", CurrentValue=false, Callback=function(v) autoFarmEnabled=v  end})
local Button = Tab1:CreateButton({Name = "Teleport to Elevator", Callback = teleportToPart(findElevatorSpawn(),2)
end})

local Toggle = Tab2:CreateToggle({Name="ESP Machines", CurrentValue=false, Callback=function(v) espMachinesOn=v; if not v then clearAllHighlights() end end})
local Toggle = Tab2:CreateToggle({Name="ESP Spirits", CurrentValue=false, Callback=function(v) espSpiritsOn=v; if not v then clearAllHighlights() end end})

game.StarterGui:SetCore("SendNotification",{Title="Twilight", Text="Auto Skillcheck is working!", Duration=8})
