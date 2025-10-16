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
-- ===================== TAB 2: Emotes =====================
pcall(function()
local Tab_2 = Window:CreateTab("Emotes",0)
Tab_2:CreateParagraph({Title = "Emotes", Content = "Functions that are related to emotes."})
Tab_2:CreateSection("ITZZZZ PARTY TIME!!!!")

local LocalPlayer = game.Players.LocalPlayer
local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

Tab_2:CreateButton({Name = "Open Emote Selection"; Callback = function()
    pcall(function()
        LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("EmoteSelection").Visible = true
        LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("EmoteSelection").Active = true
    end)
end; })

Tab_2:CreateButton({Name = "Use Dance"; Callback = function()
    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Emote"):FireServer("Dance")
    end)
end; })

Tab_2:CreateButton({Name = "Use Squingle"; Callback = function()
    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Emote"):FireServer("Squingle")
    end)
end; })

Tab_2:CreateButton({Name = "Use Gangnam Style"; Callback = function()
    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Emote"):FireServer("Gangnam Style")
    end)
end; })

Tab_2:CreateButton({Name = "Use PBJ"; Callback = function()
    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Emote"):FireServer("PBJ")
    end)
end; })

Tab_2:CreateButton({Name = "Use Tornado"; Callback = function()
    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Emote"):FireServer("Tornado")
    end)
end; })

Tab_2:CreateButton({Name = "Use Rainbow Waves ( NO VFX / SFX )"; Callback = function()
    pcall(function()
        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://75513960644342"
        if Humanoid then
            local planim = Humanoid:LoadAnimation(anim)
            planim:Play()
            local song = Instance.new("Sound")
            song.Volume = 1.5
            song.Looped = true
            song.SoundId = "rbxassetid://137048834753046"
            song.Parent = HumanoidRootPart
            song:Play()
            local TooLate = false
            LocalPlayer.CharacterAdded:Once(function()
                if TooLate then return end
                TooLate = true
                song:Destroy()
                planim:Stop()
                anim:Destroy()
            end)
            Humanoid.Running:Once(function()
                if TooLate then return end
                TooLate = true
                song:Destroy()
                planim:Stop()
                anim:Destroy()
            end)
        end
    end)
end; })

end)
-- ===================== TAB 3: Abilities =====================
pcall(function()
local AbilityNames = {"Cloak","Punch","Taunt","BonusPad","Block","Caretaker","Dash","Hotdog","Revolver","Adrenaline","Banana"}

local AbilityDatas = {
    ["Adrenaline"] = {Name = "Adrenaline",InputShown = "",Tip = "Get a temporary speed boost for 6 seconds, highlighting you to your teamates and slowing you down after it\'s over.",Cooldown = 35,Icon = "",DisplayName = "Adrenaline"},
    ["Punch"] = {Name = "Punch",InputShown = "",Tip = "Swing foward stunning any killers hit for 3 seconds, if missed you\'ll get severe endlag.",Cooldown = 40,Icon = "",DisplayName = "Punch"},
    ["Caretaker"] = {Name = "Caretaker",InputShown = "",Tip = "Splash a potion infront of you, any survivors hit will heal 20 HP in total. Having this ability makes you lose 75 max health though!",Cooldown = 60,Icon = "",DisplayName = "Caretaker"},
    ["Cloak"] = {Name = "Cloak",InputShown = "",Tip = "Becoming heavily slowed but invisible for a short amount of time, Killers can still hit you though!",Cooldown = 50,Icon = "",DisplayName = "Cloak"},
    ["Block"] = {Name = "Block",InputShown = "",Tip = "Try blocking any form of damage, if successful heal 10 HP, get a speed boost and negate all the damage.",Cooldown = 40,Icon = "",DisplayName = "Block"},
    ["Dash"] = {Name = "Dash",InputShown = "",Tip = "Dash foward, after you will get fatigue for 2 seconds which slows stamina regeneration and makes it drain faster.",Cooldown = 20,Icon = "",DisplayName = "Dash"},
    ["BonusPad"] = {Name = "BonusPad",InputShown = "",Tip = "Build a temporary speed pad that speeds up any survivor who steps on it. Having this ability makes you lose 10 max health though!",Cooldown = 25,Icon = "",DisplayName = "BonusPad"},
    ["Hotdog"] = {Name = "Hotdog",InputShown = "",Tip = "Eat a hotdog, healing 15 HP at the cost of 10 stamina.",Cooldown = 15,Icon = "",DisplayName = "Hotdog"},
    ["Revolver"] = {Name = "Revolver",InputShown = "",Tip = "Shoot with your revolver stunning any killers hit for 2 seconds, you\'ll have to reload after. Having this ability makes you lose 20 max health though!",Cooldown = 45,Icon = "",DisplayName = "Revolver"},
    ["Taunt"] = {Name = "Taunt",InputShown = "",Tip = "Taunt the killer gaining a forcefield, highlighting the killer, and slowing them down for 5 seconds or until you\'re hit for the duration of the effect.",Cooldown = 30,Icon = "",DisplayName = "Taunt"},
    ["Banana"] = {Name = "Banana",InputShown = "",Tip = "Toss a banana onto the floor, if the killer or the civilian who made it touch the banana, they will slip and be briefly stunned, the banana disappears after.",Cooldown = 35,Icon = "",DisplayName = "Banana"},
}

local LocalPlayer = game.Players.LocalPlayer
local AbilityModule, UIModule
pcall(function()
    AbilityModule = require(LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Client"):WaitForChild("Modules"):WaitForChild("Ability"))
end)
pcall(function()
    UIModule = require(LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Client"):WaitForChild("Modules"):WaitForChild("UI"))
end)

local Tab_3 = Window:CreateTab("Abilities",0)
Tab_3:CreateParagraph({Title = "Abilities", Content = "You can give yourself abilities or cards with abilities."})
Tab_3:CreateSection("Get Ability")

local ChoosenAbility = "Block"
Tab_3:CreateDropdown({Name = "Choose Ability"; Options = AbilityNames; CurrentOption = "Block"; MultiSelection = false; Callback = function(Value)
    ChoosenAbility = ConvertDropdownValue(Value)
end; })
Tab_3:CreateButton({Name = "Get Choosen Ability"; Callback = function()
    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(ChoosenAbility)
        if AbilityModule and AbilityDatas[ChoosenAbility] then
            AbilityModule.CreateAbility(AbilityDatas[ChoosenAbility])
        end
    end)
end; })

Tab_3:CreateButton({Name = "Get All Abilities"; Callback = function()
    pcall(function()
        for _,ability in pairs(AbilityNames) do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(ability)
            if AbilityModule and AbilityDatas[ability] then
                AbilityModule.CreateAbility(AbilityDatas[ability])
            end
        end
    end)
end; })

Tab_3:CreateSection("Get Cards")

local CardSettings = {
    [1] = {[1]="Revolver",[2]="Caretaker"},
    [2] = {[1]="BonusPad",[2]="Caretaker"},
    [3] = {[1]="Revolver",[2]="Punch"}
}
Tab_3:CreateLabel("First Card Settings")
Tab_3:CreateDropdown({Name = "First Ability"; Options = AbilityNames; CurrentOption = "Revolver"; MultiSelection = false; Callback = function(Value)
    CardSettings[1][1] = ConvertDropdownValue(Value)
end; })
Tab_3:CreateDropdown({Name = "Second Ability"; Options = AbilityNames; CurrentOption = "Caretaker"; MultiSelection = false; Callback = function(Value)
    CardSettings[1][2] = ConvertDropdownValue(Value)
end; })

Tab_3:CreateLabel("Second Card Settings")
Tab_3:CreateDropdown({Name = "First Ability"; Options = AbilityNames; CurrentOption = "BonusPad"; MultiSelection = false; Callback = function(Value)
    CardSettings[2][1] = ConvertDropdownValue(Value)
end; })
Tab_3:CreateDropdown({Name = "Second Ability"; Options = AbilityNames; CurrentOption = "Caretaker"; MultiSelection = false; Callback = function(Value)
    CardSettings[2][2] = ConvertDropdownValue(Value)
end; })

Tab_3:CreateLabel("Third Card Settings")
Tab_3:CreateDropdown({Name = "First Ability"; Options = AbilityNames; CurrentOption = "Revolver"; MultiSelection = false; Callback = function(Value)
    CardSettings[3][1] = ConvertDropdownValue(Value)
end; })
Tab_3:CreateDropdown({Name = "Second Ability"; Options = AbilityNames; CurrentOption = "Punch"; MultiSelection = false; Callback = function(Value)
    CardSettings[3][2] = ConvertDropdownValue(Value)
end; })

Tab_3:CreateButton({Name = "Summon Chosen Cards"; Callback = function()
    pcall(function()
        if UIModule then
            UIModule.AbilitySelection(unpack(CardSettings))
        end
    end)
end; })

Tab_3:CreateSection("Spam Ability")

local SpamAbility = "Hotdog"
Tab_3:CreateDropdown({Name = "Ability to Spam"; Options = AbilityNames; CurrentOption = "Hotdog"; MultiSelection = false; Callback = function(Value)
    SpamAbility = ConvertDropdownValue(Value)
end; })

local AutoSpamAbility = false
Tab_3:CreateToggle({Name = "Spam Ability"; CurrentValue = false; Callback = function(Value)
    AutoSpamAbility = Value
    if AutoSpamAbility == true then
        spawn(function()
            while AutoSpamAbility do
                pcall(function()
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("UseAbility"):InvokeServer(SpamAbility)
                end)
                wait(0.1)
            end
        end)
    end
end; })

Tab_3:CreateSection("Auto Ability Injection")
local AI_Abilities, AutoInjectAbility

Tab_3:CreateLabel("Ability will automatically get equipped ( along side with their accessories ) 8 seconds after the round starts.")

Tab_3:CreateToggle({Name = "Auto Inject"; CurrentValue = false; Callback = function(Value)
    AutoInjectAbility = Value
end; })

Tab_3:CreateDropdown({Name = "Abilities"; Options = AbilityNames; CurrentOption = ""; MultiSelection = true; Callback = function(Value)
    AI_Abilities = Value
end; })

game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams").DescendantAdded:Connect(function(descendant)
    task.wait()
    if descendant.Name == LocalPlayer.Name and descendant.Parent.Name == "Survivor" and AutoInjectAbility == true then
        task.wait(8)
        pcall(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer("Taunt")
            if AI_Abilities then
                for _,ability in pairs(AI_Abilities) do
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(ability)
                    if AbilityModule and AbilityDatas[ability] then
                        AbilityModule.CreateAbility(AbilityDatas[ability])
                    end
                end
            end
        end)
    end
end)

end)
-- ===================== TAB 4: Visual =====================
pcall(function()
local Tab_4 = Window:CreateTab("Visual",0)
Tab_4:CreateParagraph({Title = "Visual", Content = "You can change some of the visual parts of the game here."})
Tab_4:CreateSection("ESP")

_G.ESPenabledHandler = false
_G.ESPtransHandler = 0.3
_G.ESPshowusers = true
_G.ESPshowhealth = true

function ChangeTransparency(trans)
    for i,v in pairs(game:GetService("CoreGui"):FindFirstChild("DOD_ESP_HANDLER"):GetDescendants()) do
        if v and v:IsA("BoxHandleAdornment") then
            v.Transparency = trans
        end
    end
end

Tab_4:CreateSlider({Name = "ESP Transparency (in %)"; Range = {0, 100}; Increment = 5; Suffix = "%"; CurrentValue = 30; Callback = function(Value)
    _G.ESPtransHandler = (tonumber(Value) / 100)
    ChangeTransparency(tonumber(_G.ESPtransHandler))
end; })

Tab_4:CreateToggle({Name = "Show Username"; CurrentValue = true; Callback = function(Value)
    _G.ESPshowusers = Value
end; })

Tab_4:CreateToggle({Name = "Show Health"; CurrentValue = true; Callback = function(Value)
    _G.ESPshowhealth = Value
end; })

local plradded_esp = nil
local plrremoved_esp = nil
Tab_4:CreateToggle({Name = "Turn On/Off ESP"; CurrentValue = false; Callback = function(Value)
    _G.ESPenabledHandler = Value
    if _G.ESPenabledHandler == true then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v and v ~= game:GetService("Players").LocalPlayer then
                CreateHighlight(v)
            end
        end
        plradded_esp = game:GetService("Players").PlayerAdded:Connect(function(plr)
            CreateHighlight(plr)
        end)
        plrremoved_esp = game:GetService("Players").PlayerRemoving:Connect(function(plr)
            if game:GetService("CoreGui"):WaitForChild("DOD_ESP_HANDLER"):FindFirstChild("sillyfolder_"..plr.Name) then
                game:GetService("CoreGui"):WaitForChild("DOD_ESP_HANDLER"):FindFirstChild("sillyfolder_"..plr.Name):Destroy()
            end
        end)
    elseif _G.ESPenabledHandler == false then
        if game:GetService("CoreGui"):FindFirstChild("DOD_ESP_HANDLER") then
            game:GetService("CoreGui"):FindFirstChild("DOD_ESP_HANDLER"):Destroy()
        end
        if plradded_esp ~= nil then
            plradded_esp:Disconnect()
            plradded_esp = nil
        end
        if plrremoved_esp ~= nil then
            plrremoved_esp:Disconnect()
            plrremoved_esp = nil
        end
    end
end; })

Tab_4:CreateSection("Gui Management ε=( o｀ω′)ノ")

Tab_4:CreateButton({Name = "Open Shop"; Callback = function()
    pcall(function()
        if UIModule and UIModule.OpenShop then
            UIModule.OpenShop()
        end
    end)
end; })

Tab_4:CreateToggle({Name = "Teammate Death Effect Enabled"; CurrentValue = true; Callback = function(Value)
    pcall(function()
        DeathEffectEnabled = Value
        if DeathEffectEnabled == true and UIModule then
            UIModule["TeamateDeathEffect"] = function()
                game:GetService("Lighting").TeamateDeathEffect.Enabled = true
                game:GetService("Lighting").TeamateDeathEffect.Contrast = 0
                game:GetService("Lighting").TeamateDeathEffect.TintColor = Color3.fromRGB(255, 255, 255)
                game:GetService("TweenService"):Create(game:GetService("Lighting").TeamateDeathEffect, TweenInfo.new(0.5), {
                    ["Contrast"] = 1
                }):Play()
                game:GetService("TweenService"):Create(game:GetService("Lighting").TeamateDeathEffect, TweenInfo.new(0.5), {
                    ["TintColor"] = Color3.fromRGB(255, 52, 52)
                }):Play()
                task.wait(0.5)
                game:GetService("TweenService"):Create(game:GetService("Lighting").TeamateDeathEffect, TweenInfo.new(2), {
                    ["Contrast"] = 0
                }):Play()
                game:GetService("TweenService"):Create(game:GetService("Lighting").TeamateDeathEffect, TweenInfo.new(2), {
                    ["TintColor"] = Color3.fromRGB(255, 255, 255)
                }):Play()
            end
            Notify("Success!", "Enabled!", 3, true)
        elseif DeathEffectEnabled == false and UIModule then
            UIModule["TeamateDeathEffect"] = function() return nil end
            Notify("Success!", "Disabled!", 3, true)
        end
    end)
end; })

local MoneyToGet = 10
local ReasonForMoney = "for surviving for atleast 60 seconds."

Tab_4:CreateSection("Money Giver ( Visual )")

Tab_4:CreateInput({Name = "Money amount"; PlaceholderText = "10"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
    MoneyToGet = tonumber(Value)
end; })

Tab_4:CreateInput({Name = "Reason for getting money"; PlaceholderText = "for surviving for atleast 60 seconds."; NumbersOnly = false; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
    ReasonForMoney = tostring(Value)
end; })

Tab_4:CreateButton({Name = "Give money"; Callback = function()
    pcall(function()
        local Template = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Client"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("PlayerPointsTemplate"):Clone()
        Template.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui").PlayerPoints
        Template.Frame.Title.Text = "<font color='rgb(255, 64, 67)'>"..tostring(MoneyToGet).." Points</font> Awarded "..tostring(ReasonForMoney)
        Template.Frame.Title.TextTransparency = 1
        Template.Frame.Title.UIStroke.Transparency = 1
        Template.Frame.Cash.ImageTransparency = 1
        game:GetService("Debris"):AddItem(Template, 10)
        game:GetService("TweenService"):Create(Template.Frame.Cash, TweenInfo.new(10, Enum.EasingStyle.Linear), {
            ["Rotation"] = 360
        }):Play()
        pcall(function()
            for _ = 0,5 do
                task.wait(0.2)
                local Title = Template.Frame.Title
                Title.TextTransparency = Title.TextTransparency - 0.2
                local Stroke = Template.Frame.Title.UIStroke
                Stroke.Transparency = Stroke.Transparency - 0.2
                local Cash = Template.Frame.Cash
                Cash.ImageTransparency = Cash.ImageTransparency - 0.2
            end
            task.wait(6)
            for _ = 0,5 do
                task.wait(0.5)
                local Title = Template.Frame.Title
                Title.TextTransparency = Title.TextTransparency + 0.2
                local Stroke = Template.Frame.Title.UIStroke
                Stroke.Transparency = Stroke.Transparency + 0.2
                local Cash = Template.Frame.Cash
                Cash.ImageTransparency = Cash.ImageTransparency + 0.2
            end
        end)
    end)
end; })

Tab_4:CreateSection("Skins")
end)
-- ===================== TAB 5: Anti / Immunities =====================
pcall(function()
local Tab_5 = Window:CreateTab("Anti / Immunities",0)
Tab_5:CreateParagraph({Title = "Anti / Immunities", Content = "You can get immunities to multiple things yeah."})
Tab_5:CreateSection("Server")

-- Example toggle: Anti-Artful Walls (you can add more toggles and logic as needed)
local AntiWalls = false
Tab_5:CreateToggle({Name = "Anti-Artful Walls"; CurrentValue = false; Callback = function(Value)
    AntiWalls = Value
    if AntiWalls == true then
        for i,v in pairs(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Other"):GetDescendants()) do
            if v and v.Name == "HumanoidRootPart" and v.Anchored == true then
                v.CanCollide = false
                v.CanTouch = false
                v.Transparency = 0.5
            end
        end
    end
end; })

game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Other").DescendantAdded:Connect(function(descendant)
    if descendant and descendant.Name == "HumanoidRootPart" and descendant.Anchored == true and AntiWalls == true then
        descendant.CanCollide = false
        descendant.CanTouch = false
        descendant.Transparency = 0.5
    end
end)

-- Add further toggles and features as in your original script here, one per feature.
-- Make sure to wrap any risky code in pcall to prevent the tab from breaking if something fails.

end)