local Library = loadstring(game:HttpGet("https://pastebin.com/raw/us155g5j"))()
local ThemeManager = loadstring(game:HttpGet('https://pastebin.com/raw/9p06pghh'))()
local SaveManager = loadstring(game:HttpGet('https://pastebin.com/raw/9MwnfUrA'))()

local Window = Library:CreateWindow({
Title = "Forenzy Hub - Blox Fruit",
AutoShow = true,
Center = true,
TabPadding = 6
})
task.spawn(function()
while task.wait() do
Library:AttemptSave()
Window:SetWindowTitle("Forenzy Hub - Blox Fruit | "..os.date('%A, %B %dth, %Y. at %H:%M:%S'))
end
end)

local Tabs = {
["General"] = Window:AddTab("General"),
["Automatic"] = Window:AddTab("Automatic"),
["RacePuzzle"] = Window:AddTab("Race Puzzle"),
["Visual"] = Window:AddTab("Visuals"),
["Miscellaneous"] = Window:AddTab("Miscellaneous"),
["Wehook"] = Window:AddTab("Wehook"),
["Configurations"] = Window:AddTab("Ui"),
}

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
SaveManager:BuildConfigSection(Tabs['Configurations'])
ThemeManager:ApplyToTab(Tabs['Configurations'])
SaveManager:LoadAutoloadConfig()

player = game.Players.LocalPlayer
L1 = Instance.new("ScreenGui")
L2 = Instance.new("TextButton")
L3 = Instance.new("UICorner")
L4 = Instance.new("ImageLabel")
sound = Instance.new("Sound")
L3.Name = "UICorner"
L3.Parent = L2
L4.Name = "ButtonImage"
L4.Parent = L2
L4.BackgroundColor3 = Color3.fromRGB(22, 55, 240)
L4.BackgroundTransparency = 1.000
L4.BorderSizePixel = 0
L4.Position = UDim2.new(0.1, 0, 0.1, 0) 
L4.Size = UDim2.new(0, 45, 0, 45)
L4.Image = ""
L1.Name = "MainGui"
L1.Parent = player:WaitForChild("PlayerGui")
L1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
L2.Name = "CustomButton"
L2.Parent = L1
L2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
L2.BackgroundTransparency = 0.2
L2.BorderSizePixel = 0
L2.Position = UDim2.new(0.0, 10, 0, 10)
L2.Size = UDim2.new(0, 50, 0, 50)
L2.Font = Enum.Font.FredokaOne
L2.Text = "Fn Hub"
L2.TextColor3 = Color3.fromRGB(255, 0, 69)
L2.TextSize = 9.000
L2.Draggable = true
sound.Parent = L2
sound.SoundId = "rbxassetid://130785805"
L2.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"RightControl",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
		game:GetService("VirtualInputManager"):SendKeyEvent(false,"RightControl",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    sound:Play()
end) 

local https = game.HttpService
local filename = 'Forenzy_Hub_Script_' .. game.Players.LocalPlayer.Name .. ".json"
function loadconfig()
if (readfile and isfile and isfile('Forenzy_Hub_Script/' .. filename)) then
_G.Config = https:JSONDecode(readfile('Forenzy_Hub_Script/' .. filename))
end end
    
if not _G.Config then
loadconfig()
end
    
function Saveconfig()
local json;
if isfolder("Forenzy_Hub_Script") == false then
makefolder("Forenzy_Hub_Script")
end
if (writefile) then
local json = https:JSONEncode(_G.Config)
writefile('Forenzy_Hub_Script/' .. filename,json)
end end
    
if not _G.Config then
_G.Config = {
  ["Main"] = {
    ["Auto Farm Level"] = false,
    ["Auto Mob Aura"] = false,
    ["Auto Travel Dressrosa"] = false,
    ["Auto Travel Zou"] = false,
  },
  ["Boss"] = {
    ["Select Boss"] = "nil",
    ["Auto Farm Boss"] = false,
    ["Auto Farm All Boss"] = false,
  },
  ["Mob"] = {
    ["Distance"] = 2500,
    ["Mob Aura"] = false,
  },
  ["Mastery"] = {
    ["Auto Farm Mastery Fruit"] = false,
    ["Auto Farm Mastery Gun"] = false,
  },
  ["Distance"] = {
    ["Pos X"] = 10,
    ["Pos Y"] = 30,
    ["Pos Z"] = 10,
  },
  ["Setting"] = {
    ["Select Weapon"] = "Melee",
    ["Bring Enemies"] = true,
    ["Instant Attack"] = true,
    ["Fast Teleport"] = true,
    ["Random Position"] = true,
    ["Enable Active Race V4"] = false,
    ["Tween Speed"] = 250,
  },
  ["Code"] = {
    ["Select Level"] = 1,
    ["Auto Redeem Code"] = false,
  },
  ["Skill"] = {
    ["Skill Z"] = true,
    ["Skill X"] = true,
    ["Skill C"] = true,
    ["Skill V"] = true,
    ["Skill F"] = false,
  },
  ["Stats"] = {
    ["Select Stats"] = "nil",
    ["Enable"] = false,
    ["Point Stats"] = 3,
  },
  ["Sword"] = {
    ["Select Sword"] = "nil",
    ["Auto Farm Sword"] = false,
  },
  ["Chest"] = {
    ["Auto Farm Chest"] = false,
    ["Auto Farm Chest Hop"] = false,
  },
  ["Weapon"] = {
    ["Select Weapon"] = "",
    ["Auto Fully Weapon"] = false,
  },
  ["DoughKing"] = {
    ["Auto Dough King"] = false,
    ["Auto Dough King Hop"] = false,
  },
   ["Bones"] = {
    ["Auto Farm Bones"] = false,
    ["Trade With Death King"] = false,
  },
  ["Soul Reaper"] = {
    ["Auto Soul Reaper"] = false,
    ["Auto Soul Reaper Hop"] = false,
  },
  ["Cake Prince"] = {
    ["Auto Farm Cake Prince"] = false,
  },
  ["Arena Trainer"] = {
    ["Auto Arena Trainer"] = false,
  },
  ["DarkBeard"] = { 
    ["Choose Wait Hop"] = "2550",
    ["Auto Dark Coat"] = false,
    ["Auto Dark Coat Hop"] = false,
  },
  ["EvoRace"] = {
    ["Auto Evo Race V2"] = false,
  },
  ["Fighting"] = {
    ["Auto Superhuman"] = false,
  },
}
end

if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

_G.AutoRejoin = true
spawn(
    function()
        while wait() do
            if _G.AutoRejoin then
                _G.AutoRejoin =
                    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(
                    function(child)
                        if
                            child.Name == "ErrorPrompt" and child:FindFirstChild("MessageArea") and
                                child.MessageArea:FindFirstChild("ErrorFrame")
                         then
                            game:GetService("TeleportService"):Teleport(game.PlaceId)
                        end
                    end
                )
            end
        end
    end
)

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
        game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
    end
    if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
        game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

if not LPH_OBFUSCATED then
	LPH_JIT_MAX = (function(...) return ... end)
	LPH_NO_VIRTUALIZE = (function(...) return ... end)
	LPH_NO_UPVALUES = (function(...) return ... end)
end
NoAttackAnimation = true
local DmgAttack = game:GetService("ReplicatedStorage").Assets.GUI:WaitForChild("DamageCounter")
local PC = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local plr = game.Players.LocalPlayer
local RL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local oldRL = RL.wrapAttackAnimationAsync
RL.wrapAttackAnimationAsync = function(a, b, c, d, func)
    if not NoAttackAnimation then
        return oldRL(a, b, c, 60, func)
    end
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for i, v in pairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
            table.insert(Hits, Human.RootPart)
        end
    end
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i, v in pairs(Enemies) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
            table.insert(Hits, Human.RootPart)
        end
    end
    a:Play(0.01, 0.01, 0.01)
    pcall(func, Hits)
end
getAllBladeHits = LPH_NO_VIRTUALIZE(function(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i, v in pairs(Enemies) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end)
getAllBladeHitsPlayers = LPH_NO_VIRTUALIZE(function(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for i, v in pairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end)
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigEven = game:GetService("ReplicatedStorage").RigControllerEvent
local AttackAnim = Instance.new("Animation")
local AttackCoolDown = 0
local cooldowntickFire = 0
local MaxFire = 1000
local FireCooldown = 0.01
local FireL = 0
local bladehit = {}
CancelCoolDown = LPH_JIT_MAX(function()
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        AttackCoolDown = tick() + (FireCooldown or 0.01) + ((FireL / MaxFire) * 0.3)
        RigEven.FireServer(RigEven, "weaponChange", ac.currentWeaponModel.Name)
        FireL = FireL + 1
        task.delay((FireCooldown or 0.01) + ((FireL + 0.1 / MaxFire) * 0.1), function()
            FireL = FireL - 1
        end)
    end
end)
AttackFunction = LPH_JIT_MAX(function(typef)
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}      
        if #bladehit > 0 then
            pcall(task.spawn, ac.attack, ac)
            if tick() > AttackCoolDown then
                CancelCoolDown()
            end
            if tick() - cooldowntickFire > 0.1 then
                ac.timeToNextAttack = 0
                ac.hitboxMagnitude = 60
                pcall(task.spawn, ac.attack, ac)
                cooldowntickFire = tick()
            end
            local AMI3 = ac.anims.basic[3]
            local AMI2 = ac.anims.basic[2]
            local REALID = AMI3 or AMI2
            AttackAnim.AnimationId = REALID
            local StartP = ac.humanoid:LoadAnimation(AttackAnim)
            StartP:Play(0.01, 0.01, 0.01)
            RigEven.FireServer(RigEven, "hit", bladehit, AMI3 and 3 or 2, "")
            task.delay(0, function()
                StartP:Stop()
            end)
        end
    end
end)
function CheckStun()
    if game:GetService('Players').LocalPlayer.Character:FindFirstChild("Stun") then
        return game:GetService('Players').LocalPlayer.Character.Stun.Value ~= 0
    end
    return false
end
LPH_JIT_MAX(function()
    spawn(function()
        while game:GetService("RunService").Stepped:Wait() do
            local ac = CombatFrameworkR.activeController
            if ac and ac.equipped and not CheckStun() then
                if NeedAttacking and Fast_Attack then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 1)
                    end)
                elseif DamageAura then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 3)
                    end)
                elseif UsefastattackPlayers and Fast_Attack then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 2)
                    end)
                elseif NeedAttacking and Fast_Attack == false then
                    if ac.hitboxMagnitude ~= 55 then
                        ac.hitboxMagnitude = 55
                    end
                    pcall(task.spawn, ac.attack, ac)
                end
            end
        end
    end)
end)()

W1 = false
W2 = false
W3 = false
local placeId = game.PlaceId
if placeId == 2753915549 then
    W1 = true
elseif placeId == 4442272183 then
    W2 = true
elseif placeId == 7449423635 then
    W3 = true
end

function CheckQuest() 
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)             
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then 
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = "Sun-kissed Warrior"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "kissed"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
        elseif MyLevel == 2525 or MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16347.4150390625, 92.09503936767578, 1122.335205078125)
        end
    end
end

    function CheckQuest()
        local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
        local IgnoreQuests = {"BartiloQuest", "Trainees", "MarineQuest", "CitizenQuest"}
        local Quest = {}
        local LevelReq = 0
        for i,v in pairs(require(game:GetService("ReplicatedStorage").Quests)) do
            for a,b in pairs(v) do
                for j, k in pairs(b["Task"]) do
                    if b["LevelReq"] <= Lvl and b["LevelReq"] >= LevelReq and not table.find(IgnoreQuests, i) and k > 1 then		            
                        Quest["QuestName"] = i
                        Quest["ID"] = a
                        Quest["MobName"] = j
                        LevelReq = b["LevelReq"]
                    end
                end	
            end
        end
        if LevelReq >= 700 and W1 then
            Quest["MobName"] = "Galley Captain"
            Quest["QuestName"] = "FountainQuest"
            Quest["ID"] = 2
        elseif LevelReq >= 1450 and W2 then
            Quest["MobName"] = "Water Fighter"
            Quest["QuestName"] = "ForgottenQuest"
            Quest["ID"] = 2
        end
        return Quest
    end
    
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end

    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end       
function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end
function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end
function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateIslandMirageESP() 
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    pcall(function()
        if MirageIslandESP then 
            if v.Name == "Mirage Island" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateAfdESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AfdESP then 
            if v.Name == "Advanced Fruit Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function UpdateAuraESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AuraESP then 
            if v.Name == "Master of Enhancement" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function UpdateLSDESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if LADESP then 
            if v.Name == "Legendary Sword Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function UpdateGeaESP() 
for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
    pcall(function()
        if GearESP then 
            if v.Name == "MeshPart" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end
local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(function()
        if InfiniteEnergy then
            LocalPlayer.Character.Energy.Value = originalstam
        end 
    end)
end
spawn(function()
    pcall(function()
        while wait(.1) do
            if InfiniteEnergy then
                wait(0.1)
                originalstam = LocalPlayer.Character.Energy.Value
                infinitestam()
            end
        end
    end)
end)
  --Attack Mastery
    function NormalAttack()
        if not _G.NormalAttack then
            local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
            local CombatFramework = debug.getupvalues(Module)[2]
            local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
            CamShake:Stop()
            CombatFramework.activeController.attacking = false
            CombatFramework.activeController.timeToNextAttack = 0
            CombatFramework.activeController.hitboxMagnitude = 180
            game:GetService "VirtualUser":CaptureController()
            game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
        end
    end
function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end
function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

	local function CheckItem(matname)
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
			if type(v) == "table" then
				if v.Type == "Material" then
					if v.Name == matname then
						return v.Count
					end
				end
			end
		end
		return 0
		end

        if World3 then
            distbyp = 5000;
            island = {
                ["Port Town"] = CFrame.new( -290.7376708984375, 6.729952812194824, 5343.5537109375),
                ["Hydra Island"] = CFrame.new(5749.7861328125 + 50 , 611.9736938476562, -276.2497863769531),
                Mansion = CFrame.new( -12471.169921875 + 50 , 374.94024658203, -7551.677734375),
                ["Castle On The Sea"] = CFrame.new( -5085.23681640625 + 50 , 316.5072021484375, -3156.202880859375),
                ["Haunted Island"] = CFrame.new( -9547.5703125, 141.0137481689453, 5535.16162109375),
                ["Great Tree"] = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625),
                ["Candy Island"] = CFrame.new( -1106.076416015625, 13.016114234924316, -14231.9990234375),
                ["Cake Island"] = CFrame.new( -1903.6856689453125, 36.70722579956055, -11857.265625),
                ["Loaf Island"] = CFrame.new( -889.8325805664062, 64.72842407226562, -10895.8876953125),
                ["Peanut Island"] = CFrame.new( -1943.59716796875, 37.012996673583984, -10288.01171875),
                ["Cocoa Island"] = CFrame.new(147.35205078125, 23.642955780029297, -12030.5498046875),
                ["Tiki Outpost"] = CFrame.new( -16234, 9, 416)
            };
        elseif World2 then
            distbyp = 3500;
            island = {
                A = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938),
                B = CFrame.new( -5622.033203125, 492.19604492188, -781.78552246094),
                C = CFrame.new( -11.311455726624, 29.276733398438, 2771.5224609375),
                D = CFrame.new( -2448.5300292969, 73.016105651855, -3210.6306152344),
                E = CFrame.new( -380.47927856445, 77.220390319824, 255.82550048828),
                F = CFrame.new( -3032.7641601563, 317.89672851563, -10075.373046875),
                G = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188),
                H = CFrame.new(923.40197753906, 125.05712890625, 32885.875),
                I = CFrame.new( -6127.654296875, 15.951762199402, -5040.2861328125)
            };
        elseif World1 then
            distbyp = 1500;
            island = {
                A = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594),
                B = CFrame.new( -2566.4296875, 6.8556680679321, 2045.2561035156),
                C = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688),
                D = CFrame.new( -1181.3093261719, 4.7514905929565, 3803.5456542969),
                E = CFrame.new( -1612.7957763672, 36.852081298828, 149.12843322754),
                F = CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094),
                G = CFrame.new( -4607.82275, 872.54248, -1667.55688),
                H = CFrame.new( -7952.31006, 5545.52832, -320.704956),
                I = CFrame.new( -4914.8212890625, 50.963626861572, 4281.0278320313),
                J = CFrame.new( -1427.6203613281, 7.2881078720093, -2792.7722167969),
                K = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469),
                l = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813),
                M = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875),
                N = CFrame.new( -5247.7163085938, 12.883934020996, 8504.96875),
                O = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656),
                P = CFrame.new( -4813.0249, 903.708557, -1912.69055),
                Q = CFrame.new( -4970.21875, 717.707275, -2622.35449)
            };
        end
        local v36 = game.Players;
        local v37 = v36.LocalPlayer;
        local v38 = game:GetService("RunService");
        local v39 = v38.Heartbeat;
        local v40 = v38.RenderStepped;
        local v41 = {};
        getgenv().weapon = nil;
        getgenv().targ = nil;
        getgenv().lasttarrget = nil;
        getgenv().checked = {};
        getgenv().pl = v36:GetPlayers();
        wait(1);
        function bypass(v314)
            if (v37.Character:FindFirstChild("Head") and v37.Character:FindFirstChild("HumanoidRootPart") and v37.Character:FindFirstChild("Humanoid")) then
                dist = math.huge;
                is = nil;
                for v1638, v1639 in pairs(island) do
                    if ((v314.Position - v1639.Position).magnitude < dist) then
                        is = v1639;
                        dist = (v314.Position - v1639.Position).magnitude;
                    end
                end
                if (is == nil) then
                    return;
                end
                if (v37:DistanceFromCharacter(v314.Position) > distbyp) then
                    if ((v37.Character.Head.Position - v314.Position).magnitude > (is.Position - v314.Position).magnitude) then
                        if tween then
                            tween:Destroy();
                        end
                        if (((is.X == 61163.8515625) and (is.Y == 11.6796875) and (is.Z == 1819.7841796875)) or (is == CFrame.new( -12471.169921875 + 50 , 374.94024658203, -7551.677734375)) or (is == CFrame.new( -5085.23681640625 + 50 , 316.5072021484375, -3156.202880859375)) or (is == CFrame.new(5749.7861328125 + 50 , 611.9736938476562, -276.2497863769531))) then
                            if tween then
                                tween:Cancel();
                            end
                            repeat
                                task.wait();
                                v37.Character.HumanoidRootPart.CFrame = is;
                            until v37.Character.PrimaryPart.CFrame == is
                            task.wait(0.1);
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint");
                        elseif  not stopbypass then
                            if tween then
                                tween:Cancel();
                            end
                            repeat
                                task.wait();
                                v37.Character.HumanoidRootPart.CFrame = is;
                            until v37.Character.PrimaryPart.CFrame == is
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15);
                            v37.Character:SetPrimaryPartCFrame(is);
                            wait(0.1);
                            v37.Character.Head:Destroy();
                            wait(0.5);
                            repeat
                                task.wait();
                                v37.Character.PrimaryPart.CFrame = is;
                            until v37.Character:FindFirstChild("Humanoid").Health > 0
                            task.wait(0.5);
                        end
                    end
                end
            end
        end
        local v47 = false;
        function WaitHRP(v315)
            if  not v315 then
                return;
            end
            return v315.Character:WaitForChild("HumanoidRootPart", 9);
        end
        function CheckNearestTeleporter(v316)
            local v317 = v316.Position;
            local v318 = math.huge;
            local v319 = nil;
            local v320 = game.PlaceId;
            local v321 = {};
            if (v320 == 2753915549) then
                v321 = {
                    ["1"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
                    ["2"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
                    ["3"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
                    ["4"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
                };
            elseif (v320 == 4442272183) then
                v321 = {
                    ["Mansion"] = Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
                    ["Flamingo"] = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
                    ["122"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                    ["3032"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
                };
            elseif (v320 == 7449423635) then
                v321 = {
                    ["Caslte On The Sea"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
                    ["Hydra"] = Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
                    ["Mansion"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
                    ["Great Tree"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
                    ["Ngu1"] = Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
                    ["ngu2"] = Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
                };
            end
            for v764, v765 in pairs(v321) do
                local v766 = (v765 - v317).Magnitude;
                if (v766 < v318) then
                    v318 = v766;
                    v319 = v765;
                end
            end
            local v322 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
            if (v318 <= (v317 - v322).Magnitude) then
                return v319;
            end
        end
        function requestEntrance(v323)
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", v323);
            local v324 = game.Players.LocalPlayer.Character.HumanoidRootPart;
            v324.CFrame = v324.CFrame + Vector3.new(0, 50, 0) ;
            task.wait(0.5);
        end
        local v48 = false;
        function toTarget(v326)
            local v327 = game.Players.LocalPlayer;
            if (v327.Character and (v327.Character.Humanoid.Health > 0) and v327.Character:FindFirstChild("HumanoidRootPart")) then
                if  not v326 then
                    return;
                end
                local v1379 = (v326.Position - v327.Character.HumanoidRootPart.Position).Magnitude;
                local v1380 = CheckNearestTeleporter(v326);
                if _G.RandomPosition and v1380 then
                    requestEntrance(v1380);
                end
                if  not v327.Character:FindFirstChild("PartTele") then
                    local v1714 = Instance.new("Part", v327.Character);
                    v1714.Size = Vector3.new(10, 1, 10);
                    v1714.Name = "PartTele";
                    v1714.Anchored = true;
                    v1714.Transparency = 1;
                    v1714.CanCollide = true;
                    v1714.CFrame = WaitHRP(v327).CFrame;
                    v1714:GetPropertyChangedSignal("CFrame"):Connect(function()
                        if  not v47 then
                            return;
                        end
                        task.wait();
                        if (v327.Character and v327.Character:FindFirstChild("HumanoidRootPart")) then
                            local v2051 = v1714.CFrame;
                            WaitHRP(v327).CFrame = CFrame.new(v2051.Position.X, v326.Position.Y, v2051.Position.Z);
                        end
                    end);
                end
                if (v48 and (v1379 > distbyp)) then
                wait(1)
                    bypass(v326);
                end
                v47 = true;
                local v1381 = CFrame.new(v326.Position.X, v326.Position.Y, v326.Position.Z);
                local v1382 = game:GetService("TweenService"):Create(v327.Character.PartTele, TweenInfo.new(v1379 / getgenv().TweenSpeed , Enum.EasingStyle.Linear), {
                    CFrame = v326
                });
                v1382:Play();
                v1382.Completed:Connect(function(v1640)
                    if (v1640 == Enum.PlaybackState.Completed) then
                        if v327.Character:FindFirstChild("PartTele") then
                            v327.Character.PartTele:Destroy();
                        end
                        v47 = false;
                    end
                end);
            end
        end

_G.FastTeleport = true
function TP(Pos)
    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if _G.FastTeleport then
        if Distance >= 3000 then          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
              game.Players.LocalPlayer.Character.Humanoid.Health =- math.huge         
          end
       end            		
        if not Pos then 
            return
        end
        if not game.Players.LocalPlayer.Character:FindFirstChild("PartTele") then
            local PartTele = Instance.new("Part", game.Players.LocalPlayer.Character)
            PartTele.Size = Vector3.new(5,2,5)
            PartTele.Name = "PartTele"
            PartTele.Anchored = true
            PartTele.Transparency = 1
            PartTele.CanCollide = false
            PartTele.CFrame = WaitHRP(game.Players.LocalPlayer).CFrame 
            PartTele:GetPropertyChangedSignal("CFrame"):Connect(function()
                task.wait()
 WaitHRP(game.Players.LocalPlayer).CFrame = PartTele.CFrame
            end)
        end
        pcall(function() didididididi = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.PartTele,TweenInfo.new(Distance/getgenv().TweenSpeed, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        didididididi:Play()
        if Distance <= 500 then
                didididididi:Cancel()
                game.Players.LocalPlayer.Character.PartTele.CFrame = Pos
            end
            didididididi:Play()
    end
end
        
        function Tween(v326)
            local v327 = game.Players.LocalPlayer;
            if (v327.Character and (v327.Character.Humanoid.Health > 0) and v327.Character:FindFirstChild("HumanoidRootPart")) then
                if  not v326 then
                    return;
                end
                local v1379 = (v326.Position - v327.Character.HumanoidRootPart.Position).Magnitude;
                local v1380 = CheckNearestTeleporter(v326);
                if _G.RandomPosition and v1380 then
                    requestEntrance(v1380);
                end
                if  not v327.Character:FindFirstChild("PartTele") then
                    local v1714 = Instance.new("Part", v327.Character);
                    v1714.Size = Vector3.new(10, 1, 10);
                    v1714.Name = "PartTele";
                    v1714.Anchored = true;
                    v1714.Transparency = 1;
                    v1714.CanCollide = true;
                    v1714.CFrame = WaitHRP(v327).CFrame;
                    v1714:GetPropertyChangedSignal("CFrame"):Connect(function()
                        if  not v47 then
                            return;
                        end
                        task.wait();
                        if (v327.Character and v327.Character:FindFirstChild("HumanoidRootPart")) then
                            local v2051 = v1714.CFrame;
                            WaitHRP(v327).CFrame = CFrame.new(v2051.Position.X, v326.Position.Y, v2051.Position.Z);
                        end
                    end);
                end
                v47 = true;
                local v1381 = CFrame.new(v326.Position.X, v326.Position.Y, v326.Position.Z);
                local v1382 = game:GetService("TweenService"):Create(v327.Character.PartTele, TweenInfo.new(v1379 / getgenv().TweenSpeed , Enum.EasingStyle.Linear), {
                    CFrame = v326
                });
                v1382:Play();
                v1382.Completed:Connect(function(v1640)
                    if (v1640 == Enum.PlaybackState.Completed) then
                        if v327.Character:FindFirstChild("PartTele") then
                            v327.Character.PartTele:Destroy();
                        end
                        v47 = false;
                    end
                end);
            end
        end
        

spawn(function()
    while task.wait() do
        pcall(function()
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or not plr.Character:FindFirstChild("HumanoidRootPart") then
                if game.Players.LocalPlayer.Character:FindFirstChild("PartTele") then
                    game.Players.LocalPlayer.Character:FindFirstChild("PartTele"):Destroy()
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("PartTele") then
                if (plr.Character.HumanoidRootPart.Position - plr.Character:FindFirstChild("PartTele").Position).Magnitude >= 100 then
                    game.Players.LocalPlayer.Character:FindFirstChild("PartTele"):Destroy()
                end
            end
        end)
    end
end)

local function StopTween()
    if _G.StopTween then
        return
    end
    
    _G.StopTween = true
    wait()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character and character:IsDescendantOf(game.Workspace) then
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.CFrame = humanoidRootPart.CFrame
        end
    end
    wait()    
    if character:FindFirstChild("BodyClip") then
        character.BodyClip:Destroy()
    end
    if character:FindFirstChild("PartTele") then
        character.PartTele:Destroy()
    end
    _G.StopTween = false
end

    spawn(function()
			while task.wait() do
				pcall(function()
					if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.KillSaber or FarmMasterySword or _G.AutoTrueTripleKatana or _G.Farmfast2 or _G.Farmfast3 or _G.AutoFullySword or _G.KatakuriV2 or Auto_Dark_Coat or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip or _G.KillLeviathan or _G.AutoLeviathan or _G.FrozenDimension or _G.FKitsune or _G.SeaBest or _G.SailBoat then
						if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
							local Noclip = Instance.new("BodyVelocity")
							Noclip.Name = "BodyClip"
							Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
							Noclip.MaxForce = Vector3.new(100000,100000,100000)
							Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()

game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()

StopTween()

					end
				end)
			end
		end)

spawn(function()
  pcall(function() game:GetService("RunService").Stepped:Connect(function()
      if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.KillSaber or FarmMasterySword or _G.AutoTrueTripleKatana or _G.Farmfast2 or _G.Farmfast3 or _G.AutoFullySword or _G.KatakuriV2 or Auto_Dark_Coat or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip or _G.KillLeviathan or _G.AutoLeviathan or _G.FrozenDimension or _G.FKitsune or _G.SeaBest or _G.SailBoat then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)

    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        end
    end

spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AutoClick then
         pcall(function()
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
        end)
    end
end)
end)

spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local function ClickSpace()
	wait(.5)
	local Space = game:GetService("VirtualInputManager")
	Space:SendKeyEvent(true, "Space", false, game)
	wait(0.1)
	Space:SendKeyEvent(false, "Space", false, game)
end

local MainTab = Tabs['General']:AddLeftGroupbox("« Auto Farm Level »")

MainTab:AddToggle('',{Text = "Auto Farm Level",Default = _G.Config["Main"]["Auto Farm Level"],}):OnChanged(function(Value)
_G.AutoFarm = Value
_G.Farmfast = Value
_G.Farmfast2 = Value
_G.Farmfast3 = Value
_G.AutoPlayerHunter = Value
_G.Config["Main"]["Auto Farm Level"] =  Value
Saveconfig()
end)

spawn(function()
		pcall(function()
			while wait() do
				if _G.Farmfast and World1 and game.Players.LocalPlayer.Data.Level.Value >= 10 and game.Players.LocalPlayer.Data.Level.Value <= 40 then
					if game.Players.LocalPlayer.Data.Level.Value >= 10 and game.Players.LocalPlayer.Data.Level.Value <= 40 then
					    _G.AutoFarm = false
					    _G.Farmfast = true
					end
				end
			end
		end)
	end)

CfarmFast11 = CFrame.new(-4848.3408203125, 886.6272583007812, -1843.90771484375)
	
    spawn(function()
        while wait() do
            if _G.Farmfast and World1 and game.Players.LocalPlayer.Data.Level.Value >= 10 and game.Players.LocalPlayer.Data.Level.Value <= 40  then
                pcall(function()               
                if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard") then          
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "God's Guard" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()

toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                        EquipWeapon(_G.SelectWeapon)

bringmob = true

FarmPos = v.HumanoidRootPart.CFrame
          
MonFarm = v.Name
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                         v.HumanoidRootPart.Size = Vector3.new(80,80,80)                                                                    
                                    until not _G.Farmfast or not v.Parent or v.Humanoid.Health <= 0 
bringmob = false                                              
                                end
                            end
                        end
                    else                 
                   toTarget(CfarmFast11)                 
					if game:GetService("ReplicatedStorage"):FindFirstChild("God's Guard") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("God's Guard").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
					end
				end
			end)
		end
	end
end)

CfarmFast21 = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
	
    spawn(function()
        while wait() do
            if _G.Farmfast2 and World1 and game.Players.LocalPlayer.Data.Level.Value >= 40 and game.Players.LocalPlayer.Data.Level.Value <= 69  then
                pcall(function()               
                if game:GetService("Workspace").Enemies:FindFirstChild("Shanda") then          
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Shanda" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()

toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                        EquipWeapon(_G.SelectWeapon)

bringmob = true

FarmPos = v.HumanoidRootPart.CFrame
          
MonFarm = v.Name
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                         v.HumanoidRootPart.Size = Vector3.new(80,80,80)                                                                    
                                    until not _G.Farmfast2 or not v.Parent or v.Humanoid.Health <= 0  
bringmob = false                                                  
                                end
                            end
                        end
                    else                 
                   toTarget(CfarmFast21)                 
					if game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
					end
				end
			end)
		end
	end
end)

spawn(function()
		pcall(function()
			while wait() do
				if _G.Farmfast2 and World1 and game.Players.LocalPlayer.Data.Level.Value >= 40 and game.Players.LocalPlayer.Data.Level.Value <= 55 then
					if game.Players.LocalPlayer.Data.Level.Value >= 40 and game.Players.LocalPlayer.Data.Level.Value <= 55 then
               _G.Farmfast2 = true
					    _G.AutoFarm = false
					    _G.Farmfast = false
					end
				end
			end
		end)
	end)

spawn(function()
		pcall(function()
			while wait() do
				if _G.Farmfast3 and World1 and game.Players.LocalPlayer.Data.Level.Value >= 55 and game.Players.LocalPlayer.Data.Level.Value <= 70 then
					if game.Players.LocalPlayer.Data.Level.Value >= 55 and game.Players.LocalPlayer.Data.Level.Value <= 70 then
               _G.Farmfast3 = true
               _G.Farmfast2 = false
					    _G.AutoFarm = false
					    _G.Farmfast = false
					end
				end
			end
		end)
	end)

CfarmFast31 = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
	
    spawn(function()
        while wait() do
            if _G.Farmfast3 and World1 and game.Players.LocalPlayer.Data.Level.Value >= 55 and game.Players.LocalPlayer.Data.Level.Value <= 69  then
                pcall(function()               
                if game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad") then          
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Royal Squad" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()

toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                        EquipWeapon(_G.SelectWeapon)

bringmob = true

FarmPos = v.HumanoidRootPart.CFrame
          
MonFarm = v.Name
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                         v.HumanoidRootPart.Size = Vector3.new(80,80,80)                                                                    
                                    until not _G.Farmfast3 or not v.Parent or v.Humanoid.Health <= 0
bringmob = false                                                      
                                end
                            end
                        end
                    else                 
                   toTarget(CfarmFast31)                 
					if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
					end
				end
			end)
		end
	end
end)
	
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Farmfast3 and World1 and game.Players.LocalPlayer.Data.Level.Value >= 70 and game.Players.LocalPlayer.Data.Level.Value <= 309 then
					if game.Players.LocalPlayer.Data.Level.Value >= 70 and game.Players.LocalPlayer.Data.Level.Value <= 309 then
						_G.Farmfast = false
						_G.AutoPlayerHunter = true
					end
				end
			end
		end)
	end)
spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoPlayerHunter and World1 and game.Players.LocalPlayer.Data.Level.Value >= 85 then
					if game.Players.LocalPlayer.Data.Level.Value >= 85 then
				    	_G.AutoFarm = true
						_G.AutoPlayerHunter = false
					end
				end
			end
		end)
	end)

_G.ChackPlayer = 0
_G.ChackPlayer2 = _G.ChackPlayer
_G.GoGat = true
function StartFast()
    local PlayersAll = game.Players:GetPlayers()
    local PlayerLevel = game.Players.LocalPlayer.Data.Level.Value
    local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    local Player = string.split(quest," ")[2]
    getgenv().SelectPly = string.split(quest," ")[2]
    pcall(function()
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        local Quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
if MyLevel >= 70 and MyLevel <= 309 then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            end
            if Quest.Visible == false then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            elseif Quest.Visible == true then
                if string.find(quest,"Defeat") then
                    if game.Players[getgenv().SelectPly].Data.Level.Value >= 20 and game.Players[getgenv().SelectPly].Data.Level.Value <= MyLevel + 50 then
                        repeat task.wait()
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                            end                                                   
                           TP(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame)
                            
                            game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Size = Vector3.new(120,120,120)

EquipWeapon(_G.SelectWeapon)
                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)

                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)

                            if not _G.InstantAttack or _G.AutoFarm then
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                            end
                        until game.Players[getgenv().SelectPly].Character.Humanoid.Health <= 0 or not game.Players[getgenv().SelectPly].Character.Humanoid.Health or not StartFast()                      
                        _G.GoGat = false
                        _G.KillPlayerQ = true
                        if not game.Players:FindFirstChild(Player) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                        end
                    else
                        for i,v in pairs(PlayersAll) do
                            if v.Data.Level.Value >= 20 and v.Data.Level.Value <= PlayerLevel + 2 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                                print(v)
                            else
                                _G.ChackPlayer = _G.ChackPlayer + 1
                                if _G.ChackPlayer >= 12 then
                                    _G.GoGat = false
                                else
                                    if _G.ChackPlayer2 >= 13 then 
                                        _G.GoGat = false
                                    end
                                    print("Chack Player ".._G.ChackPlayer)
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
end

spawn(function()
    while wait(.1) do
        if _G.AutoPlayerHunter then
            pcall(function()
                repeat task.wait(0.01)
                    StartFast()
                until not _G.AutoPlayerHunter
            end)
        end
    end
end)

spawn(function()
    while wait(.1) do
        if _G.AutoFarm and game.Players.LocalPlayer.Data.Level.Value >= 1 and game.Players.LocalPlayer.Data.Level.Value <= 9 then
            pcall(function()
                repeat task.wait(0.01)
                    CheckQuest()
                until not _G.AutoFarm
            end)
        end
    end
end)

spawn(function()
    while wait(.1) do
        if _G.AutoFarm and game.Players.LocalPlayer.Data.Level.Value >= 85 and game.Players.LocalPlayer.Data.Level.Value <= 2550 then
            pcall(function()
                repeat task.wait(0.01)
                    CheckQuest()
                until not _G.AutoFarm
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoFarm and game.Players.LocalPlayer.Data.Level.Value >= 1 and game.Players.LocalPlayer.Data.Level.Value <= 9 then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    bringmob = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    bringmob = false
                    --CheckQuest()
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                    BTP(CFrameQuest)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
                    toTarget(CFrameQuest)
                    end
                else
                    toTarget(CFrameQuest)
                end
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    --CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            
                                            AutoHaki()                                                                                   
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))

EquipWeapon(_G.SelectWeapon)

bringmob = true

FarmPos = v.HumanoidRootPart.CFrame
          
MonFarm = v.Name
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)                                        
                                        until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        bringmob = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        toTarget(CFrameMon)                    
                        bringmob = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                         toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoFarm and game.Players.LocalPlayer.Data.Level.Value >= 85 and game.Players.LocalPlayer.Data.Level.Value <= 2550 then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    bringmob = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    bringmob = false
                    --CheckQuest()
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                    BTP(CFrameQuest)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
                    toTarget(CFrameQuest)
                    end
                else
                    toTarget(CFrameQuest)
                end
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    --CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            
                                            AutoHaki()                                                                                   
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))

EquipWeapon(_G.SelectWeapon)

bringmob = true

FarmPos = v.HumanoidRootPart.CFrame
          
MonFarm = v.Name
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)                                        
                                        until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        bringmob = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        toTarget(CFrameMon)                    
                        bringmob = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                         toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                        end
                    end
                end
            end)
        end
    end
end)

MainTab:AddToggle('',{Text = "Auto Travel Dressrosa",Default = _G.Config["Main"]["Auto Travel Dressrosa"],}):OnChanged(function(Value)
_G.AutoSecondSea = Value
_G.Config["Main"]["Auto Travel Dressrosa"] =  Value
Saveconfig()
end)

task.spawn(
    function()
        while wait() do
            if _G.AutoSecondSea then
                pcall(
                    function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 700 then                          
                            if game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Ice Admiral" then
                                            if
                                                v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                repeat
                                                    task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))                                               
                                                    sethiddenproperty(
                                                        game:GetService("Players").LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "TravelDressrosa"
                                                    )
                                                until not _G.AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        end
                                    end
                                else
                                    if
                                        game:GetService("ReplicatedStorage"):FindFirstChild(
                                            "Ice Admiral"
                                        )
                                     then
                                        toTarget(
                                            game:GetService("ReplicatedStorage"):FindFirstChild(
                                                "Ice Admiral"
                                            ).HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)
                                        )
                                    end
                                end
                            else
                                toTarget(CFrame.new(4851.732421875, 5.651424884796143, 718.1107788085938))
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "DressrosaQuestProgress",
                                    "Detective"
                                )
                                wait(.5)
                                EquipWeapon("Key")
                                Tween(CFrame.new(1348.487060546875, 37.34933853149414, -1326.12158203125))

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")

                            end
                        end
                    end)
            end
        end
    end)
       
MainTab:AddToggle('',{Text = "Auto Travel Zou",Default = _G.Config["Main"]["Auto Travel Zou"],}):OnChanged(function(Value)
_G.AutoThirdSea = Value
_G.Config["Main"]["Auto Travel Zou"] =  Value
Saveconfig()
end)

spawn(function()
            while wait() do
                if _G.AutoThirdSea then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                            _G.AutoFarm = false
                            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                                toTarget(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                                wait(1.8)
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "rip_indra" then                                       
                      repeat task.wait()
                                                
AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))                                             
                                                v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                    toTarget(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                end
                            end
                        end
                    end)
                end
            end
        end)

_G.BringMode = 350

spawn(function()
	while task.wait() do
		pcall(function()
            CheckQuest()
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.BringMob then
					if bringmob and v.Name == MonFarm or v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
						if v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 350 then
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.CFrame = FarmPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
							end
						elseif v.Name == MonFarm or v.Name == Mon then
							if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 350 then
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.HumanoidRootPart.CFrame = FarmPos
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end
		end)
	end
end)


function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then 
			return true
		end
		return false
	end
end

local BossTab = Tabs['General']:AddLeftGroupbox("« Boss »")

local Boss = {}
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name == "Ice Admiral" then
            else
            table.insert(Boss, v.Name)
        end
    end
end
local bossCheck = {}
local bossNames = { "The Gorilla King", "Bobby", "The Saw", "Yeti", "Mob Leader", "Vice Admiral", "Warden", "Chief Warden", "Swan", "Saber Expert", "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg", "Greybeard", "Diamond", "Jeremy", "Fajita", "Don Swan", "Smoke Admiral", "Awakened Ice Admiral", "Tide Keeper", "Order", "Darkbeard", "Cursed Captain", "Stone", "Island Empress", "Kilo Admiral", "Captain Elephant", "Beautiful Pirate", "Longma", "Cake Queen", "Soul Reaper", "Rip_Indra", "Cake Prince", "Dough King" }
if World1 or World2 or World3 then
    for _, bossName in pairs(bossNames) do
        if game:GetService("ReplicatedStorage"):FindFirstChild(bossName) then
            table.insert(bossCheck, bossName)
        end
    end
end
for _, name in pairs(Boss) do
    table.insert(bossCheck, name)
end

BossTab:AddDropdown('', {Values = bossCheck,Default = _G.Config["Boss"]["Select Boss"],Text = "Choose Boss",}):OnChanged(function(Value)
_G.SelectBoss = Value
_G.Config["Boss"]["Select Boss"] = Value
Saveconfig()
end)

BossTab:AddButton('Refresh Boss List', function()
    BossName:Clear()
    wait(0.1)
    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if (v.Name == "rip_indra" or v.Name == "Ice Admiral")
                            or (v.Name == "Saber Expert" or v.Name == "The Saw" or v.Name == "Greybeard" or v.Name == "Mob Leader" or v.Name == "The Gorilla King" or v.Name == "Bobby" or v.Name == "Yeti" or v.Name == "Vice Admiral" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral" or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Cyborg")
                            or (v.Name == "Don Swan" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Order" or v.Name == "Darkbeard")
                            or (v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Cake Queen" or v.Name == "rip_indra True Form" or v.Name == "Longma" or v.Name == "Soul Reaper" or v.Name == "Cake Prince" or v.Name == "Dough King") then
            BossName:Add(v.Name)
        end
    end
end)

BossTab:AddToggle('', {Text = "Auto Farm Boss",Default = _G.Config["Boss"]["Auto Farm Boss"],}):OnChanged(function(Value)
_G.AutoFarmBoss = Value
_G.Config["Boss"]["Auto Farm Boss"] =  Value
Saveconfig()
end)

spawn(function()
    while wait() do
        if _G.AutoFarmBoss then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectBoss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()

toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)                                                                                   
                                until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                    end
                end
            end)
        end
    end
end)

BossTab:AddDivider()

BossTab:AddToggle('', {Text = "Auto Farm All Boss",Default = _G.Config["Boss"]["Auto Farm All Boss"],}):OnChanged(function(Value)
_G.AutoAllBoss = Value
_G.Config["Boss"]["Auto Farm All Boss"] =  Value
Saveconfig()
end)

BossTab:AddToggle('', {Text = "Auto Farm All Boss Hop",Default = _G.Config["Boss"]["Auto Farm All Boss Hop"],}):OnChanged(function(Value)
_G.AutoAllBossHop = Value
_G.Config["Boss"]["Auto Farm All Boss Hop"] =  Value
Saveconfig()
end)

spawn(function()
    while wait() do
        if _G.AutoAllBoss then
            pcall(function()
                for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                    if (v.Name == "rip_indra" or v.Name == "Ice Admiral") or (v.Name == "Saber Expert" or v.Name == "The Saw" or v.Name == "Greybeard" or v.Name == "Mob Leader" or v.Name == "The Gorilla King" or v.Name == "Bobby" or v.Name == "Yeti" or v.Name == "Vice Admiral" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral" or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Cyborg") or (v.Name == "Don Swan" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Order" or v.Name == "Darkbeard") or (v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Cake Queen" or v.Name == "rip_indra True Form" or v.Name == "Longma" or v.Name == "Soul Reaper" or v.Name == "Cake Prince" or v.Name == "Dough King") then
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                            repeat task.wait()
                                AutoHaki()

toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                EquipWeapon(_G.SelectWeapon)
                                
v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                
v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)                          
                            until v.Humanoid.Health <= 0 or _G.AutoAllBoss == false or not v.Parent
                        end
                    else
                        if _G.AutoAllBossHop then
                            Hop()
                        end
                    end
                end
            end)
        end
    end
end)

local SwordTab = Tabs["General"]:AddLeftGroupbox("« Mastery »")

local AllSwordInInventroy = {};
pcall(function()
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventoryWeapons")) do
		if (type(v) ~= "table") then
		elseif (v.Type == "Sword") then
			table.insert(AllSwordInInventroy, v.Name);
		end
	end
end)

SwordTab:AddDropdown('', {Values = AllSwordInInventroy,Default = _G.Config["Sword"]["Select Sword"],Text = "Choose Sword",}):OnChanged(function(Value)
SelectSword = Value
_G.Config["Sword"]["Select Sword"] = Value
Saveconfig()
end)

SwordTab:AddToggle('', {Text = "Auto Farm Sword",Default = _G.Config["Sword"]["Auto Farm Sword"],}):OnChanged(function(Value)
FarmMasterySword = Value
if FarmMasterySword then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",SelectSword)
_G.Config["Sword"]["Auto Farm Sword"] =  Value
Saveconfig()
end

         task.spawn(function()
                    while wait() do
                        pcall(function()
						if FarmMasterySword then
							if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()					
                         AutoHaki()

toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))

bringmob = true

FarmPos = v.HumanoidRootPart.CFrame
          
MonFarm = v.Name
							
EquipWeaponSword()
											    
v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												
v.Humanoid.JumpPower = 0
												
v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)											
											until not FarmMasterySword or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0						
bringmob = false			
										end
									end
								end
							else
							if World3 then	toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
               end
							end
							else
							    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
						    end
                      
                            
                            
                        end)
                    end
end)
end)

function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end
local function inmyself(name)
	return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name);
end

local DoughKingTab = Tabs['Automatic']:AddLeftGroupbox("« Dough King »")

local DoDoughKing = DoughKingTab:AddLabel('..')

spawn(
function()
	while wait() do
		pcall(  
		function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
DoDoughKing:SetText("Task : Have " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41) .. " More Left")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
DoDoughKing:SetText("Task : Have " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40) .. " More Left")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
DoDoughKing:SetText("Task : Have " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39) .. " More Left")
			else
			end
		end)
	end
end)

DoughKingTab:AddToggle('', {Text = "Auto Dough King",Default = _G.Config["DoughKing"]["Auto Dough King"],}):OnChanged(function(Value)
_G.KatakuriV2 = Value
_G.Config["DoughKing"]["Auto Dough King"] =  Value
Saveconfig()
end)

spawn(function()
	while wait() do
		if _G.KatakuriV2 then
			pcall(function()
				if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
					if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"), "Where") then
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification",
							Text = "Not Have Enough Material" ,
							Icon = "http://www.roblox.com/asset/?id=",
							Duration = 2.5
						})
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
					end
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
					if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), "Do you want to open the portal now?") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
					else
						if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
									repeat
										wait()
										AutoHaki()
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                        bringmob = true
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
										EquipWeapon(_G.SelectWeapon)								
										
									until _G.KatakuriV2 == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
                                    bringmob = false
								end
							end
						else												toTarget(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
						end
					end
				elseif game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Dough King" then
								repeat
									wait()
									AutoHaki()
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.CanCollide = false
									
								until _G.KatakuriV2 == false or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					else
						toTarget(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
					end
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
					local args = {
						[1] = "CakeScientist",
						[2] = "Check"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				else
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
								for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat
												wait()
												AutoHaki()
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
												EquipWeapon(_G.SelectWeapon)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
																							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
											until _G.KatakuriV2 == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
										end
									end
								end
							else
								if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
									toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
								elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
									toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
								elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
									toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
								end
							end
						end
					else
						wait(0.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					end
				end
			end)
		end
	end
end)

DoughKingTab:AddToggle('', {Text = "Auto Dough King Hop",Default = _G.Config["DoughKing"]["Auto Dough King Hop"],}):OnChanged(function(Value)
_G.KatakuriV2Hop = Value
_G.Config["DoughKing"]["Auto Dough King Hop"] =  Value
Saveconfig()
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.KatakuriV2 and _G.KatakuriV2Hop and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") and not game:GetService("Workspace").Enemies:FindFirstChild("Dough King") and not game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") and not game:GetService("Workspace").Enemies:FindFirstChild("Diablo") and not game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") and not game:GetService("Workspace").Enemies:FindFirstChild("Deandre") and not game:GetService("ReplicatedStorage"):FindFirstChild("Urban") and not game:GetService("Workspace").Enemies:FindFirstChild("Urban") and not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") then
Hop()
end
    end
        end)
    end)

local ChestTab = Tabs['General']:AddLeftGroupbox("« Chest »")

local DoChest = ChestTab:AddLabel('..')

spawn(function()
	while wait() do
		local count10 = 0
		local count = 0
		for i,v in pairs(game.workspace:GetChildren()) do
			if string.find(v.Name,"Chest") and v:IsA("Part") then
				count10 = count10 + 1
			end
		end
		DoChest:SetText("Total : "..count10.." Chest")
		wait(5)
	end
end)

ChestTab:AddToggle('', {Text = "Auto Collect Chest",Default = _G.Config["Chest"]["Auto Farm Chest"],}):OnChanged(function(Value)
Grab_Chest = Value
_G.Config["Chest"]["Auto Farm Chest"] =  Value
Saveconfig()
end)

spawn(function()
    while wait(.2) do
        pcall(function()
            if Grab_Chest then
            if Grab_ChestStop then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                        Tween(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))                      
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                        wait(3)
                    else
						_G.Chest_100 = nil
						_G.Chest_500 = nil
						_G.Chest_1000 = nil
						_G.Chest_1500 = nil
						_G.Chest_2000 = nil
						_G.Chest_2500 = nil
						_G.Chest_3500 = nil
						_G.Chest_4500 = nil
						_G.Chest_5500 = nil
						_G.Chest_6500 = nil
						_G.Chest_7500 = nil
						_G.Chest_9500 = nil
						_G.Chest_10500 = nil
						_G.Chest_12500 = nil
						_G.Chest_15500 = nil
						_G.Chest_17500 = nil
						Chest_100()
						Chest_500()
						Chest_1000()
						Chest_1500()
						Chest_2000()
						Chest_2500()
						Chest_3500()
						Chest_4500()
						Chest_5500()
						Chest_6500()
						Chest_7500()
						Chest_9500()
						Chest_10500()
						Chest_12500()
						Chest_15500()
						Chest_17500()
						if _G.Chest_100 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_100.CFrame)
                            ClickSpace()
							until not _G.Chest_100.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
							end
						elseif _G.Chest_500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_500.CFrame)
                            ClickSpace()
							until not _G.Chest_500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_1000 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_1000.CFrame)
                            ClickSpace()
							until not _G.Chest_1000.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_1500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_1500.CFrame)
                            ClickSpace()
							until not _G.Chest_1500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_2000 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_2000.CFrame)
                            ClickSpace()
							until not _G.Chest_2000.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_2500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_2500.CFrame)
                            ClickSpace()
							until not _G.Chest_2500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_3500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_3500.CFrame)
                            ClickSpace()
							until not _G.Chest_3500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1						
							end
						elseif _G.Chest_4500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_4500.CFrame)
                            ClickSpace()
							until not _G.Chest_4500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_5500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_5500.CFrame)
                            ClickSpace()
							until not _G.Chest_5500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1						
							end
						elseif _G.Chest_6500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_6500.CFrame)
                            ClickSpace()
							until not _G.Chest_6500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_7500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_7500.CFrame)
                            ClickSpace()
							until not _G.Chest_7500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_9500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_9500.CFrame)
                            ClickSpace()
							until not _G.Chest_9500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_10500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_10500.CFrame)
                            ClickSpace()
							until not _G.Chest_10500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_12500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_12500.CFrame)
                            ClickSpace()
							until not _G.Chest_12500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
							end
						elseif _G.Chest_15500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_15500.CFrame)
                            ClickSpace()
							until not _G.Chest_15500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_17500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_17500.CFrame)
                            ClickSpace()
							until not _G.Chest_17500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1								
							end
						end
                    end
                else
                    _G.Chest_100 = nil
						_G.Chest_500 = nil
						_G.Chest_1000 = nil
						_G.Chest_1500 = nil
						_G.Chest_2000 = nil
						_G.Chest_2500 = nil
						_G.Chest_3500 = nil
						_G.Chest_4500 = nil
						_G.Chest_5500 = nil
						_G.Chest_6500 = nil
						_G.Chest_7500 = nil
						_G.Chest_9500 = nil
						_G.Chest_10500 = nil
						_G.Chest_12500 = nil
						_G.Chest_15500 = nil
						_G.Chest_17500 = nil
						Chest_100()
						Chest_500()
						Chest_1000()
						Chest_1500()
						Chest_2000()
						Chest_2500()
						Chest_3500()
						Chest_4500()
						Chest_5500()
						Chest_6500()
						Chest_7500()
						Chest_9500()
						Chest_10500()
						Chest_12500()
						Chest_15500()
						Chest_17500()
						if _G.Chest_100 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_100.CFrame)
                            ClickSpace()
							until not _G.Chest_100.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
							end
						elseif _G.Chest_500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_500.CFrame)
                            ClickSpace()
							until not _G.Chest_500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
							end
						elseif _G.Chest_1000 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_1000.CFrame)
                            ClickSpace()
							until not _G.Chest_1000.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1						
							end
						elseif _G.Chest_1500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_1500.CFrame)
                            ClickSpace()
							until not _G.Chest_1500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_2000 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_2000.CFrame)
                            ClickSpace()
							until not _G.Chest_2000.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1						
							end
						elseif _G.Chest_2500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_2500.CFrame)
                            ClickSpace()
							until not _G.Chest_2500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_3500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_3500.CFrame)
                            ClickSpace()
							until not _G.Chest_3500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1						
							end
						elseif _G.Chest_4500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_4500.CFrame)
                            ClickSpace()
							until not _G.Chest_4500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_5500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_5500.CFrame)
                            ClickSpace()
							until not _G.Chest_5500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_6500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_6500.CFrame)
                            ClickSpace()
							until not _G.Chest_6500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1						
							end
						elseif _G.Chest_7500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_7500.CFrame)
                            ClickSpace()
							until not _G.Chest_7500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_9500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_9500.CFrame)
                            ClickSpace()
							until not _G.Chest_9500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_10500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_10500.CFrame)
                            ClickSpace()
							until not _G.Chest_10500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_12500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_12500.CFrame)
                            ClickSpace()
							until not _G.Chest_12500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_15500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_15500.CFrame)
                            ClickSpace()
							until not _G.Chest_15500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
						elseif _G.Chest_17500 ~= nil then
							repeat wait(.3)
								Tween(_G.Chest_17500.CFrame)
                            ClickSpace()
							until not _G.Chest_17500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1							
							end
                end
						end
            end
        end)
    end
end)

function Chest_100()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
			_G.Chest_100 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
			_G.Chest_100 = v
			return
		end
	end
end
function Chest_500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
			_G.Chest_500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
			_G.Chest_500 = v
			return
		end
	end
end
function Chest_1000()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
			_G.Chest_1000 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
			_G.Chest_1000 = v
			return
		end
	end
end
function Chest_1500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
			_G.Chest_1500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
			_G.Chest_1500 = v
			return
		end
	end
end
function Chest_2000()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
			_G.Chest_2000 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
			_G.Chest_2000 = v
			return
		end
	end
end
function Chest_2500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
			_G.Chest_2500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
			_G.Chest_2500 = v
			return
		end
	end
end
function Chest_3500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
			_G.Chest_3500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
			_G.Chest_3500 = v
			return
		end
	end
end
function Chest_4500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
			_G.Chest_4500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
			_G.Chest_4500 = v
			return
		end
	end
end
function Chest_5500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5500 then
			_G.Chest_5500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5500 then
			_G.Chest_5500 = v
			return
		end
	end
end
function Chest_6500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6500 then
			_G.Chest_6500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6500 then
			_G.Chest_6500 = v
			return
		end
	end
end
function Chest_7500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7500 then
			_G.Chest_7500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7500 then
			_G.Chest_7500 = v
			return
		end
	end
end
function Chest_9500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9500 then
			_G.Chest_9500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9500 then
			_G.Chest_9500 = v
			return
		end
	end
end
function Chest_10500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10500 then
			_G.Chest_10500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10500 then
			_G.Chest_10500 = v
			return
		end
	end
end
function Chest_12500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12500 then
			_G.Chest_12500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12500 then
			_G.Chest_12500 = v
			return
		end
	end
end
function Chest_15500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15500 then
			_G.Chest_15500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15500 then
			_G.Chest_15500 = v
			return
		end
	end
end
function Chest_17500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 17500 then
			_G.Chest_17500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 17500 then
			_G.Chest_17500 = v
			return
		end
	end
end

ChestTab:AddToggle('', {Text = "Auto Collect Chest Hop",Default = _G.Config["Chest"]["Auto Farm Chest Hop"],}):OnChanged(function(Value)
_G.AutoFarmChestHop = Value
_G.Config["Chest"]["Auto Farm Chest Hop"] =  Value
Saveconfig()
end)

   spawn(function()
        if _G.AutoFarmChestHop and Grab_Chest  then
            wait(2550)
            Hop()
        end
    end)

local DarkBeardTab = Tabs["Automatic"]:AddLeftGroupbox("« DarkBeard »")

DarkBeardTab:AddDropdown('', {Values = {"1550","2550","3000","3550"},Default = _G.Config["DarkBeard"]["Choose Wait Hop"],Text = "Choose Wait Hop",}):OnChanged(function(Value)
Choose_Auto_Dark_Coat = Value
_G.Config["DarkBeard"]["Choose Wait Hop"] = Value
Saveconfig()
end)

  spawn(function()
        if Choose_Auto_Dark_Coat == "1550" and Auto_Dark_Coat_Hop and not game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") and not game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") and not game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
            wait(1550)
            Hop()
        end
    end)

   spawn(function()
        if Choose_Auto_Dark_Coat == "2550" and Auto_Dark_Coat_Hop and not game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") and not game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") and not game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
            wait(2550)
            Hop()
        end
    end)

spawn(function()
        if Choose_Auto_Dark_Coat == "3000" and Auto_Dark_Coat_Hop and not game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") and not game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") and not game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
            wait(3000)
            Hop()
        end
    end)

spawn(function()
        if Choose_Auto_Dark_Coat == "3550" and Auto_Dark_Coat_Hop and not game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") and not game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") and not game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
            wait(3550)
            Hop()
        end
    end)

DarkBeardTab:AddToggle('', {Text = "Auto Dark Coat",Default = _G.Config["DarkBeard"]["Auto Dark Coat"],}):OnChanged(function(Value)
Auto_Dark_Coat = Value
_G.Config["DarkBeard"]["Auto Dark Coat"] =  Value
Saveconfig()
end)

spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Dark_Coat then
				if game.Workspace.Enemies:FindFirstChild("Darkbeard") or game.ReplicatedStorage:FindFirstChild("Darkbeard") then
					H_F_T = true
					if game.Workspace.Enemies:FindFirstChild("Darkbeard") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Darkbeard" and v.Humanoid.Health > 0 then
                                repeat wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame*CFrame.new(0,40,0))                              
                                until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Dark_Coat
								H_F_T = nil
								if _G.Auto_Dark_Coat_Hop then
									Hop()
									wait(50)
								end
							end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("Darkbeard") then
                        Tween(game.ReplicatedStorage:FindFirstChild("Darkbeard").HumanoidRootPart.CFrame*CFrame.new(0,40,0))
                    end
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
					H_F_T = true
					repeat wait(.5)
                        EquipWeapon("Fist of Darkness")
                        Tween(CFrame.new(3778.0603, 15.0511189, -3499.95801, -0.0148028014, 1.28971422e-07, -0.999890447, 3.63752335e-08, 1, 1.28447041e-07, 0.999890447, -3.44698741e-08, -0.0148028014))
                    until game.Workspace.Enemies:FindFirstChild("Darkbeard") or game.ReplicatedStorage:FindFirstChild("Darkbeard") or not Auto_Dark_Coat
				else
					
					H_F_T = nil
					_G.Chest_100 = nil
						_G.Chest_500 = nil
						_G.Chest_1000 = nil
						_G.Chest_1500 = nil
						_G.Chest_2000 = nil
						_G.Chest_2500 = nil
						_G.Chest_3500 = nil
						_G.Chest_4500 = nil
						_G.Chest_5500 = nil
						_G.Chest_6500 = nil
						_G.Chest_7500 = nil
						_G.Chest_9500 = nil
						_G.Chest_10500 = nil
						_G.Chest_12500 = nil
						_G.Chest_15500 = nil
						_G.Chest_17500 = nil
						Chest_100()
						Chest_500()
						Chest_1000()
						Chest_1500()
						Chest_2000()
						Chest_2500()
						Chest_3500()
						Chest_4500()
						Chest_5500()
						Chest_6500()
						Chest_7500()
						Chest_9500()
						Chest_10500()
						Chest_12500()
						Chest_15500()
						Chest_17500()
						if _G.Chest_100 ~= nil then                         
							repeat wait(0.01)
								Tween(_G.Chest_100.CFrame)
                            ClickSpace()
							until not _G.Chest_100.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_500.CFrame)
                            ClickSpace()
							until not _G.Chest_500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_1000 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_1000.CFrame)
                            ClickSpace()
							until not _G.Chest_1000.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_1500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_1500.CFrame)
                            ClickSpace()
							until not _G.Chest_1500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_2000 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_2000.CFrame)
                            ClickSpace()
							until not _G.Chest_2000.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_2500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_2500.CFrame)
                            ClickSpace()
							until not _G.Chest_2500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_3500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_3500.CFrame)
                            ClickSpace()
							until not _G.Chest_3500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_4500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_4500.CFrame)
                            ClickSpace()
							until not _G.Chest_4500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_5500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_5500.CFrame)
                            ClickSpace()
							until not _G.Chest_5500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_6500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_6500.CFrame)
                            ClickSpace()
							until not _G.Chest_6500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_7500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_7500.CFrame)
                            ClickSpace()
							until not _G.Chest_7500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_9500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_9500.CFrame)
                            ClickSpace()
							until not _G.Chest_9500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_10500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_10500.CFrame)
                            ClickSpace()
							until not _G.Chest_10500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_12500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_12500.CFrame)
                            ClickSpace()
							until not _G.Chest_12500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_15500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_15500.CFrame)
                            ClickSpace()
							until not _G.Chest_15500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						elseif _G.Chest_17500 ~= nil then
							repeat wait(0.01)
								Tween(_G.Chest_17500.CFrame)
                            ClickSpace()
							until not _G.Chest_17500.Parent or not Auto_Dark_Coat
							if Auto_Dark_Coat then
								C_H_H = C_H_H + 1
							end
						end
				end
			else
				wait(2)
			end
		end)
	end
end)

DarkBeardTab:AddToggle('', {Text = "Auto Dark Coat Hop",Default = _G.Config["DarkBeard"]["Auto Dark Coat Hop"],}):OnChanged(function(Value)
Auto_Dark_Coat_Hop = Value
_G.Config["DarkBeard"]["Auto Dark Coat Hop"] =  Value
Saveconfig()
end)

local SoulReaperTab = Tabs['Automatic']:AddRightGroupbox("« Soul Reaper »")

SoulReaperTab:AddToggle('', {Text = "Auto Soul Reaper",Default = _G.Config["Soul Reaper"]["Auto Soul Reaper"],}):OnChanged(function(Value)
_G.AutoFarmBossHallow = Value
_G.Config["Soul Reaper"]["Auto Soul Reaper"] =  Value
Saveconfig()
end)

spawn(function()
	while wait() do
		if _G.AutoFarmBossHallow then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Soul Reaper" then
							repeat
								task.wait()
								AutoHaki()
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                EquipWeapon(_G.SelectWeapon)
								v.HumanoidRootPart.Transparency = 1
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
						end
					end
				elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
					repeat
						Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
						wait()
					until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
					EquipWeapon("Hallow Essence")
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					else
						if _G.AutoFarmBossHallowHop then
							Hop()
						end
					end
				end
			end)
		end
	end
end)

SoulReaperTab:AddToggle('', {Text = "Auto Soul Reaper Hop",Default = _G.Config["Soul Reaper"]["Auto Soul Reaper Hop"],}):OnChanged(function(Value)
SoulReaperHop = Value
_G.Config["Soul Reaper"]["Auto Soul Reaper Hop"] =  Value
Saveconfig()
end)

   spawn(function()
        if  SoulReaperHop and not game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") then          
            Hop()
        end
    end)

local BonesTab = Tabs['Automatic']:AddRightGroupbox("« Bones »")

local Bones555 = BonesTab:AddLabel('..')

spawn(function()
    while task.wait() do
        pcall(function()
Bones555:SetText('Bones : '..CheckItem('Bones'))
        end)
    end
end)

BonesTab:AddToggle('', {Text = "Auto Farm Bones",Default = _G.Config["Bones"]["Auto Farm Bones"],}):OnChanged(function(Value)
_G.Auto_Bone = Value
_G.Config["Bones"]["Auto Farm Bones"] =  Value
Saveconfig()
end)

spawn(function()
    while task.wait() do
        if _G.Auto_Bone then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                            if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and _G.Auto_Bone then
                                repeat task.wait()
                                    AutoHaki()
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    EquipWeapon(_G.SelectWeapon)
                                    bringmob = true
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not _G.Auto_Bone
                                bringmob = false
                            end
                        end
                    end
                else
					toTarget(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Reborn Skeleton") then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Reborn Skeleton").HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                    end
                       if game:GetService("ReplicatedStorage"):FindFirstChild("Living Zombie") then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Living Zombie").HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                    end
                       if game:GetService("ReplicatedStorage"):FindFirstChild("Reborn Skeleton") then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Reborn Skeleton").HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                    end
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul") then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul").HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                    end
                       if game:GetService("ReplicatedStorage"):FindFirstChild("Posessed Mummy") then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Posessed Mummy").HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                    end                                                                     
                end
            end)
        end
    end
end)

BonesTab:AddToggle('', {Text = "Trade With Death King",Default = _G.Config["Bones"]["Trade With Death King"],}):OnChanged(function(Value)
_G.RandomBone = Value
_G.Config["Bones"]["Trade With Death King"] =  Value
Saveconfig()
end)

spawn(function()
	while wait() do
		if _G.RandomBone then
			local args = {
				[1] = "Bones",
				[2] = "Buy",
				[3] = 1,
				[4] = 1
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

local CakePrinceTab = Tabs['Automatic']:AddRightGroupbox("« Cake Prince »")

    spawn(
    function()
        while wait() do
            pcall(  
            function()
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    CakePrince555:SetText("Task : Have " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41) .. " More Left")
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    CakePrince555:SetText("Task : Have " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40) .. " More Left")
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    CakePrince555:SetText("Task : Have " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39) .. " More Left")
                else
                    --Portal555:SetDesc("🌀 : Portal 🟢")                   
                end
            end)
        end
    end)

CakePrinceTab:AddToggle('', {Text = "Auto Farm Cake Prince",Default = _G.Config["Cake Prince"]["Auto Farm Cake Prince"],}):OnChanged(function(Value)
_G.AutoDoughtBoss = Value
_G.Config["Cake Prince"]["Auto Farm Cake Prince"] =  Value
Saveconfig()
end)

spawn(function()
	while wait() do
		if _G.AutoDoughtBoss then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Cake Prince" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									task.wait()
									AutoHaki()
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoDoughtBoss == false or not v.Parent or v.Humanoid.Health <= 0 or tween:Cancel() or game:GetService("Workspace").Enemies:FindFirstChild("Ring") and game:GetService("Workspace").Enemies:FindFirstChild("Fist")
								if game:GetService("Workspace").Enemies:FindFirstChild("Ring") and game:GetService("Workspace").Enemies:FindFirstChild("Fist")  then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0))
								end
							end
						end
					end
				else
					if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 500 then
						toTarget(CFrame.new(-2151.82153, 149.315704, -12404.9053))
					else
						if KillMob == 0 then
						end
						if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
								for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat
												wait()
												AutoHaki()
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))                                                
												EquipWeapon(_G.SelectWeapon)
                                                bringmob = true
                                                FarmPos = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name                                        
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or KillMob == 0
                                            bringmob = false
										end
									end
								end
							else
								local RandomTele = math.random(1, 3)
								if RandomTele == 1 then
									toTarget(CFrame.new(-1436.86011, 167.753616, -12296.9512))
								elseif RandomTele == 2 then
									toTarget(CFrame.new(-2383.78979, 150.450592, -12126.4961))
								elseif RandomTele == 3 then
									toTarget(CFrame.new(-2231.2793, 168.256653, -12845.7559))
								end
								if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
									toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
										toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
									else
										if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
											toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
										else
											if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
												toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
											end
										end
									end
								end
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
								toTarget(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
							else
								if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
									toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
								end
							end
						end
					end
				end
			end)
		end
	end
end)    

spawn(function()
	while wait() do
		if _G.AutoDoughtBoss then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
		end
	end
end) 

local ArenaTrainerTab = Tabs['Automatic']:AddRightGroupbox("« Arena Trainer »")

ArenaTrainerTab:AddToggle('', {Text = "Auto Arena Trainer",Default = _G.Config["Arena Trainer"]["Auto Arena Trainer"],}):OnChanged(function(Value)
_G.Namfon = Value
_G.Config["Arena Trainer"]["Auto Arena Trainer"] =  Value
Saveconfig()
end)

    spawn(function()
        while wait() do
            if _G.Namfon and World3 then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy") or game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy") or game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Training Dummy" or v.Name == "Training Dummy" or v.Name == "Training Dummy" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))                                                
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            until _G.Namfon == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                end
                            else
                                toTarget(CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame * MethodFarm)
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame * MethodFarm)
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame * MethodFarm)
                                end
                            end                    
                        end
                    else
                        if _G.AutoArenaTrainerHop and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer") == "I don't have anything for you right now. Come back later." then
                            hop()
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer")
                        end
                    end
                end)
            end
        end
    end)

local EvoRaceTab = Tabs["Automatic"]:AddLeftGroupbox("« Evo Race »")

function CheckRace()local a=game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad","1")local b=game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist","1")if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed")then return game:GetService("Players").LocalPlayer.Data.Race.Value.." V4"end;if a==-2 then return game:GetService("Players").LocalPlayer.Data.Race.Value.." V3"end;if b==-2 then return game:GetService("Players").LocalPlayer.Data.Race.Value.." V2"end;return game:GetService("Players").LocalPlayer.Data.Race.Value.." V1"end;

local Race555 = EvoRaceTab:AddLabel('..')

spawn(function()
    while task.wait() do
        pcall(function()
Race555:SetText('Race : '..CheckRace(''))
        end)
    end
end)

EvoRaceTab:AddToggle('', {Text = "Auto Evo Race V2",Default = _G.Config["EvoRace"]["Auto Evo Race V2"],}):OnChanged(function(Value)
_G.Auto_EvoRace = Value
_G.Config["EvoRace"]["Auto Evo Race V2"] =  Value
Saveconfig()
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_EvoRace then
                if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                        Tween(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                Tween(game:GetService("Workspace").Flower1.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                Tween(game:GetService("Workspace").Flower2.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Zombie" then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                
                                                bringmob = true
                                                FarmPos = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name                                        
                                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                            StartEvoMagnet = false
                                        end
                                    end
                                else
                                    bringmob = false                                   Tween(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                end
                            end
                        end)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                    end
                end
            end
        end
    end)
end)

local FightingTab = Tabs["Automatic"]:AddLeftGroupbox("« Fighting Style »")

FightingTab:AddToggle('', {Text = "Auto Superhuman",Default = _G.Config["Fighting"]["Auto Superhuman"],}):OnChanged(function(Value)
getgenv().FullySuprtHuman = Value
_G.Config["Fighting"]["Auto Superhuman"] =  Value
Saveconfig()
end)

 task.spawn(
    function()
        while task.wait() do
            if getgenv().FullySuprtHuman then
                if
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Combat") and
                            game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000
                 then
                    wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")
                 then
                    _G.SelectWeapon = "Superhuman"
                end
                if
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Electro") or
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")
                 then
                    if
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299
                     then
                        _G.SelectWeapon = "Black Leg"
                    end
                    if
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299
                     then
                        _G.SelectWeapon = "Electro"
                    end
                    if
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299
                     then
                        _G.SelectWeapon = "Fishman Karate"
                    end
                    if getgenv().FullySuprtHuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                        
                    elseif getgenv().FullySuprtHuman and game.Players.LocalPlayer.Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BlackbeardReward",
                            "DragonClaw",
                            "1"
                        )
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BlackbeardReward",
                            "DragonClaw",
                            "2"
                        )
                    else                     
                        if
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299
                         then
                            _G.SelectWeapon = "Dragon Claw"
                        end
                        wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                end
            end
        end
    end
)

local ConfigurationsTab = Tabs['General']:AddRightGroupbox("« Configurations »")

ConfigurationsTab:AddDropdown('', {Values = {"Melee", "Sword",},Default = _G.Config["Setting"]["Select Weapon"],Text = "Choose Weapon / Combat",}):OnChanged(function(Value)
_G.TypeWeapon = Value
_G.Config["Setting"]["Select Weapon"] = Value
Saveconfig()
end)

task.spawn(function()
	while wait() do
		pcall(function()
			if _G.TypeWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.TypeWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.TypeWeapon == "Gun" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.TypeWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
end)

ConfigurationsTab:AddToggle('',{Text = "Bring Enemies",Default = _G.Config["Setting"]["Bring Enemies"],}):OnChanged(function(Value)
_G.BringMob = Value
_G.Config["Setting"]["Bring Enemies"] =  Value
Saveconfig()
end)

ConfigurationsTab:AddToggle('',{Text = "Instant Attack",Default = _G.Config["Setting"]["Instant Attack"],}):OnChanged(function(Value)
	Fast_Attack = Value
	DamageAura = Value
	ClickNoCooldown = Value
	DmgAttack.Enabled = not Value
   NeedAttacking = Value
   UsefastattackPlayers = Value
_G.Config["Setting"]["Instant Attack"] =  Value
Saveconfig()
end)

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
	if ClickNoCooldown then
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			ac.hitboxMagnitude = 55
			pcall(AttackFunction)
		end
	end
end)

spawn(function()
                while wait() do
                    pcall(function()
                    local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
                    Camera:Stop()
                    end)
                end
            end)

ConfigurationsTab:AddToggle('',{Text = "Fast Teleport",Default = _G.Config["Setting"]["Fast Teleport"],}):OnChanged(function(Value)
v48 = Value
_G.Config["Setting"]["Fast Teleport"] =  Value
Saveconfig()
end)

ConfigurationsTab:AddToggle('',{Text = "Random Position",Default = _G.Config["Setting"]["Random Position"],}):OnChanged(function(Value)
_G.RandomPosition = Value
_G.Config["Setting"]["Random Position"] =  Value
Saveconfig()
end)

ConfigurationsTab:AddToggle('',{Text = "Enable Active Race V4",Default = _G.Config["Setting"]["Enable Active Race V4"],}):OnChanged(function(Value)
AwakeningV4 = Value
_G.Config["Setting"]["Enable Active Race V4"] =  Value
Saveconfig()
end)

task.spawn(
    function()
	while task.wait() do
		task.wait()
		if AwakeningV4 then
			if
                game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and
                not game.Players.LocalPlayer.Character.RaceTransformed.Value
                then
				local Transformed = game:service("VirtualInputManager")
			 Transformed:SendKeyEvent(true, "Y", false, game)
				task.wait()
				Transformed:SendKeyEvent(false, "Y", false, game)
			end
		end
	end
end)

ConfigurationsTab:AddSlider('', {Text = 'Tween Speed',Default = _G.Config["Setting"]["Tween Speed"],Min = 0,Max = 350,Rounding = 0,}):OnChanged(function(Value)
getgenv().TweenSpeed = Value
_G.Config["Setting"]["Tween Speed"] = Value
Saveconfig()
end)

ConfigurationsTab:AddButton('Booster Fps', function()
local decalsyeeted = true
            local g = game
            local w = g.Workspace
            local l = g.Lighting
            local t = w.Terrain
            
            sethiddenproperty(l, "Technology", Enum.Technology.Compatibility)
            sethiddenproperty(t, "Decoration", false)
            
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 0
            
            l.GlobalShadows = false
            l.FogEnd = 9e9
            l.Brightness = 0
            
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            
            for _, v in pairs(g:GetDescendants()) do
                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = Enum.Material.Plastic
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") then
                    v.Material = Enum.Material.Plastic
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957 -- You might want to verify this TextureID
                end
            end
            
            for _, e in pairs(l:GetChildren()) do
                if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
                end
            end
end)

local CodesTab = Tabs['General']:AddRightGroupbox("« Codes »")

CodesTab:AddSlider('', {Text = 'Choose Level',Default = _G.Config["Code"]["Select Level"],Min = 0,Max = 10,Rounding = 0,}):OnChanged(function(Value)
_G.Config["Code"]["Select Level"] = Value
Saveconfig()
end)

CodesTab:AddToggle('', {Text = "Auto Redeem Code",Default = _G.Config["Code"]["Auto Redeem Code"],}):OnChanged(function(Value)
_G.Config["Code"]["Auto Redeem Code"] =  Value
Saveconfig()
end)

local CodeApi = {
"Sub2CaptainMaui",
"CODE_SERVICIO",
"CINCODEMAYO_BOOST",
"15B_BESTBROTHERS",
"DEVSCOOKING",
"GAMERROBOT_YT",
"ADMINGIVEAWAY",
"GAMER_ROBOT_1M",
"TY_FOR_WATCHING",
"kittgaming",
"Sub2Fer999",
"Enyu_is_Pro",
"Magicbus",
"JCWK",
"Starcodeheo",
"Bluxxy",
"fudd10_v2",
"FUDD10",
"BIGNEWS",
"THEGREATACE",
"SUB2GAMERROBOT_EXP1",
"Sub2OfficialNoobie",
"StrawHatMaine",
"SUB2NOOBMASTER123",
"Sub2Daigrock",
"Axiore",
"TantaiGaming",
"KITT_RESET",
"SUB2GAMERROBOT_RESET1",
"Sub2UncleKizaru"
}

task.spawn(function()
	while wait() do
		pcall(function()
			local MyLevel = game.Players.LocalPlayer.Data.Level.Value
			if _G.Config["Code"]["Auto Redeem Code"] then
				if MyLevel >= _G.Config["Code"]["Select Level"] then
					function RedeemAll(Value)
						game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Value)
					end
					for i,v in pairs(CodeApi) do
						RedeemAll(v)
					end
					wait(3)
					_G.Config["Code"]["Auto Redeem Code"] = false
				end
			end
		end)
	end
end)

local Codex2Api = {
"Sub2CaptainMaui",
"CODE_SERVICIO",
"CINCODEMAYO_BOOST",
"15B_BESTBROTHERS",
"DEVSCOOKING",
"GAMERROBOT_YT",
"ADMINGIVEAWAY",
"GAMER_ROBOT_1M",
"TY_FOR_WATCHING",
"kittgaming",
"Sub2Fer999",
"Enyu_is_Pro",
"Magicbus",
"JCWK",
"Starcodeheo",
"Bluxxy",
"fudd10_v2",
"FUDD10",
"BIGNEWS",
"THEGREATACE",
"SUB2GAMERROBOT_EXP1",
"Sub2OfficialNoobie",
"StrawHatMaine",
"SUB2NOOBMASTER123",
"Sub2Daigrock",
"Axiore",
"TantaiGaming"
}

CodesTab:AddButton('Redeem Exp Boost Code', function()
function RedeemCode(Value)
game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Value)
end
for i,v in pairs(Codex2Api) do
RedeemCode(v)
end
end)

local StatsTab = Tabs['General']:AddRightGroupbox("« Player Stats »")

StatsTab:AddDropdown('', {Values = {"Melee","Defense","Sword","Gun","Fruit"},Default = _G.Config["Stats"]["Select Stats"],Text = "Choose Stats",}):OnChanged(function(Value)
_G.SelectStats = Value
_G.Config["Stats"]["Select Stats"] = Value
Saveconfig()
end)

   spawn(function()
		while wait() do
			if game.Players.localPlayer.Data.Points.Value >= PointStats then
				if _G.SelectStats == "Melee" and _G.UpStats then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.SelectStats == "Defense" and _G.UpStats then
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.SelectStats == "Sword" and _G.UpStats then
					local args = {
						[1] = "AddPoint",
						[2] = "Sword",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.SelectStats == "Gun" and _G.UpStats then
					local args = {
						[1] = "AddPoint",
						[2] = "Gun",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.SelectStats == "Fruit" and _G.UpStats then
					local args = {
						[1] = "AddPoint",
						[2] = "Demon Fruit",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)

StatsTab:AddToggle('', {Text = "Enable",Default = _G.Config["Stats"]["Enable"],}):OnChanged(function(Value)
_G.UpStats = Value
_G.Config["Stats"]["Enable"] =  Value
Saveconfig()
end)

StatsTab:AddSlider('', {Text = 'Point Stats',Default = _G.Config["Stats"]["Point Stats"],Min = 0,Max = 2550,Rounding = 0,}):OnChanged(function(Value)
PointStats = Value
_G.Config["Stats"]["Point Stats"] = Value
Saveconfig()
end)
