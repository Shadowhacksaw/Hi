game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "gubby!",
    Text = "Made by your brother",
    Button1 = "Thank you:)",
    Duration = 5
})

local args = {
    "PurchaseContent",
    game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Killers"):WaitForChild("Gubby")
}
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))

local args = {
    "PurchaseContent",
    game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Killers"):WaitForChild("FakePeppino")
}
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))

local args = {
    "PurchaseContent",
    game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Killers"):WaitForChild("Grug")
}
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))