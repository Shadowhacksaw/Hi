if getgenv then
    getgenv().dod_developer_key = "CoolArea"
else
    _G.dod_developer_key = "CoolArea"
end

function ConvertDropdownValue(tbl)
    if type(tbl) == "table" then
        for _,element in ipairs(tbl) do
            return tostring(element)
        end
    else
        return tostring(tbl)
    end
end

local WebHandler = loadstring(game:HttpGet("https://raw.githubusercontent.com/NewNexer/NexerHub/refs/heads/main/Web-Module.luau"))()
local MainModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/NewNexer/NexerHub/refs/heads/main/DOD/Module.luau"))()
local GetRequestMethod = function()
    local iqnd = request or http_request or HttpPost or (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request) or (KRNL and KRNL.request) or (Xeno and Xeno.request) or (game and game.HttpService and game.HttpService.RequestAsync)
    if iqnd then
        return iqnd
    else
        return nil
    end
end
function CopyLink(link)
    local url = tostring(link)
    setclipboard(url)
    Notify("Success!", "Copied Link!", 4, true)
end
function OpenLink(link)
    local url = tostring(link)
    if WebHandler then
        local suc, err = pcall(function() WebHandler:OpenRBX(url) end) if not suc then CopyLink(url) end
    else
        CopyLink(url)
    end
end

local Rayfield
local RAYFIELD_SUCCESS, RAYFIELD_FAIL = pcall(function()
    Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
end)
if not RAYFIELD_SUCCESS then
    local RAYFIELD_SUCCESS, RAYFIELD_FAIL = pcall(function()
        Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))()
    end)
    if not RAYFIELD_SUCCESS then
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Failed to launch rayfield.",
            Text = "Please check your internet connection, or try using VPN.",
            Icon = "rbxassetid://125704683916878",
            Duration = 10,
        })
        return
    end
end

function Notify(title, content, time, mode)
    time = time or 4
    mode = mode or false
    if mode == true then
        img = 136186846844342
    elseif mode == false then
        img = 71508738660632
    end
    Rayfield:Notify({
        Title = title,
        Content = content,
        Duration = time,
        Image = img,
        Actions = {},
    })
end

function DestroyRayfield()
    task.spawn(function()
        pcall(function()
            Window:Destroy()
        end)
        pcall(function()
            Rayfield:Destroy()
        end)
        pcall(function()
            game.CoreGui.Rayfield:Destroy()
        end)
        pcall(function()
            game.CoreGui.RayField:Destroy()
        end)
        pcall(function()
            game.CoreGui.OldRayfield:Destroy()
        end)
        pcall(function()
            game.CoreGui.OldRayField:Destroy()
        end)
    end)
end

local Window = Rayfield:CreateWindow({
    Name = ""..((getgenv and getgenv().dod_developer_key) or ((_G.dod_developer_key ~= nil and _G.dod_developer_key) or "Unknown")).." Hub : Die Of Death",
    Icon = 0,    
    LoadingTitle = "CA:DOD",
    LoadingSubtitle = "by unknown dude",
    Theme = "DarkBlue",
    DisableRayfieldPrompts = true,
    DisableBuildWarnings = true,
    ConfigurationSaving = {
        Enabled = false,
        FolderName = "",
        FileName = ""
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "Verify yourself firstly!",
        Subtitle = "Key Needed!",
        Note = "The key is ''cheese''",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"cheese"}
    }
})

-- ===================== TAB 1: Stamina =====================
pcall(function()
local LocalPlayer, LP = game.Players.LocalPlayer, game.Players.LocalPlayer
local Character, Char
local HumanoidRootPart, HRP
local Humanoid, Hum
pcall(function()
    Character, Char = LocalPlayer.Character, LocalPlayer.Character
end)
pcall(function()
    HumanoidRootPart, HRP = Character.HumanoidRootPart, Character.HumanoidRootPart
end)
pcall(function()
    Humanoid, Hum = Character.Humanoid, Character.Humanoid
end)

LocalPlayer.CharacterAdded:Connect(function()
    pcall(function()
        Character, Char = nil, nil
        HumanoidRootPart, HRP = nil, nil
        Humanoid, Hum = nil, nil
        task.wait()
        repeat task.wait() until LocalPlayer.Character
        Character, Char = LocalPlayer.Character, LocalPlayer.Character
        task.wait()
        repeat task.wait() until Character:FindFirstChild("HumanoidRootPart")
        HumanoidRootPart, HRP = Character.HumanoidRootPart, Character.HumanoidRootPart
        task.wait()
        repeat task.wait() until Character:FindFirstChild("Humanoid")
        Humanoid, Hum = Character.Humanoid, Character.Humanoid
    end)
end)

local Tab_1 = Window:CreateTab("Stamina",0)
Tab_1:CreateParagraph({Title = "Stamina", Content = "You can change your stamina properties here."})
Tab_1:CreateSection("Fast Functions")

function SetStaminaProperty(property, value)
    if property == "MaxStamina" then
        Char:SetAttribute("MaxStamina", value)
    elseif property == "Stamina" then
        if StaminaModule then
            StaminaModule["Stamina"] = value
        end
    elseif property == "Fatigue" then
        Char:SetAttribute("Fatigue", value)
    elseif property == "WalkSpeed" then
        Hum.WalkSpeed = value
    elseif property == "SprintSpeed" then
        Char:SetAttribute("SprintSpeed", value)
    elseif property == "WalkSpeed" then
        Char:SetAttribute("WalkSpeed", value)
    elseif property == "CanJump" then
        if value == true then Hum.JumpPower = 50 else Hum.JumpPower = 0 end
    end
end

Tab_1:CreateButton({Name = "Infinite Stamina"; Callback = function()
    SetStaminaProperty("MaxStamina", (1/0))
    SetStaminaProperty("Stamina", (1/0))
end; })

Tab_1:CreateButton({Name = "Become Fast"; Callback = function()
    Humanoid.WalkSpeed = 50
    SetStaminaProperty("SprintSpeed", 70)
end; })

Tab_1:CreateButton({Name = "Enable/Disable Jump"; Callback = function()
    if Hum.JumpPower == 0 then
        SetStaminaProperty("CanJump", true)
    else
        SetStaminaProperty("CanJump", false)
    end
end; })

Tab_1:CreateToggle({Name = "No Stamina Loss"; CurrentValue = false; Callback = function(Value)
    NoStaminaLoss = Value
    if NoStaminaLoss == true then
        repeat task.wait(0.003)
            if Character and Character:GetAttribute("MaxStamina") then
                SetStaminaProperty("Stamina", Character:GetAttribute("MaxStamina"))
            end
        until NoStaminaLoss == false
    end
end; })

Tab_1:CreateToggle({Name = "No Fatigue"; CurrentValue = false; Callback = function(Value)
    NoFatigue = Value
    if NoFatigue == true then
        repeat task.wait(0.003)
            if Character and Character:GetAttribute("Fatigue") and Character:GetAttribute("Fatigue") == true then
                SetStaminaProperty("Fatigue", false)
            end
        until NoFatigue == false
    end
end; })

Tab_1:CreateSection("Advanced")
Tab_1:CreateInput({Name = "Max Stamina"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = true; Callback = function(Value)
    SetStaminaProperty("MaxStamina", tonumber(Value))
end; })

Tab_1:CreateInput({Name = "Stamina"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = true; Callback = function(Value)
    SetStaminaProperty("Stamina", tonumber(Value))
end; })

Tab_1:CreateInput({Name = "Walk Speed"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = true; Callback = function(Value)
    SetStaminaProperty("WalkSpeed", tonumber(Value))
end; })

Tab_1:CreateInput({Name = "Sprint Speed"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = true; Callback = function(Value)
    SetStaminaProperty("SprintSpeed", tonumber(Value))
end; })

Tab_1:CreateSection("Auto Injection")
local AI_MaxStamina, AI_WalkSpeed, AI_SprintSpeed, AutoInjectStamina

Tab_1:CreateLabel("Stamina settings will automatically be applied to your character 21.5 seconds after the round starts.")

Tab_1:CreateToggle({Name = "Auto Inject"; CurrentValue = false; Callback = function(Value)
    AutoInjectStamina = Value
end; })

Tab_1:CreateInput({Name = "Max Stamina"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
    AI_MaxStamina = Value
end; })

Tab_1:CreateInput({Name = "Walk Speed"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
    AI_WalkSpeed = Value
end; })

Tab_1:CreateInput({Name = "Sprint Speed"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
    AI_SprintSpeed = Value
end; })

game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams").DescendantAdded:Connect(function(descendant)
    task.wait()
    if descendant.Name == ""..LP.Name.."" and not descendant.Parent.Name == "Ghost" and AutoInjectStamina == true then
        task.wait(21.5)
        pcall(function()
            SetStaminaProperty("MaxStamina", AI_MaxStamina)
        end)
        pcall(function()
            SetStaminaProperty("Stamina", AI_MaxStamina)
        end)
        pcall(function()
            SetStaminaProperty("WalkSpeed", AI_WalkSpeed)
        end)
        pcall(function()
            SetStaminaProperty("SprintSpeed", AI_SprintSpeed)
        end)
    end
end)
end) -- end Tab 1