warn("Successfully found forsaken files")
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({

   Name = "Forsaken Emotes and Skins hub l best place for not being broke",

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
local Tab4 = Window:CreateTab("Skins", 130695581754590)


local Divider = Tab1:CreateDivider()
local Section = Tab1:CreateSection("Emotes")

local function PlayEmote(animId,soundId)
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
       PlayEmote(103333882912121,95268211149914)
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
       PlayEmote(132087606887347,92148164551117)
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
local Button = Tab1:CreateButton({
   Name = "Khaled",
   Callback = function()
       PlayEmote(105276039560672,122842879682932)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Wait",
   Callback = function()
       PlayEmote(119813505721636,123179402505565)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Kazotsky Kick",
   Callback = function()
       PlayEmote(83225211078144,71071074526835)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Jumpstyle",
   Callback = function()
       PlayEmote(76148053209080,95018041323246)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Jumping for Joy!",
   Callback = function()
       PlayEmote(139769270640106,93437775595137)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Insanity",
   Callback = function()
       PlayEmote(75420633536507,125452574134166)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Hotdog",
   Callback = function()
       PlayEmote(70533211127594,75226719036096)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Hey Now",
   Callback = function()
       PlayEmote(81512503280172,104633544271348)
   end,
})
local Button = Tab1:CreateButton({
   Name = "The Hero",
   Callback = function()
       PlayEmote(133160365635320,114638282732720)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Headbanger",
   Callback = function()
       PlayEmote(103719006556178,90515396415213)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Griddy",
   Callback = function()
       PlayEmote(93821902607346,121568618582505)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Macarena",
   Callback = function()
       PlayEmote(99366472605758,78191952114848)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Gangnam",
   Callback = function()
       PlayEmote(134617723143543,86963552203595)
   end,
})
local Button = Tab1:CreateButton({
   Name = "GLEE CO.",
   Callback = function()
       PlayEmote(79863122388790,106653499906945) 
       PlayEmote(71721142111807,114506636674765) 
  end,
})
local Button = Tab1:CreateButton({
   Name = "House Fly",
   Callback = function()
       PlayEmote(121751474249467,93499899807341)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Eggrolled",
   Callback = function()
       PlayEmote(93910549909381,131274843582926)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Conga (Support)",
   Callback = function()
       PlayEmote(96841761360586,104396878120843)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Conga (Sentinel)",
   Callback = function()
       PlayEmote(132532224026941,104396878120843)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Conga (Survivalist)",
   Callback = function()
       PlayEmote(91143438316049,104396878120843)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Drumsticks",
   Callback = function()
       PlayEmote(124289084579824,79545773891548)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Locked",
   Callback = function()
       PlayEmote(77920404652731,117520733630504)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Distraction Dance",
   Callback = function()
       PlayEmote(98261071866527,0)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Lost In Paradise",
   Callback = function()
       PlayEmote(137980666622050,123165091822538)
       PlayEmote(0,88817076561296)
       PlayEmote(0,81085621689607) 
   end,
})
local Button = Tab1:CreateButton({
   Name = "Chronoshift",
   Callback = function()
       PlayEmote(95008278201478,137501116290172)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Cinderella",
   Callback = function()
       PlayEmote(92131061687307,122795302561110)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Chicken Dance",
   Callback = function()
       PlayEmote(135702316328204,104235713087821)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Caramell",
   Callback = function()
       PlayEmote(110731222089592,127550001365624)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Best Survivor",
   Callback = function()
       PlayEmote(139133319221924,121216788631381)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Knightly Shimmy",
   Callback = function()
       PlayEmote(79878932144855,127271208525796)
   end,
})
local Button = Tab1:CreateButton({
   Name = "California Girls",
   Callback = function()
       PlayEmote(121768360244671,93139857397485)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Bye Bye",
   Callback = function()
       PlayEmote(113658683375139,100874539180945)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Brickbattler",
   Callback = function()
       PlayEmote(75802192289302,87794061271458)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Bag Up",
   Callback = function()
       PlayEmote(117853129871362,133954185831066)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Cat Dance",
   Callback = function()
       PlayEmote(133145243088885,75850411329107)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Aol Guy",
   Callback = function()
       PlayEmote(80918082366233,92483550196470)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Ain't No Lovin My Man",
   Callback = function()
       PlayEmote(113329473982836,92797787946449)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Ashley",
   Callback = function()
       PlayEmote(138857297031173,105173273800950)
   end,
})
local Button = Tab1:CreateButton({
   Name = "Rambunctious but funny",
   Callback = function()
       PlayEmote(134229395028226,70630630341725)
   end,
})
local Button = Tab2:CreateButton({
   Name = "shucks",
   Callback = function()
      PlayEmote(74238051754912, 123236721947419)
   end,
})
local Button = Tab2:CreateButton({
   Name = "Silybilly",
   Callback = function()
      PlayEmote(107464355830477,77601084987544)
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
local Button = Tab4:CreateButton({
   Name = "Guest 666 (Use Slaher)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/G666"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "Gabriel 1x1x1x1 (Equip 1x1x1x1)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/Gabriel"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "Sancho (Equip Slaher)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/San"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "2011x (Equip c00lkidd)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/2011x"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "MafiosoRework (Equip c00lkidd and Use Mafioso skin Run before game starts)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/mafioso"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "Annihilation (Not official Equip Johndoe)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/Annihilation"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "Noob 666",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/Mal-Ware/refs/heads/main/Sub%20Scripts/Noob%20666.lua"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "Old MLG Chance (Equip Chance) ",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/Mal-Ware/refs/heads/main/Sub%20Scripts/Old%20MLG%20Chance.lua"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "Golden Shedletsky (Equip Shedletsky)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/Mal-Ware/refs/heads/main/Sub%20Scripts/Fake%20Golden%20Shedletsky.lua"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "Old Milestone 4 Jason (Equip Slaher)",
   Callback = function() getgenv().FM4Settings = {
    CustomKillAnimation = true,
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/Mal-Ware/refs/heads/main/Sub%20Scripts/Fake%20Milestone%204%20Jason.lua"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "hairytwinkles (Equip Shedletsky)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Shadowhacksaw/Hi/refs/heads/main/hairytwinkles.lua"))()
   end,
})
local Button = Tab4:CreateButton({
   Name = "Baby (Equip Two times)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/BTT"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "WildHunt Shedletsky (Equip 1x1x1x1 and Use Clasic1x1x Run before game starts)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/WHShed"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "HeartBroken (Equip Shedletsky) ",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/HeartBroken%20Boohoo"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "Noli (Equip Slaher)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/Noli"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "Mystic (Equip Slaher)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ElderRealNofake/Forsaken-Skin-Vroom/refs/heads/main/Myst"))()

   end,
})
local Button = Tab4:CreateButton({
   Name = "Studious W.i.P (Equip 007n7)", 
   Callback = function() 
local player = game.Players.LocalPlayer

-- Utility function: safely destroy if it exists
local function safeDestroy(obj)
	if obj and obj.Parent then
		obj:Destroy()
	end
end

-- Function that applies the changes to the character
local function setupCharacter(character)
	-- Remove CharacterMeshes for blocky look
	for _, mesh in ipairs(character:GetChildren()) do
		if mesh:IsA("CharacterMesh") then
			safeDestroy(mesh)
		end
	end

	-- Remove Survivor meshes (if any)
	local survivorsFolder = workspace:FindFirstChild("Survivors")
	if survivorsFolder then
		local survivor = survivorsFolder:FindFirstChild(player.Name)
		if survivor then
			for _, mesh in ipairs(survivor:GetChildren()) do
				if mesh:IsA("CharacterMesh") then
					safeDestroy(mesh)
				end
			end
		end

		-- Remove specific old hairs
		local ini = survivorsFolder:FindFirstChild("007n7")
		if ini then
			safeDestroy(ini:FindFirstChild("BurgerBob"))
			safeDestroy(ini:FindFirstChild("Headstack"))
		end
	end

	-- Hide facial expression
	local expressionHolder = character:FindFirstChild("ExpressionHolder")
	if expressionHolder then
		local expression = expressionHolder:FindFirstChild("Expression")
		if expression then
			expression.Transparency = 1
		end
	end

	-- Replace face
	local head = character:WaitForChild("Head")
	for _, child in ipairs(head:GetChildren()) do
		if child:IsA("Decal") then
			safeDestroy(child)
		end
	end

	local newFace = Instance.new("Decal")
	newFace.Texture = "http://www.roblox.com/asset/?id=321741599"
	newFace.Face = Enum.NormalId.Front
	newFace.Name = "JohnSmile"
	newFace.Parent = head

	-- Shirt + Pants + TShirt
	local shirt = character:FindFirstChildOfClass("Shirt") or Instance.new("Shirt")
	shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=93155466727004"
	shirt.Parent = character

	local pants = character:FindFirstChildOfClass("Pants") or Instance.new("Pants")
	pants.PantsTemplate = "http://www.roblox.com/asset/?id=129459076"
	pants.Parent = character

	local tShirt = character:FindFirstChildOfClass("ShirtGraphic") or Instance.new("ShirtGraphic")
	tShirt.Graphic = "http://www.roblox.com/asset/?version=1&id=1591778"
	tShirt.Parent = character

	-- Accessory function
	local function addAccessory(name, meshId, textureId, parentPartName, handleSize, position, rotation, meshScale, meshOffset)
		local accessory = Instance.new("Accessory")
		accessory.Name = name

		local handle = Instance.new("Part")
		handle.Name = "Handle"
		handle.Size = Vector3.new(unpack(handleSize))
		handle.CanCollide = false
		handle.Anchored = false
		handle.Parent = accessory

		local mesh = Instance.new("SpecialMesh", handle)
		mesh.MeshId = meshId
		mesh.TextureId = textureId
		mesh.Scale = meshScale and Vector3.new(unpack(meshScale)) or Vector3.new(1, 1, 1)
		mesh.Offset = meshOffset and Vector3.new(unpack(meshOffset)) or Vector3.new(0, 0, 0)

		local targetPart = character:FindFirstChild(parentPartName)
		if targetPart then
			local weld = Instance.new("Weld")
			weld.Part0 = targetPart
			weld.Part1 = handle
			weld.C0 = CFrame.new(unpack(position)) * CFrame.Angles(math.rad(rotation[1]), math.rad(rotation[2]), math.rad(rotation[3]))
			weld.Parent = handle
		end

		accessory.Parent = character
	end

	-- Add hair
	addAccessory("TruepizzahexlHair",
		"http://www.roblox.com/asset/?id=188004660",
		"http://www.roblox.com/asset/?id=451217406",
		"Head",
		{1, 1, 1},
		{0, 0.55, 0},
		{0, 0, 0},
		{1, 1, 1})

	-- Add scarf
	addAccessory("JohnScarf",
		"http://www.roblox.com/asset/?id=124988677",
		"http://www.roblox.com/asset/?id=307188513",
		"Torso",
		{1, 1, 1},
		{0, 0.5, 0},
		{0, 0, 0},
		{1, 1, 1})
  
   end, 
}) 
