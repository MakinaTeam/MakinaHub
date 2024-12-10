local lib = loadstring(game:HttpGet("https://pastebin.com/raw/ykfLD2nF"))()

local win = lib:Window("Danny Hub",Color3.fromRGB(229,49,90))

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local savedCFrame = nil

local page1 = win:Page("FirstPage","6026568198")

local section1 = page1:Section("« Fishing »")
local section2 = page1:Section("« Configurations »")

section1:Button("Save Position",function()
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
savedCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
end
end)

section1:Toggle("Auto Fishing",false,function(Value)
_G.Auto_Farm = Value
autocastposition = Value
end)

_G.EnableFishing = true
local args = {
    [1] = 59.600000000000016,
    [2] = 1
}
local function CastFishingRod()
    while _G.EnableFishing do
        local player = game:GetService("Players").LocalPlayer
        local rod = player.Character:FindFirstChild("Rod")
        if rod and rod:FindFirstChild("events") and rod.events:FindFirstChild("cast") then
            rod.events.cast:FireServer(unpack(args))
        end
        task.wait(1) 
    end
end
task.spawn(CastFishingRod)

spawn(function()
    while task.wait() do
        if _G.Auto_Farm and savedCFrame then
            pcall(function()
                local player = game.Players.LocalPlayer
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    player.Character.HumanoidRootPart.CFrame = savedCFrame
                    task.spawn(function()
                        while task.wait() do
                            pcall(function()
                                if autocastposition and Teleposi then
                                    teleportToSavedPosition()
                                end
                                -- ย้ายคันเบ็ดจากกระเป๋าเป้ไปที่ตัวละคร
                                for _, tool in pairs(player.Backpack:GetChildren()) do
                                    if string.find(tool.Name, "Rod") then
                                        tool.Parent = player.Character
                                        task.wait(0.2)
                                    end
                                end
                                for _, equippedTool in pairs(player.Character:GetChildren()) do
                                    if string.find(equippedTool.Name, "Rod") then
                                        if player.PlayerGui:FindFirstChild("reel") then
                                            game:GetService("ReplicatedStorage").events.reelfinished:FireServer(100, true)
                                        elseif player.PlayerGui:FindFirstChild("shakeui") then
                                            for _, button in pairs(player.PlayerGui.shakeui.safezone:GetChildren()) do
                                                if button.Name == "button" then
                                                    button.Size = UDim2.new(0, 10000, 0, 10000)
                                                    button.Position = UDim2.new(-2, 0, -5, 0)
                                                    button.Transparency = 1
                                                    task.wait(math.random(1, 2))
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                    task.wait(1)
                                                    game:GetService("VirtualUser"):Button1Up(Vector2.new(1280, 672))
                                                end
                                            end
                                        elseif not equippedTool.values.casted.Value then
                                            local args = {
                                                [1] = 100
                                            }
                                            equippedTool.events.cast:FireServer(unpack(args))
                                        end
                                    end
                                end
                            end)
                        end
                    end)
                end
            end)
        end
    end
end)

LoadPage("FirstPage")
