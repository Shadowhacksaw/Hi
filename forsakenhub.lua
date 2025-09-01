local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({

   Name = "Forsaken Emotes hub l best place for not being broke",

   Icon = 0,

   LoadingTitle = "No more buying",
   LoadingSubtitle = "by Unknown dude",

   Theme = "DarkBlue",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Emotes"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,

   KeySettings = {
      Title = "c00hackk hub l key system",
      Subtitle = "key is backstorysoon",
      Note = "Key is backstorysoon",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"backstorysoon"}
   }

})

local Tab1 = Window:CreateTab("Emotes", 130695581754590)
local Tab2 = Window:CreateTab("banned Emotes", 130695581754590)
local Tab3 = Window:CreateTab("Stop Emote", 130695581754590)


local Divider = Tab1:CreateDivider()
local Section = Tab1:CreateSection("Emotes")

local function PlayEmote(animId, soundId)
   local player = game.Players.LocalPlayer
   local character = player.Character or player.CharacterAdded:Wait()
   local humanoid = character:WaitForChild("Humanoid")
   local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)

   local Animation = Instance.new("Animation")
   Animation.AnimationId = "rbxassetid://" .. animId
   local animationTrack = animator:LoadAnimation(Animation)
   animationTrack.Looped = true
   animationTrack:Play()

   -- Sound
   if soundId then
      local head = character:WaitForChild("Head")
      local sound = Instance.new("Sound")
      sound.SoundId = "rbxassetid://" .. soundId
      sound.Volume = 2
      sound.Looped = true
      sound.RollOffMode = Enum.RollOffMode.Linear
      sound.MaxDistance = 50
      sound.Parent = head
      sound:Play()
   end
end

local function StopAllEmotes()
   local player = game.Players.LocalPlayer
   local character = player.Character
   if not character then return end
   local humanoid = character:FindFirstChild("Humanoid")
   if not humanoid then return end

   -- Stop animations
   for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
      track:Stop()
   end

-- Stop sounds in head
   local head = character:FindFirstChild("Head")
   if head then
      for _, obj in pairs(head:GetChildren()) do
         if obj:IsA("Sound") and obj.IsPlaying then
            obj:Stop()
            obj:Destroy()
         end
      end
   end
end


local Button = Tab1:CreateButton({
   Name = "hakari dance",
   Callback = function()
      PlayEmote(138019937280193, 87166578676888)
   end,
})

local Button = Tab1:CreateButton({
   Name = "Tv time",
   Callback = function()
      PlayEmote(139299160503081, 112013996314654)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Sukuna",
   Callback = function()
       PlayEmote(112276030300130, 137906124003434)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Who wins",
   Callback = function()
       PlayEmote(109569860731042,117520733630504)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Tenna",
   Callback = function()
   PlayEmote(114687172329033,114687172329033)
   end,
})
local Button = Tab1:CreateButton({
   Name = "2Two2",
   Callback = function()
       PlayEmote(132144576305869,103537259641677)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Virtual Insanity",
   Callback = function()
       PlayEmote(103333882912121, 95268211149914)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Wave",
   Callback = function()
       PlayEmote(128777973,154865749)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Subject Three",
   Callback = function()
       PlayEmote(75193609204744,136651893030423)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Release The Ghouls",
   Callback = function()
       PlayEmote(122400298085954,0)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Stock Dance",
   Callback = function()
       PlayEmote(133140863961315,133597046104197)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Static",
   Callback = function()
       PlayEmote(94425494947119,107391158617439)
   end,
})
local Button = Tab1:CreateButton({
   Name = "So Retro",
   Callback = function()
       PlayEmote(90399490625732,81332555827290)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Skeleton",
   Callback = function()
       PlayEmote(71083881571066,102253665730313)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Schadenfreude",
   Callback = function()
       PlayEmote(94051835643882, 99907172493781)
       PlayEmote(80405818789569,81881589472757)
       PlayEmote(136908417273718,114584473003045)
       PlayEmote(71098007263688,129252779856972) 
       PlayEmote(110011903301021,112263797681728)
       PlayEmote(108688398587848,132961737774004)
       PlayEmote(117706986889252,84212549244283) 
       PlayEmote(75798689481181,127466333676577)
       PlayEmote(102516749241112,89571344981581)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Silly",
   Callback = function()
       PlayEmote(107716765704359,110142673940576)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Monster Mash",
   Callback = function()
       PlayEmote(111309618966926,110492070824289)
   end,
})
local Button = Tab1:CreateButton({
   Name = "You're Dead",
   Callback = function()
       PlayEmote(123970007231370,0)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Rambunctious",
   Callback = function()
       PlayEmote(134229395028226,78302710217332)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Prince",
   Callback = function()
       PlayEmote(128012749953319,85402005566016)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Pop Dance",
   Callback = function()
       PlayEmote(119907842673039,108553856293180)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Poisoned",
   Callback = function()
       PlayEmote(83463199855585,118582448199737)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Penguin",
   Callback = function()
       PlayEmote(132087606887347, 92148164551117)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Mesmerizer",
   Callback = function()
       PlayEmote(102332849201255,71934965392436)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Company Groove",
   Callback = function()
       PlayEmote(89926565466406,87037127480984)
PlayEmote(0,75050781534618)  
   end,
})
local Button = Tab1:CreateButton({
   Name = "Konton",
   Callback = function()
       PlayEmote(104894697830131,101625034966758)
   end,
})





















local Button = Tab2:CreateButton({
   Name = "shucks",
   Callback = function()
      PlayEmote(74238051754912, 123236721947419)
   end,
})

local Button = Tab2:CreateButton({
   Name = "miss the quiet",
   Callback = function()
      PlayEmote(100986631322204, 131936418953291)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Subterfuge",
   Callback = function()
      PlayEmote(87482480949358, 132297506693854)
   end,
})
local Button = Tab3:CreateButton({
   Name = "Stop All Emotes",
   Callback = function()
      StopAllEmotes()
   end,
})