local localScript = Instance.new("LocalScript")
 localScript.Name = "LocalScript"
 localScript.Source = local server = Instance.new("RemoteEvent",game.ReplicatedStorage)
server.OnServerEvent:connect(function(player,SS)
    loadstring(SS)()
end) -- Insert the script code here as a string
 localScript.Parent = player:WaitForChild("PlayerGui") -- Parent it to PlayerGui or another local container