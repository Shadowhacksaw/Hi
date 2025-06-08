local G2L = {};

-- StarterGui.incognitoChat
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[incognitoChat]];
G2L["1"]["ResetOnSpawn"] = false;

-- StarterGui.incognitoChat.UI
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 17);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 254, 0, 136);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.45782, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[UI]];

-- StarterGui.incognitoChat.UI.bar
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 22);
G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3"]["Size"] = UDim2.new(0, 235, 0, 40);
G2L["3"]["Position"] = UDim2.new(0.5, 0, 1, -50);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[bar]];

-- StarterGui.incognitoChat.UI.bar.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);


-- StarterGui.incognitoChat.UI.bar.messagebox
G2L["5"] = Instance.new("TextBox", G2L["3"]);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5"]["TextWrapped"] = true;
G2L["5"]["TextSize"] = 15;
G2L["5"]["Name"] = [[messagebox]];
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["5"]["ClearTextOnFocus"] = false;
G2L["5"]["ClipsDescendants"] = true;
G2L["5"]["PlaceholderText"] = [[Message here]];
G2L["5"]["Size"] = UDim2.new(0.80322, 0, 1, 0);
G2L["5"]["Position"] = UDim2.new(0.00444, 0, 0, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[]];
G2L["5"]["BackgroundTransparency"] = 1;

-- StarterGui.incognitoChat.UI.bar.messagebox.UIPadding
G2L["6"] = Instance.new("UIPadding", G2L["5"]);
G2L["6"]["PaddingTop"] = UDim.new(0, 6);
G2L["6"]["PaddingLeft"] = UDim.new(0, 10);
G2L["6"]["PaddingBottom"] = UDim.new(0, 6);

-- StarterGui.incognitoChat.UI.bar.send
G2L["7"] = Instance.new("ImageButton", G2L["3"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["AutoButtonColor"] = false;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 21);
G2L["7"]["Size"] = UDim2.new(0, 44, 0, 39);
G2L["7"]["Name"] = [[send]];
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Position"] = UDim2.new(1, -44, 0, 0);

-- StarterGui.incognitoChat.UI.bar.send.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);


-- StarterGui.incognitoChat.UI.bar.send.Frame
G2L["9"] = Instance.new("Frame", G2L["7"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 22);
G2L["9"]["Size"] = UDim2.new(0, 4, 1, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- StarterGui.incognitoChat.UI.bar.send.ImageLabel
G2L["a"] = Instance.new("ImageLabel", G2L["7"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["ImageColor3"] = Color3.fromRGB(131, 131, 131);
G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["a"]["Image"] = [[rbxassetid://18150985605]];
G2L["a"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Position"] = UDim2.new(0.5, 2, 0.5, 0);

-- StarterGui.incognitoChat.UI.bar.send.LocalScript
G2L["b"] = Instance.new("LocalScript", G2L["7"]);


-- StarterGui.incognitoChat.UI.bar.UIStroke
G2L["c"] = Instance.new("UIStroke", G2L["3"]);
G2L["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["c"]["Thickness"] = 0.6;
G2L["c"]["Color"] = Color3.fromRGB(27, 97, 122);

-- StarterGui.incognitoChat.UI.UICorner
G2L["d"] = Instance.new("UICorner", G2L["2"]);
G2L["d"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.incognitoChat.UI.UIStroke
G2L["e"] = Instance.new("UIStroke", G2L["2"]);
G2L["e"]["Thickness"] = 0.6;
G2L["e"]["Color"] = Color3.fromRGB(29, 104, 131);

-- StarterGui.incognitoChat.UI.TextLabel
G2L["f"] = Instance.new("TextLabel", G2L["2"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["TextSize"] = 17;
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["f"]["TextColor3"] = Color3.fromRGB(1, 0, 0);
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["Size"] = UDim2.new(1, 0, -0.16248, 50);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[Ic00lhackk chat bypasser]];

-- StarterGui.incognitoChat.UI.TextLabel.UIPadding
G2L["10"] = Instance.new("UIPadding", G2L["f"]);
G2L["10"]["PaddingTop"] = UDim.new(0, 11);
G2L["10"]["PaddingLeft"] = UDim.new(0, 11);

-- StarterGui.incognitoChat.UI.method
G2L["11"] = Instance.new("TextButton", G2L["2"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["AutoButtonColor"] = false;
G2L["11"]["TextSize"] = 15;
G2L["11"]["TextColor3"] = Color3.fromRGB(179, 179, 179);
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 22);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["11"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["11"]["Size"] = UDim2.new(0, 235, 0, 40);
G2L["11"]["Name"] = [[method]];
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[Methods : V2]];
G2L["11"]["Position"] = UDim2.new(0.5, 0, 1, -100);

-- StarterGui.incognitoChat.UI.method.UIStroke
G2L["12"] = Instance.new("UIStroke", G2L["11"]);
G2L["12"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["12"]["Thickness"] = 0.6;
G2L["12"]["Color"] = Color3.fromRGB(27, 97, 122);

-- StarterGui.incognitoChat.UI.method.UICorner
G2L["13"] = Instance.new("UICorner", G2L["11"]);


-- StarterGui.incognitoChat.UI.method.Frame
G2L["14"] = Instance.new("Frame", G2L["11"]);
G2L["14"]["Visible"] = false;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 14);
G2L["14"]["Size"] = UDim2.new(0, 323, 0, 164);
G2L["14"]["Position"] = UDim2.new(1.06809, 0, -0.9, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- StarterGui.incognitoChat.UI.method.Frame.UICorner
G2L["15"] = Instance.new("UICorner", G2L["14"]);


-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame
G2L["16"] = Instance.new("ScrollingFrame", G2L["14"]);
G2L["16"]["Active"] = true;
G2L["16"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["16"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["16"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["ScrollBarThickness"] = 0;
G2L["16"]["BackgroundTransparency"] = 1;

-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.UIPadding
G2L["17"] = Instance.new("UIPadding", G2L["16"]);
G2L["17"]["PaddingTop"] = UDim.new(0, 7);
G2L["17"]["PaddingRight"] = UDim.new(0, 7);
G2L["17"]["PaddingLeft"] = UDim.new(0, 7);

-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.v2
G2L["18"] = Instance.new("TextButton", G2L["16"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["AutoButtonColor"] = false;
G2L["18"]["TextSize"] = 15;
G2L["18"]["TextColor3"] = Color3.fromRGB(179, 179, 179);
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 22);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["18"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["18"]["Name"] = [[v2]];
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[V2 (Latest, Best bypass, unstable)]];

-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.v2.UICorner
G2L["19"] = Instance.new("UICorner", G2L["18"]);


-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.v2.LocalScript
G2L["1a"] = Instance.new("LocalScript", G2L["18"]);


-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.UIListLayout
G2L["1b"] = Instance.new("UIListLayout", G2L["16"]);
G2L["1b"]["Padding"] = UDim.new(0, 5);
G2L["1b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.WordList
G2L["1c"] = Instance.new("TextButton", G2L["16"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["AutoButtonColor"] = false;
G2L["1c"]["TextSize"] = 15;
G2L["1c"]["TextColor3"] = Color3.fromRGB(179, 179, 179);
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 22);
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1c"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["1c"]["Name"] = [[WordList]];
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[WordList (Unstable, Latest, Better Letters)]];

-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.WordList.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1c"]);


-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.WordList.LocalScript
G2L["1e"] = Instance.new("LocalScript", G2L["1c"]);


-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.v1
G2L["1f"] = Instance.new("TextButton", G2L["16"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["AutoButtonColor"] = false;
G2L["1f"]["TextSize"] = 15;
G2L["1f"]["TextColor3"] = Color3.fromRGB(179, 179, 179);
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 22);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1f"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["1f"]["Name"] = [[v1]];
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[V1 (Old Bypass, Stable, More tags)]];

-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.v1.UICorner
G2L["20"] = Instance.new("UICorner", G2L["1f"]);


-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.v1.LocalScript
G2L["21"] = Instance.new("LocalScript", G2L["1f"]);


-- StarterGui.incognitoChat.UI.method.LocalScript
G2L["22"] = Instance.new("LocalScript", G2L["11"]);


-- StarterGui.incognitoChat.UI.TextLabel
G2L["23"] = Instance.new("TextLabel", G2L["2"]);
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["23"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["TextSize"] = 17;
G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["23"]["TextColor3"] = Color3.fromRGB(212, 212, 212);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Size"] = UDim2.new(1, 0, -0.16248, 50);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Text"] = [[V2]];
G2L["23"]["Position"] = UDim2.new(0.46457, 0, 0, 0);

-- StarterGui.incognitoChat.UI.TextLabel.UIPadding
G2L["24"] = Instance.new("UIPadding", G2L["23"]);
G2L["24"]["PaddingTop"] = UDim.new(0, 11);
G2L["24"]["PaddingLeft"] = UDim.new(0, 11);

-- StarterGui.incognitoChat.UI.TextLabel
G2L["25"] = Instance.new("TextLabel", G2L["2"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["25"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["TextSize"] = 9;
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["25"]["TextColor3"] = Color3.fromRGB(212, 212, 212);
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["Size"] = UDim2.new(1, 0, -0.16248, 50);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Text"] = [[Created By @Roblox_exploit-help]];
G2L["25"]["Position"] = UDim2.new(0, 0, -0.05147, 0);

-- StarterGui.incognitoChat.UI.TextLabel.UIPadding
G2L["26"] = Instance.new("UIPadding", G2L["25"]);
G2L["26"]["PaddingTop"] = UDim.new(0, 11);
G2L["26"]["PaddingLeft"] = UDim.new(0, 11);

-- StarterGui.incognitoChat.UI._anim
G2L["27"] = Instance.new("LocalScript", G2L["2"]);
G2L["27"]["Name"] = [[_anim]];

-- StarterGui.incognitoChat.UI.Dragify
G2L["28"] = Instance.new("LocalScript", G2L["2"]);
G2L["28"]["Name"] = [[Dragify]];

local wordlistbool = false

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TextChatService = game:GetService("TextChatService")
-- StarterGui.a.UI.bar.send.LocalScript
local abc2bypass = 'аbсԁеꬵɡһіјκІmпорԛгѕtᴜvԝхуzАВСDЕFԌНІЈКLМΝОРQRЅТUVԜХҮZ․‑∕'
if TextChatService.ChatVersion ~= Enum.ChatVersion.TextChatService then
	abc2bypass = 'аbсdеꬵɡһіјκІmпорԛгѕtυvԝхуzАВСDЕFԌНІЈКLМΝОРQRЅТUVԜХҮZ․‑∕' -- thats fire bro
end
-- StarterGui.incognitoChat.UI.bar.send.LocalScript
local function C_b()
local script = G2L["b"];
	local wordlist = {
		["ѕех"] = "seх",
		["ѕехо"] = "seхо",
		["․соm"] = " ․ сom ",
		[":∕∕"] = " :∕∕ ",
	}
	if TextChatService.ChatVersion ~= Enum.ChatVersion.TextChatService then
		wordlist = {
			["ѕех"] = "seх",
			["ѕехо"] = "seхо",
			["․соm"] = " ․ сom ",
			[":∕∕"] = " :  ∕  ∕  ",
		}
	end
	
	local function bypassword(msg)
		for word, replacement in pairs(wordlist) do
			msg = string.gsub(msg, word, replacement)
		end
		return msg
	end
	
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local function bypass(msg, abc2)
		local abc = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.-/'
		local lowermsg = "  "..msg.."  "
		lowermsg = lowermsg:gsub(" ", "   ")
		local bypassed = ""
		for i = 1, utf8.len(lowermsg) do
			local c = string.sub(lowermsg, utf8.offset(lowermsg, i), utf8.offset(lowermsg, i + 1) - 1)
			local i = string.find(abc, c, 1, true)
			if i then
				local sc = string.sub(abc2, utf8.offset(abc2, i), utf8.offset(abc2, i + 1) - 1)
				bypassed = bypassed .. sc
			else
				bypassed = bypassed .. c
			end
		end
		return bypassed
	end
	local function send(str)
		if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
			success, err = pcall(function()
				TextChatService.TextChannels.RBXGeneral:SendAsync(str)
			end)
		else
			success, err = pcall(function()
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str, "All")
			end)
		end
		if not success then
			TextChatService.TextChannels.RBXGeneral:SendAsync(str) -- try again
		end
	end
	local function sendMessage()
		local textBox = script.Parent.Parent:WaitForChild("messagebox")
		local message = textBox.Text
		if message and message ~= "" then
			local messagechat
			if wordlistbool then
				messagechat = bypassword(message)
			else
				messagechat = bypass(message, abc2bypass)
				messagechat = bypassword(messagechat)
			end
			send(messagechat)
		end
	end
	script.Parent.MouseButton1Click:Connect(sendMessage)
end;
task.spawn(C_b);
-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.v2.LocalScript
local function C_1a()
local script = G2L["1a"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Text = "Methods : V2"
        abc2bypass = 'аbсԁеꬵɡһіјκІmпорԛгѕtᴜvԝхуzАВСDЕFԌНІЈКLМΝОРQRЅТUVԜХҮZ․‑∕'
        if TextChatService.ChatVersion ~= Enum.ChatVersion.TextChatService then
            abc2bypass = 'аbсdеꬵɡһіјκІmпорԛгѕtυvԝхуzАВСDЕFԌНІЈКLМΝОРQRЅТUVԜХҮZ․‑∕' -- thats fire bro
        end
	end)
end;
task.spawn(C_1a);
-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.WordList.LocalScript
local function C_1e()
local script = G2L["1e"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Text = "Methods : WordList"
		wordlistbool = true
	end)
end;
task.spawn(C_1e);
-- StarterGui.incognitoChat.UI.method.Frame.ScrollingFrame.v1.LocalScript
local function C_21()
local script = G2L["21"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Text = "Methods : V1"
        abc2bypass = "aЬсԁefɡhijκlмпοᴘqгsᴛᴜvwxyzΑBСDEFԌHƖJKLMΝOРQRSΤᴜVWXYZ․"
	end)
end;
task.spawn(C_21);
-- StarterGui.incognitoChat.UI.method.LocalScript
local function C_22()
local script = G2L["22"];
	local toggle = false
	
	script.Parent.MouseButton1Click:Connect(function()
		toggle = not toggle
		script.Parent.Frame.Visible = toggle
	end)
end;
task.spawn(C_22);
-- StarterGui.incognitoChat.UI._anim
local function C_27()
local script = G2L["27"];
	local ts = game:GetService("TweenService")
	local i = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
	
	local send = script.Parent.bar.send
	local box = script.Parent.bar.messagebox
	local methods = script.Parent.method
	local WordList = methods.Frame.ScrollingFrame.WordList
	local v2 = methods.Frame.ScrollingFrame.v2
	local v1 = methods.Frame.ScrollingFrame.v1
	local a = false
	box.Changed:Connect(function(type)
		if type == "Text" then
			if #box.Text > 0 then
				ts:Create(send.ImageLabel,i,{ImageColor3=Color3.fromRGB(255, 255, 255)}):Play()
			elseif #box.Text > 200 or #box.Text == 0 then
				ts:Create(send.ImageLabel,i,{ImageColor3=Color3.fromRGB(130, 130, 130)}):Play()
			end
		end
	end)
	send.MouseEnter:Connect(function()
		ts:Create(send,i,{BackgroundColor3=Color3.fromRGB(33, 124, 157)}):Play()
	end)
	send.MouseLeave:Connect(function()
		ts:Create(send,i,{BackgroundColor3=Color3.fromRGB(20, 20, 21)}):Play()
	end)
	methods.MouseEnter:Connect(function()
		ts:Create(methods,i,{BackgroundColor3=Color3.fromRGB(33, 124, 157)}):Play()
	end)
	methods.MouseLeave:Connect(function()
		ts:Create(methods,i,{BackgroundColor3=Color3.fromRGB(20, 20, 21)}):Play()
	end)
	WordList.MouseEnter:Connect(function()
		ts:Create(WordList,i,{BackgroundColor3=Color3.fromRGB(33, 124, 157)}):Play()
	end)
	WordList.MouseLeave:Connect(function()
		ts:Create(WordList,i,{BackgroundColor3=Color3.fromRGB(20, 20, 21)}):Play()
	end)
	v2.MouseEnter:Connect(function()
		ts:Create(v2,i,{BackgroundColor3=Color3.fromRGB(33, 124, 157)}):Play()
	end)
	v2.MouseLeave:Connect(function()
		ts:Create(v2,i,{BackgroundColor3=Color3.fromRGB(20, 20, 21)}):Play()
	end)
	v1.MouseEnter:Connect(function()
		ts:Create(v1,i,{BackgroundColor3=Color3.fromRGB(33, 124, 157)}):Play()
	end)
	v1.MouseLeave:Connect(function()
		ts:Create(v1,i,{BackgroundColor3=Color3.fromRGB(20, 20, 21)}):Play()
	end)
end;
task.spawn(C_27);
-- StarterGui.incognitoChat.UI.Dragify
local function C_28()
local script = G2L["28"];
	local UIS = game:GetService("UserInputService")
	local dragSpeed = -math.huge
	
	local dragToggle = nil
	local dragInput = nil
	local dragStart = nil
	local dragPos = nil
	
	function dragify(Frame)
		function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        script.Parent.Position = Position
		end
		
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
		end)
		
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
		end)
		
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end;
task.spawn(C_28);

return G2L["1"], require;