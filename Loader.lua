local Fluent = loadstring(game:HttpGet("https://pastebin.com/raw/XBx7rSBB"))()

local InterfaceManager = loadstring(game:HttpGet("https://pastebin.com/raw/KGwYU2Rv"))()

local Window = Fluent:CreateWindow({
Title = "<font color='rgb(255, 255, 255)'>Danny Hub | Fishing</font>"..os.date(" - %A, %B %dth, %Y."),
TabWidth = 160,
Size = UDim2.fromOffset(490, 300),
Acrylic = false,
Theme = "Danny Theme",
MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
GeneralTab = Window:AddTab({ Title = "General", Icon = "home" }),
Settings = Window:AddTab({ Title = "Interface", Icon = "align-vertical-distribute-center" })
}

local Options = Fluent.Options
do
end

InterfaceManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("Danny_Hub_Theme")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)

Window:SelectTab(1)

repeat task.wait()until game:IsLoaded()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9)
local CommF = Remotes:WaitForChild("CommF_", 9e9)

local Enemies = workspace:WaitForChild("Enemies", 9e9)
local Boats = workspace:WaitForChild("Boats", 9e9)

local Player = Players.LocalPlayer
local PlayerLevel = Player.Data.Level 
local Quest = {CFrame.new(), CFrame.new(), "", "", 1}
local QuestTween = {}
local Sea1, Sea2, Sea3 = game.PlaceId == 2753915549, game.PlaceId == 4442272183, game.PlaceId == 7449423635

local function Get_Fruit(Fruit)
  if Fruit == "Rocket Fruit" then
    return "Rocket-Rocket"
  elseif Fruit == "Spin Fruit" then
    return "Spin-Spin"
  elseif Fruit == "Chop Fruit" then
    return "Chop-Chop"
  elseif Fruit == "Spring Fruit" then
    return "Spring-Spring"
  elseif Fruit == "Bomb Fruit" then
    return "Bomb-Bomb"
  elseif Fruit == "Smoke Fruit" then
    return "Smoke-Smoke"
  elseif Fruit == "Spike Fruit" then
    return "Spike-Spike"
  elseif Fruit == "Flame Fruit" then
    return "Flame-Flame"
  elseif Fruit == "Falcon Fruit" then
    return "Falcon-Falcon"
  elseif Fruit == "Ice Fruit" then
    return "Ice-Ice"
  elseif Fruit == "Sand Fruit" then
    return "Sand-Sand"
  elseif Fruit == "Dark Fruit" then
    return "Dark-Dark"
  elseif Fruit == "Ghost Fruit" then
    return "Ghost-Ghost"
  elseif Fruit == "Diamond Fruit" then
    return "Diamond-Diamond"
  elseif Fruit == "Light Fruit" then
    return "Light-Light"
  elseif Fruit == "Rubber Fruit" then
    return "Rubber-Rubber"
  elseif Fruit == "Barrier Fruit" then
    return "Barrier-Barrier"
  elseif Fruit == "Magma Fruit" then
    return "Magma-Magma"
  elseif Fruit == "Quake Fruit" then
    return "Quake-Quake"
  elseif Fruit == "Buddha Fruit" then
    return "Buddha-Buddha"
  elseif Fruit == "Love Fruit" then
    return "Love-Love"
  elseif Fruit == "Spider Fruit" then
    return "Spider-Spider"
  elseif Fruit == "Sound Fruit" then
    return "Sound-Sound"
  elseif Fruit == "Phoenix Fruit" then
    return "Phoenix-Phoenix"
  elseif Fruit == "Portal Fruit" then
    return "Portal-Portal"
  elseif Fruit == "Rumble Fruit" then
    return "Rumble-Rumble"
  elseif Fruit == "Pain Fruit" then
    return "Pain-Pain"
  elseif Fruit == "Blizzard Fruit" then
    return "Blizzard-Blizzard"
  elseif Fruit == "Gravity Fruit" then
    return "Gravity-Gravity"
  elseif Fruit == "Mammoth Fruit" then
    return "Mammoth-Mammoth"
  elseif Fruit == "T-Rex Fruit" then
    return "T-Rex-T-Rex"
  elseif Fruit == "Dough Fruit" then
    return "Dough-Dough"
  elseif Fruit == "Shadow Fruit" then
    return "Shadow-Shadow"
  elseif Fruit == "Venom Fruit" then
    return "Venom-Venom"
  elseif Fruit == "Control Fruit" then
    return "Control-Control"
  elseif Fruit == "Spirit Fruit" then
    return "Spirit-Spirit"
  elseif Fruit == "Dragon Fruit" then
    return "Dragon-Dragon"
  elseif Fruit == "Leopard Fruit" then
    return "Leopard-Leopard"
  elseif Fruit == "Kitsune Fruit" then
    return "Kitsune-Kitsune"
  end
end

local function GetBossQuest(BossName)
  -- Bosses Sea 1
  if BossName == "The Gorilla King" then
    return true, CFrame.new(-1128, 6, -451), "JungleQuest"
  elseif BossName == "Bobby" then
    return true, CFrame.new(-1131, 14, 4080), "BuggyQuest1"
  elseif BossName == "Yeti" then
    return true, CFrame.new(1185, 106, -1518), "SnowQuest"
  elseif BossName == "Vice Admiral" then
    return true, CFrame.new(-4807, 21, 4360), "MarineQuest2", 2
  elseif BossName == "Swan" then
    return true, CFrame.new(5230, 4, 749), "ImpelQuest"
  elseif BossName == "Chief Warden" then
    return true, CFrame.new(5230, 4, 749), "ImpelQuest", 2
  elseif BossName == "Warden" then
    return true, CFrame.new(5230, 4, 749), "ImpelQuest", 1
  elseif BossName == "Magma Admiral" then
    return true, CFrame.new(-5694, 18, 8735), "MagmaQuest"
  elseif BossName == "Fishman Lord" then
    return true, CFrame.new(61350, 31, 1095), "FishmanQuest"
  elseif BossName == "Wysper" then
    return true, CFrame.new(-7927, 5551, -637), "SkyExp1Quest"
  elseif BossName == "Thunder God" then
    return true, CFrame.new(-7751, 5607, -2315), "SkyExp2Quest"
  elseif BossName == "Cyborg" then
    return true, CFrame.new(6138, 10, 3939), "FountainQuest"
  elseif BossName == "Saber Expert" then
    return false, CFrame.new(-1461, 30, -51)
  elseif BossName == "The Saw" then
    return false, CFrame.new(-690, 15, 1583)
  elseif BossName == "Greybeard" then
    return false, CFrame.new(-4807, 21, 4360)
  -- Bosses Sea 2
  elseif BossName == "Diamond" then
    return true, CFrame.new(-1569, 199, -31), "Area1Quest"
  elseif BossName == "Jeremy" then
    return true, CFrame.new(2316, 449, 787), "Area2Quest"
  elseif BossName == "Fajita" then
    return true, CFrame.new(-2086, 73, -4208), "MarineQuest3"
  elseif BossName == "Smoke Admiral" then
    return true, CFrame.new(-5078, 24, -5352), "IceSideQuest"
  elseif BossName == "Awakened Ice Admiral" then
    return true, CFrame.new(6473, 297, -6944), "FrostQuest"
  elseif BossName == "Tide Keeper" then
    return true, CFrame.new(-3711, 77, -11469), "ForgottenQuest"
  elseif BossName == "Don Swan" then
    return false, CFrame.new(2289, 15, 808)
  elseif BossName == "Cursed Captain" then
    return false, CFrame.new(912, 186, 33591)
  elseif BossName == "Darkbeard" then
    return false, CFrame.new(3695, 13, -3599)
  -- Bosses Sea 3
  elseif BossName == "Longma" then
    return false, CFrame.new(-10218, 333, -9444)
  elseif BossName == "Stone" then
    return true, CFrame.new(-1049, 40, 6791), "PiratePortQuest"
  elseif BossName == "Beautiful Pirate" then
    return true, CFrame.new(5241, 23, 129), "DeepForestIsland2"
  elseif BossName == "Island Empress" then
    return true, CFrame.new(5730, 602, 199), "AmazonQuest2"
  elseif BossName == "Kilo Admiral" then
    return true, CFrame.new(2889, 424, -7233), "MarineTreeIsland"
  elseif BossName == "Captain Elephant" then
    return true, CFrame.new(-13393, 319, -8423), "DeepForestIsland"
  elseif BossName == "Cake Queen" then
    return true, CFrame.new(-710, 382, -11150), "IceCreamIslandQuest"
  elseif BossName == "Dough King" or BossName == "Cake Prince" then
    return false, CFrame.new(-2103, 70, -12165)
  elseif BossName == "rip_indra True Form" then
    return false, CFrame.new(-5333, 424, -2673)
  end
end

local BossListT = {
  -- Sea 1 --
  -- Raid Boss
  "Greybeard",
  "The Saw",
  "Saber Expert",
  
  -- Normal Boss
  "The Gorilla King",
  "Bobby",
  "Yeti",
  "Vice Admiral",
  "Warden",
  "Chief Warden",
  "Swan",
  "Magma Admiral",
  "Fishman Lord",
  "Wysper",
  "Thunder God",
  "Cyborg",
  
  -- Sea 2 --
  -- Raid Boss
  "Darkbeard",
  "Cursed Captain",
  "Order",
  "Don Swan",
  
  -- Normal Blss
  "Diamond",
  "Jeremy",
  "Fajita",
  "Smoke Admiral",
  "Awakened Ice Admiral",
  "Tide Keeper",
  
  -- Sea 3 --
  -- Raid Boss
  "Dough King",
  "Cake Prince",
  "rip_indra True Form",
  "Soul Reaper",
  
  -- Normal Boss
  "Stone",
  "Island Empress",
  "Kilo Admiral",
  "Captain Elephant",
  "Beautiful Pirate",
  "Cake Queen",
  "Longma"
}

local function FireRemote(...)
  return CommF:InvokeServer(...)
end

local block = Instance.new("Part", workspace)
block.Size = Vector3.new(1, 1, 1)
block.Name = "player platform ............."
block.Anchored = true
block.CanCollide = false
block.CanTouch = false
block.Transparency = 1

local blockfind = workspace:FindFirstChild(block.Name)
if blockfind and blockfind ~= block then
  blockfind:Destroy()
end

task.spawn(function()
  while task.wait() do
    if block and block.Parent == workspace then
      if getgenv().AutoFarmNearest
      or getgenv().TeleportToIsland
      or getgenv().AutoFinishTrial
      or getgenv().AutoWoodPlanks
      or getgenv().AutoFarm_Level
      -- or getgenv().AutoGift
      -- or getgenv().AutoCandy
      or getgenv().AutoFarmSea
      or getgenv().AutoEliteHunter
      or getgenv().AutoPiratesSea
      or getgenv().AutoFarmBossSelected
      or getgenv().AutoRengoku
      or getgenv().TeleportToFruit
      or getgenv().AutoFactory
      or getgenv().AutoBartiloQuest
      or getgenv().AutoFarmRaid
      or getgenv().AutoRaceV2
      or getgenv().AutoCakePrince
      or getgenv().AutoDoughKing
      or getgenv().RipIndraLegendaryHaki
      or getgenv().AutoRipIndra
      or getgenv().AutoUnlockSaber
      or getgenv().AutoSawBoss
      or getgenv().AutoEnelBossPole
      or getgenv().AutoMusketeerHat
      or getgenv().AutoKenV2
      or getgenv().AutoFarmKen
      or getgenv().AutoFarmBone
      or getgenv().AutoCursedCaptain
      or getgenv().AutoFarmEctoplasm
      or getgenv().AutoKitsuneIsland
      or getgenv().AutoSoulReaper
      or getgenv().AutoSoulGuitar
      or getgenv().TeleportToMirage
      or getgenv().AutoSecondSea
      or getgenv().AutoThirdSea
      or getgenv().AutoDarkbeard
      or getgenv().AutoKillLawBoss
      or getgenv().AutoChestTween
      or getgenv().AutoRainbowHaki
      or getgenv().AutoFarmMaterial
      or getgenv().AutoSharkmanKarate
      or getgenv().AutoKillDonSwan
      or getgenv().AutoSoulGuitar
      or getgenv().AutoCursedDualKatana
      or getgenv().AutoDeathStep
      or getgenv().AutoDragonTalon
      or getgenv().AutoElectricClaw
      or getgenv().AutoSuperhuman
      or getgenv().AutoMasteryFightingStyle
      or getgenv().AutoGodHuman
      or getgenv().AutoTushita
      or getgenv().AutoFarmMastery
      or getgenv().NPCtween
      or getgenv().KillAllBosses then
        getgenv().OnFarm = true
      else
        getgenv().OnFarm = false
      end
    else
      getgenv().OnFarm = false
    end
  end
end)

task.spawn(function()
  repeat task.wait()
  until Player.Character and Player.Character.PrimaryPart
  block.CFrame = Player.Character.PrimaryPart.CFrame
  
  while task.wait() do
    pcall(function()
      if getgenv().OnFarm then
        if block and block.Parent == workspace then
          local plrPP = Player.Character and Player.Character.PrimaryPart
          
          if plrPP and (plrPP.Position - block.Position).Magnitude <= 200 then
            plrPP.CFrame = block.CFrame
          else
            block.CFrame = plrPP.CFrame
          end
        end
        local plrChar = Player.Character
        if plrChar then
          for _,part in pairs(plrChar:GetChildren()) do
            if part:IsA("BasePart") then
              part.CanCollide = false
            end
          end
          if plrChar:FindFirstChild("Stun") and plrChar.Stun.Value ~= 0 then
            plrChar.Stun.Value = 0
          end
          if plrChar:FindFirstChild("Busy") and plrChar.Busy.Value then
            plrChar.Busy.Value = false
          end
        end
      else
        local plrChar = Player.Character
        if plrChar then
          for _,part in pairs(plrChar:GetChildren()) do
            if part:IsA("BasePart") then
              part.CanCollide = true
            end
          end
        end
      end
    end)
  end
end)

task.spawn(function()
  local PortalPos = {}
  
  if Sea1 then
    PortalPos = {
      Vector3.new(-4652, 873, -1754), -- Sky Island 1
      Vector3.new(-7895, 5547, -380), -- Sky Island 2
      Vector3.new(61164, 5, 1820), -- Under Water Island
      Vector3.new(3865, 5, -1926) -- Under Water Island Entrace
    }
  elseif Sea2 then
    PortalPos = {
      Vector3.new(-317, 331, 597), -- Flamingo Mansion
      Vector3.new(2283, 15, 867), -- Flamingo Room
      Vector3.new(923, 125, 32853), -- Cursed Ship
      Vector3.new(-6509, 83, -133) -- Zombie Island0
    }
  elseif Sea3 then
    PortalPos = {
      Vector3.new(-12471, 374, -7551), -- Mansion
      Vector3.new(5756, 610, -282), -- Hydra Island
      Vector3.new(-5092, 315, -3130), -- Castle on the Sea
      Vector3.new(-12001, 332, -8861), -- Floating Turtle
      Vector3.new(5319, 23, -93), -- Beautiful Pirate
      Vector3.new(28286, 14897, 103) -- Temple of Time
    }
  end
  
  function GetTPPos(position)
    local NearPos = math.huge
    local TpPos = Vector3.new()
    
    table.foreach(PortalPos, function(___, pos)
      if (pos - position).Magnitude <= NearPos then
        NearPos = (pos - position).Magnitude
        TpPos = pos
      end
    end)
    return TpPos
  end
end)

local TeleportPos
local function PlayerTP(Tween_Pos)
  TeleportPos = Tween_Pos.p
  local plrPP = Player.Character and Player.Character.PrimaryPart
  if not plrPP then return end
  local Distance = (plrPP.Position - Tween_Pos.p).Magnitude
  local PortalPos = GetTPPos(Tween_Pos.p)
  if (plrPP.Position - Tween_Pos.p).Magnitude > (Tween_Pos.p - PortalPos).Magnitude + 250 then
    plrPP.CFrame = CFrame.new(PortalPos)
    block.CFrame = CFrame.new(PortalPos)
  elseif block then
    if Distance <= 450 then
      local tween = game:GetService("TweenService"):Create(block,
      TweenInfo.new(Distance / tonumber(getgenv().TweenSpeed * 1.8), Enum.EasingStyle.Linear),
      {CFrame = Tween_Pos}):Play()
    else
      local tween = game:GetService("TweenService"):Create(block,
      TweenInfo.new(Distance / getgenv().TweenSpeed, Enum.EasingStyle.Linear),
      {CFrame = Tween_Pos}):Play()
    end
  end
end

local function BoatTP(Boat, pos)
  if Boat then
    local Distance = (Boat.PrimaryPart.Position - pos.p).Magnitude
    game:GetService("TweenService"):Create(Boat.PrimaryPart,
    TweenInfo.new(Distance / getgenv().SeaBoatSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
    {CFrame = pos}):Play()
  end
end

local function KillAura()
  local function Kill(_,Enemie)
    local EnemieH = Enemie:FindFirstChild("Humanoid")
    
    if EnemieH and EnemieH.Health > 0 then
      local PlayerPP = Player.Character and Player.Character.PrimaryPart
      local EnemiePP = Enemie.PrimaryPart
      
      if PlayerPP and EnemiePP and (EnemiePP.Position - PlayerPP.Position).Magnitude < 1500 then
        EnemieH.Health = 0
        EnemiePP.Size = Vector3.new(75, 75, 75)
        EnemiePP.CanCollide = false
        sethiddenproperty(Player, "SimulationRadius", math.huge)
      end
    else
      local EnemieHead = Enemie:FindFirstChild("Head")
      
      if EnemieHead then
        EnemieHead:Destroy()
      end
    end
  end
  
  table.foreach(Enemies:GetChildren(), Kill)
  table.foreach(ReplicatedStorage:GetChildren(), Kill)
end

local function AutoKillAura()
  while getgenv().AutoKillAura do task.wait()
    KillAura()
  end
end

local function VerifyTableNPCs(npcs)
  if typeof(npcs) == "table" then
    for _,npc in pairs(Enemies:GetChildren()) do
      if table.find(npcs, npc.Name) then
        return true
      end
    end
  end
end

local function TweenNPCSpawn(pos, NPC)
  if pos then
    repeat task.wait()
      for _,v in pairs(pos) do
        if VerifyTableNPCs(NPC) or Enemies:FindFirstChild(NPC or Quest[3]) then
          break
        end
        if block then
          local tween = game:GetService("TweenService"):Create(block,
          TweenInfo.new((block.Position - v.p).Magnitude / getgenv().TweenSpeed, Enum.EasingStyle.Linear),
          {CFrame = v})tween:Play()tween.Completed:Wait()
        end
      end
    until not getgenv().AutoFarm_Level or Enemies:FindFirstChild(NPC or Quest[3])
    -- or getgenv().TimeToGift < 90
    return
  end
end

local function AddESP(Part, ESPColor)
  if Part and Part:FindFirstChild("ESP_REDzHUB") then
    return
  end
  
  local Folder = Instance.new("Folder", Part)
  Folder.Name = "ESP_REDzHUB"
  
  local BHA = Instance.new("BoxHandleAdornment", Folder)
  BHA.Size = Vector3.new(1, 0, 1, 0)
  BHA.Name = "ESP_REDzHUB"
  BHA.AlwaysOnTop = true
  BHA.ZIndex = 10
  BHA.Transparency = 0
  
  local BBG = Instance.new("BillboardGui", BHA)
  BBG.Adornee = Part
  BBG.Size = UDim2.new(0, 100, 0, 150)
  BBG.StudsOffset = Vector3.new(0, 1, 0)
  BBG.AlwaysOnTop = true
  
  local TL = Instance.new("TextLabel", BBG)
  TL.BackgroundTransparency = 1
  TL.Position = UDim2.new(0, 0, 0, -50)
  TL.Size = UDim2.new(0, 100, 0, 100)
  TL.TextSize = 10
  TL.TextColor3 = Color3.new(1, 1, 1)
  TL.TextStrokeTransparency = 0
  TL.TextYAlignment = Enum.TextYAlignment.Bottom
  TL.Text = "..."
  TL.ZIndex = 15
  TL.TextColor3 = ESPColor or Color3.fromRGB(255, 255, 0)
  
  task.spawn(function()
    while task.wait() do
      pcall(function()
        local plrRP = Player.Character:FindFirstChild("HumanoidRootPart")
        if plrRP and Part and Part.Name == "HumanoidRootPart" and Part.Parent:FindFirstChild("Humanoid") then
          local distance = math.floor((plrRP.Position - Part.Position).Magnitude / 3)
          local Health = math.floor(Part.Parent.Humanoid.Health)
          TL.Text = "Name : " .. Part.Parent.Name .. " | HP : " .. tostring(Health).. " | MAG : " .. tostring(distance)
        elseif plrRP and Part and Part.Name == "Handle" then
          local distance = math.floor((plrRP.Position - Part.Position).Magnitude / 3)
          TL.Text = Part.Parent.Name .. " <" .. tostring(distance) .. ">"
        elseif plrRP and Part then
          local distance = math.floor((plrRP.Position - Part.Position).Magnitude / 3)
          TL.Text = Part.Name .. " <" .. tostring(distance) .. ">"
        end
      end)
    end
  end)
end

local function RemoveESP(Part)
  if Part and Part:FindFirstChild("ESP_REDzHUB") then
    Part.ESP_REDzHUB:Destroy()
  end
end

local function EspPlayer()
  while getgenv().EspPlayer do task.wait()
    for _,player in pairs(game:GetService("Players"):GetPlayers()) do
      if player.Name ~= Player.Name and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        AddESP(player.Character.HumanoidRootPart, Color3.fromRGB(0, 255, 0))
      end
    end
  end
  for _,player in pairs(game:GetService("Players"):GetPlayers()) do
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
      RemoveESP(player.Character.HumanoidRootPart)
    end
  end
end

local function EspFlowers()
  while getgenv().EspFlowers do task.wait()
    for _,Flower in pairs(workspace:GetChildren()) do
      if Flower and Flower:IsA("BasePart") then
        if Flower.Name == "Flower1" then
          AddESP(Flower, Flower.Color)
        end
      end
    end
  end
  for _,Flower in pairs(workspace:GetChildren()) do
    if Flower and Flower:IsA("BasePart") then
      if Flower.Name == "Flower1" or Flower.Name == "Flower2" then
        RemoveESP(Flower)
      end
    end
  end
end

local function EspFruits()
  while getgenv().EspFruits do task.wait()
    for _,Fruit in pairs(workspace:GetChildren()) do
      if Fruit and Fruit:IsA("Tool") and Fruit:FindFirstChild("Handle") or
      Fruit and string.find(Fruit.Name, "Fruit") and Fruit:FindFirstChild("Handle") then
        AddESP(Fruit.Handle, Color3.fromRGB(255, 0, 0))
      end
    end
  end
  for _,Fruit in pairs(workspace:GetChildren()) do
    if Fruit and Fruit:FindFirstChild("Handle") then
      RemoveESP(Fruit.Handle)
    end
  end
end

local function EspIslands()
  while getgenv().EspIslands do task.wait()
    local Locations = workspace:WaitForChild("_WorldOrigin", 9e9):WaitForChild("Locations", 9e9)
    for _,Island in pairs(Locations:GetChildren()) do
      if Island then
        AddESP(Island, Color3.fromRGB(0, 255, 255))
      end
    end
  end
  local Locations = workspace:WaitForChild("_WorldOrigin", 9e9):WaitForChild("Locations", 9e9)
  for _,Island in pairs(Locations:GetChildren()) do
    if Island then
      RemoveESP(Island)
    end
  end
end

local function EspChests()
  while getgenv().EspChests do task.wait()
    for _,Chest in pairs(workspace:GetChildren()) do
      if Chest then
        if Chest.Name == "Chest3" then
          AddESP(Chest, Color3.fromRGB(0, 255, 255))
        elseif Chest.Name == "Chest2" then
          AddESP(Chest, Color3.fromRGB(255, 255, 0))
        elseif Chest.Name == "Chest1" then
          AddESP(Chest, Color3.fromRGB(150, 150, 150))
        end
      end
    end
  end
  for _,Chest in pairs(workspace:GetChildren()) do
    if Chest then
      if Chest.Name == "Chest3" or Chest.Name == "Chest2" or Chest.Name == "Chest1" then
        RemoveESP(Chest)
      end
    end
  end
end

local CameraShaker = require(ReplicatedStorage.Util.CameraShaker)
CameraShaker:Stop()

function GetBladeHit()
  local CombatFrameworkLib = debug.getupvalues(require(Player.PlayerScripts.CombatFramework))
  local CmrFwLib = CombatFrameworkLib[2]
  local p13 = CmrFwLib.activeController
  local weapon = p13.blades[1]
  
  if not weapon then 
    return weapon
  end
  while weapon.Parent ~= Player.Character do task.wait()
    weapon = weapon.Parent
  end
  return weapon
end

function AttackHit()
  local CombatFrameworkLib = debug.getupvalues(require(Player.PlayerScripts.CombatFramework))
  local CmrFwLib = CombatFrameworkLib[2]
  for i = 1, 1 do
    local bladehit = require(ReplicatedStorage.CombatFramework.RigLib).getBladeHits(Player.Character, {
      Player.Character.HumanoidRootPart
    }, 60)
    local cac = {}
    local hash = {}
    for _,v in pairs(bladehit) do
      if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
        table.insert(cac, v.Parent.HumanoidRootPart)
        hash[v.Parent] = true
      end
    end
    bladehit = cac
    if #bladehit > 0 then
      pcall(function()
        ReplicatedStorage.RigControllerEvent:FireServer("weaponChange", tostring(GetBladeHit()))
        ReplicatedStorage.RigControllerEvent:FireServer("hit", bladehit, i, "")
      end)
    end
  end
end

local function AttackDistance()
  while getgenv().AttackDistance do task.wait()
    pcall(function()
      local CF = debug.getupvalues(require(Player.PlayerScripts.CombatFramework))[2]
      local AC = CF.activeController
      if AC.hitboxMagnitude ~= 60 then AC.hitboxMagnitude = 60 end
    end)
  end
end

local function FastAttack()
  while getgenv().FastAttack do task.wait()
    pcall(function()
      local CF = debug.getupvalues(require(Player.PlayerScripts.CombatFramework))[2]
      local AC = CF.activeController
      if AC.increment ~= 3 then AC.increment = 3 end
      if AC.timeToNextAttack ~= 0 then AC.timeToNextAttack = 0 end
      if AC.timeToNextBlock ~= 0 then AC.timeToNextBlock = 0 end
      if AC.focusStart ~= 0 then AC.focusStart = 0 end
      if AC.attacking ~= false then AC.attacking = false end
      if AC.blocking ~= false then AC.blocking = false end
      if AC.humanoid.AutoRotate ~= true then AC.humanoid.AutoRotate = true end
      if AC.currentAttackTrack ~= 0 then AC.currentAttackTrack = 0 end
      sethiddenproperty(Player, "SimulationRaxNerous", math.huge)
    end)task.spawn(AttackHit)
  end
end

local time = tick()
local function PlayerClick()
  local plrPP = Player.Character and Player.Character.PrimaryPart
  if plrPP and TeleportPos and (plrPP.Position - TeleportPos).Magnitude > 25 then return end
  if getgenv().AutoClick and (tick() - time) >= getgenv().AutoClickDelay then
    task.spawn(function()
      VirtualUser:CaptureController()
      VirtualUser:Button1Down(Vector2.new(math.huge, math.huge))
    end)
    time = tick()
  end
end

local function ServerHop()
  local Http = game:GetService("HttpService")
  local TPS = game:GetService("TeleportService")
  local Api = "https://games.roblox.com/v1/games/"
  local _place = game.PlaceId
  local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
  
  function ListServers(cursor)
    local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
    return Http:JSONDecode(Raw)
  end
  local Server, Next
  repeat task.wait()
    local Servers = ListServers(Next)
    Server = Servers.data[1] Next = Servers.nextPageCursor
  until Server TPS:TeleportToPlaceInstance(_place, Server.id, Player)
end

local function VerifyNPC(EnemieName)
  local Stats
  local function Verify(_,Enemie)
    if Enemie.Name == EnemieName then
      local EnemieH = Enemie:FindFirstChild("Humanoid")
      
      if EnemieH and EnemieH.Health > 0 then
        Stats = true
      end
    end
  end
  
  table.foreach(Enemies:GetChildren(), Verify)
  table.foreach(ReplicatedStorage:GetChildren(), Verify)
  return Stats
end

local function ActiveHaki()
  local VerifyHaki = Player.Character and Player.Character:FindFirstChild("HasBuso")
  if getgenv().AutoHaki and not VerifyHaki then
    FireRemote("Buso")
  end
end

local function VerifyTool(ToolName)
  local plrChar = Player and Player.Character
  local plrBag = Player and Player.Backpack
  
  if plrChar then
    return plrChar:FindFirstChild(ToolName) or plrBag:FindFirstChild(ToolName)
  end
end

local function VerifyToolTip(tooltip)
  local plrChar = Player and Player.Character
  local plrBag = Player and Player.Backpack
  
  for _,tool in pairs(plrBag:GetChildren()) do
    if tool and tool:IsA("Tool") and tool.ToolTip == tooltip then
      return tool
    end
  end
  if plrChar then
    for _,tool in pairs(plrChar:GetChildren()) do
      if tool and tool:IsA("Tool") and tool.ToolTip == tooltip then
        return tool
      end
    end
  end
end

local function GetToolLevel(ToolName)
  local Tool = VerifyTool(ToolName)
  
  if Tool and Tool:FindFirstChild("Level") then
    return Tool.Level.Value
  end
end

local function EquipToolName(NameTool)
  local plrBag = Player.Backpack
  local plrChar = Player.Character
  local plrH = plrChar and plrChar:FindFirstChild("Humanoid")
  if plrBag and plrH and plrBag:FindFirstChild(NameTool) then
    plrH:EquipTool(plrBag[NameTool])
  end
end

local function GetEnemies(EnemiesList)
  local Distance, Nearest = math.huge
  local function Verify(_,Enemie)
    if table.find(EnemiesList, Enemie.Name) then
      local EnemieH = Enemie:FindFirstChild("Humanoid")
      
      if EnemieH and EnemieH.Health > 0 then
        local EnemiePP = Enemie.PrimaryPart
        local PlayerPP = Player.Character and Player.Character.PrimaryPart
        
        if EnemiePP and PlayerPP and (PlayerPP.Position - EnemiePP.Position).Magnitude <= Distance then
          Distance = (PlayerPP.Position - EnemiePP.Position).Magnitude
          Nearest = Enemie
        end
      end
    end
  end
  table.foreach(Enemies:GetChildren(), Verify)
  table.foreach(ReplicatedStorage:GetChildren(), Verify)
  return Nearest
end

local AimBotPart
task.spawn(function()
  AimBotPart = function(part, tool)
    local plrChar = Player and Player.Character
    local plrTool = plrChar and plrChar:FindFirstChildOfClass("Tool")
    
    if tool and tool:FindFirstChild("RemoteEvent") and part then
      getgenv().AimbotPos = part.Position
      tool.RemoteEvent:FireServer(part.Position)
    elseif plrTool and plrTool:FindFirstChild("RemoteEvent") and part then
      getgenv().AimbotPos = part.Position
      plrTool.RemoteEvent:FireServer(part.Position)
    end
  end
  
  local oldhook
  oldhook = hookmetamethod(game, "__namecall", function(self, Vector, ...)
    if self.Name == "RemoteEvent" and getnamecallmethod():lower() == "fireserver" then
      if typeof(Vector) == "Vector3" then
        if getgenv().AimbotPos then
          if getgenv().AutoFarmSea or getgenv().AutoWoodPlanks then
            if getgenv().SeaAimBotSkill then
              return oldhook(self, getgenv().AimbotPos, ...)
            end
          elseif getgenv().AutoFarmMastery then
            if getgenv().AimBotSkill then
              return oldhook(self, getgenv().AimbotPos, ...)
            end
          end
        end
      end
    end
    return oldhook(self, Vector, ...)
  end)
end)

local function KeyboardPress(key)
  local VIM = game:GetService("VirtualInputManager")
  VIM:SendKeyEvent(true, key, false, game)
  VIM:SendKeyEvent(false, key, false, game)
end

local function EquipToolTip(tooltip)
  local backpack = Player.Backpack
  for _,tool in pairs(backpack:GetChildren()) do
    if tool and tool.ToolTip == tooltip then
      EquipToolName(tool.Name)return
    end
  end
end

local function EquipTool()
  local backpack = Player.Backpack
  for _,tool in pairs(backpack:GetChildren()) do
    if tool and tool.ToolTip == getgenv().FarmTool then
      EquipToolName(tool.Name)return
    end
  end
end

local function FruitFind()
  local fruits = workspace:GetChildren()
  local FruitDistance = math.huge
  local Fruit = nil
  
  for __,fruit in pairs(fruits) do
    local args1 = Player and Player.Character and Player.Character.PrimaryPart
    local args2 = fruit and fruit:IsA("Tool") and fruit:FindFirstChild("Handle")
    local args3 = fruit and string.find(fruit.Name, "Fruit") and fruit:FindFirstChild("Handle")
    
    if args1 and args2 and (args1.Position - args2.Position).Magnitude <= FruitDistance then
      FruitDistance = (args1.Position - args2.Position).Magnitude
      Fruit = fruit
    elseif args1 and args3 and (args1.Position - args3.Position).Magnitude <= FruitDistance then
      FruitDistance = (args1.Position - args3.Position).Magnitude
      Fruit = fruit
    end
  end
  return Fruit and Fruit:FindFirstChild("Handle")
end

local function BuyFightStyle(Style)
  FireRemote(Style, true)
  FireRemote(Style)
end

local function AutoChestBypass()
  local ActiveTick = tick()
  while getgenv().AutoChestBypass do task.wait()
    local plrRP = Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
    local Chest3 = workspace:FindFirstChild("Chest3")
    local Chest2 = workspace:FindFirstChild("Chest2")
    local Chest1 = workspace:FindFirstChild("Chest1")
    
    if not VerifyTool("God's Chalice") and not VerifyTool("Fist of Darkness") then
      if plrRP and Chest3 and Chest3.Transparency < 1 then
        plrRP.CFrame = Chest3.CFrame
      elseif plrRP and Chest2 and Chest2.Transparency < 1 then
        plrRP.CFrame = Chest2.CFrame
      elseif plrRP and Chest1 and Chest1.Transparency < 1 then
        plrRP.CFrame = Chest1.CFrame
      end
    end
    
    if not VerifyTool("God's Chalice") and not VerifyTool("Fist of Darkness") and tick() - ActiveTick > 10 then
      local plrH = Player and Player.Character and Player.Character:FindFirstChild("Humanoid")
      if plrH then
        plrH.Health = 0
        ActiveTick = tick()
      end
    end
  end
end

local function AutoChestTween()
  while getgenv().AutoChestTween do task.wait()
    local ChestDistance = math.huge
    local Chest = nil
    local plrChar = Player and Player.Character and Player.Character.PrimaryPart
    
    for _,ChestVerify in pairs(workspace:GetChildren()) do
      if ChestVerify:IsA("BasePart") and ChestVerify.Transparency < 1 then
        if ChestVerify.Name == "Chest3" or ChestVerify.Name == "Chest2" or ChestVerify.Name == "Chest1" then
          if plrChar and (plrChar.Position - ChestVerify.Position).Magnitude <= ChestDistance then
            ChestDistance = (plrChar.Position - ChestVerify.Position).Magnitude
            Chest = ChestVerify
          end
        end
      end
    end
    if Chest then
      PlayerTP(Chest.CFrame)
    end
  end
end

local function StartQuest1(quest, number)
  FireRemote("StartQuest", quest, number)
end

local function StartQuest(quest, number, QuestPos)
  local plrRP = Player.Character:FindFirstChild("HumanoidRootPart")
  if plrRP and (plrRP.Position - QuestPos.p).Magnitude <= 3 then
    FireRemote("StartQuest", quest, number)
    task.wait(0.5)
  else
    PlayerTP(QuestPos)
  end
end

local function Get_LevelQuest()
  local Level = PlayerLevel.Value
  
  if Sea1 then
    -- Auto Farm Level Sea 1
    if Level < 10 then
      if tostring(Player.Team) == "Pirates" then
        Quest = {CFrame.new(1059, 17, 1546), false, "Bandit", "BanditQuest1", 1}
        QuestTween = {CFrame.new(943, 45, 1562), CFrame.new(1115, 45, 1619), CFrame.new(1265, 45, 1606)}
      else
        Quest = {CFrame.new(-2708, 25, 2103), false, "Trainee", "MarineQuest", 1}
        QuestTween = {CFrame.new(-2754, 50, 2063), CFrame.new(-2950, 70, 2240)}
      end
    elseif Level >= 10 and Level < 15 then
      Quest = {CFrame.new(-1598, 37, 153), false, "Monkey", "JungleQuest", 1}
      QuestTween = {CFrame.new(-1524, 50, 37), CFrame.new(-1424, 50, 216), CFrame.new(-1554, 50, 359), CFrame.new(-1772, 50, 78), CFrame.new(-1715, 50, -61), CFrame.new(-1594, 50, -45)}
    elseif Level >= 15 and Level < 30 then
      if VerifyNPC("The Gorilla King") and Level >= 20 then
        Quest = {CFrame.new(-1598, 37, 153), CFrame.new(-1128, 6, -451), "The Gorilla King", "JungleQuest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-1598, 37, 153), false, "Gorilla", "JungleQuest", 2}
        QuestTween = {CFrame.new(-1128, 40, -451), CFrame.new(-1313, 40, -546)}
      end
    elseif Level >= 30 and Level < 40 then
      Quest = {CFrame.new(-1140, 4, 3829), false, "Pirate", "BuggyQuest1", 1}
      QuestTween = {CFrame.new(-1262, 40, 3905), CFrame.new(-1167, 40, 3942)}
    elseif Level >= 40 and Level < 60 then
      if VerifyNPC("Bobby") and Level >= 55 then
        Quest = {CFrame.new(-1140, 4, 3829), CFrame.new(-1131, 14, 4080), "Bobby", "BuggyQuest1", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-1140, 4, 3829), false, "Brute", "BuggyQuest1", 2}
        QuestTween = {CFrame.new(-976, 55, 4304), CFrame.new(-1196, 55, 4287), CFrame.new(-1363, 55, 4162)}
      end
    elseif Level >= 60 and Level < 75 then
      Quest = {CFrame.new(897, 6, 4389), CFrame.new(938, 6, 4470), "Desert Bandit", "DesertQuest", 1}
      QuestTween = nil
    elseif Level >= 75 and Level < 90 then
      Quest = {CFrame.new(897, 6, 4389), CFrame.new(1546, 14, 4384), "Desert Officer", "DesertQuest", 2}
      QuestTween = nil
    elseif Level >= 90 and Level < 100 then
      Quest = {CFrame.new(1385, 87, -1298), CFrame.new(1303, 106, -1441), "Snow Bandit", "SnowQuest", 1}
      QuestTween = {CFrame.new(1362, 120, -1531), CFrame.new(1357, 120, -1381), CFrame.new(1228, 120, -1354)}
    elseif Level >= 100 and Level < 120 then
      if VerifyNPC("Yeti") and Level >= 105 then
        Quest = {CFrame.new(1385, 87, -1298), CFrame.new(1185, 106, -1518), "Yeti", "SnowQuest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(1385, 87, -1298), CFrame.new(1185, 106, -1518), "Snowman", "SnowQuest", 2}
        QuestTween = {CFrame.new(1243, 140, -1437), CFrame.new(1072, 140, -1458), CFrame.new(1076, 140, -1621), CFrame.new(1209, 140, -1644), CFrame.new(1252, 140, -1480)}
      end
    elseif Level >= 120 and Level < 150 then
      if VerifyNPC("Vice Admiral") and Level >= 130 then
        Quest = {CFrame.new(-5035, 29, 4326), CFrame.new(-4807, 21, 4360), "Vice Admiral", "MarineQuest2", 2}
        QuestTween = nil
      else
        Quest = {CFrame.new(-5035, 29, 4326), CFrame.new(-4807, 21, 4360), "Chief Petty Officer", "MarineQuest2", 1}
        QuestTween = nil
      end
    elseif Level >= 150 and Level < 175 then
      Quest = {CFrame.new(-4844, 718, -2621), CFrame.new(-4956, 296, -2901), "Sky Bandit", "SkyQuest", 1}
      QuestTween = nil
    elseif Level >= 175 and Level < 190 then
      Quest = {CFrame.new(-4844, 718, -2621), CFrame.new(-5268, 392, -2213), "Dark Master", "SkyQuest", 2}
      QuestTween = nil
    elseif Level >= 190 and Level < 210 then
      Quest = {CFrame.new(5306, 2, 477), CFrame.new(5288, 2, 470), "Prisoner", "PrisonerQuest", 1}
      QuestTween = nil
    elseif Level >= 210 and Level < 250 then
      if VerifyNPC("Swan") and Level >= 240 then
        Quest = {CFrame.new(5191, 4, 692), CFrame.new(5230, 4, 749), "Swan", "ImpelQuest", 3}
        QuestTween = nil
      elseif VerifyNPC("Chief Warden") and Level >= 230 then
        Quest = {CFrame.new(5191, 4, 692), CFrame.new(5230, 4, 749), "Chief Warden", "ImpelQuest", 2}
        QuestTween = nil
      elseif VerifyNPC("Warden") and Level >= 220 then
        Quest = {CFrame.new(5191, 4, 692), CFrame.new(5230, 4, 749), "Warden", "ImpelQuest", 1}
        QuestTween = nil
      else
        Quest = {CFrame.new(5306, 2, 477), CFrame.new(5282, 2, 1052), "Dangerous Prisoner", "PrisonerQuest", 2}
        QuestTween = nil
      end
    elseif Level >= 250 and Level < 275 then
      Quest = {CFrame.new(-1581, 7, -2982), CFrame.new(-1897, 7, -2796), "Toga Warrior", "ColosseumQuest", 1}
      QuestTween = nil
    elseif Level >= 275 and Level < 300 then
      Quest = {CFrame.new(-1581, 7, -2982), CFrame.new(-1327, 59, -3231), "Gladiator", "ColosseumQuest", 2}
      QuestTween = {CFrame.new(-1268, 30, -2996), CFrame.new(-1472, 30, -3194), CFrame.new(-1387, 30, -3438), CFrame.new(-1198, 30, -3508)}
    elseif Level >= 300 and Level < 325 then
      Quest = {CFrame.new(-5319, 12, 8515), false, "Military Soldier", "MagmaQuest", 1}
      QuestTween = {CFrame.new(-5335, 46, 8638), CFrame.new(-5512, 30, 8366)}
    elseif Level >= 325 and Level < 375 then
      if VerifyNPC("Magma Admiral") and Level >= 350 then
        Quest = {CFrame.new(-5319, 12, 8515), CFrame.new(-5694, 18, 8735), "Magma Admiral", "MagmaQuest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-5319, 12, 8515), CFrame.new(-5791, 97, 8834), "Military Spy", "MagmaQuest", 2}
        QuestTween = nil
      end
    elseif Level >= 375 and Level < 400 then
      Quest = {CFrame.new(61122, 18, 1567), false, "Fishman Warrior", "FishmanQuest", 1} 
      QuestTween = {CFrame.new(60998, 50, 1534), CFrame.new(60880, 50, 1675), CFrame.new(60785, 50, 1552), CFrame.new(60923, 60, 1262)}
    elseif Level >= 400 and Level < 450 then
      if VerifyNPC("Fishman Lord") and Level >= 425 then
        Quest = {CFrame.new(61122, 18, 1567), CFrame.new(61350, 31, 1095), "Fishman Lord", "FishmanQuest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(61122, 18, 1567), false, "Fishman Commando", "FishmanQuest", 2}
        QuestTween = {CFrame.new(61866, 55, 1655), CFrame.new(62043, 55, 1510), CFrame.new(61812, 55, 1254)}
      end
    elseif Level >= 450 and Level < 475 then
      Quest = {CFrame.new(-4720, 846, -1951), false, "God's Guard", "SkyExp1Quest", 1}
      QuestTween = {CFrame.new(-4641, 880, -1902), CFrame.new(-4781, 880, -1817)}
    elseif Level >= 475 and Level < 525 then
      if VerifyNPC("Wysper") and Level >= 500 then
        Quest = {CFrame.new(-7861, 5545, -381), CFrame.new(-7927, 5551, -637), "Wysper", "SkyExp1Quest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-7861, 5545, -381), false, "Shanda", "SkyExp1Quest", 2}
        QuestTween = {CFrame.new(-7741, 5580, -395), CFrame.new(-7591, 5580, -466), CFrame.new(-7643, 5580, -608)}
      end
    elseif Level >= 525 and Level < 550 then
      Quest = {CFrame.new(-7903, 5636, -1412), false, "Royal Squad", "SkyExp2Quest", 1}
      QuestTween = {CFrame.new(-7727, 5650, -1410), CFrame.new(-7522, 5650, -1499)}
    elseif Level >= 525 and Level < 625 then
      if VerifyNPC("Thunder God") and Level >= 575 then
        Quest = {CFrame.new(-7903, 5636, -1412), CFrame.new(-7751, 5607, -2315), "Thunder God", "SkyExp2Quest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-7903, 5636, -1412), false, "Royal Soldier", "SkyExp2Quest", 2}
        QuestTween = {CFrame.new(-7894, 5640, -1629), CFrame.new(-7678, 5640, -1696), CFrame.new(-7672, 5640, -1903), CFrame.new(-7925, 5640, -1854)}
      end
    elseif Level >= 625 and Level < 650 then
      Quest = {CFrame.new(5258, 39, 4052), false, "Galley Pirate", "FountainQuest", 1}
      QuestTween = {CFrame.new(5391, 70, 4023), CFrame.new(5780, 70, 3969)}
    elseif Level >= 650 then
      if VerifyNPC("Cyborg") and Level >= 675 then
        Quest = {CFrame.new(5258, 39, 4052), CFrame.new(6138, 10, 3939), "Cyborg", "FountainQuest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(5258, 39, 4052), false, "Galley Captain", "FountainQuest", 2}
        QuestTween = {CFrame.new(5985, 70, 4790), CFrame.new(5472, 70, 4887)}
      end
    end
  elseif Sea2 then
    -- Auto Farm Level Sea 2
    if Level >= 700 and Level < 725 then
      Quest = {CFrame.new(-427, 73, 1835), false, "Raider", "Area1Quest", 1}
      QuestTween = {CFrame.new(-614, 90, 2240), CFrame.new(-894, 90, 2275), CFrame.new(-872, 90, 2481), CFrame.new(-552, 90, 2528)}
    elseif Level >= 725 and Level < 775 then
      if VerifyNPC("Diamond") and Level >= 750 then
        Quest = {CFrame.new(-427, 73, 1835), CFrame.new(-1569, 199, -31), "Diamond", "Area1Quest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-427, 73, 1835), false, "Mercenary", "Area1Quest", 2}
        QuestTween = {CFrame.new(-867, 110, 1621), CFrame.new(-1047, 110, 1779), CFrame.new(-1025, 110, 1087), CFrame.new(-1204, 110, 1195)}
      end
    elseif Level >= 775 and Level < 800 then
      Quest = {CFrame.new(635, 73, 919), false, "Swan Pirate", "Area2Quest", 1}
      QuestTween = {CFrame.new(778, 110, 1129), CFrame.new(1018, 110, 1128), CFrame.new(1020, 110, 1366), CFrame.new(1016, 110, 1115)}
    elseif Level >= 800 and Level < 875 then
      if VerifyNPC("Jeremy") and Level >= 850 then
        Quest = {CFrame.new(635, 73, 919), CFrame.new(2316, 449, 787), "Jeremy", "Area2Quest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(635, 73, 919), false, "Factory Staff", "Area2Quest", 2}
        QuestTween = {CFrame.new(882, 110, -49), CFrame.new(723, 110, 212), CFrame.new(473, 110, 108), CFrame.new(-115, 110, 39)}
      end
    elseif Level >= 875 and Level < 900 then
      Quest = {CFrame.new(-2441, 73, -3219), false, "Marine Lieutenant", "MarineQuest3", 1}
      QuestTween = {CFrame.new(-2552, 110, -3050), CFrame.new(-2860, 110, -3089), CFrame.new(-3114, 110, -2947), CFrame.new(-2864, 110, -2679)}
    elseif Level >= 900 and Level < 950 then
      if VerifyNPC("Fajita") and Level >= 925 then
        Quest = {CFrame.new(-2441, 73, -3219), CFrame.new(-2086, 73, -4208), "Fajita", "MarineQuest3", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-2441, 73, -3219), false, "Marine Captain", "MarineQuest3", 2}
        QuestTween = {CFrame.new(-1695, 110, -3299), CFrame.new(-1953, 110, -3165), CFrame.new(-2144, 110, -3341)}
      end
    elseif Level >= 950 and Level < 975 then
      Quest = {CFrame.new(-5495, 48, -794), false, "Zombie", "ZombieQuest", 1}
      QuestTween = {CFrame.new(-5715, 90, -917), CFrame.new(-5534, 90, -942), CFrame.new(-5445, 90, -806), CFrame.new(-5485, 90, -663), CFrame.new(-5730, 90, -590), CFrame.new(-5816, 90, -756)}
    elseif Level >= 975 and Level < 1000 then
      Quest = {CFrame.new(-5495, 48, -794), false, "Vampire", "ZombieQuest", 2}
      QuestTween = {CFrame.new(-6027, 50, -1130), CFrame.new(-6248, 50, -1281), CFrame.new(-6120, 50, -1450), CFrame.new(-5951, 50, -1520), CFrame.new(-5803, 50, -1360)}
    elseif Level >= 1000 and Level < 1050 then
      Quest = {CFrame.new(607, 401, -5371), false, "Snow Trooper", "SnowMountainQuest", 1}
      QuestTween = {CFrame.new(445, 440, -5175), CFrame.new(523, 440, -5484), CFrame.new(699, 440, -5612)}
    elseif Level >= 1050 and Level < 1100 then
      Quest = {CFrame.new(607, 401, -5371), false, "Winter Warrior", "SnowMountainQuest", 2}
      QuestTween = {CFrame.new(1224, 460, -5332), CFrame.new(1404, 460, -5323), CFrame.new(1258, 460, -5220), CFrame.new(1145, 460, -5077), CFrame.new(1022, 460, -5139)}
    elseif Level >= 1100 and Level < 1125 then
      Quest = {CFrame.new(-6061, 16, -4904), false, "Lab Subordinate", "IceSideQuest", 1}
      QuestTween = {CFrame.new(-5941, 50, -4322), CFrame.new(-5765, 50, -4304), CFrame.new(-5608, 50, -4445), CFrame.new(-5683, 50, -4629)}
    elseif Level >= 1125 and Level < 1175 then
      if VerifyNPC("Smoke Admiral") and Level >= 1150 then
        Quest = {CFrame.new(-6061, 16, -4904), CFrame.new(-5078, 24, -5352), "Smoke Admiral", "IceSideQuest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-6061, 16, -4904), false, "Horned Warrior", "IceSideQuest", 2}
        QuestTween = {CFrame.new(-6306, 50, -5752), CFrame.new(-6161, 50, -5979), CFrame.new(-6518, 50, -5795), CFrame.new(-6535, 50, -5640)}
      end
    elseif Level >= 1175 and Level < 1200 then
      Quest = {CFrame.new(-5430, 16, -5298), false, "Magma Ninja", "FireSideQuest", 1}
      QuestTween = {CFrame.new(-5233, 60, -6227), CFrame.new(-5194, 60, -6031), CFrame.new(-5651, 60, -5854)}
    elseif Level >= 1200 and Level < 1250 then
      Quest = {CFrame.new(-5430, 16, -5298), false, "Lava Pirate", "FireSideQuest", 2}
      QuestTween = {CFrame.new(-4955, 60, -4836), CFrame.new(-5119, 60, -4634), CFrame.new(-5389, 60, -4616), CFrame.new(-5342, 60, -4897)}
    elseif Level >= 1250 and Level < 1275 then
      Quest = {CFrame.new(1033, 125, 32909), false, "Ship Deckhand", "ShipQuest1", 1}
      QuestTween = {CFrame.new(1185, 180, 32979), CFrame.new(1204, 180, 33174), CFrame.new(615, 180, 33169), CFrame.new(638, 180, 32962)} 
    elseif Level >= 1275 and Level < 1300 then
      Quest = {CFrame.new(1033, 125, 32909), false, "Ship Engineer", "ShipQuest1", 2}
      QuestTween = {CFrame.new(809, 80, 33090), CFrame.new(751, 80, 32957), CFrame.new(927, 80, 32724), CFrame.new(1040, 80, 32915), CFrame.new(1034, 80, 33058)}
    elseif Level >= 1300 and Level < 1325 then
      Quest = {CFrame.new(973, 125, 33245), false, "Ship Steward", "ShipQuest2", 1}
      QuestTween = {CFrame.new(838, 160, 33408), CFrame.new(1026, 160, 33510)}
    elseif Level >= 1325 and Level < 1350 then
      Quest = {CFrame.new(973, 125, 33245), false, "Ship Officer", "ShipQuest2", 2}
      QuestTween = {CFrame.new(1238, 220, 33148), CFrame.new(1220, 220, 33426), CFrame.new(622, 220, 33435), CFrame.new(593, 220, 33172)}
    elseif Level >= 1350 and Level < 1375 then
      Quest = {CFrame.new(5668, 28, -6484), false, "Arctic Warrior", "FrostQuest", 1}
      QuestTween = {CFrame.new(5836, 80, -6257), CFrame.new(6132, 80, -6098), CFrame.new(6275, 80, -6237), CFrame.new(6095, 80, -6349)}
    elseif Level >= 1375 and Level < 1425 then
      if VerifyNPC("Awakened Ice Admiral") and Level >= 1400 then
        Quest = {CFrame.new(5668, 28, -6484), CFrame.new(6473, 297, -6944), "Awakened Ice Admiral", "FrostQuest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(5668, 28, -6484), false, "Snow Lurker", "FrostQuest", 2}
        QuestTween = {CFrame.new(5700, 80, -6724), CFrame.new(5542, 80, -6898), CFrame.new(5512, 80, -6641)}
      end
    elseif Level >= 1425 and Level < 1450 then
      Quest = {CFrame.new(-3056, 240, -10145), false, "Sea Soldier", "ForgottenQuest", 1}
      QuestTween = {CFrame.new(-2583, 80, -9821), CFrame.new(-2830, 80, -9809), CFrame.new(-3271, 80, -9729), CFrame.new(-3486, 80, -9813)}
    elseif Level >= 1450 then
      if VerifyNPC("Tide Keeper") and Level >= 1475 then
        Quest = {CFrame.new(-3056, 240, -10145), CFrame.new(-3711, 77, -11469), "Tide Keeper", "ForgottenQuest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-3056, 240, -10145), false, "Water Fighter", "ForgottenQuest", 2}
        QuestTween = {CFrame.new(-3339, 290, -10412), CFrame.new(-3518, 290, -10419), CFrame.new(-3536, 290, -10607), CFrame.new(-3345, 280, -10667)}
      end
    end
  elseif Sea3 then
    -- Auto Farm Level Sea 3
    if Level >= 1500 and Level < 1525 then
      Quest = {CFrame.new(-291, 44, 5580), false, "Pirate Millionaire", "PiratePortQuest", 1}
      QuestTween = {CFrame.new(-44, 70, 5623), CFrame.new(-219, 70, 5546), CFrame.new(-574, 70, 5496)}
    elseif Level >= 1525 and Level < 1575 then
      if VerifyNPC("Stone") and Level >= 1550 then
        Quest = {CFrame.new(-291, 44, 5580), CFrame.new(-1049, 40, 6791), "Stone", "PiratePortQuest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-291, 44, 5580), false, "Pistol Billionaire", "PiratePortQuest", 2}
        QuestTween = {CFrame.new(219, 105, 6018), CFrame.new(-24, 105, 6155), CFrame.new(-312, 105, 6028)}
      end
    elseif Level >= 1575 and Level < 1600 then
      Quest = {CFrame.new(5834, 51, -1103), false, "Dragon Crew Warrior", "AmazonQuest", 1}
      QuestTween = {CFrame.new(5992, 90, -1581), CFrame.new(6364, 90, -1512), CFrame.new(6501, 90, -1104), CFrame.new(6612, 90, -938), CFrame.new(6393, 90, -939)}
    elseif Level >= 1600 and Level < 1625 then
      Quest = {CFrame.new(5834, 51, -1103), false, "Dragon Crew Archer", "AmazonQuest", 2}
      QuestTween = {CFrame.new(6472, 370, -151), CFrame.new(6547, 370, -51), CFrame.new(6539, 410, 72), CFrame.new(6737, 410, 249), CFrame.new(6768, 410, 390), CFrame.new(6625, 410, 371)}
    elseif Level >= 1625 and Level < 1650 then
      Quest = {CFrame.new(5448, 602, 748), false, "Female Islander", "AmazonQuest2", 1}
      QuestTween = {CFrame.new(4836, 740, 928), CFrame.new(4708, 770, 911), CFrame.new(4672, 790, 695), CFrame.new(4657, 800, 498), CFrame.new(4575, 810, 281)}
    elseif Level >= 1650 and Level < 1700 then
      if VerifyNPC("Island Empress") and Level >= 1675 then
        Quest = {CFrame.new(5448, 602, 748), CFrame.new(5730, 602, 199), "Island Empress", "AmazonQuest2", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(5448, 602, 748), false, "Giant Islander", "AmazonQuest2", 2}
        QuestTween = {CFrame.new(4784, 660, 155), CFrame.new(4662, 660, -57), CFrame.new(4869, 660, -178), CFrame.new(5056, 660, -267), CFrame.new(5332, 660, -166)}
      end
    elseif Level >= 1700 and Level < 1725 then
      Quest = {CFrame.new(2180, 29, -6738), false, "Marine Commodore", "MarineTreeIsland", 1}
      QuestTween = {CFrame.new(3156, 120, -7837), CFrame.new(2904, 120, -7863), CFrame.new(2606, 120, -7745), CFrame.new(2409, 120, -7874), CFrame.new(2269, 120, -7416), CFrame.new(2413, 120, -7232), CFrame.new(2284, 120, -6911)}
    elseif Level >= 1725 and Level < 1775 then
      if VerifyNPC("Kilo Admiral") and Level >= 1750 then
        Quest = {CFrame.new(2180, 29, -6738), CFrame.new(2889, 424, -7233), "Kilo Admiral", "MarineTreeIsland", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(2180, 29, -6738), false, "Marine Rear Admiral", "MarineTreeIsland", 2}
        QuestTween = {CFrame.new(3205, 120, -6742), CFrame.new(3345, 120, -6649), CFrame.new(3776, 210, -7254), CFrame.new(3879, 220, -7083), CFrame.new(3887, 210, -6841), CFrame.new(3546, 210, -6809), CFrame.new(3448, 210, -7014), CFrame.new(3504, 210, -7230)}
      end
    elseif Level >= 1775 and Level < 1800 then
      Quest = {CFrame.new(-10581, 332, -8758), false, "Fishman Raider", "DeepForestIsland3", 1}
      QuestTween = {CFrame.new(-10550, 380, -8574), CFrame.new(-10860, 380, -8459), CFrame.new(-10578, 380, -8331), CFrame.new(-10377, 380, -8238), CFrame.new(-10147, 380, -8216), CFrame.new(-10234, 380, -8454)}
    elseif Level >= 1800 and Level < 1825 then
      Quest = {CFrame.new(-10581, 332, -8758), false, "Fishman Captain", "DeepForestIsland3", 2}
      QuestTween = {CFrame.new(-10764, 380, -8799), CFrame.new(-10844, 380, -9030), CFrame.new(-11160, 380, -9166), CFrame.new(-11073, 380, -8846), CFrame.new(-11043, 380, -8619)}
    elseif Level >= 1825 and Level < 1850 then
      Quest = {CFrame.new(-13233, 332, -7626), false, "Forest Pirate", "DeepForestIsland", 1}
      QuestTween = {CFrame.new(-13335, 380, -7660), CFrame.new(-13138, 380, -7713), CFrame.new(-13298, 380, -7876), CFrame.new(-13512, 380, -7983), CFrame.new(-13632, 380, -7815)}
    elseif Level >= 1850 and Level < 1900 then
      if VerifyNPC("Captain Elephant") and Level >= 1875 then
        Quest = {CFrame.new(-13233, 332, -7626), CFrame.new(-13393, 319, -8423), "Captain Elephant", "DeepForestIsland", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-13233, 332, -7626), false, "Mythological Pirate", "DeepForestIsland", 2}
        QuestTween = {CFrame.new(-13844, 520, -7016), CFrame.new(-13710, 520, -6856), CFrame.new(-13482, 520, -6985), CFrame.new(-13224, 580, -6806)}
      end
    elseif Level >= 1900 and Level < 1925 then
      Quest = {CFrame.new(-12682, 391, -9901), false, "Jungle Pirate", "DeepForestIsland2", 1}
      QuestTween = {CFrame.new(-12166, 380, -10375), CFrame.new(-12303, 380, -10639), CFrame.new(-11904, 380, -10469), CFrame.new(-11636, 380, -10511), CFrame.new(-11735, 380, -10687), CFrame.new(-11937, 380, -10713)}
    elseif Level >= 1925 and Level < 1975 then
      if VerifyNPC("Beautiful Pirate") and Level > 1950 then
        Quest = {CFrame.new(-12682, 391, -9901), CFrame.new(5241, 23, 129), "Musketeer Pirate", "DeepForestIsland2", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-12682, 391, -9901), false, "Musketeer Pirate", "DeepForestIsland2", 2}
        QuestTween = {CFrame.new(-13098, 450, -9831), CFrame.new(-13222, 450, -9621), CFrame.new(-13530, 450, -9760), CFrame.new(-13455, 450, -9940)}
      end
    elseif Level >= 1975 and Level < 2000 then
      Quest = {CFrame.new(-9481, 142, 5565), false, "Reborn Skeleton", "HauntedQuest1", 1}
      QuestTween = {CFrame.new(-8680, 190, 5852), CFrame.new(-8879, 190, 5900), CFrame.new(-8865, 190, 6100), CFrame.new(-8774, 170, 6169), CFrame.new(-8649, 190, 6071)}
    elseif Level >= 200 and Level < 2025 then
      Quest = {CFrame.new(-9481, 142, 5565), false, "Living Zombie", "HauntedQuest1", 2}
      QuestTween = {CFrame.new(-10104, 200, 5739), CFrame.new(-10078, 200, 5953), CFrame.new(-10195, 200, 6139), CFrame.new(-10252, 200, 5973)}
    elseif Level >= 2025 and Level < 2050 then
      Quest = {CFrame.new(-9515, 172, 6078), false, "Demonic Soul", "HauntedQuest2", 1}
      QuestTween = {CFrame.new(-9275, 210, 6166), CFrame.new(-9379, 210, 6076), CFrame.new(-9565, 210, 6201), CFrame.new(-9671, 210, 6096)}
    elseif Level >= 2050 and Level < 2075 then
      Quest = {CFrame.new(-9515, 172, 6078), false, "Posessed Mummy", "HauntedQuest2", 2}
      QuestTween = {CFrame.new(-9442, 60, 6304), CFrame.new(-9427, 60, 6148), CFrame.new(-9598, 60, 6121), CFrame.new(-9733, 60, 6119), CFrame.new(-9735, 60, 6336), CFrame.new(-9618, 60, 6323)}
    elseif Level >= 2075 and Level < 2100 then
      Quest = {CFrame.new(-2104, 38, -10194), false, "Peanut Scout", "NutsIslandQuest", 1}
      QuestTween = {CFrame.new(-1870, 100, -10225), CFrame.new(-2143, 100, -10106)}
    elseif Level >= 2100 and Level < 2125 then
      Quest = {CFrame.new(-2104, 38, -10194), false, "Peanut President", "NutsIslandQuest", 2}
      QuestTween = {CFrame.new(-2005, 100, -10585), CFrame.new(-2293, 88, -10512)}
    elseif Level >= 2125 and Level < 2150 then
      Quest = {CFrame.new(-818, 66, -10964), false, "Ice Cream Chef", "IceCreamIslandQuest", 1}
      QuestTween = {CFrame.new(-501, 100, -10883), CFrame.new(-763, 100, -10834), CFrame.new(-990, 100, -11085)}
    elseif Level >= 2150 and Level < 2200 then
      if VerifyNPC("Cake Queen") and Level >= 2175 then
        Quest = {CFrame.new(-818, 66, -10964), CFrame.new(-710, 382, -11150), "Cake Queen", "IceCreamIslandQuest", 3}
        QuestTween = nil
      else
        Quest = {CFrame.new(-818, 66, -10964), false, "Ice Cream Commander", "IceCreamIslandQuest", 2}
        QuestTween = {CFrame.new(-690, 100, -11350), CFrame.new(-534, 100, -11284), CFrame.new(-720, 180, -11162)}
      end
    elseif Level >= 2200 and Level < 2225 then
      Quest = {CFrame.new(-2023, 38, -12028), false, "Cookie Crafter", "CakeQuest1", 1}
      QuestTween = {CFrame.new(-2332, 90, -12049), CFrame.new(-2468, 90, -12121), CFrame.new(-2401, 90, -12224), CFrame.new(-2296, 90, -12114)}
    elseif Level >= 2225 and Level < 2250 then
      Quest = {CFrame.new(-2023, 38, -12028), false, "Cake Guard", "CakeQuest1", 2}
      QuestTween = {CFrame.new(-1514, 90, -12422), CFrame.new(-1455, 90, -12244), CFrame.new(-1674, 90, -12206), CFrame.new(-1707, 90, -12360)}
    elseif Level >= 2250 and Level < 2275 then
      Quest = {CFrame.new(-1931, 38, -12840), false, "Baking Staff", "CakeQuest2", 1}
      QuestTween = {CFrame.new(-1930, 90, -12963), CFrame.new(-1803, 90, -13115), CFrame.new(-1769, 90, -12955), CFrame.new(-1873, 90, -12755)}
    elseif Level >= 2275 and Level < 2300 then
      Quest = {CFrame.new(-1931, 38, -12840), false, "Head Baker", "CakeQuest2", 2}
      QuestTween = {CFrame.new(-2123, 110, -12777), CFrame.new(-2281, 110, -12748), CFrame.new(-2317, 110, -12994), CFrame.new(-2140, 110, -12989)}
    elseif Level >= 2300 and Level < 2325 then
      Quest = {CFrame.new(235, 25, -12199), false, "Cocoa Warrior", "ChocQuest1", 1}
      QuestTween = {CFrame.new(110, 80, -12245), CFrame.new(-71, 80, -12292)}
    elseif Level >= 2325 and Level < 2350 then
      Quest = {CFrame.new(235, 25, -12199), false, "Chocolate Bar Battler", "ChocQuest1", 2}
      QuestTween = {CFrame.new(579, 80, -12413), CFrame.new(735, 80, -12659)}
    elseif Level >= 2350 and Level < 2375 then
      Quest = {CFrame.new(150, 25, -12777), false, "Sweet Thief", "ChocQuest2", 1}
      QuestTween = {CFrame.new(-68, 80, -12692), CFrame.new(90, 80, -12519)}
    elseif Level >= 2375 and Level < 2400 then
      Quest = {CFrame.new(150, 25, -12777), false, "Candy Rebel", "ChocQuest2", 2}
      QuestTween = {CFrame.new(17, 80, -12962), CFrame.new(158, 80, -12961)}
    elseif Level >= 2400 and Level < 2425 then
      Quest = {CFrame.new(-1148, 14, -14446), false, "Candy Pirate", "CandyQuest1", 1}
      QuestTween = {CFrame.new(-1371, 70, -14405), CFrame.new(-1318, 70, -14715)}
    elseif Level >= 2425 and Level < 2450 then
      Quest = {CFrame.new(-1148, 14, -14446), false, "Snow Demon", "CandyQuest1", 2}
      QuestTween = {CFrame.new(-836, 70, -14326), CFrame.new(-884, 70, -14708)}
    elseif Level >= 2450 and Level < 2475 then
      Quest = {CFrame.new(-16547, 56, -172), false, "Isle Outlaw", "TikiQuest1", 1}
      QuestTween = {CFrame.new(-16431, 90, -223), CFrame.new(-16313, 50, -210), CFrame.new(-16160, 35, -156)}
    elseif Level >= 2475 and Level < 2500 then
      Quest = {CFrame.new(-16547, 56, -172), false, "Island Boy", "TikiQuest1", 2}
      QuestTween = {CFrame.new(-16668, 70, -243), CFrame.new(-16744, 60, -195), CFrame.new(-16912, 45, -152)}
    elseif Level >= 2500 and Level < 2525 then
      Quest = {CFrame.new(-16540, 56, 1051), false, "Sun-kissed Warrior", "TikiQuest2", 1}
      QuestTween = {CFrame.new(-16345, 80, 1004), CFrame.new(-16425, 77, 1059), CFrame.new(-16069, 37, 1029)}
    elseif Level >= 2525 then
      Quest = {CFrame.new(-16540, 56, 1051), false, "Isle Champion", "TikiQuest2", 2}
      QuestTween = {CFrame.new(-16634, 85, 1106), CFrame.new(-16735, 60, 1075), CFrame.new(-16888, 35, 1011)}
    end
  end
end

local function QuestVisible()
  local QuestActive = Player.PlayerGui.Main.Quest
  if not QuestActive.Visible then
    local QuestActive = Player.PlayerGui.Main.Quest
    QuestActive.Container.QuestTitle.Title.Text = ""
  end
  return QuestActive.Visible
end

local function VerifyQuest(EnemieName)
  local QuestActive = Player.PlayerGui.Main.Quest
  local Text1 = QuestActive.Container.QuestTitle.Title.Text:gsub("-", ""):lower()
  local Text2 = EnemieName:gsub("-", ""):lower()
  return QuestActive.Visible and Text1:find(Text2)
end

PlayerLevel.Changed:Connect(Get_LevelQuest)
task.spawn(function()while task.wait(1) do pcall(Get_LevelQuest)end;end)
Get_LevelQuest()

local function BringNPC(Enemie, MultBring)

  if not BringMobs or not BringMobsDistance then
    local EnemiePP = Enemie.PrimaryPart
    if EnemiePP then
      EnemiePP.CFrame = EnePP2.CFrame
      EnemiePP.CanCollide = false
      EnemiePP.Size = Vector3.new(50, 50, 50)
    end
    return
  end
  local function Bring(_,NPC)
    if MultBring or NPC.Name == Enemie.Name then
      local EnemieH = NPC:FindFirstChild("Humanoid")
      
      if EnemieH and EnemieH.Health > 0 then
        local EnePP1, EnePP2 = NPC.PrimaryPart, Enemie.PrimaryPart
        
        if EnePP1 and EnePP2 then
          local Mag = (EnePP1.Position - EnePP2.Position).Magnitude
          if Mag < BringMobsDistance and Mag >= 1 then
            EnePP1.CFrame = EnePP2.CFrame
            EnePP1.CanCollide = false
            EnePP1.Size = Vector3.new(50, 50, 50)
            EnemieH.WalkSpeed = 0
            EnemieH.JumpPower = 0
            EnemieH:ChangeState(14)
            if EnemieH:FindFirstChild("Animator") then
              EnemieH.Animator:Destroy()
            end
            if NPC:FindFirstChild("Head") and NPC.Head.CanCollide then
              NPC.Head.CanCollide = false
            end
            sethiddenproperty(Player, "SimulationRadius",  math.huge)
          end
        end
      end
    end
  end
  
  table.foreach(Enemies:GetChildren(), Bring)
end

local PirateTime = tick()
task.spawn(function()
  local function VerifyPos(_,Enemie)
    if Enemie.Name ~= "rip_indra True Form" then
      local EnemieRP = Enemie and Enemie:FindFirstChild("HumanoidRootPart")
      
      if EnemieRP and (EnemieRP.Position - Vector3.new(-5556, 314, -2988)).Magnitude < 700 then
        PirateTime = tick()
      end
    end
  end
  
  while task.wait() do
    table.foreach(Enemies:GetChildren(), VerifyPos)
    table.foreach(ReplicatedStorage:GetChildren(), VerifyPos)
  end
end)

local function VerifyRaidPirate()
  return getgenv().AutoPiratesSea and (tick() - PirateTime) <= 10
end

local function VerifyEliteBoss()
  return getgenv().AutoEliteHunter and VerifyNPC("Urban")
  or getgenv().AutoEliteHunter and VerifyNPC("Deandre")
  or getgenv().AutoEliteHunter and VerifyNPC("Diablo")
end

local function VerifyBosses()
  for _,boss in pairs(BossListT) do
    if VerifyNPC(boss) then
      return true
    end
  end
end

local function GetButton()
  local Summoner = workspace.Map["Boat Castle"].Summoner
  local Circle = Summoner:FindFirstChild("Circle")
  if Circle then
    for _,part in pairs(Circle:GetChildren()) do
      if part and part.Name == "Part" and part:FindFirstChild("Part") and part.Part.BrickColor ~= BrickColor.new("Lime green") then
        return part.Part
      end
    end
  end
end

local TimerG = Player:WaitForChild("PlayerGui", 9e9):WaitForChild("Main", 9e9):WaitForChild("Timer", 9e9)
local function Configure(Farm)
  if Farm == "Level" then
    if VerifyEliteBoss() then return true
    elseif VerifyRaidPirate() then return true
    elseif getgenv().TeleportToFruit and FruitFind() then return true
    elseif getgenv().AutoSecondSea and PlayerLevel.Value >= 700 then return true
    elseif getgenv().AutoThirdSea and PlayerLevel.Value >= 1500 then return true
    elseif VerifyNPC("Awakened Ice Admiral") and getgenv().AutoRengoku then return true
    elseif VerifyNPC("Darkbeard") and getgenv().AutoDarkbeard then return true
    elseif VerifyNPC("rip_indra True Form") and getgenv().AutoRipIndra then return true
    elseif VerifyTool("God's Chalice") and getgenv().AutoRipIndra then return true
    elseif VerifyNPC("Cake Prince") and getgenv().AutoCakePrince then return true
    elseif VerifyNPC("Dough King") and getgenv().AutoCakePrince then return true
    elseif VerifyNPC("Don Swan") and getgenv().AutoKillDonSwan then return true
    elseif VerifyNPC("Soul Reaper") and getgenv().AutoSoulReaper then return true
    elseif VerifyTool("Hallow Essence") and getgenv().AutoSoulReaper then return true
    end
  elseif Farm == "Raid Pirate" then
    if not VerifyRaidPirate() and getgenv().AutoFarmBone then return true
    elseif not VerifyRaidPirate() and getgenv().AutoFarm_Level then return true
    elseif not VerifyRaidPirate() and getgenv().AutoEliteHunter then return true
    elseif not VerifyRaidPirate() and getgenv().TeleportToFruit then return true
    end
  elseif Farm == "All Bosses" then
    if getgenv().KillAllBosses and VerifyBosses() then
    end
  elseif Farm == "Candy" then
    if VerifyEliteBoss() then return true
    elseif getgenv().TeleportToFruit and FruitFind() then return true
    elseif VerifyNPC("rip_indra True Form") and getgenv().AutoRipIndra then return true
    elseif VerifyTool("God's Chalice") and getgenv().AutoRipIndra then return true
    elseif VerifyNPC("Cake Prince") and getgenv().AutoCakePrince then return true
    elseif VerifyNPC("Soul Reaper") and getgenv().AutoSoulReaper then return true
    elseif VerifyTool("Hallow Essence") and getgenv().AutoSoulReaper then return true
    end
  elseif Farm == "Elite Hunter" then
    if getgenv().TeleportToFruit and FruitFind() then return true
    elseif VerifyRaidPirate() then return true
    elseif not VerifyEliteBoss() and getgenv().AutoCandy then return true
    elseif getgenv().AutoFarm_Level and not VerifyEliteBoss() then return true
    elseif getgenv().AutoFarmBone and not VerifyEliteBoss() then return true
    elseif VerifyNPC("rip_indra True Form") and getgenv().AutoRipIndra then return true
    elseif VerifyNPC("Cake Prince") and getgenv().AutoCakePrince then return true
    elseif VerifyNPC("Dough King") and getgenv().AutoCakePrince then return true
    elseif VerifyNPC("Soul Reaper") and getgenv().AutoSoulReaper then return true
    elseif VerifyTool("Hallow Essence") and getgenv().AutoSoulReaper then return true
    elseif VerifyTool("God's Chalice") and getgenv().AutoRipIndra then return true
    end
  elseif Farm == "Fruit" then
    if getgenv().AutoSecondSea and PlayerLevel.Value >= 700 then return true
    elseif VerifyRaidPirate() then return true
    elseif getgenv().AutoFarmRaid and TimerG.Visible then return true
    elseif VerifyNPC("Awakened Ice Admiral") and getgenv().AutoRengoku then return true
    elseif VerifyNPC("Darkbeard") and getgenv().AutoDarkbeard then return true
    elseif VerifyNPC("Soul Reaper") and getgenv().AutoSoulReaper then return true
    elseif VerifyTool("Hallow Essence") and getgenv().AutoSoulReaper then return true
    elseif VerifyNPC("Cake Prince") and getgenv().AutoCakePrince then return true
    elseif VerifyNPC("Dough King") and getgenv().AutoCakePrince then return true
    elseif VerifyTool("God's Chalice") and getgenv().AutoRipIndra then return true
    elseif not FruitFind() then return true
    end
  elseif Farm == "Bone" then
    if getgenv().AutoFarm_Level then return true
    elseif VerifyRaidPirate() then return true
    elseif VerifyEliteBoss() then return true
    elseif VerifyTool("Hallow Essence") and getgenv().AutoSoulReaper then return true
    elseif VerifyNPC("Soul Reaper") and getgenv().AutoSoulReaper then return true
    elseif VerifyNPC("rip_indra True Form") and getgenv().AutoRipIndra then return true
    elseif getgenv().TeleportToFruit and FruitFind() then return true
    end
  elseif Farm == "Ectoplasm" then
    if getgenv().TeleportToFruit and FruitFind() then return true
    elseif getgenv().AutoCursedCaptain and VerifyNPC("Cursed Captain") then return true
    end
  elseif Farm == "Hallow Boss" then
    if getgenv().AutoFarmBone and not VerifyNPC("Soul Reaper") and not VerifyTool("Hallow Essence") then return true
    elseif getgenv().AutoRipIndra and VerifyNPC("rip_indra True Form") then
    end
  elseif Farm == "Raid" then
    if getgenv().TeleportToFruit and FruitFind() and not TimerG.Visible then return true
    end
  elseif Farm == "Don Swan" then
    if getgenv().AutoFarm_Level and not VerifyNPC("Don Swan") then return true
    elseif getgenv().AutoFarmEctoplasm and not VerifyNPC("Don Swan") then return true
    elseif getgenv().AutoDarkbeard and VerifyNPC("Darkbeard") then return true
    elseif getgenv().AutoCursedCaptain and VerifyNPC("Cursed Captain") then return true
    end
  elseif Farm == "Saw Boss" then
    
  elseif Farm == "Bartilo Quest" then
    
  elseif Farm == "Enel Boss" then
    
  elseif Farm == "Cake Prince" then
    if VerifyEliteBoss() then
    elseif not VerifyNPC("Cake Prince") and getgenv().TeleportToFruit and FruitFind() then return true
    elseif not VerifyNPC("Dough King") and getgenv().TeleportToFruit and FruitFind() then return true
    elseif VerifyNPC("Soul Reaper") and getgenv().AutoSoulReaper then return true
    elseif VerifyNPC("rip_indra True Form") and getgenv().AutoRipIndra then return true
    elseif VerifyTool("God's Chalice") and getgenv().AutoRipIndra then return true
    end
  elseif Farm == "Rip Indra" then
    if not VerifyTool("God's Chalice") and not VerifyNPC("rip_indra True Form") and getgenv().AutoFarm_Level then return true
    elseif not VerifyNPC("rip_indra True Form") and getgenv().RipIndraLegendaryHaki and GetButton() then
    elseif not VerifyTool("God's Chalice") and not VerifyNPC("rip_indra True Form") and getgenv().AutoEliteHunter then return true
    elseif not VerifyTool("God's Chalice") and not VerifyNPC("rip_indra True Form") and getgenv().TeleportToFruit then return true
    elseif not VerifyTool("God's Chalice") and not VerifyNPC("rip_indra True Form") and getgenv().AutoFarmBone then return true
    elseif not VerifyTool("God's Chalice") and not VerifyNPC("rip_indra True Form") and getgenv().AutoCakePrince then return true
    elseif not VerifyTool("God's Chalice") and not VerifyNPC("rip_indra True Form") and getgenv().AutoCakePrince then return true
    end
  end
end

local function AutoFarm_Level()
  while getgenv().AutoFarm_Level do task.wait()
    if Configure("Level") then
    else
      local Enemie = GetEnemies({Quest[3]})QuestVisible()
      
      -- if not VerifyQuest(Quest[3]) then FireRemote("AbandonQuest")end
      if not VerifyQuest(Quest[3]) then
        StartQuest(Quest[4], Quest[5], Quest[1])
      elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie)end)
      else
        local plrPP = Player.Character and Player.Character.PrimaryPart
        if QuestTween and QuestTween[1] and plrPP and (plrPP.Position - QuestTween[1].p).Magnitude < 1200 then
          TweenNPCSpawn(QuestTween)
        elseif Quest[2] then
          PlayerTP(Quest[2])
        else
          PlayerTP(Quest[1])
        end
      end
    end
  end
end

local function AutoFarmMastery()
  local Quest = {CFrame.new(-16540, 56, 1051), false, NPCs = {"Isle Champion", "Sun-kissed Warrior"}, "TikiQuest2", 2, true}
  local QuestTween = {
    CFrame.new(-16521, 90, 1095),
    CFrame.new(-16891, 60, 1003),
    CFrame.new(-16521, 90, 1095),
    CFrame.new(-16891, 60, 1003)
  }
  
  if Sea1 then
    Quest = {CFrame.new(5258, 39, 4052), false, NPCs = {"Galley Captain"}, "FountainQuest", 2}
    QuestTween = {
      CFrame.new(5985, 70, 4790),
      CFrame.new(5472, 70, 4887)
    }
  elseif Sea2 then
    Quest = {CFrame.new(-3056, 240, -10145), false, NPCs = {"Water Fighter"}, "ForgottenQuest", 2}
    QuestTween = {
      CFrame.new(-3339, 290, -10412),
      CFrame.new(-3518, 290, -10419),
      CFrame.new(-3536, 290, -10607),
      CFrame.new(-3345, 280, -10667)
    }
  end
  
  while getgenv().AutoFarmMastery do task.wait()
    local SkillHealth = getgenv().HealthSkill
    local Tool = getgenv().ToolMastery
    
    local Enemie = GetEnemies(Quest.NPCs)
    
    pcall(function()DestroySkillWarn()end)
    
    if not QuestVisible() and not VerifyQuest(Quest[3]) then
      StartQuest(Quest[3], Quest[4], Quest[1])
    elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
      local Health = Enemie and Enemie:FindFirstChild("Humanoid") and Enemie.Humanoid.Health
      if Health and Health < Enemie.Humanoid.MaxHealth * SkillHealth / 100 then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + Vector3.new(0, getgenv().FarmDistance, 0))
        pcall(function()PlayerClick()ActiveHaki()EquipToolTip(Tool)BringNPC(Enemie, true)end)
        if getgenv().AimBotSkill then
          AimBotPart(Enemie.HumanoidRootPart)
        end
        if getgenv().SkillZ then
          KeyboardPress("Z")
        end
        if getgenv().SkillX then
          KeyboardPress("X")
        end
        if getgenv().SkillC then
          KeyboardPress("C")
        end
        if getgenv().SkillV then
          KeyboardPress("V")
        end
        if getgenv().SkillF then
          KeyboardPress("F")
        end
      elseif Health and Health >= Enemie.Humanoid.MaxHealth * SkillHealth / 100 then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipToolTip("Melee")BringNPC(Enemie)end)
      end
    else
      TweenNPCSpawn(QuestTween, Quest.NPCs)
    end
  end
end

local function VerifyEnemie(enemie)
  return Enemies and Enemies:FindFirstChild(enemie)
end

local function BuyNewBoat()
  local Boats = workspace:WaitForChild("Boats", 9e9)
  for _,boat in pairs(Boats:GetChildren()) do
    if boat:FindFirstChild("Owner") and boat.Owner.Value.Name == Player.Name then
      boat:Destroy()
    end
  end
end

local function AutoKitsuneIsland()
  local Boat = nil
  local Boats = workspace:WaitForChild("Boats", 9e9)
  local Map = workspace:WaitForChild("Map", 9e9)
  
  local function GetBoat()
    for _,boat in pairs(Boats:GetChildren()) do
      if boat:FindFirstChild("Humanoid") and boat.Humanoid.Value > 0 then
        if boat:FindFirstChild("Owner") and boat.Owner.Value.Name == Player.Name then
          Boat = boat
          return boat
        end
      end
    end
  end
  
  local function GetFireflies()
    local Nearest, Fire = math.huge
    for _,fire in pairs(workspace:GetChildren()) do
      if fire.Name == "EmberTemplate" and fire:FindFirstChild("Part") then
        local plrPP = Player.Character and Player.Character.PrimaryPart
        if plrPP and (plrPP.Position - fire.Part.Position).Magnitude <= Nearest then
          Nearest = (plrPP.Position - fire.Part.Position).Magnitude
          Fire = fire.Part
        end
      end
    end
    return Fire
  end
  
  local toPos1, toPos2, toPos3, toPos4 = true
  while getgenv().AutoKitsuneIsland do task.wait()
    local plrChar = Player.Character
    local Boat = GetBoat()
    
    if Boat then
      if not Boat:FindFirstChild("BodyVelocity") then
        local BV = Instance.new("BodyVelocity", Boat)
        BV.Velocity = Vector3.new()
      end
      for _,part in pairs(Boat:GetDescendants()) do
        if part:IsA("BasePart") or part:IsA("MeshPart") and part.Name ~= "VehicleSeat" then
          part.CanCollide = false
        end
      end
    end
    
    local KitsuneIsland = Map:FindFirstChild("KitsuneIsland")
    
    if KitsuneIsland then
      local plrChar = Player.Character
      local plrPP = plrChar and plrChar.PrimaryPart
      local plrH = plrChar and plrChar:FindFirstChild("Humanoid")
      local Stone = KitsuneIsland:FindFirstChild("ShrineDialogPart")
      local AzureEmber = GetFireflies()
      
      if plrH and plrH.Sit then plrH.Sit = false end
      if not AzureEmber then
        if plrPP and Stone and (plrPP.Position - Stone.Position).Magnitude < 5 then
          if Stone:FindFirstChild("ProximityPrompt") then
            -- fireproximityprompt(Stone.ProximityPrompt)
          end
        elseif Stone then
          PlayerTP(Stone.CFrame)
        end
      elseif AzureEmber then
        local plrPP = Player.Character and Player.Character.PrimaryPart
        if plrPP and block and (AzureEmber.Position - plrPP.Position).Magnitude < 100 then
          plrPP.CFrame = AzureEmber.CFrame
          block.CFrame = AzureEmber.CFrame
        else
          PlayerTP(AzureEmber.CFrame)
        end
      else
        PlayerTP(KitsuneIsland.WorldPivot)
      end
    elseif not Boat then
      local BuyBoatDistance = (plrChar.PrimaryPart.Position - Vector3.new(-6123, 16, -2247)).Magnitude
      if BuyBoatDistance <= 5 then
        FireRemote("BuyBoat", "Guardian")
      else
        PlayerTP(CFrame.new(-6123, 16, -2247))
      end
    elseif Boat:FindFirstChild("VehicleSeat") then
      local plrChar = Player.Character
      local plrH = plrChar and plrChar:FindFirstChild("Humanoid")
      
      if plrH and plrH.SeatPart ~= Boat.VehicleSeat then
        PlayerTP(Boat.VehicleSeat.CFrame)plrH.Sit = false
        if Boat.PrimaryPart then
          BoatTP(Boat, Boat.PrimaryPart.CFrame)
        end
      elseif Boat.PrimaryPart then
        local BoatPP = Boat.PrimaryPart
        if toPos1 then
          BoatTP(Boat, CFrame.new(-42000, 21, 500))
          if (BoatPP.Position - Vector3.new(-42000, 21, 500)).Magnitude < 25 then
            toPos1, toPos2 = false, true
          end
        elseif toPos2 then
          BoatTP(Boat, CFrame.new(-50000, 21, 500))
          if (BoatPP.Position - Vector3.new(-50000, 21, 500)).Magnitude < 25 then
            toPos2, toPos3 = false, true
          end
        elseif toPos3 then
          BoatTP(Boat, CFrame.new(-50000, 21, 2000))
          if (BoatPP.Position - Vector3.new(-50000, 21, 2000)).Magnitude < 25 then
            toPos3, toPos4 = false, true
          end
        elseif toPos4 then
          BoatTP(Boat, CFrame.new(-42000, 21, -1000))
          if (BoatPP.Position - Vector3.new(-42000, 21, -1000)).Magnitude < 25 then
            toPos4, toPos1 = false, true
          end
        end
      end
    end
  end
  if Boat and Boat.PrimaryPart then
    BoatTP(Boat, Boat.PrimaryPart.CFrame)
  end
end

local function AutoFarmSea()
  local Boat, InPanicMode, TeleportPos
  local RandomEquip = ""
  
  task.spawn(function()
    local Distance, toPos1, toPos2, toPos3, toPos4 = true, 0
    
    task.spawn(function()
      while getgenv().AutoFarmSea do task.wait()
        local BoatPP = Boat and Boat.PrimaryPart
        if BoatPP then
          if toPos1 then
            TeleportPos = CFrame.new(Distance, 21, 500)
            if (BoatPP.Position - Vector3.new(Distance, 21, 500)).Magnitude < 50 then
              toPos1, toPos2 = false, true
            end
          elseif toPos2 then
            TeleportPos = CFrame.new(Distance - 3000, 21, 500)
            if (BoatPP.Position - Vector3.new(Distance - 3000, 21, 500)).Magnitude < 50 then
              toPos2, toPos3 = false, true
            end
          elseif toPos3 then
            TeleportPos =  CFrame.new(Distance - 3000, 21, 2000)
            if (BoatPP.Position - Vector3.new(Distance - 3000, 21, 2000)).Magnitude < 50 then
              toPos3, toPos4 = false, true
            end
          elseif toPos4 then
            TeleportPos = CFrame.new(Distance, 21, -1000)
            if (BoatPP.Position - Vector3.new(Distance, 21, -1000)).Magnitude < 50 then
              toPos4, toPos1 = false, true
            end
          end
        end
      end
    end)
    
    while getgenv().AutoFarmSea do task.wait()
      if getgenv().SeaLevelTP == "inf" then
        Distance = -100000000
      elseif getgenv().SeaLevelTP == "6" then
        Distance = -42700
      elseif getgenv().SeaLevelTP == "5" then
        Distance = -38000
      elseif getgenv().SeaLevelTP == "4" then
        Distance = -34000
      elseif getgenv().SeaLevelTP == "3" then
        Distance = -30000
      elseif getgenv().SeaLevelTP == "2" then
        Distance = -26000
      elseif getgenv().SeaLevelTP == "1" then
        Distance = -22000
      end
    end
  end)
  
  task.spawn(function()
    while getgenv().AutoFarmSea do task.wait()
      local plrChar = Player.Character
      local plrH = plrChar and plrChar:FindFirstChild("Humanoid")
      
      if plrH then
        if plrH.Health < plrH.MaxHealth * getgenv().HealthPanic / 100 then
          InPanicMode = true
          
          repeat task.wait()
            if Boat and plrH then
              if not plrH.SeatPart or Boat:FindFirstChild("VehicleSeat") and plrH.SeatPart ~= Boat.VehicleSeat then
                PlayerTP(Boat.VehicleSeat.CFrame)
                if Boat.PrimaryPart then
                  BoatTP(Boat, Boat.PrimaryPart.CFrame)
                end
              elseif Boat.PrimaryPart then
                local vector3 = Vector3.new(0, math.clamp(Boat.PrimaryPart.Position.Y + 5, 0, 600), 0)
                Boat.PrimaryPart.CFrame = Boat.PrimaryPart.CFrame + vector3
              end
            end
          until not getgenv().AutoFarmSea
          or not getgenv().PanicMode
          or not Boat
          or not plrChar
          or not plrH
          or plrH.Health > plrH.MaxHealth * math.clamp(getgenv().HealthPanic, 20, 75) / 100
          
          InPanicMode = false
        end
      else
        InPanicMode = false
      end
    end
  end)
  
  task.spawn(function()
    while getgenv().AutoFarmSea do
      if VerifyToolTip("Melee") then
        RandomEquip = "Melee"task.wait(2)
      end
      if VerifyToolTip("Blox Fruit") then
        RandomEquip = "Blox Fruit"task.wait(3)
      end
      if VerifyToolTip("Sword") then
        RandomEquip = "Sword"task.wait(2)
      end
      if VerifyToolTip("Gun") then
        RandomEquip = "Gun"task.wait(2)
      end
    end
  end)
  
  local function GetBoat()
    for _,boat in pairs(Boats:GetChildren()) do
      if boat:FindFirstChild("Humanoid") and boat.Humanoid.Value > 0 then
        if boat:FindFirstChild("Owner") and boat.Owner.Value.Name == Player.Name then
          Boat = boat
          return boat
        end
      end
    end
  end
  
  local function GetKillBoat(BoatName)
    local Distance, Nearest = 2500
    local function Verify(_,Kill)
      if Kill.Name == BoatName then
        if Kill:FindFirstChild("Health") and Kill.Health.Value > 0 then
          local KillPP = Kill and Kill.PrimaryPart
          local BoatPP = Boat and Boat.PrimaryPart
          
          if BoatPP and KillPP and (BoatPP.Position - KillPP.Position).Magnitude < Distance then
            Distance = (BoatPP.Position - KillPP.Position).Magnitude
            Nearest = Kill
          end
        end
      end
    end
    
    table.foreach(Enemies:GetChildren(), Verify)
    table.foreach(ReplicatedStorage:GetChildren(), Verify)
    return Nearest
  end
  
  local function GetSeaEnemie(EnemieName)
    local Distance, Nearest = 2500
    local function Verify(_,Enemie)
      if Enemie.Name == EnemieName then
        local EnemieH = Enemie:FindFirstChild("Humanoid")
        
        if EnemieH and EnemieH.Health > 0 then
          local EnemiePP = Enemie and Enemie.PrimaryPart
          local BoatPP = Boat and Boat.PrimaryPart
          
          if BoatPP and EnemiePP and (BoatPP.Position - EnemiePP.Position).Magnitude < Distance then
            Distance = (BoatPP.Position - EnemiePP.Position).Magnitude
            Nearest = Enemie
          end
        end
      end
    end
    
    table.foreach(Enemies:GetChildren(), Verify)
    table.foreach(ReplicatedStorage:GetChildren(), Verify)
    return Nearest
  end
  
  task.spawn(function()
    while getgenv().AutoFarmSea do task.wait()
      if Boat then
        if not Boat:FindFirstChild("BodyVelocity") then
          local BV = Instance.new("BodyVelocity", Boat)
          BV.Velocity = Vector3.new()
        end
        for _,part in pairs(Boat:GetDescendants()) do
          if part:IsA("BasePart") or part:IsA("MeshPart") and part.Name ~= "VehicleSeat" then
            part.CanCollide = false
          end
        end
      end
    end
  end)
  
  while getgenv().AutoFarmSea do task.wait()
    local plrChar = Player.Character
    local Boat = GetBoat()
    
    local Terrorshark = GetSeaEnemie("Terrorshark")
    local Shark = GetSeaEnemie("Shark")
    local Piranha = GetSeaEnemie("Piranha")
    local FishCrewMember = GetSeaEnemie("Fish Crew Member")
    
    local Boat1 = GetKillBoat("PirateGrandBrigade")
    local Boat2 = GetKillBoat("PirateBrigade")
    local Boat3 = GetKillBoat("FishBoat")
    
    if getgenv().PanicMode and InPanicMode and Boat then
    elseif not Boat then
      local BuyBoatDistance = (plrChar.PrimaryPart.Position - Vector3.new(-6123, 16, -2247)).Magnitude
      if BuyBoatDistance <= 5 then
        FireRemote("BuyBoat", "Guardian")
      else
        PlayerTP(CFrame.new(-6123, 16, -2247))
      end
      
    elseif getgenv().Terrorshark and Terrorshark and Terrorshark:FindFirstChild("HumanoidRootPart") then
      
      PlayerTP(Terrorshark.HumanoidRootPart.CFrame * CFrame.new(0, 40, 50))
      pcall(function()PlayerClick()ActiveHaki()EquipTool()plrChar.Humanoid.Sit = false end)
      
      if Terrorshark:FindFirstChild("Humanoid") and Terrorshark.Humanoid.Health <= 0 then
        Terrorshark:Destroy()
      end
      
    elseif getgenv().Piranha and Piranha and Piranha:FindFirstChild("HumanoidRootPart") then
      
      PlayerTP(Piranha.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Piranha)plrChar.Humanoid.Sit = false end)
      
    elseif getgenv().FishCrewMember and FishCrewMember and FishCrewMember:FindFirstChild("HumanoidRootPart") then
      
      PlayerTP(FishCrewMember.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(FishCrewMember)plrChar.Humanoid.Sit = false end)
      
    elseif getgenv().Shark and Shark and Shark:FindFirstChild("HumanoidRootPart") then
      
      PlayerTP(Shark.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()ActiveHaki()EquipTool()plrChar.Humanoid.Sit = false end)
      
      if Shark:FindFirstChild("Humanoid") and Shark.Humanoid.Health <= 0 then
        Shark:Destroy()
      end
      
    elseif getgenv().PirateGrandBrigade and Boat1 and Boat1.PrimaryPart then
      
      PlayerTP(Boat1.PrimaryPart.CFrame + getgenv().FarmPos)
      pcall(function()ActiveHaki()plrChar.Humanoid.Sit = false end)
      
      EquipToolTip(RandomEquip)
      
      if Boat1:FindFirstChild("Humanoid") and Boat1.Humanoid.Value <= 0 then
        Boat1:Destroy()
      end
      
      if plrChar and plrChar.PrimaryPart and (plrChar.PrimaryPart.Position - Boat1.PrimaryPart.Position).Magnitude < 60 then
        if getgenv().SeaAimBotSkill then
          AimBotPart(Boat1.PrimaryPart)
        end
        
        if getgenv().SeaSkillZ then
          KeyboardPress("Z")
        end
        if getgenv().SeaSkillX then
          KeyboardPress("X")
        end
        if getgenv().SeaSkillC then
          KeyboardPress("C")
        end
        if getgenv().SeaSkillV then
          KeyboardPress("V")
        end
        if getgenv().SeaSkillF then
          KeyboardPress("F")
        end
      end
      
    elseif getgenv().PirateBrigade and Boat2 and Boat2.PrimaryPart then
      
      PlayerTP(Boat2.PrimaryPart.CFrame + getgenv().FarmPos)
      pcall(function()ActiveHaki()plrChar.Humanoid.Sit = false end)
      
      EquipToolTip(RandomEquip)
      
      if Boat2:FindFirstChild("Humanoid") and Boat2.Humanoid.Value <= 0 then
        Boat2:Destroy()
      end
      
      if plrChar and plrChar.PrimaryPart and (plrChar.PrimaryPart.Position - Boat2.PrimaryPart.Position).Magnitude < 60 then
        if getgenv().SeaAimBotSkill then
          AimBotPart(Boat2.PrimaryPart)
        end
        
        if getgenv().SeaSkillZ then
          KeyboardPress("Z")
        end
        if getgenv().SeaSkillX then
          KeyboardPress("X")
        end
        if getgenv().SeaSkillC then
          KeyboardPress("C")
        end
        if getgenv().SeaSkillV then
          KeyboardPress("V")
        end
        if getgenv().SeaSkillF then
          KeyboardPress("F")
        end
      end
      
    elseif getgenv().FishBoat and Boat3 and Boat3.PrimaryPart then
      
      PlayerTP(Boat3.PrimaryPart.CFrame + getgenv().FarmPos)
      pcall(function()ActiveHaki()plrChar.Humanoid.Sit = false end)
      
      EquipToolTip(RandomEquip)
      
      if Boat3:FindFirstChild("Humanoid") and Boat3.Humanoid.Value <= 0 then
        Boat3:Destroy()
      end
      
      if plrChar and plrChar.PrimaryPart and (plrChar.PrimaryPart.Position - Boat3.PrimaryPart.Position).Magnitude < 60 then
        if getgenv().SeaAimBotSkill then
          AimBotPart(Boat3.PrimaryPart)
        end
        
        if getgenv().SeaSkillZ then
          KeyboardPress("Z")
        end
        if getgenv().SeaSkillX then
          KeyboardPress("X")
        end
        if getgenv().SeaSkillC then
          KeyboardPress("C")
        end
        if getgenv().SeaSkillV then
          KeyboardPress("V")
        end
        if getgenv().SeaSkillF then
          KeyboardPress("F")
        end
      end
      
    elseif Boat and Boat:FindFirstChild("VehicleSeat") then
      PlayerTP(Boat.VehicleSeat.CFrame)
    end
    
    local plrH = Player.Character and Player.Character:FindFirstChild("Humanoid")
    local BoatSit = Boat and Boat:FindFirstChild("VehicleSeat")
    if plrH and BoatSit and plrH.Sit and plrH.SeatPart ~= BoatSit then
      plrChar.Humanoid.Sit = false BoatTP(Boat, Boat.PrimaryPart.CFrame)
    elseif BoatSit then
      if plrH and plrH.SeatPart and plrH.SeatPart == BoatSit then
        if TeleportPos then
          BoatTP(Boat, TeleportPos)
        end
      end
    end
  end
  if Boat and Boat.PrimaryPart then
    BoatTP(Boat, Boat.PrimaryPart.CFrame)
  end
end

local function AutoEliteHunter()
  while getgenv().AutoEliteHunter do task.wait()
    if Configure("Elite Hunter") then
    else
      local NPC = "EliteHunterVerify"QuestVisible()
      
      if VerifyQuest("Diablo") then
        NPC = "Diablo"
      elseif VerifyQuest("Deandre") then
        NPC = "Deandre"
      elseif VerifyQuest("Urban") then
        NPC = "Urban"
      else
        task.spawn(function()FireRemote("EliteHunter")end)
      end
      
      local EliteBoss = GetEnemies({NPC})
      
      if EliteBoss and EliteBoss:FindFirstChild("HumanoidRootPart") then
        PlayerTP(EliteBoss.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      elseif not VerifyNPC("Deandre") and not VerifyNPC("Diablo") and not VerifyNPC("Urban") then
        if getgenv().AutoEliteHunterHop then
          ServerHop()
        else
          PlayerTP(CFrame.new(-5119, 315, -2964))
        end
      end
    end
  end
end

local function AutoSawBoss()
  while getgenv().AutoSawBoss do task.wait()
    if Configure("Saw Boss") then
    else
      local TheSaw = GetEnemies({"The Saw"})
      
      if TheSaw and TheSaw:FindFirstChild("HumanoidRootPart") then
        PlayerTP(TheSaw.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      else
        PlayerTP(CFrame.new(-690, 15, 1583))
      end
    end
  end
end

local function AutoKenV2()
  local QuestActive = Player.PlayerGui.Main.Quest
  
  local BossProgress = false
  local BanditProgress = false
  local QuestProgress = 0
  
  local Remote = ReplicatedStorage:WaitForChild("Remotes", 9e9):WaitForChild("CommF_", 9e9)
  task.spawn(function()
    while getgenv().AutoKenV2 do task.wait()
      BossProgress = Remote:InvokeServer("CitizenQuestProgress").KilledBoss
      BanditProgress = Remote:InvokeServer("CitizenQuestProgress").KilledBandits
      QuestProgress = Remote:InvokeServer("CitizenQuestProgress", "Citizen")
    end
  end)
  
  while getgenv().AutoKenV2 do task.wait()
    local plrLevel = PlayerLevel.Value
    local QuestTitle = QuestActive.Container.QuestTitle.Title
    
    if plrLevel < 1800 then
    elseif QuestProgress == 3 then
      if VerifyTool("") then
      elseif VerifyTool("Pineapple") and VerifyTool("Apple") and VerifyTool("Banana") then
        local plrPP = Player.Character and Player.Character.PrimaryPart
        if plrPP and (plrPP.Position - Vector3.new(-12445, 332, -7676)).Magnitude < 5 then
          Remote:InvokeServer("CitizenQuestProgress", "Citizen")
        else
          PlayerTP(CFrame.new(-12445, 332, -7676))
        end
      else
        local AplleS = workspace:WaitForChild("AppleSpawner", 9e9)
        local BananaS = workspace:WaitForChild("BananaSpawner", 9e9)
        local PineappleS = workspace:WaitForChild("PineappleSpawner", 9e9)
        local plrPP = Player.Character and Player.Character.PrimaryPart
        
        if plrPP then
          if PineappleS:FindFirstChild("Pineapple") and not VerifyTool("Pineapple") then
            if PineappleS.Pineapple:FindFirstChild("Handle") then
              PineappleS.Pineapple.Handle.CFrame = plrPP.CFrame
            end
          elseif AplleS:FindFirstChild("Apple") and not VerifyTool("Apple") then
            if AplleS.Apple:FindFirstChild("Handle") then
              AplleS.Aplle.Handle.CFrame = plrPP.CFrame
            end
          elseif BananaS:FindFirstChild("Banana") and not VerifyTool("Banana") then
            if BananaS.Banana:FindFirstChild("Handle") then
              BananaS.Banana.Handle.CFrame = plrPP.CFrame
            end
          end
        end
      end
    elseif not BanditProgress then QuestVisible()
      local Enemie = GetEnemies({"Forest Pirate"})
      
      if QuestActive.Visible and not string.find(QuestTitle.Text, "Forest Pirate") and not string.find(QuestTitle.Text, "50") then
        FireRemote("AbandonQuest")
      end
      if not VerifyQuest("Forest Pirate") and not string.find(QuestTitle.Text, "50") then
        StartQuest1("CitizenQuest", 1)
        FireRemote("CitizenQuestProgress", "Citizen")
      elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie)end)
      end
    elseif not BossProgress then
      local CaptainElephant = GetEnemies({"Captain Elephant"})QuestVisible()
      
      if QuestActive.Visible and not string.find(QuestTitle.Text, "Captain Elephant") then
        FireRemote("AbandonQuest")
      end
      if not QuestActive.Visible and not string.find(QuestTitle.Text, "Captain Elephant") then
        FireRemote("CitizenQuestProgress", "Citizen")
      elseif CaptainElephant and CaptainElephant:FindFirstChild("HumanoidRootPart") then
        PlayerTP(CaptainElephant.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      else
        PlayerTP(CFrame.new(-13393, 319, -8423))
      end
    elseif QuestProgress == 2 then
      PlayerTP(CFrame.new(-12512, 340, -9872))
    end
  end
end

local function AutoMusketeerHat()
  local QuestActive = Player.PlayerGui.Main.Quest
  
  local BossProgress = false
  local BanditProgress = false
  local QuestProgress = 0
  
  task.spawn(function()
    while getgenv().AutoMusketeerHat do task.wait()
      BossProgress = FireRemote("CitizenQuestProgress").KilledBoss
      BanditProgress = FireRemote("CitizenQuestProgress").KilledBandits
      QuestProgress = FireRemote("CitizenQuestProgress", "Citizen")
    end
  end)
  
  while getgenv().AutoMusketeerHat do task.wait()
    local plrLevel = PlayerLevel.Value
    local QuestTitle = QuestActive.Container.QuestTitle.Title
    
    if plrLevel < 1800 then
    elseif not BanditProgress then
      local Enemie = GetEnemies({"Forest Pirate"})
      
      if not QuestActive.Visible then
        QuestTitle.Text = ""
      end
      
      if QuestActive.Visible and not string.find(QuestTitle.Text, "Forest Pirate") and not string.find(QuestTitle.Text, "50") then
        FireRemote("AbandonQuest")
      end
      
      if not QuestActive.Visible and not string.find(QuestTitle.Text, "Forest Pirate") and not string.find(QuestTitle.Text, "50") then
        StartQuest1("CitizenQuest", 1)
        FireRemote("CitizenQuestProgress", "Citizen")
      elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemies1)end)
      end
    elseif not BossProgress then
      local CursedCaptain = GetEnemies({"Captain Elephant"})
      
      if not QuestActive.Visible then
        QuestTitle.Text = ""
      end
      
      if QuestActive.Visible and not string.find(QuestTitle.Text, "Captain Elephant") then
        FireRemote("AbandonQuest")
      end
      
      if not QuestActive.Visible and not string.find(QuestTitle.Text, "Captain Elephant") then
        FireRemote("CitizenQuestProgress", "Citizen")
      elseif CursedCaptain and CursedCaptain:FindFirstChild("HumanoidRootPart") then
        PlayerTP(CursedCaptain.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemies1)end)
      else
        PlayerTP(CFrame.new(-13393, 319, -8423))
      end
    elseif QuestProgress == 2 then
      PlayerTP(CFrame.new(-12512, 340, -9872))
    end
  end
end

local function AutoEnelBossPole()
  while getgenv().AutoEnelBossPole do task.wait()
    if Configure("Enel Boss") then
    else
      local Enel = GetEnemies({"Thunder God"})
      
      if Enel and Enel:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enel.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      else
        PlayerTP(CFrame.new(-7739, 5657, -2289))
      end
    end
  end
end

local function AutoCursedDualKatana()
  local MasteryYama, MasteryTushita = 1, 1
  local GoodProgress, EvilProgress = 0, 0
  local YamaQuest_1, YamaQuest_2, YamaQuest_3
  local TushitaQuest_1, TushitaQuest_2, TushitaQuest_3
  local FinalQuest, FarmMastery
  
  local Enemies1 = workspace:WaitForChild("Enemies", 9e9)
  local Enemies2 = ReplicatedStorage
  local Remote = Enemies2:WaitForChild("Remotes", 9e9):WaitForChild("CommF_", 9e9)
  local Map = workspace:WaitForChild("Map", 9e9)
  local Turtle = Map:WaitForChild("Turtle", 9e9)
  local Cursed = Turtle:WaitForChild("Cursed", 9e9)
  
  local function GetYamaEnemies()
    local Distance = math.huge
    local NPC = nil
    local plrChar = Player and Player.Character and Player.Character.PrimaryPart
    
    for _,npc in pairs(Enemies1:GetChildren()) do
      if npc:FindFirstChild("HazeESP") then
        if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") and (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude <= Distance then
          Distance = (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude
          NPC = npc
        end
      end
    end
    for _,npc in pairs(Enemies2:GetChildren()) do
      if npc:FindFirstChild("HazeESP") then
        if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") and (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude <= Distance then
          Distance = (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude
          NPC = npc
        end
      end
    end
    return NPC
  end
  
  local function GetMasteryEnemies()
    local Distance = math.huge
    local NPC = nil
    local plrChar = Player and Player.Character and Player.Character.PrimaryPart
    
    for _,npc in pairs(Enemies1:GetChildren()) do
      if npc.Name == "Reborn Skeleton" or npc.Name == "Living Zombie" or npc.Name == "Demonic Soul" or npc.Name == "Posessed Mummy" then
        if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") and (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude <= Distance then
          Distance = (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude
          NPC = npc
        end
      end
    end
    return NPC
  end
  
  -- Final Quest
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if FinalQuest then
        
      end
    end
  end)
  
  -- Yama Quest 1
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if YamaQuest_1 then
        if not VerifyTool("Yama") then
          FireRemote("LoadItem", "Yama")
        else
          local NPC = Enemies:FindFirstChild("Ghost")EquipToolName("Yama")
          
          if NPC and NPC:FindFirstChild("HumanoidRootPart") then
            PlayerTP(NPC.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2))
          else
            PlayerTP(CFrame.new(5233, 7, 1105))
          end
        end
      end
    end
  end)
  
  -- Yama Quest 2
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if YamaQuest_2 then
        local Enemie = GetYamaEnemies()
        
        if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie)end)
        end
      end
    end
  end)
  
  -- Yama Quest 3
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if YamaQuest_3 then
        
      end
    end
  end)
  
  -- Tushita Quest 1
  task.spawn(function()
    local NPCs = workspace:WaitForChild("NPCs", 9e9)
    
    local Boat1, Boat2, Boat3 = false, false, false
    
    while getgenv().AutoCursedDualKatana do task.wait()
      if TushitaQuest_1 then
        local plrPP = Player and Player.Character and Player.Character.PrimaryPart
        local NPC = NPCs:FindFirstChild("Luxury Boat Dealer")
        
        if not Boat1 and plrPP and NPC then
          if (plrPP.Position - Vector3.new()).Magnitude < 5 then
            FireRemote("CDKQuest", "BoatQuest", NPC)Boat1 = true
          else
            PlayerTP(CFrame.new(-9546, 21, 4686))
          end
        elseif not Boat2 and plrPP and NPC then
          if (plrPP.Position - Vector3.new()).Magnitude < 5 then
            FireRemote("CDKQuest", "BoatQuest", NPC)Boat2 = true
          else
            PlayerTP(CFrame.new(-6120, 16, -2250))
          end
        elseif not Boat3 and plrPP and NPC then
          if (plrPP.Position - Vector3.new()).Magnitude < 5 then
            FireRemote("CDKQuest", "BoatQuest", NPC)Boat3 = true
          else
            PlayerTP(CFrame.new(-9533, 7, -8372))
          end
        end
      end
    end
  end)
  
  -- Tushita Quest 2
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if TushitaQuest_2 then
        
      end
    end
  end)
  
  -- Tushita Quest 3
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if TushitaQuest_3 then
        
      end
    end
  end)
  
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if VerifyTool("Yama") then
        local NewMastery = GetToolLevel("Yama")
        if tonumber(NewMastery) then
          MasteryYama = NewMastery
        end
      elseif VerifyTool("Tushita") then
        local NewMastery = GetToolLevel("Tushita")
        if tonumber(NewMastery) then
          MasteryTushita = NewMastery
        end
      end
    end
  end)
  
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if FarmMastery then
        if MasteryYama >= 350 and MasteryTushita >= 350 then
          break
        end
        if not VerifyTool("Yama") and MasteryYama < 350 then
          Remote:InvokeServer("LoadItem", "Yama")
        elseif not VerifyTool("Tushita") and MasteryTushita < 350 then
          Remote:InvokeServer("LoadItem", "Tushita")
        end
        
        local Enemie = GetMasteryEnemies()EquipToolName("Yama")EquipToolName("Tushita")
        
        if Enemie then
          PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
        else
          PlayerTP(CFrame.new(-9513, 164, 5786))
        end
      end
    end
  end)
    
  task.spawn(function()
    local function ConvertNumber(Number)
      local NumberStr = tostring(Number)
      NumberStr = string.gsub(NumberStr, "2", "3")
      NumberStr = string.gsub(NumberStr, "1", "2")
      NumberStr = string.gsub(NumberStr, "0", "1")
      NumberStr = string.gsub(NumberStr, "-2", "1")
      NumberStr = string.gsub(NumberStr, "-4", "2")
      NumberStr = string.gsub(NumberStr, "-6", "2")
      return tonumber(NumberStr)
    end
    
    while getgenv().AutoCursedDualKatana do task.wait(0.5)
      local Progress = Remote:InvokeServer("CDKQuest", "Progress")
      
      GoodProgress = ConvertNumber(Progress.Good)
      EvilProgress = ConvertNumber(Progress.Evil)
    end
  end)
    
  while getgenv().AutoCursedDualKatana do task.wait()
    local Door = Cursed:FindFirstChild("Breakable")
    
    if MasteryTushita < 350 and MasteryYama < 350 then
      FinalQuest, FarmMastery = false, true
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
    elseif Door then
      Remote:InvokeServer("CDKQuest", "OpenDoor")
      Remote:InvokeServer("CDKQuest", "OpenDoor", true)
    elseif EvilProgress == 1 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = true, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
      Remote:InvokeServer("CDKQuest", "Progress", "Evil")Remote:InvokeServer("CDKQuest", "StartTrial", "Evil")
    elseif EvilProgress == 2 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, true, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
      Remote:InvokeServer("CDKQuest", "Progress", "Evil")Remote:InvokeServer("CDKQuest", "StartTrial", "Evil")
    elseif EvilProgress == 3 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, true
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
      Remote:InvokeServer("CDKQuest", "Progress", "Evil")Remote:InvokeServer("CDKQuest", "StartTrial", "Evil")
    elseif GoodProgress == 1 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = true, false, false
      Remote:InvokeServer("CDKQuest", "Progress", "Good")Remote:InvokeServer("CDKQuest", "StartTrial", "Good")
    elseif GoodProgress == 2 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, true, false
      Remote:InvokeServer("CDKQuest", "Progress", "Good")Remote:InvokeServer("CDKQuest", "StartTrial", "Good")
    elseif GoodProgress == 3 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
      Remote:InvokeServer("CDKQuest", "Progress", "Good")Remote:InvokeServer("CDKQuest", "StartTrial", "Good")
    else
      FinalQuest, FarmMastery = true, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
    end
  end
end

local function AutoRainbowHaki()
  while getgenv().AutoRainbowHaki do task.wait()
    if VerifyQuest("Stone") then
      local Enemie = GetEnemies({"Stone"})
      
      if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      else
        PlayerTP(CFrame.new(-1049, 40, 6791))
        if getgenv().RainbowHakiHop then
          ServerHop()
        end
      end
    elseif VerifyQuest("Island Empress") then
      local Enemie = GetEnemies({"Island Empress"})
      
      if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      else
        PlayerTP(CFrame.new(5730, 602, 199))
        if getgenv().RainbowHakiHop then
          ServerHop()
        end
      end
    elseif VerifyQuest("Kilo Admiral") then
      local Enemie = GetEnemies({"Kilo Admiral"})
      
      if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      else
        PlayerTP(CFrame.new(2889, 424, -7233))
        if getgenv().RainbowHakiHop then
          ServerHop()
        end
      end
    elseif VerifyQuest("Captain Elephant") then
      local Enemie = GetEnemies({"Captain Elephant"})
      
      if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      else
        PlayerTP(CFrame.new(-13393, 319, -8423))
        if getgenv().RainbowHakiHop then
          ServerHop()
        end
      end
    elseif VerifyQuest("Beautiful Pirate") then
      local Enemie = GetEnemies({"Beautiful Pirate"})
      
      if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      else
        PlayerTP(CFrame.new(5241, 23, 129))
        if getgenv().RainbowHakiHop then
          ServerHop()
        end
      end
    else
      FireRemote("HornedMan", "Bet")
    end
  end
end

local function AutoSoulGuitar()
  local NPCs = workspace:WaitForChild("NPCs", 9e9)
  local Map = workspace:WaitForChild("Map", 9e9)
  local Castle = Map:WaitForChild("Haunted Castle", 9e9)
  
  local function BringZombie()
    local plrChar = Player and Player.Character
    local plrPP = plrChar and plrChar.PrimaryPart
    local EnemiesNumber = 0
    
    for _,npc in pairs(Enemies:GetChildren()) do
      if npc and npc.Name == "Living Zombie" and npc.PrimaryPart and plrPP
      and (npc.PrimaryPart.Position - plrPP.Position).Magnitude < 1000 then
        npc:SetPrimaryPartCFrame(plrPP.CFrame * CFrame.new(0, -15, -15))
        if npc:FindFirstChild("HumanoidRootPart") then
				  npc.HumanoidRootPart.CanCollide = false
				  npc.HumanoidRootPart.Size = Vector3.new(40, 40, 40)
				end
				if npc:FindFirstChild("Humanoid") and npc.Humanoid:FindFirstChild("Animator") then
					npc.Humanoid.Animator:Destroy()
				end
				if npc:FindFirstChild("Humanoid") and npc.Humanoid.Health <= 0 then
				  npc:Destroy()
				end
				sethiddenproperty(Player, "SimulationRadius",  math.huge)
				EnemiesNumber = EnemiesNumber + 1
      end
    end
    return EnemiesNumber
  end
  
  while getgenv().AutoSoulGuitar do task.wait()
    if VerifyTool("Soul Guitar") then
    elseif NPCs:FindFirstChild("Skeleton Machine") then
      FireRemote("soulGuitarBuy",true)
    elseif NPCs:FindFirstChild("Ghost") then
      FireRemote("GuitarPuzzleProgress", "Ghost")
    else
    end
    --[[game:GetService("Workspace").Map["Haunted Castle"].ElevatorDoor.Left
    game:GetService("Workspace").NPCs["Skeleton Machine"].HumanoidRootPart
    game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.Part]]
    
    local plrChar = Player and Player.Character
    local plrPP = plrChar and plrChar.PrimaryPart
    
    PlayerTP(CFrame.new(-10129, 154, 5928))
    
    if plrPP and (plrPP.Position - Vector3.new(-10129, 154, 5928)).Magnitude < 5 and BringZombie() > 5 then
      pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
    end
  end
end

local function AutoUnlockSaber()
  local RichSonProgress = 0
  local SickManProgress = 0
  
  task.spawn(function()
    while getgenv().AutoUnlockSaber do task.wait()
      RichSonProgress = FireRemote("ProQuestProgress","RichSon")
      SickManProgress = FireRemote("ProQuestProgress", "SickMan")
    end
  end)
  while getgenv().AutoUnlockSaber do task.wait()
    if PlayerLevel.Value > 200 then
      local plrChar = Player and Player.Character
      local plrBag = Player.Backpack
      local plrRP = plrChar:FindFirstChild("HumanoidRootPart")
      local Plates = game:GetService("Workspace").Map.Jungle.QuestPlates
      
      if not workspace.Map.Jungle.Final.Part.CanCollide then
        local Enemie = GetEnemies({"Saber Expert"})
        
        if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
        else
          PlayerTP(CFrame.new(-1461, 30, -51))
        end
        
      elseif plrChar and VerifyTool("Relic") then
        PlayerTP(CFrame.new(-1408, 30, 3))
        EquipToolName("Relic")
      elseif SickManProgress == 1 and RichSonProgress == 0 and not workspace.Map.Desert.Burn.Part.CanCollide then
        local Enemie = GetEnemies({"Mob Leader"})
        
        if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
        end
      elseif plrChar:FindFirstChild("Cup") and not plrChar["Cup"].Handle:FindFirstChild("TouchInterest") then
        FireRemote("ProQuestProgress", "SickMan")
      elseif plrChar:FindFirstChild("Cup") and plrChar["Cup"].Handle:FindFirstChild("TouchInterest") then
        PlayerTP(CFrame.new(1393, 37, -1324, -0.408640295, 0, -0.912695527, 0, 1, 0, 0.912695527, 0, -0.408640295))
      elseif plrBag:FindFirstChild("Cup") then
        EquipToolName("Cup")
      elseif not workspace.Map.Desert.Burn.Part.CanCollide then
        PlayerTP(workspace.Map.Desert.Cup.CFrame)
      elseif plrChar:FindFirstChild("Torch") then
        PlayerTP(CFrame.new(1113, 5, 4352))
      elseif plrBag:FindFirstChild("Torch") then
        EquipToolName("Torch")
      elseif Plates:FindFirstChild("Door") and Plates.Door.CanCollide then
        if Plates then
          local Plate1 = Plates:FindFirstChild("Plate1")
          local Plate2 = Plates:FindFirstChild("Plate2")
          local Plate3 = Plates:FindFirstChild("Plate3")
          local Plate4 = Plates:FindFirstChild("Plate4")
          local Plate5 = Plates:FindFirstChild("Plate5")
          
          if Plate1 and Plate1:FindFirstChild("Button") and Plate1.Button.BrickColor ~= BrickColor.new("Camo") then
            PlayerTP(Plate1.Button.CFrame)
          elseif Plate2 and Plate2:FindFirstChild("Button") and Plate2.Button.BrickColor ~= BrickColor.new("Camo") then
            PlayerTP(Plate2.Button.CFrame)
          elseif Plate3 and Plate3:FindFirstChild("Button") and Plate3.Button.BrickColor ~= BrickColor.new("Camo") then
            PlayerTP(Plate3.Button.CFrame)
          elseif Plate4 and Plate4:FindFirstChild("Button") and Plate4.Button.BrickColor ~= BrickColor.new("Camo") then
            PlayerTP(Plate4.Button.CFrame)
          elseif Plate5 and Plate5:FindFirstChild("Button") and Plate5.Button.BrickColor ~= BrickColor.new("Camo") then
            PlayerTP(Plate5.Button.CFrame)
          end
        end
      elseif plrRP and Plates:FindFirstChild("Door") and not Plates.Door.CanCollide then
        PlayerTP(workspace.Map.Jungle.Torch.CFrame)
      end
    end
  end
end

local function AutoFarmEctoplasm()
  while getgenv().AutoFarmEctoplasm do task.wait()
    if Configure("Ectoplasm") then
    else
      local Enemie = GetEnemies({"Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer"})
      
      if Enemie then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
      else
        PlayerTP(CFrame.new(912, 186, 33591))
      end
    end
  end
end

local function AutoFarmMaterial()
  local EnemiesList, NPCPos = {}
  
  task.spawn(function()
    while getgenv().AutoFarmMaterial do task.wait()
      local Material = getgenv().MaterialSelected
      if Sea1 then
        if Material == "Angel Wings" then
          EnemiesList, NPCPos = {"Royal Soldier", "Royal Squad"}, CFrame.new(-7742, 5634, -1564)
        elseif Material == "Leather + Scrap Metal" then
          EnemiesList, NPCPos = {"Pirate", "Brute"}, CFrame.new(-1257, 54, 4091)
        elseif Material == "Magma Ore" then
          EnemiesList, NPCPos = {"Military Soldier"}, CFrame.new(-5408, 11, 8456)
        elseif Material == "Fish Tail" then
          EnemiesList, NPCPos = {"Fishman Warrior"}, CFrame.new(60931, 19, 1574)
        end
      elseif Sea2 then
        if Material == "Leather + Scrap Metal" then
          EnemiesList, NPCPos =  {"Scrap Metal"}, CFrame.new(-1026, 73, 1375)
        elseif Material == "Magma Ore" then
          EnemiesList, NPCPos = {"Lava Pirate"}, CFrame.new(-5241, 50, -4713)
        elseif Material == "Mystic Droplet" then
          EnemiesList, NPCPos = {"Water Fighter"}, CFrame.new(-3350, 282, -10527)
        elseif Material == "Radiactive Material" then
          EnemiesList, NPCPos = {"Factory Staff"}, CFrame.new(-73, 149, -112)
        elseif Material == "Vampire Fang" then
          EnemiesList, NPCPos = {"Vampire"}, CFrame.new(-6030, 6, -1281)
        end
      elseif Sea3 then
        if Material == "Leather + Scrap Metal" then
          EnemiesList, NPCPos = {"Pirate Millionaire"}, CFrame.new(-364, 116, 5692)
        elseif Material == "Fish Tail" then
          EnemiesList, NPCPos = {"Fishman Captain", "Fishman Raider"}, CFrame.new(-10679, 398, -8975)
        elseif Material == "Gunpowder" then
          EnemiesList, NPCPos = {"Pistol Billionaire"}, CFrame.new(-394, 135, 5981)
        elseif Material == "Mini Tusk" then
          EnemiesList, NPCPos = {"Mythological Pirate"}, CFrame.new(-13510, 584, -6986)
        elseif Material == "Conjured Cocoa" then
          EnemiesList, NPCPos = {"Cocoa Warrior", "Chocolate Bar Battler"}, CFrame.new(400, 81, -12257)
        elseif Material == "Dragon Scale" then
          EnemiesList, NPCPos = {"Dragon Crew Archer"}, CFrame.new(6689, 378, 331)
        end
      end
    end
  end)
  
  while getgenv().AutoFarmMaterial do task.wait()
    if Configure("Material") then
    else
      local Enemie = GetEnemies(EnemiesList)
      
      if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
      elseif NPCPos then
        PlayerTP(NPCPos)
      end
    end
  end
end

local function AutoFarmBone()
  while getgenv().AutoFarmBone do task.wait()
    if Configure("Bone") then
    else
      local Enemie = GetEnemies({"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy"})
      if Enemie then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
      else
        PlayerTP(CFrame.new(-9513, 164, 5786))
      end
    end
  end
end

local function AutoPiratesSea()
  while getgenv().AutoPiratesSea do task.wait()
    if Configure("Raid Pirate") then
    else
      local Enemie = nil
      for _,npc in pairs(Enemies:GetChildren()) do
        if npc.Name ~= "rip_indra True Form" then
          local npcH = npc:FindFirstChild("Humanoid")
          
          if npcH and npcH.Health > 0 then
            if npc and npc.PrimaryPart and (npc.PrimaryPart.Position - Vector3.new(-5556, 314, -2988)).Magnitude < 700 then
              Enemie = npc
            end
          end
        end
      end
      
      if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
      else
        PlayerTP(CFrame.new(-5556, 314, -2988))
      end
    end
  end
end

local function AutoFactory()
  while getgenv().AutoFactory do task.wait()
    PlayerTP(CFrame.new(410, 200, -414))
    pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
  end
end

local function AutoSecondSea()
  local Map = workspace:WaitForChild("Map", 9e9)
  local IceMap = Map:WaitForChild("Ice", 9e9)
  
  while getgenv().AutoSecondSea do task.wait()
    if PlayerLevel.Value < 700 then
    else
      local plrChar = Player and Player.Character
      local plrPP = Player and Player.Character and Player.Character.PrimaryPart
      local DoorArgs = IceMap:FindFirstChild("Door") and IceMap.Door.CanCollide and IceMap.Door.Transparency < 1
      
      if not VerifyTool("Key") and DoorArgs then
        PlayerTP(CFrame.new(4852, 6, 719))
        if plrPP and (plrPP.Position - Vector3.new(4852, 6, 719)).Magnitude < 5 then
          FireRemote("DressrosaQuestProgress","Detective")
        end
      elseif VerifyTool("Key") and DoorArgs then
        EquipToolName("Key")
        PlayerTP(CFrame.new(1346, 37, -1329))
      elseif VerifyNPC("Ice Admiral") and IceMap:FindFirstChild("Door") and not IceMap.Door.CanCollide and IceMap.Door.Transparency > 0 then
        local IceAdmiral = GetEnemies({"Ice Admiral"})
        
        if IceAdmiral and IceAdmiral:FindFirstChild("HumanoidRootPart") then
          PlayerTP(IceAdmiral.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
        end
      else
        PlayerTP(CFrame.new(1280, 27, -1380))
        FireRemote("TravelDressrosa")
      end
    end
  end
end

local function AutoThirdSea()
  local QuestProgress = 0
  
  local function GetProxyNPC()
    local Distance = 2000
    local NPC = nil
    local plrChar = Player and Player.Character and Player.Character.PrimaryPart
    
    for _,npc in pairs(Enemies:GetChildren()) do
      if npc.Name == "rip_indra" then
        if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") and (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude <= Distance then
          Distance = (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude
          NPC = npc
        end
      end
    end
    return NPC
  end
  
  task.spawn(function()
    while getgenv().AutoThirdSea do task.wait()
      QuestProgress = FireRemote("ZQuestProgress", "Check")
      FireRemote("TravelZou")
    end
  end)
  
  while getgenv().AutoThirdSea do task.wait()
    if PlayerLevel.Value < 1500 then
    else
      local RipIndra = GetProxyNPC()
      if RipIndra and RipIndra:FindFirstChild("HumanoidRootPart") then
        PlayerTP(RipIndra.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      elseif QuestProgress == 0 then
        if boss and boss:FindFirstChild("HumanoidRootPart") then
          PlayerTP(boss.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
        else
          local plrChar = Player and Player.Character and Player.Character.PrimaryPart
          if plrChar and (plrChar.Position - Vector3.new(-1926, 13, 1738)).Magnitude < 5 then
            FireRemote("ZQuestProgress", "Begin")
            task.wait(2)
          else
            PlayerTP(CFrame.new(-1926, 13, 1738))
          end
        end
      end
    end
  end
end

local function AutoBartiloQuest()
  local BartiloQuestLevel = 0
  task.spawn(function()
    while getgenv().AutoBartiloQuest do task.wait()
      BartiloQuestLevel = FireRemote("BartiloQuestProgress", "Bartilo")
      FireRemote("BartiloQuestProgress", "Bartilo")
    end
  end)
  
  local QuestActive = Player.PlayerGui.Main.Quest
  
  while getgenv().AutoBartiloQuest do task.wait()
    if PlayerLevel.Value >= 850 then
      local QuestTitle = QuestActive.Container.QuestTitle.Title
      if BartiloQuestLevel == 0 then
        
        local Enemie = GetEnemies({"Swan Pirate"})
        
        if not QuestActive.Visible then
          QuestTitle.Text = ""
        end
        
        if QuestActive.Visible and not string.find(QuestTitle.Text, "Swan Pirate") and not string.find(QuestTitle.Text, "50") then
          FireRemote("AbandonQuest")
        end
        
        if not QuestActive.Visible and not string.find(QuestTitle.Text, "Swan Pirate") and not string.find(QuestTitle.Text, "50") then
          StartQuest1("BartiloQuest", 1)
          elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie)end)
        else
          TweenNPCSpawn({CFrame.new(778, 110, 1129), CFrame.new(1018, 110, 1128), CFrame.new(1020, 110, 1366), CFrame.new(1016, 110, 1115)}, "Swan Pirate")
        end
      elseif BartiloQuestLevel == 1 then
        local Enemie1 = GetEnemies({"Jeremy"})
        
        if Enemie1 and Enemie1:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie1.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie1)end)
        else
          PlayerTP(CFrame.new(2316, 449, 787))
        end
      
      elseif BartiloQuestLevel == 2 then
        local Plates = game:GetService("Workspace").Map.Dressrosa:FindFirstChild("BartiloPlates")
        if Plates and Plates:FindFirstChild("Plate1") and Plates.Plate1.Color.G ~= 1 then
          PlayerTP(Plates.Plate1.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate2") and Plates.Plate2.Color.G ~= 1 then
          PlayerTP(Plates.Plate2.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate3") and Plates.Plate3.Color.G ~= 1 then
          PlayerTP(Plates.Plate3.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate4") and Plates.Plate4.Color.G ~= 1 then
          PlayerTP(Plates.Plate4.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate5") and Plates.Plate5.Color.G ~= 1 then
          PlayerTP(Plates.Plate5.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate6") and Plates.Plate6.Color.G ~= 1 then
          PlayerTP(Plates.Plate6.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate7") and Plates.Plate7.Color.G ~= 1 then
          PlayerTP(Plates.Plate7.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate8") and Plates.Plate8.Color.G ~= 1 then
          PlayerTP(Plates.Plate8.CFrame)
        end
      end
    end
  end
end

local function AutoRipIndra()
  while getgenv().AutoRipIndra do task.wait()
    if Configure("Rip Indra") then
    else
      local RipIndra1 = GetEnemies({"rip_indra True Form"})
      
      if RipIndra1 and RipIndra1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(RipIndra1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      elseif VerifyTool("God's Chalice") then
        EquipToolName("God's Chalice")
        PlayerTP(CFrame.new(-5561, 314, -2663))
      else
        PlayerTP(CFrame.new(-5333, 424, -2673))
      end
    end
  end
end

local function AutoKillLawBoss()
  while getgenv().AutoKillLawBoss do task.wait()
    local OrderBoss1 = GetEnemies({"Order"})
    
    if OrderBoss1 and OrderBoss1:FindFirstChild("HumanoidRootPart") then
      PlayerTP(OrderBoss1.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
    else
      PlayerTP(CFrame.new(-6300, 16, -4997))
    end
  end
end

local function AutoDarkbeard()
  while getgenv().AutoDarkbeard do task.wait()
    local Darkbeard1 = GetEnemies({"Darkbeard"})
    
    if Darkbeard1 and Darkbeard1:FindFirstChild("HumanoidRootPart") then
      PlayerTP(Darkbeard1.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
    elseif VerifyTool("Fist of Darkness") then
      EquipToolName("Fist of Darkness")
      PlayerTP(CFrame.new(3779, 16, -3500))
    else
      PlayerTP(CFrame.new(3746, 13, -3632))
    end
  end
end

local function AutoKillDonSwan()
  while getgenv().AutoKillDonSwan do task.wait()
    if Configure("Don Swan") then
    else
      local Enemie1 = GetEnemies({"Don Swan"})
      
      if Enemie1 and Enemie1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      else
        if getgenv().AutoDonSwanHop then
          ServerHop()
        else
          PlayerTP(CFrame.new(2272, 15, 759))
        end
      end
    end
  end
end

local function AutoCursedCaptain()
  while getgenv().AutoCursedCaptain do task.wait()
    if getgenv().AutoFarm_Level and not VerifyNPC("Cursed Captain") then
    elseif getgenv().AutoFarmEctoplasm and not VerifyNPC("Cursed Captain") then
    else
      local Enemie1 = GetEnemies({"Cursed Captain"})
      
      if Enemie1 and Enemie1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      else
        PlayerTP(CFrame.new(912, 186, 33591))
      end
    end
  end
end

local function AutoCakePrince()
  task.spawn(function()
    while getgenv().AutoCakePrince do task.wait(1)
      FireRemote("CakePrinceSpawner")
    end
  end)
  
  while getgenv().AutoCakePrince do task.wait()
    if Configure("Cake Prince") then
    else
      if VerifyNPC("Dough King") then
        local DoughKing = GetEnemies({"Dough King"})
        
        if DoughKing and DoughKing:FindFirstChild("HumanoidRootPart") then
          PlayerTP(DoughKing.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
        end
      elseif VerifyNPC("Cake Prince") then
        local CakePrince = GetEnemies({"Cake Prince"})
        
        if CakePrince and CakePrince:FindFirstChild("HumanoidRootPart") then
          PlayerTP(CakePrince.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
        end
      else
        if not getgenv().AutoFarm_Level and not getgenv().AutoFarmBone then
          local Enemie = GetEnemies({"Head Baker", "Baking Staff", "Cake Guard", "Cookie Crafter"})
          
          if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
            PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
            pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
          else
            PlayerTP(CFrame.new(-2103, 70, -12165))
          end
        end
      end
    end
  end
end

local function AutoDoughKing()
  local CocoaStats = ""
  task.spawn(function()
    while getgenv().AutoDoughKing do task.wait()
      CocoaStats = FireRemote("SweetChaliceNpc")
      if VerifyTool("Sweet Chalice") then
        FireRemote("CakePrinceSpawner")
      end
    end
  end)
  
  while getgenv().AutoDoughKing do task.wait()
    if VerifyTool("Red Key") then
      FireRemote("CakeScientist", "Check")
    elseif VerifyNPC("Dough King") then
      local DoughKing = GetEnemies({"Dough King"})
      
      if DoughKing and DoughKing:FindFirstChild("HumanoidRootPart") then
        PlayerTP(DoughKing.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      end
    else
      if VerifyTool("God's Chalice") and not VerifyTool("Sweet Chalice") then
        if string.find(CocoaStats, "Where") then
          local Enemie = GetEnemies({"Chocolate Bar Battler", "Cocoa Warrior"})
          
          if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
            PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
            pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
          else
            PlayerTP(CFrame.new(400, 81, -12257))
          end
        end
      elseif VerifyNPC("Urban") and not VerifyTool("God's Chalice") and not VerifyTool("Sweet Chalice")
      or VerifyNPC("Deandre") and not VerifyTool("God's Chalice") and not VerifyTool("Sweet Chalice")
      or VerifyNPC("Diablo") and not VerifyTool("God's Chalice") and not VerifyTool("Sweet Chalice") then
        local NPC = "EliteHunterVerify"QuestVisible()
        
        if VerifyQuest("Diablo") then
          NPC = "Diablo"
        elseif VerifyQuest("Deandre") then
          NPC = "Deandre"
        elseif VerifyQuest("Urban") then
          NPC = "Urban"
        else
          task.spawn(function()FireRemote("EliteHunter")end)
        end
        
        local EliteBoss = GetEnemies({NPC})
        
        if EliteBoss and EliteBoss:FindFirstChild("HumanoidRootPart") then
          PlayerTP(EliteBoss.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
        end
      else
        if not getgenv().AutoFarm_Level and not getgenv().AutoFarmBone then
          local Enemie = GetEnemies({"Head Baker", "Baking Staff", "Cake Guard", "Cookie Crafter"})
          
          if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
            PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
            pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
          else
            PlayerTP(CFrame.new(-2103, 70, -12165))
          end
        end
      end
    end
  end
end

local function KillAllBosses()
  local SelectedBoss
  
  task.spawn(function()
    while getgenv().KillAllBosses do task.wait()
      local BossTable = {}
      local function Verify(_,Boss)
        if table.find(BossListT, Boss.Name) then
          local BossH = Boss:FindFirstChild("Humanoid")
          
          if BossH and BossH.Health > 0 then
            table.insert(BossTable, Boss)
          end
        end
      end
      
      table.foreach(Enemies:GetChildren(), Verify)
      table.foreach(ReplicatedStorage:GetChildren(), Verify)
      if BossTable[1] then
        SelectedBoss = BossTable[1]
      end
    end
  end)
  
  while getgenv().KillAllBosses do task.wait()
    if SelectedBoss then
      local GetQuest, NotBossPos, Quest, QuestNun = GetBossQuest(SelectedBoss.Name)
      local Boss = SelectedBoss
      
      if Boss and QuestVisible() and not VerifyQuest(Boss.Name) then
        FireRemote("AbandonQuest")
      end
      if Boss and GetQuest and getgenv().TakeQuestBoss and not QuestVisible() and not VerifyQuest(Boss.Name) then
        StartQuest1(Quest, QuestNun or 3)
      elseif Boss and Boss:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Boss.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      elseif NotBossPos then
        PlayerTP(NotBossPos)
      end
    end
  end
end

local function AutoFarmBossSelected()
  local GetQuest, GetQuestPos, Quest, NotBossPos, BossName = false, nil, nil, nil, getgenv().BossSelected or ""
  local QuestActive = Player.PlayerGui.Main.Quest
  
  while getgenv().AutoFarmBossSelected do task.wait()
    BossName = getgenv().BossSelected or ""
    local plrChar = Player.Character and Player.Character.PrimaryPart
    if plrChar then
      
      local GetQuest, NotBossPos, Quest, QuestNun = GetBossQuest(BossName)
      
      if VerifyNPC(BossName) then
        local Boss1 = GetEnemies({BossName})
        
        if not QuestActive.Visible then
          QuestActive.Container.QuestTitle.Title.Text = ""
        end
        if QuestActive.Visible and not string.find(QuestActive.Container.QuestTitle.Title.Text, BossName) then
          FireRemote("AbandonQuest")
        end
        if GetQuest and getgenv().TakeQuestBoss and not QuestActive.Visible and not string.find(QuestActive.Container.QuestTitle.Title.Text, BossName) then
          StartQuest1(Quest, QuestNun or 3)
        elseif Boss1 and Boss1:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Boss1.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Boss1)end)
        end
      elseif NotBossPos then
        PlayerTP(NotBossPos)
      end
    end
  end
end

local function AutoSoulReaper()
  while getgenv().AutoSoulReaper do task.wait()
    if Configure("Hallow Boss") then
    else
      local SoulReaper = GetEnemies({"Soul Reaper"})
      
      if SoulReaper and SoulReaper:FindFirstChild("HumanoidRootPart") then
        PlayerTP(SoulReaper.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
      elseif VerifyTool("Hallow Essence") then
        EquipToolName("Hallow Essence")
        pcall(function()PlayerTP(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)end)
      else
        PlayerTP(CFrame.new(-9529, 316, 6712))
      end
    end
  end
end

local function AutoFarmNearest()
  local SavePos = Vector3.new()
  repeat task.wait()until Player.Character and Player.Character.PrimaryPart
  SavePos = Player.Character.PrimaryPart.Position
  
  local function GetNearest()
    local Distance, Nearest = 2500
    local function Verify(_,Enemie)
      local EnemieH = Enemie:FindFirstChild("Humanoid")
      
      if EnemieH and EnemieH.Health > 0 then
        local EnemiePP = Enemie.PrimaryPart
        local PlayerPP = Player.Character and Player.Character.PrimaryPart
        
        if EnemiePP and PlayerPP and (PlayerPP.Position - EnemiePP.Position).Magnitude <= Distance then
          Distance = (PlayerPP.Position - EnemiePP.Position).Magnitude
          Nearest = Enemie
        end
      end
    end
    table.foreach(Enemies:GetChildren(), Verify)
    table.foreach(ReplicatedStorage:GetChildren(), Verify)
    return Nearest
  end
  
  while getgenv().AutoFarmNearest do task.wait()
    if getgenv().AutoFarm_Level or getgenv().AutoRipIndra or getgenv().AutoCakePrince then
    else
      local Enemie = GetNearest()
      
      if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
      else
        PlayerTP(CFrame.new(SavePos))
      end
    end
  end
end

local function AutoRaceV2()
  local QuestProgress = 0
  task.spawn(function()
    while getgenv().AutoRaceV2 do task.wait()
      QuestProgress = FireRemote("Alchemist", "1")
    end
  end)
  
  while getgenv().AutoRaceV2 do task.wait()
    if not Player.Data.Race:FindFirstChild("Evolved") then
      if QuestProgress == 0 then
        local plrChar = Player and Player.Character and Player.Character.PrimaryPart
        
        if plrChar and (plrChar.Position - Vector3.new(-2777, 73, -3570)).Magnitude < 5 then
          FireRemote("Alchemist", "2")
        else
          PlayerTP(CFrame.new(-2777, 73, -3570))
        end
      elseif QuestProgress == 1 then
        
        local plrBag = Player:FindFirstChild("Backpack")
        local plrChar = Player.Character
        
        if plrChar:FindFirstChild("Flower 1") then
          plrChar["Flower 1"].Parent = plrBag
        elseif plrChar:FindFirstChild("Flower 2") then
          plrChar["Flower 2"].Parent = plrBag
        elseif plrChar:FindFirstChild("Flower 3") then
          plrChar["Flower 3"].Parent = plrBag
        end
        
        if not plrBag:FindFirstChild("Flower 1") and workspace:FindFirstChild("Flower1") and workspace["Flower1"].Transparency ~= 1 then
          PlayerTP(workspace["Flower1"].CFrame)
        elseif not plrBag:FindFirstChild("Flower 2") and workspace:FindFirstChild("Flower2") and workspace["Flower2"].Transparency ~= 1 then
          PlayerTP(workspace["Flower2"].CFrame)
        elseif not plrBag:FindFirstChild("Flower 3") then
          local Enemie = GetEnemies({"Swan Pirate"})
          
          if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
            PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
            pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie)end)
          else
            TweenNPCSpawn({CFrame.new(778, 110, 1129), CFrame.new(1018, 110, 1128), CFrame.new(1020, 110, 1366), CFrame.new(1016, 110, 1115)}, "Swan Pirate")
          end
        elseif not plrBag:FindFirstChild("Flower 1") and workspace:FindFirstChild("Flower1") then
          PlayerTP(workspace["Flower1"].CFrame)
        elseif not plrBag:FindFirstChild("Flower 2") and workspace:FindFirstChild("Flower2") then
          PlayerTP(workspace["Flower2"].CFrame)
        end
      elseif QuestProgress == 2 then
        local plrChar = Player and Player.Character and Player.Character.PrimaryPart
        
        if plrChar and (plrChar.Position - Vector3.new(-2777, 73, -3570)).Magnitude < 5 then
          FireRemote("Alchemist","3")
        else
          PlayerTP(CFrame.new(-2777, 73, -3570))
        end
      end
    end
  end
end

local function AutoRengoku()
  while getgenv().AutoRengoku do task.wait()
    if VerifyNPC("Darkbeard") and getgenv().AutoDarkbeard then
    else
      if VerifyTool("Hidden Key") then
        EquipToolName("Hidden Key")PlayerTP(CFrame.new(6571, 299, -6968))
      elseif VerifyTool("Library Key") then
        EquipToolName("Library Key")PlayerTP(CFrame.new(6373, 293, -6839))
      elseif VerifyNPC("Awakened Ice Admiral") then
        local AwakenedIceAdmiral = GetEnemies({"Awakened Ice Admiral"})
        
        if AwakenedIceAdmiral and AwakenedIceAdmiral:FindFirstChild("HumanoidRootPart") then
          PlayerTP(AwakenedIceAdmiral.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()end)
        end
      else
        local Enemie = GetEnemies({"Arctic Warrior", "Snow Lurker"})
        
        if not getgenv().AutoFarm_Level and not getgenv().AutoFarmBone then
          if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
            PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
            pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
          else
            PlayerTP(CFrame.new(5707, 28, -6402))
          end
        end
      end
      local EnemieBossW = Enemies:FindFirstChild("Awakened Ice Admiral")
      local EnemieBossR = ReplicatedStorage:FindFirstChild("Awakened Ice Admiral")
      local Enemie = GetProxyNPC()
    end
  end
end

GeneralTab:AddSection("Farm")

GeneralTab:AddToggle("Toggle", {
  Title = "Auto Farm Level",
  Callback = function(Value)
    getgenv().AutoFarm_Level = Value
    AutoFarm_Level()
  end
})
