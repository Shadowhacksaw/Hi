local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({

   Name = "Forsaken modifier I mod forsaken forever",

   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).

   LoadingTitle = "Forsaken modifier I loading",

   LoadingSubtitle = "by @Roblox_exploit-help",

   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,

   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {

      Enabled = true,

      FolderName = nil, -- Create a custom folder for your hub/game

      FileName = "hub"

   },

   Discord = {

      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it

      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD

      RememberJoins = true -- Set this to false to make them join the discord every time they load it up

   },

   KeySystem = true, -- Set this to true to use our key system

   KeySettings = {

      Title = "Forsaken modifier I key system",

      Subtitle = "key is modified",

      Note = "Key is modified", -- Use this to tell the user how to get a key

      FileName = "Keylol", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file

      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script

      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from

      Key = {"modifier"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")

   }

})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Tabs = Window:CreateTab("stamina settings", 4483362458) -- Title, Image
local Tabg = Window:CreateTab("Generators", 4483362458) -- Title, Image
local Tabf = Window:CreateTab("fun", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
    Name = "Toggle Fullbright",
    Callback = function()
        local fullbrightEnabled = false

local function toggleFullbright()
    fullbrightEnabled = not fullbrightEnabled

    if fullbrightEnabled then
        -- Save the original lighting settings
        local Lighting = game:GetService("Lighting")
        Lighting.Brightness = 2
        Lighting.Ambient = Color3.new(1, 1, 1)
        Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
        Lighting.GlobalShadows = false
    else
        -- Restore the default lighting settings
        local Lighting = game:GetService("Lighting")
        Lighting.Brightness = 1
        Lighting.Ambient = Color3.new(0.5, 0.5, 0.5)
        Lighting.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5)
        Lighting.GlobalShadows = true
    end
end
    end
})


local Toggle = Tabs:CreateToggle({
