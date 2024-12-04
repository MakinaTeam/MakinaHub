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
    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if _G.Upto then
        Lv = Lv + 100
    end
    if W1 then
        if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit" then -- Bandit
            Ms = "Bandit"
            NameQuest = "BanditQuest1"
            QuestLv = 1
            NameMon = "Bandit"
            CFrameQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1037.1971435546875, 80.767822265625, 1593.5054931640625)
        elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" then -- Monkey
            Ms = "Monkey"
            NameQuest = "JungleQuest"
            QuestLv = 1
            NameMon = "Monkey"
            CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1447.7362060546875, 51.19523239135742, 62.61884307861328)
        elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" then -- Gorilla
            Ms = "Gorilla"
            NameQuest = "JungleQuest"
            QuestLv = 2
            NameMon = "Gorilla"
            CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1132.8082275390625, 40.80637741088867, -521.5314331054688)
            if Lv >= 25 then
                _G.SelectBoss = "The Gorilla King" 
            end
            SelectMonster = "Monkey"
        elseif Lv >= 30 and Lv <= 40-1 or SelectMonster == "Pirate" then
             
            Ms = "Pirate"
            NameQuest = "BuggyQuest1"
            QuestLv = 1
            NameMon = "Pirate"
            CFrameQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1049.65478515625, 67.99503326416016, 3957.435791015625)
        elseif Lv >= 40 and Lv <= 60-1 or SelectMonster == "Brute" then
            Ms = "Brute"
            NameQuest = "BuggyQuest1"
            QuestLv = 2
            NameMon = "Brute"
            CFrameQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1147.0657958984375, 96.61427307128906, 4311.46484375)
            if Lv >= 55 then
                _G.SelectBoss = "Bobby"
            end
            SelectMonster = "Pirate"
        elseif Lv >= 60 and Lv <= 75-1 or SelectMonster == "Desert Bandit" then
             
            Ms = "Desert Bandit"
            NameQuest = "DesertQuest"
            QuestLv = 1
            NameMon = "Desert Bandit"
            CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(982.4600830078125, 23.526029586791992, 4411.40576171875)
        elseif Lv >= 75 and Lv <= 90-1 or SelectMonster == "Desert Officer" then
            Ms = "Desert Officer"
            NameQuest = "DesertQuest"
            QuestLv = 2
            NameMon = "Desert Officer"
            CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1562.3126220703125, 14.795281410217285, 4405.677734375)
            SelectMonster = "Desert Bandit"
        elseif Lv >= 90 and Lv <= 100-1 or SelectMonster == "Snow Bandit" then -- Snow Bandits
            Ms = "Snow Bandit"
            NameQuest = "SnowQuest"
            QuestLv = 1
            NameMon = "Snow Bandit"
            CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1340.0426025390625, 105.56710052490234, -1315.054443359375)
        elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" then -- Snowman
            Ms = "Snowman"
            NameQuest = "SnowQuest"
            QuestLv = 2
            NameMon = "Snowman"
            CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1219.813720703125, 138.35508728027344, -1487.648681640625)
            if Lv >= 110 then
                _G.SelectBoss = "Yeti"
            end
            SelectMonster = "Snow Bandit"
            _G.Farm_Mon = true
        elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" then -- Chief Petty Officer
            Ms = "Chief Petty Officer"
            NameQuest = "MarineQuest2"
            QuestLv = 1
            NameMon = "Chief Petty Officer"
            CFrameQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4923.693359375, 61.0307502746582, 4119.73193359375)
            CFrameMon1 = CFrame.new(-4733.5927734375, 54.690433502197266, 4447.373046875)
            if Lv >= 130 then
                _G.SelectBoss = "Vice Admiral"
            end
        elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" then -- Sky Bandit
            Ms = "Sky Bandit"
            NameQuest = "SkyQuest"
            QuestLv = 1
            NameMon = "Sky Bandit"
            CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4955.05908203125, 296.0874328613281, -2899.822021484375)
        elseif Lv == 175 or Lv <= 190 or SelectMonster == "Dark Master" then -- Dark Master
            Ms = "Dark Master"
            NameQuest = "SkyQuest"
            QuestLv = 2
            NameMon = "Dark Master"
            CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5225.28125, 430.2355041503906, -2277.6142578125)
            SelectMonster = "Sky Bandit"
        elseif Lv == 190 or Lv <= 209 and SelectMonster == "Prisoner" then
            Ms = "Prisoner"
            QuestLv = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5196.0791015625, 88.99527740478516, 488.6183166503906)
        elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner" then
            Ms = "Dangerous Prisoner"
            QuestLv = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5379.958984375, 88.99483489990234, 1008.5199584960938)
            if Lv >= 240 then
                _G.SelectBoss = "Swan"
                
            elseif Lv >= 230 then
                _G.SelectBoss = "Chief Warden"
                
            elseif Lv >= 220 then
                _G.SelectBoss = "Warden"
            end
            SelectMonster = "Prisoner"
        elseif Lv == 250 or Lv <= 299 or SelectMonster == "Toga Warrior" then -- Toga Warrior
            Ms = "Toga Warrior"
            NameQuest = "ColosseumQuest"
            QuestLv = 1
            NameMon = "Toga Warrior"
            CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
            CFrameMon = CFrame.new(-1819.1649169921875, 51.94740676879883, -2739.3740234375)
        elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" then -- Military Soldier
            Ms = "Military Soldier"
            NameQuest = "MagmaQuest"
            QuestLv = 1
            NameMon = "Military Soldier"
            CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
            CFrameMon = CFrame.new(-5514.03955078125, 63.142940521240234, 8576.841796875)
        elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" then -- Military Spy
            Ms = "Military Spy"
            NameQuest = "MagmaQuest"
            QuestLv = 2
            NameMon = "Military Spy"
            CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
            CFrameMon = CFrame.new(-5802.53173828125, 99.17176818847656, 8786.1982421875)
            SelectMonster = "Military Soldier"
        elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" then -- Fishman Warrior
            Ms = "Fishman Warrior"
            NameQuest = "FishmanQuest"
            QuestLv = 1
            NameMon = "Fishman Warrior"
            CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
            CFrameMon = CFrame.new(60888.671875, 96.01477813720703, 1525.4569091796875)
        elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" then -- Fishman Commando
            Ms = "Fishman Commando"
            NameQuest = "FishmanQuest"
            QuestLv = 2
            NameMon = "Fishman Commando"
            CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504)
            CFrameMon = CFrame.new(61941.4765625, 108.8272933959961, 1559.036376953125)
            if Lv >= 425 then
                _G.SelectBoss = "Fishman Lord"
            end
            SelectMonster = "Fishman Warrior"
        elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard" then 
            Ms = "God's Guard"
            NameQuest = "SkyExp1Quest"
            QuestLv = 1
            NameMon = "God's Guards"
            CFrameQ = CFrame.new(-4721.71436, 845.277161, -1954.20105)
            CFrameMon = CFrame.new(-4714.62744140625, 853.1715087890625, -1938.22705078125)
            if Lv >= 425 then
                _G.SelectBoss = "Fishman Lord"
            end
            SelectMonster = "Fishman Commando"
        elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" then
            Ms = "Shanda"
            NameQuest = "SkyExp1Quest"
            QuestLv = 2
            NameMon = "Shanda"
            CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7687.64501953125, 5601.17236328125, -441.61865234375)
            if Lv >= 500 then
                _G.SelectBoss = "Wysper"
            end
            SelectMonster = "God's Guard"
        elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" then -- Royal Squad
            Ms = "Royal Squad"
            NameQuest = "SkyExp2Quest"
            QuestLv = 1
            NameMon = "Royal Squad"
            CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7631.80078125, 5637.423828125, -1435.3065185546875)
            SelectMonster = "Shanda"
        elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" then -- Royal Soldier
            Ms = "Royal Soldier"
            NameQuest = "SkyExp2Quest"
            QuestLv = 2
            NameMon = "Royal Soldier"
            CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7860.97998046875, 5662.5859375, -1707.573974609375)
            if Lv >= 575 then
                _G.SelectBoss = "Thunder God"
            end
            SelectMonster = "Royal Squad"
        elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" then -- Galley Pirate
            Ms = "Galley Pirate"
            NameQuest = "FountainQuest"
            QuestLv = 1
            NameMon = "Galley Pirate"
            CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5556.74462890625, 152.6445770263672, 3999.6875)
        elseif Lv >= 650 or SelectMonster == "Galley Captain" then -- Galley Captain
            Ms = "Galley Captain"
            NameQuest = "FountainQuest"
            QuestLv = 2
            NameMon = "Galley Captain"
            CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5678.32275390625, 93.10353088378906, 4966.27392578125)
            if Lv >= 675 then
                _G.SelectBoss = "Cyborg"
            end
            SelectMonster = "Galley Pirate"
        end
    end
    if W2 then
        if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" then -- Raider
            Ms = "Raider"
            NameQuest = "Area1Quest"
            QuestLv = 1
            NameMon = "Raider"
            CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-462.41986083984375, 97.97019958496094, 2310.88720703125)
        elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" then -- Mercenary
            Ms = "Mercenary"
            NameQuest = "Area1Quest"
            QuestLv = 2
            NameMon = "Mercenary"
            CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-862.4571533203125, 135.76040649414062, 1404.47021484375)
            SelectMonster = "Raider"
        elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" then -- Swan Pirate
            Ms = "Swan Pirate"
            NameQuest = "Area2Quest"
            QuestLv = 1
            NameMon = "Swan Pirate"
            CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(913.2153930664062, 157.4447021484375, 1253.3961181640625)
        elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" then -- Factory Staff
            Ms = "Factory Staff"
            NameQuest = "Area2Quest"
            QuestLv = 2
            NameMon = "Factory Staff"
            CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(475.8017578125, 73.3030014038086+40, 165.0749053955078)
            SelectMonster = "Swan Pirate"
        elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant" then -- Marine Lieutenant
            Ms = "Marine Lieutenant"
            NameQuest = "MarineQuest3"
            QuestLv = 1
            NameMon = "Marine Lieutenant"
            CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2895.166748046875, 152.6609344482422, -3110.6279296875)
        elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" then -- Marine Captain
            Ms = "Marine Captain"
            NameQuest = "MarineQuest3"
            QuestLv = 2
            NameMon = "Marine Captain"
            CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1852.2872314453125, 89.98519134521484, -3205.28515625)
            SelectMonster = "Marine Lieutenant"
        elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" then -- Zombie
            Ms = "Zombie"
            NameQuest = "ZombieQuest"
            QuestLv = 1
            NameMon = "Zombie"
            CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5710.50146484375, 126.3752212524414, -782.9561157226562)
        elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" then -- Vampire
            Ms = "Vampire"
            NameQuest = "ZombieQuest"
            QuestLv = 2
            NameMon = "Vampire"
            CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6029.40869140625, 6.745943546295166, -1302.347412109375)
            SelectMonster = "Zombie"
        elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" then -- Snow Trooper **
            Ms = "Snow Trooper"
            NameQuest = "SnowMountainQuest"
            QuestLv = 1
            NameMon = "Snow Trooper"
            CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(411.0747375488281, 452.5277099609375, -5275.63671875)
        elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" then -- Winter Warrior
            Ms = "Winter Warrior"
            NameQuest = "SnowMountainQuest"
            QuestLv = 2
            NameMon = "Winter Warrior"
            CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1224.5518798828125, 454.92584228515625, -5169.74169921875)
            SelectMonster = "Snow Trooper"
        elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" then -- Lab Subordinate
            Ms = "Lab Subordinate"
            NameQuest = "IceSideQuest"
            QuestLv = 1
            NameMon = "Lab Subordinate"
            CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5779.51806640625, 43.029029846191406, -4482.03564453125)
        elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" then -- Horned Warrior
            Ms = "Horned Warrior"
            NameQuest = "IceSideQuest"
            QuestLv = 2
            NameMon = "Horned Warrior"
            CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6288.37548828125, 92.13507843017578, -5508.8447265625)
            SelectMonster = "Lab Subordinate"
        elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" then -- Magma Ninja
            Ms = "Magma Ninja"
            NameQuest = "FireSideQuest"
            QuestLv = 1
            NameMon = "Magma Ninja"
            CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5458.98583984375, 99.66064453125, -5827.193359375)
        elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" then 
            Ms = "Lava Pirate"
            NameQuest = "FireSideQuest"
            QuestLv = 2
            NameMon = "Lava Pirate"
            CFrameQ = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            CFrameMon = CFrame.new(-5250.14990234375, 56.49302291870117, -4786.2060546875)
            SelectMonster = "Magma Ninja"
        elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" then 
            Ms = "Ship Deckhand"
            NameQuest = "ShipQuest1"
            QuestLv = 1
            NameMon = "Ship Deckhand"
            CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            CFrameMon = CFrame.new(918.203857421875, 125.40035247802734, 32992.015625)
        elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" then 
            Ms = "Ship Engineer"
            NameQuest = "ShipQuest1"
            QuestLv = 2
            NameMon = "Ship Engineer"
            CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            CFrameMon = CFrame.new(918.203857421875, 125.40035247802734, 32992.015625)
            SelectMonster = "Ship Deckhand"
        elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" then 
            Ms = "Ship Steward"
            NameQuest = "ShipQuest2"
            QuestLv = 1
            NameMon = "Ship Steward"
            CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            CFrameMon = CFrame.new(919.1654052734375, 129.89923095703125, 33435.26953125)
        elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" then 
            Ms = "Ship Officer"
            NameQuest = "ShipQuest2"
            QuestLv = 2
            NameMon = "Ship Officer"
            CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            CFrameMon = CFrame.new(914.2103271484375, 181.40093994140625, 33364.94921875)
            SelectMonster = "Ship Steward"
        elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" then 
            Ms = "Arctic Warrior"
            NameQuest = "FrostQuest"
            QuestLv = 1
            NameMon = "Arctic Warrior"
            CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5995.0986328125, 56.164093017578125, -6187.46435546875)
        elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" then -- Snow Lurker
            Ms = "Snow Lurker"
            NameQuest = "FrostQuest"
            QuestLv = 2
            NameMon = "Snow Lurker"
            CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5632.02734375, 57.892425537109375, -6622.625)
            SelectMonster = "Arctic Warrior"
        elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" then -- Sea Soldier
            Ms = "Sea Soldier"
            NameQuest = "ForgottenQuest"
            QuestLv = 1
            NameMon = "Sea Soldier"
            CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3029.480224609375, 65.33903503417969, -9776.0234375)
        elseif Lv >= 1450 or SelectMonster == "Water Fighter" then -- Water Fighter
            Ms = "Water Fighter"
            NameQuest = "ForgottenQuest"
            QuestLv = 2
            NameMon = "Water Fighter"
            CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3266.053955078125, 299.0077209472656, -10551.6806640625)
            SelectMonster = "Sea Soldier"
            if Lv >= 1475 then
                _G.SelectBoss = "Tide Keeper"
            end
        end
    end
    if W3 then
        if Lv >= 1500 and Lv <= 1524 or SelectMonster == "Pirate Millionaire" then -- Pirate Millionaire
            Ms = "Pirate Millionaire"
            NameQuest = "PiratePortQuest"
            QuestLv = 1
            NameMon = "Pirate Millionaire"
            CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif Lv >= 1525 and Lv <= 1574 or SelectMonster == "Pistol Billionaire" then -- Pistol Billionaire
            Ms = "Pistol Billionaire"
            NameQuest = "PiratePortQuest"
            QuestLv = 2
            NameMon = "Pistol Billionaire"
            CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            SelectMonster = "Pirate Millionaire"
        elseif Lv >= 1575 and Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" then -- Dragon Crew Warrior
            Ms = "Dragon Crew Warrior"
            NameQuest = "AmazonQuest"
            QuestLv = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
        elseif Lv >= 1600 and Lv <= 1624 or SelectMonster == "Dragon Crew Archer" then -- Dragon Crew Archer
            Ms = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            QuestLv = 2
            NameMon = "Dragon Crew Archer"
            CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
            SelectMonster = "Dragon Crew Warrior"
        elseif Lv >= 1625 and Lv <= 1649 or SelectMonster == "Female Islander" then -- Female Islander
            Ms = "Female Islander"
            NameQuest = "AmazonQuest2"
            QuestLv = 1
            NameMon = "Female Islander"
            CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
        elseif Lv >= 1650 and Lv <= 1699 or SelectMonster == "Giant Islander" then -- Giant Islander
            Ms = "Giant Islander"
            NameQuest = "AmazonQuest2"
            QuestLv = 2
            NameMon = "Giant Islander"
            CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
            SelectMonster = "Female Islander"
        elseif Lv >= 1700 and Lv <= 1724 or SelectMonster == "Marine Commodore" then -- Marine Commodore
            Ms = "Marine Commodore"
            NameQuest = "MarineTreeIsland"
            QuestLv = 1
            NameMon = "Marine Commodore"
            CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
        elseif Lv >= 1725 and Lv <= 1774 or SelectMonster == "Marine Rear Admiral" then -- Marine Rear Admiral
            Ms = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            QuestLv = 2
            NameMon = "Marine Rear Admiral"
            CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
            SelectMonster = "Marine Commodore"
        elseif Lv >= 1775 and Lv <= 1799 or SelectMonster == "Fishman Raider" then -- Fishman Raider
            Ms = "Fishman Raider"
            NameQuest = "DeepForestIsland3"
            QuestLv = 1
            NameMon = "Fishman Raider"
            CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
        elseif Lv >= 1800 and Lv <= 1824 or SelectMonster == "Fishman Captain" then -- Fishman Captain
            Ms = "Fishman Captain"
            NameQuest = "DeepForestIsland3"
            QuestLv = 2
            NameMon = "Fishman Captain"
            CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
            SelectMonster = "Fishman Raider"
        elseif Lv >= 1825 and Lv <= 1849 or SelectMonster == "Forest Pirate" then -- Forest Pirate
            Ms = "Forest Pirate"
            NameQuest = "DeepForestIsland"
            QuestLv = 1
            NameMon = "Forest Pirate"
            CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
        elseif Lv >= 1850 and Lv <= 1899 or SelectMonster == "Mythological Pirate" then -- Mythological Pirate
            Ms = "Mythological Pirate"
            NameQuest = "DeepForestIsland"
            QuestLv = 2
            NameMon = "Mythological Pirate"
            CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
            SelectMonster = "Forest Pirate"
        elseif Lv >= 1900 and Lv <= 1924 or SelectMonster == "Jungle Pirate" then -- Jungle Pirate
            Ms = "Jungle Pirate"
            NameQuest = "DeepForestIsland2"
            QuestLv = 1
            NameMon = "Jungle Pirate"
            CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
        elseif Lv >= 1925 and Lv <= 1974 or SelectMonster == "Musketeer Pirate" then -- Musketeer Pirate
            Ms = "Musketeer Pirate"
            NameQuest = "DeepForestIsland2"
            QuestLv = 2
            NameMon = "Musketeer Pirate"
            CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
            SelectMonster = "Jungle Pirate"
        elseif Lv >= 1975 and Lv <= 1999 or SelectMonster == "Reborn Skeleton" then
            Ms = "Reborn Skeleton"
            NameQuest = "HauntedQuest1"
            QuestLv = 1
            NameMon = "Reborn Skeleton"
            CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
        elseif Lv >= 2000 and Lv <= 2024 or SelectMonster == "Living Zombie" then
            Ms = "Living Zombie"
            NameQuest = "HauntedQuest1"
            QuestLv = 2
            NameMon = "Living Zombie"
            CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
            SelectMonster = "Reborn Skeleton"
        elseif Lv >= 2025 and Lv <= 2049  or  SelectMonster == "Demonic Soul" then
            Ms = "Demonic Soul"
            NameQuest = "HauntedQuest2"
            QuestLv = 1
            NameMon = "Demonic"
            CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
            SelectMonster = "Living Zombie"
        elseif Lv >= 2050 and Lv <= 2074 or SelectMonster == "Posessed Mummy" then
            Ms = "Posessed Mummy"
            NameQuest = "HauntedQuest2"
            QuestLv = 2
            NameMon = "Posessed Mummy"
            CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
            SelectMonster = "Demonic Soul"
        elseif Lv >= 2075 and Lv <= 2099 or SelectMonster == "Peanut Scout" then
            Ms = "Peanut Scout"
            NameQuest = "NutsIslandQuest"
            QuestLv = 1
            NameMon = "Peanut Scout"
            CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
            CFrameMon = CFrame.new(-2098.07544, 192.611862, -10248.8867, 0.983392298, -9.57031787e-08, 0.181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, 0.983392298)
        elseif Lv >= 2100 and Lv <= 2124 or SelectMonster == "Peanut President" then
            Ms = "Peanut President"
            NameQuest = "NutsIslandQuest"
            QuestLv = 2
            NameMon = "Peanut President"
            CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
            CFrameMon = CFrame.new(-1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-08, 0.998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, 0.0553516336)
            SelectMonster = "Peanut Scout"
        elseif Lv >= 2125 and Lv <= 2149 or SelectMonster == "Ice Cream Chef" then
            Ms = "Ice Cream Chef"
            NameQuest = "IceCreamIslandQuest"
            QuestLv = 1
            NameMon = "Ice Cream Chef"
            CFrameQ = CFrame.new(-820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, 0.568714678, -3.92184099e-08, 0.822534859)
            CFrameMon = CFrame.new(-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, 0.492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
        elseif Lv >= 2150 and Lv <= 2199 or SelectMonster == "Ice Cream Commander" then 
            Ms = "Ice Cream Commander"
            NameQuest = "IceCreamIslandQuest"
            QuestLv = 2
            NameMon = "Ice Cream Commander"
            CFrameQ = CFrame.new(-819.376526, 67.4634171, -10967.2832)
            CFrameMon = CFrame.new(-610.11669921875, 208.26904296875, -11253.686523438)
            SelectMonster = "Ice Cream Chef"
        elseif Lv >= 2200 and Lv <= 2224 or SelectMonster == "Cookie Crafter" then 
            Ms = "Cookie Crafter"
            NameQuest = "CakeQuest1"
            QuestLv = 1
            NameMon = "Cookie Crafter"
            CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
            CFrameMon = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
        elseif Lv >= 2225 and Lv <= 2249 or SelectMonster == "Cake Guard" then 
            Ms = "Cake Guard"
            NameQuest = "CakeQuest1"
            QuestLv = 2
            NameMon = "Cake Guard"
            CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
            CFrameMon = CFrame.new(-1817.9747314453125, 209.5632781982422, -12288.9228515625)
            SelectMonster = "Cookie Crafter"
        elseif Lv >= 2250 and Lv <= 2299 or SelectMonster == "Baking Staff" then 
            Ms = "Baking Staff"
            NameQuest = "CakeQuest2"
            QuestLv = 1
            NameMon = "Baking Staff"
            CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
            CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
        elseif Lv >= 2300 and Lv <= 2324 or SelectMonster == "Cocoa Warrior" then
            Ms = "Cocoa Warrior"
            NameQuest = "ChocQuest1"
            QuestLv = 1
            NameMon = "Cocoa Warrior"
            CFrameMon = CFrame.new(53.17967224121094, 43.44169998168945, -12286.28515625)
            CFrameQ = CFrame.new(231.68377685546875, 25.077497482299805, -12196.4892578125)
        elseif Lv >= 2325 and Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" then
            Ms = "Chocolate Bar Battler"
            NameQuest = "ChocQuest1"
            QuestLv = 2
            NameMon = "Chocolate Bar Battler"
            CFrameMon = CFrame.new(616.9508666992188, 82.83536529541016, -12574.2841796875)
            CFrameQ = CFrame.new(231.68377685546875, 25.077497482299805, -12196.4892578125)
            SelectMonster = "Cocoa Warrior"
        elseif Lv >= 2350 and Lv <= 2374 or SelectMonster == "Sweet Thief" then
            Ms = "Sweet Thief"
            NameQuest = "ChocQuest2"
            QuestLv = 1
            NameMon = "Sweet Thief"
            CFrameMon = CFrame.new(12.077109336853027, 88.81404113769531, -12822.841796875)
            CFrameQ = CFrame.new(148.7130584716797, 25.137081146240234, -12774.9052734375)
            SelectMonster = "Chocolate Bar Battler"
        elseif Lv >= 2375 and Lv <= 2399 or SelectMonster == "Candy Rebel" then
            Ms = "Candy Rebel"
            NameQuest = "ChocQuest2"
            QuestLv = 2
            NameMon = "Candy Rebel"
            CFrameMon = CFrame.new(12.077109336853027, 88.81404113769531, -12822.841796875)
            CFrameQ = CFrame.new(148.7130584716797, 25.137081146240234, -12774.9052734375)
            SelectMonster = "Sweet Thief"
        elseif Lv >= 2400 and Lv <= 2424 or SelectMonster == "Candy Pirate" then
            Ms = "Candy Pirate"
            NameQuest = "CandyQuest1"
            QuestLv = 1
            NameMon = "Candy Pirate"
            CFrameMon = CFrame.new(-1232.966796875, 89.32124328613281, -14438.8876953125)
            CFrameQ = CFrame.new(-1147.0028076171875, 14.450505256652832, -14445.3818359375)
        elseif Lv >= 2425 and Lv <= 2449 or SelectMonster == "Snow Demon" then
            Ms = "Snow Demon"
            NameQuest = "CandyQuest1"
            QuestLv = 2
            NameMon = "Snow Demon"
            CFrameMon = CFrame.new(-942.3676147460938, 61.12588119506836, -14554.9921875)
            CFrameQ = CFrame.new(-1147.0028076171875, 14.450505256652832, -14445.3818359375)
            SelectMonster = "Candy Pirate"
        elseif Lv >= 2450 and Lv <= 2474 or SelectMonster == "Isle Outlaw" then
            Ms = "Isle Outlaw"
            NameQuest = "TikiQuest1"
            QuestLv = 1
            NameMon = "Isle Outlaw"
            CFrameMon = CFrame.new(-16297.6641, 94.385025, -170.797394)
            CFrameQ = CFrame.new(-16546.9648, 56.0038109, -172.849228)
        elseif Lv >= 2475 and Lv <= 2499 or SelectMonster == "Island Boy" then
            Ms = "Island Boy"
            NameQuest = "TikiQuest1"
            QuestLv = 2
            NameMon = "Island Boy"
            CFrameMon = CFrame.new(-16909.041, 84.385025, -216.017288)
            CFrameQ = CFrame.new(-16546.9648, 56.0038109, -172.849228)
            SelectMonster = "Isle Outlaw"
        elseif Lv >= 2500 and Lv <= 2524 or SelectMonster == "Sun-kissed Warrior" then
            Ms = "Sun-kissed Warrior"
            NameQuest = "TikiQuest2"
            QuestLv = 1
            NameMon = "Warrior"
            CFrameMon = CFrame.new(-16270.251, 96.7048264, 1041.97791)
            CFrameQ = CFrame.new(-16538.8477, 56.0037842, 1051.00537)
        elseif Lv >= 2525 or SelectMonster == "Isle Champion" then
            Ms = "Isle Champion"
            NameQuest = "TikiQuest2"
            QuestLv = 2
            NameMon = "Isle Champion"
            CFrameMon = CFrame.new(-16775.4395, 82.456459, 1032.24744)
            CFrameQ = CFrame.new(-16538.8477, 56.0037842, 1051.00537)
            SelectMonster = "Sun-kissed Warrior"
        end
    end
end

    function CheckQuestLevel()
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
                    BTP(CFrameQ)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
                    toTarget(CFrameQ)
                    end
                else
                    toTarget(CFrameQ)
                end
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    --CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Ms then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestLv) then
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
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                         toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,40,0))
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
