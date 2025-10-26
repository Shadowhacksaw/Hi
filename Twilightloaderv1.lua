local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({

   Name = "Twilight Area l i got nothing to say ",

   Icon = 0,

   LoadingTitle = "No more problems",
   LoadingSubtitle = "by Unknown dude",

   Theme = "DarkBlue",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Twilight"
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

local Tab1 = Window:CreateTab("Main", 130695581754590)
local Tab2 = Window:CreateTab("Esp", 130695581754590)


local staminaFlag = false
local AddStamina
pcall(function()
    AddStamina = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Gameplay"):WaitForChild("AddStamina")
end)

task.spawn(function()
    while true do
        if staminaFlag and AddStamina then
            pcall(function() firesignal(AddStamina.OnClientEvent, 45) end)
        end
        task.wait(0.2)
    end
end)

local function teleportToElevator()
    local elevator = Workspace:FindFirstChild("Elevator")
    if not elevator then return false end
    local spawn = elevator:FindFirstChild("ElevatorSpawn") or elevator:FindFirstChild("Elevator1") or elevator:FindFirstChild("Elevator2") or findRepresentativePart(elevator)
    if not spawn then return false end
    return teleportToPart(spawn, 2)
end


Tab1:CreateToggle({Name = "Infinite Stamina", CurrentValue = false, Callback = function(v) staminaFlag = v end})

Tab1:CreateButton({Name = "Teleport to Elevator", Callback = teleportToElevator})
Tab1:CreateButton({Name = "Teleport: Random Machine", Callback = teleportToRandomMachine})


Tab2:CreateToggle({Name = "ESP Machines", CurrentValue = false, Callback = function(v) espMachinesOn = v; if not v then clearAllHighlights() end end})
Tab2:CreateToggle({Name = "ESP Spirits", CurrentValue = false, Callback = function(v) espSpiritsOn = v; if not v then clearAllHighlights() end end})