local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({

   Name = "c00lhackk script hub l thx for using",

   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).

   LoadingTitle = "c00lhackk script hub",

   LoadingSubtitle = "by @Roblox_exploit-help on youtube",

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

local Tab = Window:CreateTab("@Rip_game9819 roblox scripts", 4483362458) -- Title, Image

local TabForsaken = Window:CreateTab("@Roblox_exploit-help roblox scripts", 4483362458) -- Title, Image

local TabDestroyUI = Window:CreateTab("Destroy Ui", 448362458) -- Title, Image

local TabRefresh = Window:CreateTab("Refresh script hub", 448362458) -- Title, Image

local TabIncognitoscripts = Window:CreateTab("Incognito scripts", 448362458) -- Title, Image 

local TabRandomscript = Window:CreateTab("Random Script", 448362458) -- Title, Image

local TabFrostscript = Window:CreateTab("Frostware scripts", 448362458) -- Title, Image

local Tabeditplayer = Window:CreateTab("edit your player", 448362458) -- Title, Image

local Divider = Tab:CreateDivider()

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

local Button = TabForsaken:CreateButton({

   Name = "Rc7 executor",

   Callback = function() loadstring(game:HttpGet("https://pastefy.app/bGBfaA6t/raw"))()

   end,

})                                                                                                                                                                                                    

local Button = TabDestroyUI:CreateButton({

Name = "Deatroy ui",

Callback = function()

Rayfield:Destroy()

 end,

}) 

local Button = TabRefresh:CreateButton({

Name = "Refresh script hub",

Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Shadowhacksaw/Hi/refs/heads/main/Main.lua"))()

 end,

})

local Button = TabIncognitoscripts:CreateButton({

Name = "tsb Free Emotes (might not work)",

Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/TheStrongestBattlegrounds/refs/heads/main/FreeEmotes"))()

 end, 

}) 

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

local Button = TabFrostscript:CreateButton({

Name = "Frostware blue lock rivals", 

Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Snowie3310/Frostware/main/Blue%20lock%20Rivals.lua"))()

 end,

})

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

local Toggle = Tabeditplayer:CreateToggle({

    Name = "Infinite Jump",

    CurrentValue = false,

    Flag = "Toggle1",

    Callback = function(InfiniteJumpEnabled)

        local InfiniteJumpEnabled = true

        game:GetService("UserInputService").JumpRequest:connect(function()

            if InfiniteJumpEnabled then

                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")

            end

        end)

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

local Label = Tabeditplayer:CreateLabel("R6 to R15 and R15 to R6", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Button = Tabeditplayer:CreateButton({

Name = "R6 animation",

Callback = function() loadstring(game:HttpGet(('https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua'),true))()

 end,

}) 

local Button = Tabeditplayer:CreateButton({

Name = "R15 animation",

Callback = function() loadstring(game:HttpGet('https://pastebin.com/raw/JhkcJ8eF'))()

 end,

}) 
