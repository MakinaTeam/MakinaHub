        
local Sea = nil
if game.PlaceId == 2753915549 then
Sea = "1st Sea"
end
if game.PlaceId == 4442272183 then
Sea = "2nd Sea"
end
if game.PlaceId ==  7449423635 then
Sea = "3rd Sea"
end

---------------------------------------------------
repeat wait() until game:IsLoaded()
game.NetworkClient.ChildRemoved:Connect(function()
   game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end)
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)
---------------------------------------------------
local plr = game.Players.LocalPlayer
local modusrl = ""
local name = plr.Name
local Debounce = true
local PlaceId = game.PlaceId
---------------------------------------
local FruitSound = Instance.new("Sound")
FruitSound.Name = "Sound"
FruitSound.SoundId = "http://www.roblox.com/asset/?id=449615528"
FruitSound.Volume = 100
FruitSound.Looped = true
FruitSound.archivable = false
FruitSound.Parent = game.Workspace
-------------------------------------------------------Anti afk
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(5)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
------------------------------------------------------
for i, v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool")  
        and v.Handle then
                local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		BillboardGui.Parent = v.Handle
		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		BillboardGui.Active = true
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Size = UDim2.new(0, 100, 0, 25)
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderSizePixel = 0
		TextLabel.Size = UDim2.new(0, 100, 0, 25)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = v.Name
		TextLabel.TextColor3 =  Color3.new(0, 255, 169)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14
		TextLabel.TextWrapped = true
        end
    
    if v:IsA("Model") and v.Name == "Fruit " then
      if v.Handle then
                local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		BillboardGui.Parent = v
		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		BillboardGui.Active = true
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Size = UDim2.new(0, 100, 0, 25)
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderSizePixel = 0
		TextLabel.Size = UDim2.new(0, 100, 0, 25)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = "Fruit"
		TextLabel.TextColor3 = Color3.new(0, 255, 169)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14
		TextLabel.TextWrapped = true
        end
    end
end
-----------------------------------------------------------
   local Plr = game:GetService("Players").LocalPlayer
   local TweenService = game:GetService("TweenService")
   local current_tween
   local farming_tween
   local noclip_tween
   local reached_place
   ----------------
function TeleportTween(dist, AdditionalCFrame)
       if Plr.Character:FindFirstChild("HumanoidRootPart") and Plr.Character:FindFirstChild("Humanoid") then
           if AdditionalCFrame then
               local tweenInfo = TweenInfo.new((Plr.Character:WaitForChild("HumanoidRootPart").Position - dist.Position).magnitude / 320, Enum.EasingStyle.Linear)
               current_tween = TweenService:Create(Plr.Character:WaitForChild("HumanoidRootPart"), tweenInfo, {CFrame = dist * AdditionalCFrame})
           else 
               local tweenInfo = TweenInfo.new((Plr.Character:WaitForChild("HumanoidRootPart").Position - dist.Position).magnitude / 320, Enum.EasingStyle.Linear)
               current_tween = TweenService:Create(Plr.Character:WaitForChild("HumanoidRootPart"), tweenInfo, {CFrame = dist})
           end 
           current_tween:Play()
       end 
end
-----------------------------------------------------------
repeat wait() until game:GetService("Players").LocalPlayer:WaitForChild("DataLoaded") ~= nil
pcall (function()
    repeat wait(1) until game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame:FindFirstChild("TextButton") ~= nil or game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") ~= nil
 for i,v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame:WaitForChild("TextButton").Activated)) do
v.Function()
end
end)
----------------------------------------------------------
wait(1)
game.Players.LocalPlayer.Backpack.ChildAdded:Connect(function(Fruitys)
if Fruitys:IsA("Tool") and table.find (Fruits,Fruitys.Name) then
Debounce = true
local datas = {
   ["content"] = Sea,
   ["embeds"] = {{
           ["title"] = "Fruit 5 cu",
           ["description"] = Fruitys.Name,
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da)}}}
local newdatas = game:GetService("HttpService"):JSONEncode(datas)
local headers = {["content-type"] = "application/json"}
local requests = http_request or request or HttpPost or syn.request
local abcdefs = {Url = modurl, Body = newdatas, Method = "POST", Headers = headers}
requests(abcdefs)
end
--------------
if Fruitys:IsA("Tool") and table.find (Fruits,Fruitys.Name) and Webhook ~= "" or  Webhook ~= nil then
local datass = {
   ["content"] = Sea,
   ["embeds"] = {{
           ["title"] = "12345",
           ["description"] = Fruitys.Name,
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da)}}}
local newdatass = game:GetService("HttpService"):JSONEncode(datass)
local headerss = {["content-type"] = "application/json"}
local requestss = http_request or request or HttpPost or syn.request
local abcdefss = {Url = Webhook, Body = newdatass, Method = "POST", Headers = headerss}
requestss(abcdefss)
end
if  Fruitys:IsA("Tool") and table.find(Valuable, Fruitys.Name) and Valuable ~= nil 
then
Repeat = true
end
end)

------------------------------------------------------- Tu them hop vao
wait()

for i,v in pairs(Workspace:GetChildren()) do
    pcall (function()
if  v:IsA("Tool") and table.find(Valuable, v.Name)  and Valuable ~= nil then
Repeat = true
end
if  v:IsA("Tool") and table.find(Fruits,v.Name) then
repeat 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame 
      wait(1)
until v.Parent.Name ~= "Workspace"  or v == nil
Debounce = true
 local datasss = {
   ["content"] = Sea,
   ["embeds"] = {{
           ["title"] = "Dilo fan solic toro",
           ["description"] = v.Name,
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da)}}}
local newdatasss = game:GetService("HttpService"):JSONEncode(datasss)
local headersss = {["content-type"] = "application/json"}
local requestsss = http_request or request or HttpPost or syn.request
local abcdefsss = {Url = modurl, Body = newdatasss, Method = "POST", Headers = headersss}
requestsss(abcdefsss)
    if v:IsA("Tool") and table.find(Fruits, v.Name) and Webhook ~= "" then
           local datassss = {
   ["content"] = Sea,
   ["embeds"] = {{
           ["title"] = "Solic toro tuoi😏",
           ["description"] = v.Name,
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da)}}}
local newdatassss = game:GetService("HttpService"):JSONEncode(datassss)
local headerssss = {["content-type"] = "application/json"}
local requestssss = http_request or request or HttpPost or syn.request
local abcdefssss = {Url = Webhook, Body = newdatassss, Method = "POST", Headers = headerssss}
requestssss(abcdefssss)
end
elseif v.Name:match('Fruit') and v:IsA("Model") then
TeleportTween(v.Handle.CFrame, CFrame.new(0,50,0))
 current_tween.Completed:Wait() current_tween = nil  noclip_tween = false
repeat   
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame 
      wait(1)
until v.Parent.Name ~= "Workspace" or v == nil
end
end)
end
