------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9)
local CommF = Remotes:WaitForChild("CommF_", 9e9)

local block = Instance.new("Part", workspace)
block.Size = Vector3.new(1, 1, 1)
block.Name = "windy dep trai"
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
      if _G.AutoAdvanceDungeon 
      or _G.AutoDoughtBoss
      or _G.Auto_DungeonMobAura
      or _G.AutoFarmChest
      or _G.AutoFarmBossHallow
      or _G.AutoFarmSwanGlasses
      or _G.AutoLongSword
      or _G.AutoBlackSpikeycoat
      or _G.AutoElectricClaw
      or _G.AutoFarmGunMastery
      or _G.AutoHolyTorch
      or _G.AutoLawRaid
      or _G.AutoFarmBoss
      or _G.AutoTwinHooks
      or _G.AutoOpenSwanDoo
      or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.KillFishCrew or _G.KillTerrorShark or _G.KillShark or _G.KillPiranha or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.RipIndraKill or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.AutoSeaBest or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or PirateShip or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or Tween_Fruit or KillPlayer or KillPlayerSpam or _G.SeaBeasts1 then
 
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
  
  if World1 then
    PortalPos = {
      Vector3.new(-4652, 873, -1754), -- Sky Island 1
      Vector3.new(-7895, 5547, -380), -- Sky Island 2
      Vector3.new(61164, 5, 1820), -- Under Water Island
      Vector3.new(3865, 5, -1926) -- Under Water Island Entrace
    }
  elseif World2 then
    PortalPos = {
      Vector3.new(-317, 331, 597), -- Flamingo Mansion
      Vector3.new(2283, 15, 867), -- Flamingo Room
      Vector3.new(923, 125, 32853), -- Cursed Ship
      Vector3.new(-6509, 83, -133) -- Zombie Island0
    }
  elseif World3 then
    PortalPos = {
      Vector3.new(-12471, 374, -7551), -- Mansion
      Vector3.new(5756, 610, -282), -- Hydra Island
      Vector3.new(-5092, 315, -3130), -- Castle on the Sea
      Vector3.new(-12001, 332, -8861), -- Floating Turtle
      Vector3.new(5319, 23, -93), -- Beautiful Pirate
      Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.14762768e-08, -1.99111154e-13, -2.14762768e-08, 1, -3.0510602e-08, 1.98455903e-13, 3.0510602e-08, 1), -- room bot cavender
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

local TweenService = game:GetService("TweenService")
local TeleportPos
local currentTween 
local function topos(Tween_Pos)
    TeleportPos = Tween_Pos.p
    local plrPP = Player.Character and Player.Character.PrimaryPart
    if not plrPP then return end
    local Distance = (plrPP.Position - Tween_Pos.p).Magnitude
    local PortalPos = GetTPPos(Tween_Pos.p)
    if Tween_Pos.p.Y < plrPP.Position.Y then
        plrPP.CFrame = CFrame.new(plrPP.Position.X, Tween_Pos.p.Y, plrPP.Position.Z)
    elseif Tween_Pos.p.Y > plrPP.Position.Y then
        plrPP.CFrame = CFrame.new(plrPP.Position.X, Tween_Pos.p.Y, plrPP.Position.Z)
    end
    if Distance > (Tween_Pos.p - PortalPos).Magnitude + 250 then
        plrPP.CFrame = CFrame.new(PortalPos)
        block.CFrame = CFrame.new(PortalPos)
        task.wait(2) 
    elseif block then
        local tweenTime = Distance / getgenv().TweenSpeed
        if Distance <= 250 then
            tweenTime = Distance / tonumber(getgenv().TweenSpeed * 1.8)
        end
        if currentTween then
            currentTween:Pause()
        end
        local tweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle.Linear)
        local tweenGoal = {CFrame = Tween_Pos}
        currentTween = TweenService:Create(block, tweenInfo, tweenGoal)
        currentTween:Play()
    end
end

local function stopTween()
    if currentTween then
        currentTween:Cancel()
        currentTween = nil
    end
end


spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if _G.AutoAdvanceDungeon 
      or _G.AutoDoughtBoss
      or _G.Auto_DungeonMobAura
      or _G.AutoFarmChest
      or _G.AutoFarmBossHallow
      or _G.AutoFarmSwanGlasses
      or _G.AutoLongSword
      or _G.AutoBlackSpikeycoat
      or _G.AutoElectricClaw
      or _G.AutoFarmGunMastery
      or _G.AutoHolyTorch
      or _G.AutoLawRaid
      or _G.AutoFarmBoss
      or _G.AutoTwinHooks
      or _G.AutoOpenSwanDoo
      or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.KillFishCrew or _G.KillTerrorShark or _G.KillShark or _G.KillPiranha or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.RipIndraKill or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.AutoSeaBest or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or PirateShip or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or Tween_Fruit or KillPlayer or KillPlayerSpam or _G.SeaBeasts1 then
      if not game:GetService("Workspace"):FindFirstChild("LOL") then
            local LOL = Instance.new("Part")
            LOL.Name = "LOL"
            LOL.Parent = game.Workspace
            LOL.Anchored = true
            LOL.Transparency = 1
            LOL.Size = Vector3.new(1,-0.5,1)
        elseif game:GetService("Workspace"):FindFirstChild("LOL") then
            game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
        end
    else
        if game:GetService("Workspace"):FindFirstChild("LOL") then
            game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
        end
    end
end)
end)

function WaitHRP(q0) 
    if not q0 then return end
    return q0.Character:WaitForChild("HumanoidRootPart", 9) 
end

function TP2(Pos)
    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if not Pos then 
            return 
        end
        if not game.Players.LocalPlayer.Character:FindFirstChild("PartTele") then
            local PartTele = Instance.new("Part", game.Players.LocalPlayer.Character) -- Create part
            PartTele.Size = Vector3.new(1,1,1)
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
        local itzwindy = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.PartTele, TweenInfo.new(Distance / getgenv().TweenSpeed, Enum.EasingStyle.Linear), {CFrame = Pos})
        itzwindy:Play()
      end
    end
    
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
------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
