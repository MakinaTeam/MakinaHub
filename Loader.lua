local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local UIGradient = Instance.new("UIGradient")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.Position = UDim2.new(0.154057801, 0, 0.228764698, 0)
ImageButton.Size = UDim2.new(0, 57, 0, 52)
ImageButton.Image = "rbxassetid://11991152983"

UICorner.Parent = ImageButton

UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 3
UIStroke.Parent = ImageButton

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.13, Color3.fromRGB(255, 93, 255)), ColorSequenceKeypoint.new(0.28, Color3.fromRGB(92, 95, 255)), ColorSequenceKeypoint.new(0.44, Color3.fromRGB(74, 255, 240)), ColorSequenceKeypoint.new(0.61, Color3.fromRGB(152, 255, 96)), ColorSequenceKeypoint.new(0.78, Color3.fromRGB(239, 255, 62)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 90, 78))}
UIGradient.Parent = UIStroke

-- Scripts:

local function VVOJSC_fake_script() -- ImageButton.LocalScript 


	ImageButton.MouseButton1Down:Connect(function()
		game:GetService("VirtualInputManager"):SendKeyEvent(true, "RightAlt" , false , game)
	end)
end
coroutine.wrap(VVOJSC_fake_script)()
local function DCLSA_fake_script() -- UIGradient.LocalScript 
	local script = Instance.new('LocalScript', UIGradient)

	
	local TweenService = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
	local tween = TweenService:Create(script.Parent, tweeninfo, {Rotation = 360})
	tween:Play()
	
end
coroutine.wrap(DCLSA_fake_script)()
  function two(gotoCFrame) --- Tween
      pcall(function()
          game.Players.LocalPlayer.Character.Humanoid.Sit = false
          game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
      end)
      if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
          pcall(function() 
              tweenz:Cancel()
          end)
          game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
      else
          local tween_s = game:service"TweenService"
          local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/325, Enum.EasingStyle.Linear)
           tween, err = pcall(function()
              tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
              tweenz:Play()
          end)
          if not tween then return err end
      end
      function _TweenCanCle()
          tweenz:Cancel()
      end
  
end

game.Players.LocalPlayer.Name = 0000000000
local notifLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Notification%20Library/main.lua"))()
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/XwwTN7w6"))()
local Window = Library.CreateLib("Nguyễn An ( Update Auto Bật Tộc V4 )", "BloodTheme")
game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Nguyễn An";
    Text = "Nhận cày Thuê Shindo + blox";
    Icon = "rbxthumb://type=Asset&id=11749957186&w=150&h=150"})
    Duration = 5; 
 
    game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Nguyễn An";
    Text = "https://www.facebook.com/nguyenanutgr";
    Icon = "rbxthumb://type=Asset&id=11749957186&w=150&h=150"})
    Duration = 5; 
 
    game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Nguyễn An";
    Text = "Mua game pass đê ae";
    Button1 = "Ok";
    Button2 = "đéo";
    Icon = "rbxthumb://type=Asset&id=11749957186&w=150&h=150"})
    Duration = 5;
--test

local Tab = Window:NewTab("Blox Fruit")
local Section = Tab:NewSection("Blox Fruit")

Section:NewButton("An_Hub Pc : Pe ( Ngon ) ", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet"https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/blox")()
end)

Section:NewButton("Mukuro v2 :Pc ( Fram Ngon ) ", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
end)

Section:NewButton("Maru X : Mobile ( fake ) ", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet("https://raw.githubusercontent.com/joi-droid/MaruHubBF/main/GOHANSSJ3"))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/click%20hitbot'))()
end)

Section:NewButton("Zen Hub :( click link lấy key nhanh )", "Nguyễn An", function()
    print("Clicked")
setclipboard('https://pandatechnology.xyz/getkey?service=zenhub&hwid=1339719223_MOBILE&token=cfe54e25c6642d4d12960f6d42298e0658bd714108e9982c3b6e332c5eaa971f18aaffd4372022eb94e46f58831190c0')
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader"))()
end)

Section:NewButton("MuKuRo v1 : Pc ( xài cũng đc )", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/DonateMe/main/OldBf"))()
end)

Section:NewButton("Speed Hub x : Pc ", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game"))()
end)

Section:NewButton("Zaque Hub : Pc và Pe", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Mei2232/ZaqueHub/main/Zaque%20Hub"))()
end)
 
Section:NewButton("NEVA HUB : Pc và Pe", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet('https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'))()
end)

 
Section:NewButton("Hoho hub : Pc và Pe", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)

Section:NewButton("Auto Chest (Vip) : Pc và Pe", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)

Section:NewButton("Show acc ", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet("https://pastebin.com/raw/zcFd20tT"))()
end)
Section:NewButton("auto click có hitbox", "bật rùi là ko dừng lại dc", function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/click%20hitbot'))()
end)
--shindo
local Tab = Window:NewTab("Shindo Life")
local Section = Tab:NewSection("Nguyễn An")
Section:NewButton("V.G Hub", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
end)
Section:NewButton("Premier lite Mobile 1", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet("https://raw.githubusercontent.com/SxnwDev/Premier/main/Free-Premier.lua", true))()
end)

Section:NewButton("Platinium : Pc và Pe (vip)", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZaRdoOx/Platinium/main/Loader"))()
end)

Section:NewButton("Muhamma Mobile 2", "Nguyễn An", function()
    print("Clicked")
getgenv().key = "projectWBIsAwesomemrcrapcrappypattt"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Muhammad6196/Project-WD/main/Main.lua"))()
end)
Section:NewButton("Platinium (Vip)", "Nguyễn An", function()
    print("Clicked")
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZaRdoOx/Platinium/main/Loader"))()
end)
Section:NewButton("Paid Vip K Bán : Bản 1", "Nguyễn An", function()
    print("Clicked")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Nguyễn An : bật hack vui lòng đợi 30s-1p ", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
OrionLib:MakeNotification({
	Name = "Nguyễn An ",
	Content = "Sao Lại Vô Đây , Mua Key Chưa ?",
	Image = "rbxthumb://type=Asset&id=11749957186&w=150&h=150",
	Time = 5
}) 
 
_G.Key = "andzvaio"
_G.KeyInput = "string"
 
function MakeScriptHub()
    _G.wl_key = '2718e31e679c23944b8c7ce0a3fd988eb2d6d0fe'
loadstring(game:HttpGet('https://keshhub.xyz/.earlyaccess', true))()
end
 
function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Nguyễn AN",
        Content = "Mã key k đc chia sẻ ko tao xiên mày",
        Image = "rbxthumb://type=Asset&id=11749957186&w=150&h=150",
        Time = 5
    })
wait(5)
    OrionLib:Destroy()
end
function InCorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Nguyễn An",
        Content = "mày chưa mua key mà đòi xài hack",
        Image = "rbxthumb://type=Asset&id=11749957186&w=150&h=150",
        Time = 5
    })
end
 
local Tab = Window:MakeTab({
	Name = "Nguyễn An",
	Icon = "rbxthumb://type=Asset&id=11749957186&w=150&h=150",
	PremiumOnly = false
})
Tab:AddTextbox({
	Name = "Nhập Key Vô Rồi Bấm Dòng Bên Dưới Bản 1  ↓ ↓ ↓",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
InCorrectKeyNotification()
	end	  
})
Tab:AddButton({
	Name = "sau khi nhập key bấm vô đây",
	Callback = function()
      		if _G.KeyInput == _G.Key then
            MakeScriptHub()
            CorrectKeyNotification()
            end
  	end    
})
 
 
end)
Section:NewButton("Paid Vip K Bán : Bản 2", "Nguyễn An", function()
    print("Clicked")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Nguyễn An : bật hack vui lòng đợi 30s-1p ", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
OrionLib:MakeNotification({
	Name = "Nguyễn An ",
	Content = "Sao Lại Vô Đây , Mua Key Chưa ?",
	Image = "rbxthumb://type=Asset&id=11749957186&w=150&h=150",
	Time = 5
}) 
 
_G.Key = "123321"
_G.KeyInput = "string"
 
function MakeScriptHub()
    _G.wl_key = '42cedb5f55b51579fb13e13cb34f73b957651298'
loadstring(game:HttpGet('https://keshhub.xyz/.earlyaccess', true))()
end
 
function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Nguyễn AN",
        Content = "Mã key k đc chia sẻ ko tao xiên mày",
        Image = "rbxthumb://type=Asset&id=11749957186&w=150&h=150",
        Time = 5
    })
wait(5)
    OrionLib:Destroy()
end
function InCorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Nguyễn An",
        Content = "mày chưa mua key mà đòi xài hack",
        Image = "rbxthumb://type=Asset&id=11749957186&w=150&h=150",
        Time = 5
    })
end
 
local Tab = Window:MakeTab({
	Name = "Nguyễn An",
	Icon = "rbxthumb://type=Asset&id=11749957186&w=150&h=150",
	PremiumOnly = false
})
Tab:AddTextbox({
	Name = "Nhập Key Vô Rồi Bấm Dòng Bên Dưới Bản 2 ↓ ↓ ↓",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
InCorrectKeyNotification()
	end	  
})
Tab:AddButton({
	Name = "sau khi nhập key bấm vô đây",
	Callback = function()
      		if _G.KeyInput == _G.Key then
            MakeScriptHub()
            CorrectKeyNotification()
            end
  	end    
})
 
 
end)

--other
local Tab = Window:NewTab("Hack Khác")
local Section = Tab:NewSection("hack khác")
Section:NewButton("Hack Bay 1 ", "nó chỉ bay dc thui :3", function()
    print("Clicked")
    loadstring(game:HttpGet('https://pastebin.com/raw/fVhrud1Q'))()
end)
Section:NewButton("Hack Bay 2", "nó chỉ bay dc thui nhưng xịn hơn :3", function()
    print("Clicked")
    loadstring(game:HttpGet('https://pastebin.com/raw/iTCDbRbG'))()
end)
Section:NewButton("Hack Bay 3", "nó chỉ bay dc thui nhưng xịn hơn :3", function()
    print("Clicked")
    loadstring(game:HttpGet('https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/acc1'))()
end)

Section:NewKeybind("ẩn hiện cho PC", "lỗi gì tự chỉnh nút nào đó trên bàn phím", Enum.KeyCode.RightAlt, function()
	Library:ToggleUI()
end)
Section:NewButton("hack truy cập file game", "chỉnh sửa ít thôi ko là bay acc", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
end)
Section:NewButton("vứt mũ", " Vứt Mũ Ra Chỗ Khác", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/drop_hat'))()
end)
Section:NewButton("Vất item và đi theo", " .", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/kD8kisTN'))()
end)
Section:NewButton("mũ bay vòng vòng", " .", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/4B4fktPS", true))()
end)
Section:NewButton("cầm mũ và có thể ăn", " .", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/50AL19P5", true))()
end)
Section:NewButton("Cho mũ : Pc và pe", " .", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/give%20hat"))()
end)
Section:NewButton("Chỉnh Setting roblox : Pc và pe", " .", function()
    loadstring(game:HttpGet("https://eternityhub.xyz/BetterRoblox/Loader"))()
end)

local Tab = Window:NewTab("Fix Lag")
local Section = Tab:NewSection("Fix Lag Máy yếu")
Section:NewButton("Fix Lag : Pc và Pe", "Nguyễn An", function()
    print("Clicked")
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end

end)
local Section = Tab:NewSection("Bật hack trc khi bật untra fix lag")
Section:NewButton("Untra Fix Lag : Pc và Pe ( Treo game )", "Nguyễn An", function()
    print("Clicked")   
loadstring(game:HttpGet('https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/ultra%20fix%20lag'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/acc1'))()
end)

local Tab = Window:NewTab("RaceV4 ( Update )")
local Section = Tab:NewSection("tp check")

Section:NewButton("Tele Tảng Đá", "ButtonInfo", function()
    two(CFrame.new(-5355.62256, 313.715485, -2495.17383, 0.447177857, 6.1724144e-08, 0.894445062, 3.27962084e-08, 1, -8.54047784e-08, -0.894445062, 6.75255336e-08, 0.447177857))
end)

Section:NewButton("Tele Cổ Thụ", "ButtonInfo", function()
    two(CFrame.new(2957.51367, 2282.13867, -7220.29492, 0.407614022, 2.05194652e-08, -0.913154304, 8.29036395e-08, 1, 5.9477518e-08, 0.913154304, -9.99476839e-08, 0.407614022))
end)

local Section = Tab:NewSection("Teleport Cổng Tộc")
Section:NewButton("Tele cổng Cá", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.3555, 14896.5352, 102.624695, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    two(CFrame.new(28223.9746, 14890.6338, -211.404022, -0.263963521, -6.30879171e-08, 0.964532673, -4.29495977e-08, 1, 5.36537463e-08, -0.964532673, -2.7263658e-08, -0.263963521))
end)


Section:NewButton("Tele cổng Thỏ", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.3555, 14896.5352, 102.624695, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    two(CFrame.new(29020.4277, 14890.6328, -378.330383, 0.990481138, -7.46895665e-08, -0.137648329, 6.20387155e-08, 1, -9.61971978e-08, 0.137648329, 8.67419843e-08, 0.990481138))
end)

Section:NewButton("Tele cổng Con người + click hitbot", "ButtonInfo", function()
print("Clicked")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.3555, 14896.5352, 102.624695, 0, 0, 1, 0, 1, 0, -1, 0, 0)
two(CFrame.new(29237.3965, 14891.7373, -202.29657, 0.314430177, -1.06308867e-07, -0.94928062, 5.46941301e-08, 1, -9.38725435e-08, 0.94928062, -2.24037162e-08, 0.314430177))
loadstring(game:HttpGet('https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/click%20hitbot'))()
end)

Section:NewButton("Tele cổng Thiên thần + Bay để đi ải ", "ButtonInfo", function()
print("Clicked")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.3555, 14896.5352, 102.624695, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    loadstring(game:HttpGet('https://pastebin.com/raw/fVhrud1Q'))()
    two(CFrame.new(28962.1758, 14919.2812, 236.689529, 0.0245016906, -1.02372431e-08, -0.999699771, 6.26366514e-08, 1, -8.70515215e-09, 0.999699771, -6.24045597e-08, 0.0245016906))
end)

Section:NewButton("Tele Quỷ + click hitbot", "ButtonInfo", function()
print("Clicked")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.3555, 14896.5352, 102.624695, 0, 0, 1, 0, 1, 0, -1, 0, 0)
   two(CFrame.new(28666.498, 14890.335, 453.693146, -0.701418459, -6.73539589e-08, 0.71274972, -1.05283206e-07, 1, -9.110666e-09, -0.71274972, -8.14309615e-08, -0.701418459))
   loadstring(game:HttpGet('https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/click%20hitbot'))()
   end)
   
Section:NewButton("Tele Người Máy ", "ButtonInfo", function()
print("Clicked")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.3555, 14896.5352, 102.624695, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    two(CFrame.new(28492.0957, 14895.6328, -421.79657, -0.196106553, -2.49572771e-08, 0.980582595, 1.00235162e-07, 1, 4.54974938e-08, -0.980582595, 1.07211207e-07, -0.196106553))
    end)
local Section = Tab:NewSection("Auto Né Bom tộc cybort")
Section:NewButton("Né Bom", "ButtonInfo", function()
print("Clicked")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20093.4961, 9954.93945, -125.194695, 0.627363682, 1.15070167e-08, 0.778726399, -8.20592732e-08, 1, 5.13325205e-08, -0.778726399, -9.61058788e-08, 0.627363682)
end)
local Section = Tab:NewSection("Auto Bật V4")
Section:NewToggle("Auto bật V4 ( Reset sẽ tự động tắt )", "ToggleInfo", function(state)
    if state then
    while true do
    local args = {
    [1] = true
}

game:GetService("Players"):WaitForChild("0"):WaitForChild("Backpack"):WaitForChild("Awakening"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
end
    else
        while true do
 local args = {
    [1] = false
}
game:GetService("Players"):WaitForChild("0"):WaitForChild("Backpack"):WaitForChild("Awakening"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
        end  
end
end)
local Section = Tab:NewSection("Auto Buy Upgrade Race")
Section:NewToggle("Auto Mua Update ( Reset sẽ tự động tắt )", "ToggleInfo", function(state)
if state then
    while true do
    local args = {
    [1] = true
}

local args = {
    [1] = "UpgradeRace",
    [2] = "Buy"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

end
    else
        while true do
 local args = {
    [1] = false
}
local args = {
    [1] = "UpgradeRace",
    [2] = "Buy"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

        end  
end
end)
local Tab = Window:NewTab("Shop Uy tín")
local Section = Tab:NewSection("Nơi Bán Robux Uy tín")
Section:NewButton("Sao chép Link   ", ":3", function()
    print("Clicked")
   setclipboard('https://www.facebook.com/nguyenanutgr')
   game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Nguyễn An";
    Text = "Hack Ngon không";
    Button1 = "Ngon";
    Button2 = "đéo";
    Icon = "rbxthumb://type=Asset&id=11749957186&w=150&h=150"})
    Duration = 5;
   end)
local Section = Tab:NewSection("Nơi cày thuê uy tín")
Section:NewButton("Bảng Giá Cày Thuê   ", ":3", function()
print("Clicked")
loadstring(game:HttpGet('https://raw.githubusercontent.com/asdjasdhsuhduahd213/AN_HUB/main/ib'))()
setclipboard('https://www.facebook.com/nguyenanutgr')
game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Nguyễn An";
    Text = "Hack Ngon không";
    Button1 = "Ngon";
    Button2 = "đéo";
    Icon = "rbxthumb://type=Asset&id=11749957186&w=150&h=150"})
    Duration = 5;
 end)
 local Section = Tab:NewSection("Đóng góp ý kiến về script")
 Section:NewButton("Nơi đóng góp   ", ":3", function()
 print("Clicked")
   setclipboard('https://www.facebook.com/nguyenanutgr')
   game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Nguyễn An";
    Text = "Đã Sao chép link fb";
    Icon = "rbxthumb://type=Asset&id=11749957186&w=150&h=150"})
    Duration = 5;
   end)
