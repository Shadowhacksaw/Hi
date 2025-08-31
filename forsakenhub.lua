local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({

   Name = "c00lhackk script hub l thx for using",

   Icon = 100061568352084, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).

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

local Tab1 = Window:CreateTab("Killer noil", 130695581754590) -- Title, Image

local Divider = Tab1:CreateDivider()

local Section = Tab1:CreateSection("Emotes")

local Button = Tab1:CreateButton({
Name = "hakari dance",
Callback = function() 
local Animation = Instance.new("Animation")

Animation.AnimationId = "rbxassetid://138019937280193"
local Humanoid = script.Parent.Humanoid
local AnimationTrack = Humanoid.Animator:LoadAnimation(Animation)

AnimationTrack:Play()

local sound = Instance.new("Sound", head) 
    sound.SoundId = rbxassetid://87166578676888
    sound.Volume = 2
    sound.Looped = false
    sound.RollOffMode = Enum.RollOffMode.Linear
    sound.MaxDistance = 50

   end,

})