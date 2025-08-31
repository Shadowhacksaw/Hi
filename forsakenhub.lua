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
   animationTrack.Looped = false
   animationTrack:Play()

   -- Sound
   if soundId then
      local head = character:WaitForChild("Head")
      local sound = Instance.new("Sound")
      sound.SoundId = "rbxassetid://" .. soundId
      sound.Volume = 2
      sound.Looped = false
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