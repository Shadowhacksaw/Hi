local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({

   Name = "c00lhackk script hub l thx for using",

   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).

   LoadingTitle = "c00lhackk script hub I pls wait",

   LoadingSubtitle = "by @Roblox_exploit-help",

   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,

   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {

      Enabled = true,

      FolderName = nil, -- Create a custom folder for your hub/game

      FileName = "c00hackk Hub"

   },

   Discord = {

      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it

      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD

      RememberJoins = true -- Set this to false to make them join the discord every time they load it up

   },

   KeySystem = true, -- Set this to true to use our key system

   KeySettings = {

      Title = "c00hackk hub l key system",

      Subtitle = "key is backstorysoon",

      Note = "Key is backstorysoon", -- Use this to tell the user how to get a key

      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file

      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script

      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from

      Key = {"backstorysoon"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")

   }

})

local Tab = Windows:CreateTab("@Rip_game9819 roblox scripts", 4483362458) -- Title, Image

local TabForsaken = Window:CreateTab("@Roblox_exploit-help roblox scripts", 4483362458) -- Title, Image

local TabDestroyUI = Window:CreateTab("Destroy Ui", 448362458) -- Title, Image

local TabRefresh = Window:CreateTab("Refresh script hub", 448362458) -- Title, Image

local TabIncognitoscripts = Window:CreateTab("Incognito scripts", 448362458) -- Title, Image 

local TabRandomscript = Window:CreateTab("Random Script", 448362458) -- Title, Image

local TabFrostscript = Window:CreateTab("Frostware scripts", 448362458) -- Title, Image

local Tabeditplayer = Window:CreateTab("edit your player", 448362458) -- Title, Image

local TabRayfield = Window:CreateTab("change themes", 448362458) -- Title, Image

local TabReport = Window:CreateTab("bug report", 448362458) -- Title, Image

local TabUpdatelog = Window:CreateTab("Update log", 448362458) -- Title, Image

local TabExperimental = Window:CreateTab("Experimental stuff", 448362458) -- Title, Image

local Divider = Tab:CreateDivider()

local Section = Tab:CreateSection("Script by @Rip_game")

local Button = Tab:CreateButton({

   Name = "click tp script",

   Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/ECnzT3AG"))()

   end,

})

local Button = Tab:CreateButton({

   Name = "Rip_game script Hub",

   Callback = function()loadstring(game:HttpGet("https://ghostplayer352.github.io/Authorization/"))()Ioad("3e0702b4b012fd6420a8cf1b7aa8f09a")

   end,

})

local Button = Tab:CreateButton({

   Name = "Rip_game mobile fly edit",

   Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/dXQHxasQ"))()

   end,

})

local Section = TabForsaken:CreateSection("Scripts by @Roblox_exploit-help")

local Button = TabForsaken:CreateButton({

   Name = "Rc7 executor",

   Callback = function() loadstring(game:HttpGet("https://pastefy.app/bGBfaA6t/raw"))()

   end,

})                                                                                                                                                                                                    

local Section = TabDestroyUI:CreateSection("Destroy the ui")

local Button = TabDestroyUI:CreateButton({

Name = "Destroy ui",

Callback = function()

Rayfield:Destroy()

 end,

}) 

local Section = TabRefresh:CreateSection("Refresh the script hub")

local Button = TabRefresh:CreateButton({

Name = "Refresh script hub",

Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Shadowhacksaw/Hi/refs/heads/main/Main.lua"))()

 end,

})

local Section = TabIncognitoscripts:CreateSection("Scripts by IncognitoScripts")

local Button = TabIncognitoscripts:CreateButton({

Name = "tsb Free Emotes (might not work)",

Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/TheStrongestBattlegrounds/refs/heads/main/FreeEmotes"))()

 end, 

}) 

local Section = TabRandomscript:CreateSection("very Random scripts:) ")

local Button = TabRandomscript:CreateButton({

Name = "Server-side executor script (only work in backdoor games)",

Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script"))()

 end,

})

local Button = TabRandomscript:CreateButton({

Name = "infinite yield script",

Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

 end,

}) 

local Button = TabRandomscript:CreateButton({

Name = "dandys's world script",

Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/Y7uh3UZf"))();

 end,

}) 

local Button = TabRandomscript:CreateButton({

Name = "dex explorer keyless",

Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/KUTCEy7b#"))()

 end,

}) 

local Button = TabRandomscript:CreateButton({

Name = "blox fruits 2x luck (not sure if work)",

Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/GrinGuru/BloxFruits/refs/heads/main/2X%20LUCK"))() 

 end,

}) 

local Section = TabFrostscript:CreateSection("Frostware scripts")

local Button = TabFrostscript:CreateButton({

Name = "Frostware blue lock rivals", 

Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Snowie3310/Frostware/main/Blue%20lock%20Rivals.lua"))()

 end,

})

local Section = Tabeditplayer:CreateSection("edit Walkspeed and inf jump and a couple more")

local Slider = Tabeditplayer:CreateSlider({

    Name = "change Walkspeed",

    Range = {16, 450},

    Increment = 10,

    Suffix = "Walkspeed",

    CurrentValue = 10,

    Flag = "Slider1",

    Callback = function(v)

        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v

    end,

 })

local InfiniteJumpConnection

local Toggle = Tabeditplayer:CreateToggle({

    Name = "Infinite Jump",

    CurrentValue = false,

    Flag = "Toggle1",

    Callback = function(InfiniteJumpEnabled)

        if InfiniteJumpEnabled then

            InfiniteJumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()

                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")

            end)

        else

            if InfiniteJumpConnection then

                InfiniteJumpConnection:Disconnect()

                InfiniteJumpConnection = nil

            end

        end

    end,

})

local Slider = Tabeditplayer:CreateSlider({

    Name = "change JumpPower",

    Range = {50, 500},

    Increment = 10,

    Suffix = "JumpPower",

    CurrentValue = 10,

    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps

    Callback = function(v)

        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v

    end,

 })

local NoClipEnabled = false

local RunService = game:GetService("RunService")

-- Function to toggle NoClip

local function ToggleNoClip(state)

    NoClipEnabled = state

    if state then

        -- Enable NoClip

        RunService.Stepped:Connect(function()

            if NoClipEnabled and game.Players.LocalPlayer.Character then

                for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do

                    if part:IsA("BasePart") and part.CanCollide then

                        part.CanCollide = false

                    end

                end

            end

        end)

    else

        -- Disable NoClip

        if game.Players.LocalPlayer.Character then

            for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do

                if part:IsA("BasePart") then

                    part.CanCollide = true

                end

            end

        end

    end

end

-- Add NoClip toggle to your script's UI

local NoClipToggle = Tabeditplayer:CreateToggle({

    Name = "NoClip",

    CurrentValue = false,

    Flag = "ToggleNoClip",

    Callback = function(state)

        ToggleNoClip(state)

    end,

})

local GodmodeEnabled = false

local RunService = game:GetService("RunService")

-- Function to toggle Godmode

local function ToggleGodmode(state)

    GodmodeEnabled = state

    if state then

        -- Enable Godmode

        RunService.Stepped:Connect(function()

            if GodmodeEnabled and game.Players.LocalPlayer.Character then

                local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

                if humanoid then

                    humanoid.Health = humanoid.MaxHealth -- Restore health

                end

            end

        end)

    end

end

local Toggle = Tabeditplayer:CreateToggle({

    Name = "Godmode",

    CurrentValue = false,

    Flag = "ToggleGodmode",

    Callback = function(state)

        ToggleGodmode(state)

    end,

})

local FreezeEnabled = false

-- Function to toggle Freeze

local function ToggleFreeze(state)

    FreezeEnabled = state

    if state then

        -- Freeze the character

        local character = game.Players.LocalPlayer.Character

        if character then

            local humanoid = character:FindFirstChildOfClass("Humanoid")

            if humanoid then

                humanoid.WalkSpeed = 0

                humanoid.JumpPower = 0

            end

        end

    else

        -- Unfreeze the character

        local character = game.Players.LocalPlayer.Character

        if character then

            local humanoid = character:FindFirstChildOfClass("Humanoid")

            if humanoid then

                humanoid.WalkSpeed = 16 -- Default WalkSpeed

                humanoid.JumpPower = 50 -- Default JumpPower

            end

        end

    end

end

local Toggle = Tabeditplayer:CreateToggle({

    Name = "Freeze Character",

    CurrentValue = false,

    Flag = "ToggleFreeze",

    Callback = function(state)

        ToggleFreeze(state)

    end,

})

local FlyEnabled = false

local FlySpeed = 50

local function ToggleFly(state)

    FlyEnabled = state

    local player = game.Players.LocalPlayer

    local character = player.Character or player.CharacterAdded:Wait()

    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if state then

        RunService.RenderStepped:Connect(function()

            if FlyEnabled and humanoidRootPart then

                humanoidRootPart.Velocity = Vector3.new(0, FlySpeed, 0)

            end

        end)

    end

end

local Toggle = Tabeditplayer:CreateToggle({

    Name = "Fly",

    CurrentValue = false,

    Flag = "ToggleFly",

    Callback = function(state)

        ToggleFly(state)

    end,

})

local function TeleportToPosition(position)

    local character = game.Players.LocalPlayer.Character

    if character then

        character:MoveTo(position)

    end

end

local Button = Tabeditplayer:CreateButton({

    Name = "Teleport to Spawn",

    Callback = function()

        TeleportToPosition(Vector3.new(0, 50, 0)) -- Replace with desired coordinates

    end,

})

local Section = Tabeditplayer:CreateSection("R15 to R6")

local Button = Tabeditplayer:CreateButton({

Name = "R6 animation",

Callback = function() loadstring(game:HttpGet(('https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua'),true))()

 end, 

}) 

local Section = Tabeditplayer:CreateSection("edit vision")

local Button = Tabeditplayer:CreateButton({
    Name = "Fullbright",
    Callback = function()
        
        local Lighting = game:GetService("Lighting")

        local function enableFullbright()
            Lighting.Brightness = 2
            Lighting.ClockTime = 12
            Lighting.FogEnd = 1e10
            Lighting.GlobalShadows = false
            Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
        end

        enableFullbright()

        Lighting.Changed:Connect(enableFullbright)

        Rayfield:Notify({
            Title = "Fullbright Enabled",
            Content = "Fullbright has been successfully activated.",
            Duration = 5
        })
    end
})

local ESPEnabled = false

local function ToggleESP(state)
    ESPEnabled = state
    if state then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local character = player.Character
                if character then
                    local billboard = Instance.new("BillboardGui", character)
                    billboard.Adornee = character:FindFirstChild("Head")
                    billboard.Size = UDim2.new(2, 0, 2, 0)
                    billboard.StudsOffset = Vector3.new(0, 3, 0)

                    local textLabel = Instance.new("TextLabel", billboard)
                    textLabel.Text = player.Name
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                end
            end
        end
    else
        -- Remove ESP elements
        for _, player in pairs(game.Players:GetPlayers()) do
            local character = player.Character
            if character then
                for _, child in pairs(character:GetChildren()) do
                    if child:IsA("BillboardGui") then
                        child:Destroy()
                    end
                end
            end
        end
    end
end

local Toggle = Tabeditplayer:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Flag = "ToggleESP",
    Callback = function(state)
        ToggleESP(state)
    end,
})

local Section = TabUpdatelog:CreateSection("Update log")

local Paragraph = TabUpdatelog:CreateParagraph({Title = "Update log", Content = "added edit player more features than before and added inf jump and added Noclip added godmode and a lot more"})

local Section = TabRayfield:CreateSection("change theme")

local Dropdown = TabRayfield:CreateDropdown({

    Name = "Select Theme",

    Options = {"DarkBlue", "Light", "Amber Glow", "Bloom", "Ocean", "Green"},

    CurrentOption = "DarkBlue",

    Callback = function(selectedTheme)

        Rayfield:ChangeTheme(selectedTheme)

    end,

})

local Section = TabReport:CreateSection("Bug report")

local Button = TabReport:CreateButton({
    Name = "Report a Bug",
    Callback = function()
        setclipboard("https://forms.gle/uqt4etUWs3qjrbVw6") -- Replace with your form link
        Rayfield:Notify({
            Title = "Bug Report",
            Content = "The Google Form link has been copied to your clipboard. Paste it into your browser to report a bug!",
            Duration = 5
        })
    end
})

local Section = TabExperimental:CreateSection("Experimental") 

local Button = TabExperimental:CreateButton({
    Name = "Get BTools (Experimental)",
    Callback = function()
        -- BTools Script
        local player = game.Players.LocalPlayer

        -- Function to give BTools
        local function giveBTools()
            local deleteTool = Instance.new("HopperBin", player.Backpack)
            deleteTool.BinType = Enum.BinType.Hammer -- Delete Tool
            deleteTool.Name = "Delete Tool"

            local moveTool = Instance.new("HopperBin", player.Backpack)
            moveTool.BinType = Enum.BinType.Grab -- Move Tool
            moveTool.Name = "Move Tool"

            local cloneTool = Instance.new("HopperBin", player.Backpack)
            cloneTool.BinType = Enum.BinType.Clone -- Clone Tool
            cloneTool.Name = "Clone Tool"
        end

        -- Grant BTools to the player
        giveBTools()

        Rayfield:Notify({
            Title = "BTools Enabled",
            Content = "You now have building tools in your Backpack!",
            Duration = 5
        })
    end
})

local UnlockFPSButton = TabExperimental:CreateButton({
    Name = "Unlock FPS (Experimental)",
    Callback = function()
        -- Unlock FPS Script
        setfpscap = setfpscap or function() end -- In case the executor doesn't support it
        if setfpscap then
            setfpscap(1000) -- Set FPS cap to 1000
            Rayfield:Notify({
                Title = "FPS Unlocked",
                Content = "FPS cap has been set to 1000. Enjoy smoother gameplay!",
                Duration = 5
            })
        else
            Rayfield:Notify({
                Title = "Error",
                Content = "Your executor does not support FPS unlocking.",
                Duration = 5
            })
        end
    end
})

local Slider =
TabExperimental:CreateSlider({
    Name = "Brightness Level (Experimental)",
    Range = {1, 10}, -- User can control brightness from 1 to 1000
    Increment = 1,
    Suffix = "Brightness",
    Default = 5,
    Callback = function(value)
        game:GetService("Lighting").Brightness = value
    end
})

local Button = TabExperimental:CreateButton({
    Name = "Reset Fullbright",
    Callback = function()
        local lighting = game:GetService("Lighting")
        lighting.Brightness = 1
        lighting.ClockTime = 14
        lighting.FogEnd = 1000
        lighting.GlobalShadows = true
        lighting.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5)
    end
})

local Button = TabExperimental:CreateButton({
    Name = "Enable Super Advanced ESP",
    Callback = function()
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character then
                local highlight = Instance.new("Highlight")
                highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Red highlight
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255) -- White outline
                highlight.Parent = v.Character
            end
        end
    end
})

local Button = TabExperimental:CreateButton({
    Name = "Disable ESP (Experimental)",
    Callback = function()
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Character then
                for _, obj in pairs(v.Character:GetChildren()) do
                    if obj:IsA("Highlight") then
                        obj:Destroy()
                    end
                end
            end
        end
    end
})

local Input = TabExperimental:CreateInput({
    Name = "Execute Script Silently", 
    PlaceholderText = "Enter Script URL",
    RemoveTextAfterFocusLost = false,
    Callback = function(url)
        if url and url ~= "" then
            local success, err = pcall(function()
                local scriptContent = game:HttpGet(url, true) -- Fetch the script
                loadstring(scriptContent)() -- Execute the script
            end)

            if success then
                Rayfield:Notify({
                    Title = "Script Executed",
                    Content = "The script has been executed successfully.",
                    Duration = 5
                })
            else
                Rayfield:Notify({
                    Title = "Execution Error",
                    Content = "Error executing script: " .. tostring(err),
                    Duration = 5
                })
            end
        else
            Rayfield:Notify({
                Title = "Invalid Input",
                Content = "Please provide a valid script URL.",
                Duration = 5
            })
        end
    end,
})

local function loadAnimation(animationId)
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://" .. tostring(animationId)
    local humanoid = Character:FindFirstChild("Humanoid")
    
    if humanoid then
        local animator = humanoid:FindFirstChild("Animator") or Instance.new("Animator", humanoid)
        local animationTrack = animator:LoadAnimation(animation)
        animationTrack:Play()
    end
end

-- List of Animation IDs
local animationIds = {
    507766388, -- Ninja Animation Pack
    507777826, -- Stylish Animation Pack
    507770239, -- Robot Animation Pack
    507776043, -- Levitation Animation Pack
    -- Add more animation IDs here
}

-- Add Buttons for Each Animation
for _, animationId in ipairs(animationIds) do
local Button = TabExperimental:CreateButton({
        Name = "Play Animation ID: " .. animationId,
        Callback = function()
            loadAnimation(animationId)
        end
    })
end

-- Add a Section for Additional Features
local Section = AnimationTab:CreateSection("Additional Features")

local Button = TabExperimentel:CreateButton({
    Name = "Stop Animations",
    Callback = function()
        local Character = game.Players.LocalPlayer.Character
        if Character then
            local Humanoid = Character:FindFirstChild("Humanoid")
            if Humanoid and Humanoid:FindFirstChild("Animator") then
                for _, track in ipairs(Humanoid.Animator:GetPlayingAnimationTracks()) do
                    track:Stop()
                end
            end
        end
    end
})  