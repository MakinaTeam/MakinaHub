-- // Kaitun Shit \\ --

local plr = game.Players.LocalPlayer
local WS = game.Workspace
local RC = game.ReplicatedStorage
local IsLevel = plr.Data.Level.Value

if game.PlaceId == 2753915549 then
    Sea1 = true
elseif game.PlaceId == 4442272183 then
    Sea2 = true
elseif game.PlaceId == 7449423635 then
    Sea3 = true
else
    game.Players.LocalPlayer:Kick("Not Support This Game!")
end

function CheckEnemies(Mob)
    if game.Workspace.Enemies:FindFirstChild(Mob) then
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == Mob and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
end

local tatcacode = {
    "Sub2UncleKizaru",
    "NEWTROLL",
    "SUB2NOOBMASTER123",
    "StrawHatMaine",
    "Sub2OfficialNoobie",
    "Sub2NoobMaster123",
    "SUB2GAMERROBOT_EXP1",
    "SUB2GAMERROBOT_RESET1",
    "THEGREATACE",
    "BIGNEWS",
    "FUDD10",
    "fudd10_v2",
    "Bluxxy",
    "Starcodeheo",
    "JCWK",
    "SUB2CAPTAINMAUI",
    "Magicbus",
    "Sub2Fer999",
    "kittgaming",
    "GAMERROBOT",
    "SUBGAMERROBOT",
    "ADMINGIVEAWAY",
    "KITT_RESET",
    "SECRET_ADMIN",
    "Sub2Daigrock",
    "Axiore",
    "TantaiGaming"
}

for i, v in pairs(tatcacode) do
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v)
end

spawn(function()
    while wait() do
        local args = {
            [1] = "AddPoint",
            [2] = "Melee",
            [3] = 9999
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end)

local QuestKhac = {"BartiloQuest", "CitizenQuest"}
local function S()
    local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
    local T = Lvl
    local min = 0
    if Lvl >= 1 and Lvl <= 9 then
        if tostring(game.Players.LocalPlayer.Team) == "Marines" then
            Mob1 = "Trainee"
            Mob2 = "MarineQuest"
            Mob3 = 1
        elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
            Mob1 = "Bandit"
            Mob2 = "BanditQuest1"
            Mob3 = 1
        end
    end
    local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
    local Quests = require(game:GetService("ReplicatedStorage").Quests)
    for i, v in pairs(GuideModule["Data"]["NPCList"]) do
        for i1, v1 in pairs(v["Levels"]) do
            if Lvl >= v1 then
                if not levelreq then
                    levelreq = 0
                end
                if v1 > levelreq then
                    npcpos = i["CFrame"]
                    Mob3 = i1
                    levelreq = v1
                end
                if #v["Levels"] == 3 and Mob3 == 3 then
                    npcpos = i["CFrame"]
                    Mob3 = 2
                    levelreq = v["Levels"][2]
                end
            end
        end
    end
    for i, v in pairs(Quests) do
        for i1, v1 in pairs(v) do
            for O, P in pairs(v1.Task) do
                if v1["LevelReq"] == levelreq and v1.Task[O] > 1 and not table.find(QuestKhac, tostring(i)) then
                    Mob2 = i
                    for i2, v2 in pairs(v1["Task"]) do
                        Mob1 = i2
                    end
                end
            end
        end
    end
    if Mob2 == "MarineQuest2" then
        Mob2 = "MarineQuest2"
        Mob3 = 1
        Mob1 = "Chief Petty Officer"
        levelreq = 120
    elseif Mob2 == "ImpeMob3" then
        Mob2 = "PrisonerQuest"
        Mob3 = 2
        Mob1 = "Dangerous Prisoner"
        levelreq = 210
    elseif Mob2 == "SkyExp1Quest" then
        if Mob3 == 1 then
        elseif Mob3 == 2 then
        end
    elseif Mob2 == "Area2Quest" and Mob3 == 2 then
        Mob2 = "Area2Quest"
        Mob3 = 1
        Mob1 = "Swan Pirate"
        levelreq = 775
    end
end

function NearestEntrace(aI)
    vcspos = aI.Position
    min = math.huge
    min2 = math.huge
    local y = game.PlaceId
    if y == 2753915549 then
        OldWorld = true
    elseif y == 4442272183 then
        NewWorld = true
    elseif y == 7449423635 then
        ThreeWorld = true
    end
    if ThreeWorld then
        TableLocations = {
            ["Caslte On The Sea"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            ["Hydra"] = Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            ["Mansion"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
            ["Great Tree"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
            ["DoorBossNPCPirate"] = Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
            ["DoorBossNPCPirate2"] = Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656),
            ["Temple"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)
        }
    elseif NewWorld then
        TableLocations = {
            ["Mansion"] = Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            ["Flamingo"] = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            ["CursedShip"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            ["CursedShip2"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif OldWorld then
        TableLocations = {
            ["Sky3"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
            ["Sky2"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            ["thanhphoduoibien"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            ["thanhphoduoibien2"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    end
    TableLocations2 = {}
    for r, v in pairs(TableLocations) do
        TableLocations2[r] = (v - vcspos).Magnitude
    end
    for r, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end
    for r, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end
    for r, v in pairs(TableLocations2) do
        if v <= min then
            choose = TableLocations[r]
        end
    end
    min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if min2 <= min3 then
        return choose
    end
end
function RETeleport(aJ)
    args = {"requestEntrance", aJ}
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
    oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    char = game.Players.LocalPlayer.Character.HumanoidRootPart
    char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)
    if plr.Character:FindFirstChild("PartTele") then
        plr.Character.PartTele.CFrame = WaitHRP(plr).CFrame 
    end
    task.wait(0.01)
end
function WaitHRP(q0) 
    if not q0 then return end
    return q0.Character:WaitForChild("HumanoidRootPart", 9) 
end 
function Tween(Pos)
    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 9)
        game.Players.LocalPlayer.Character:WaitForChild("Head", 9)
        if not Pos then return end
        if not plr.Character:FindFirstChild("PartTele") then
            local PartTele = Instance.new("Part", plr.Character) -- Create part
            PartTele.Size = Vector3.new(10,1,10)
            PartTele.Name = "PartTele"
            PartTele.Anchored = true
            PartTele.Transparency = 1
            PartTele.CanCollide = false
            PartTele.CFrame = WaitHRP(plr).CFrame 
            PartTele:GetPropertyChangedSignal("CFrame"):Connect(function()
                task.wait(0.01)
                WaitHRP(plr).CFrame = PartTele.CFrame
            end)
        end
        tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.PartTele, TweenInfo.new(Distance / 325, Enum.EasingStyle.Linear),{CFrame = Pos})
        local NearestEntraceFunction = NearestEntrace(Pos)
        if plr.Data.Level.Value >= 10 then
            if NearestEntraceFunction then
                tween:Cancel()
                RETeleport(NearestEntraceFunction)
            end
        end
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.PartTele.CFrame = Pos
        end
		tween:Play()
    end
end

function BypassTeleport(Pos)
    if (Pos.Position - plr.Character.HumanoidRootPart.Position).Magnitude < 10000 then
        repeat
            wait()
            if plr.Character:FindFirstChild("PartTele") then
                plr.Character.PartTele.CFrame = Pos
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
            wait(2)
            game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Pos
            wait(3)
        until (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
    else
        Tween(Pos)
    end
end

function EnableBuso()
    if not plr.Character:FindFirstChild("HasBuso") then
        local args = {
            [1] = "Buso"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end

function GetWP(buoif)
    Nahfck = ""
    for i, v in pairs(plr.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == buoif then
            Nahfck = v.Name
        end
    end
    for i, v in pairs(plr.Character:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == buoif then
            Nahfck = v.Name
        end
    end
    return Nahfck
end

function EquipWeapon(Giet)
    Giet = GetWP("Melee")
    local bucac = game.Players.LocalPlayer.Backpack:FindFirstChild(Giet)
    if bucac then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(bucac)
    end
end

function BringMob(nhulon)
    pcall(
        function()
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if
                    v.Name == nhulon and v.Parent and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and
                        (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                            300
                 then
                    v.HumanoidRootPart.CFrame = Stp
                    v.Humanoid.JumpPower = 0
                    v.Humanoid.WalkSpeed = 0
                    v.HumanoidRootPart.Transparency = 1
                    v.HumanoidRootPart.CanCollide = false
                    v.Head.CanCollide = false
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    v.Humanoid:ChangeState(11)
                end
            end
        end
    )
end

function KillMob(Name)
    v = CheckEnemies(Name)
    if v then
        if v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") then
            repeat
                wait()
                EnableBuso()
                EquipWeapon()
                v.HumanoidRootPart.Transparency = 1
                v.Humanoid.JumpPower = 0
                v.Humanoid.WalkSpeed = 0
                v.HumanoidRootPart.CanCollide = false
                Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 16, 12))
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                Stp = v.HumanoidRootPart.CFrame
                BringMob(Name)
                NoClip = true
                FastNCooldown = true
            until v.Humanoid.Health <= 0 or not v.Parent
            NoClip = false
            FastNCooldown = false
        end
    end
end

function KillBoss(Name)
    v = CheckBoss(Name)
    if v then
        if v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") then
            repeat
                wait()
                EnableBuso()
                EquipWeapon()
                v.HumanoidRootPart.Transparency = 1
                v.Humanoid.JumpPower = 0
                v.Humanoid.WalkSpeed = 0
                v.HumanoidRootPart.CanCollide = false
                Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 16, 12))
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                Stp = v.HumanoidRootPart.CFrame
                BringMob(Name)
                NoClip = true
                FastNCooldown = true
            until v.Humanoid.Health <= 0 or not v.Parent
            NoClip = false
            FastNCooldown = false
        end
    end
end

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                            NoClip == true
                     then
                        if not plr.Character.Head:FindFirstChild("BodyClip") then
                            local bv = Instance.new("BodyVelocity")
                            bv.Name = "BodyClip"
                            bv.Velocity = Vector3.new(0, 0, 0)
                            bv.MaxForce = Vector3.new(9999999, 9999999, 9999999)
                            bv.P = 15000
                            bv.Parent = plr.Character.Head
                        end
                        for i, v in pairs(plr.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    else
                        if plr.Character.Head:FindFirstChild("BodyClip") then
                            plr.Character.Head:FindFirstChild("BodyClip"):Destroy()
                        end
                        plr.Character.Humanoid:ChangeState()
                    end
                end
            )
        end
    end
)

function CheckBoss(Han)
    if game:GetService("ReplicatedStorage"):FindFirstChild(Han) then
        for r, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if v.Name == Han and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    if game.Workspace.Enemies:FindFirstChild(Han) then
        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == Han and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
end

function CheckDistancelonhon(bomay, deoskid)
    if (bomay.Position - plr.Character.HumanoidRootPart.Position).Magnitude > deoskid then
        return deoskid
    end
end

function CheckDistancebehon(cacc, chodeogi)
    if (cacc.Position - plr.Character.HumanoidRootPart.Position).Magnitude < chodeogi then
        return chodeogi
    end
end

function Byp(nahupgrade)
    if CheckDistancelonhon(nahupgrade, 2500) then
        BypassTeleport(nahupgrade)
    elseif CheckDistancebehon(nahupgrade, 2500) then
        Tween(nahupgrade)
    end
end

function CFrameQuest()
    QuestPoses = {}
    for r, v in pairs(getnilinstances()) do
        if
            v:IsA("Model") and v:FindFirstChild("Head") and v.Head:FindFirstChild("QuestBBG") and
                v.Head.QuestBBG.Title.Text == "QUEST"
         then
            QuestPoses[v.Name] = v.Head.CFrame * CFrame.new(0, -2, 2)
        end
    end
    for r, v in pairs(game.Workspace.NPCs:GetDescendants()) do
        if v.Name == "QuestBBG" and v.Title.Text == "QUEST" then
            QuestPoses[v.Parent.Parent.Name] = v.Parent.Parent.Head.CFrame * CFrame.new(0, -2, 2)
        end
    end
    DialoguesList = {}
    for r, v in pairs(require(game.ReplicatedStorage.DialoguesList)) do
        DialoguesList[v] = r
    end
    local V = getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.NPC)
    local W = {}
    for k, v in pairs(debug.getprotos(V)) do
        if #debug.getconstants(v) == 1 then
            table.insert(W, debug.getconstant(v, 1))
        end
    end
    local X = false
    local Y = {}
    for k, v in pairs(debug.getconstants(V)) do
        if type(v) == "string" then
            if v == "Players" then
                X = false
            end
            if not X then
                if v == "Blox Fruit Dealer" then
                    X = true
                end
            else
            end
            if X then
                table.insert(Y, v)
            end
        end
    end
    local Z = {}
    QuestPoint = {}
    for k, v in pairs(Y) do
        if QuestPoses[v] then
            Z[W[k]] = Y[k]
        end
    end
    for r, v in next, Z do
        QuestPoint[r] = QuestPoses[v]
    end
    QuestPoint["SkyExp1Quest"] =
        CFrame.new(
        -7857.28516,
        5544.34033,
        -382.321503,
        -0.422592998,
        0,
        0.906319618,
        0,
        1,
        0,
        -0.906319618,
        0,
        -0.422592998
    )
end
local Q = require(game.ReplicatedStorage.Quests)
local a3 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))
function CheckDataQuest()
    for r, v in next, a3.Data do
        if r == "QuestData" then
            return true
        end
    end
    return false
end
function CheckNameMobDoubleQuest()
    local a
    if CheckDataQuest() then
        for r, v in next, a3.Data.QuestData.Task do
            a = r
        end
    end
    return a
end
function CheckDoubleQuestSkidcuaYMF()
    S()
    local a5 = {}
    if
        game.Players.LocalPlayer.Data.Level.Value >= 10 and CheckDataQuest() and
            CheckNameMobDoubleQuest() == Mob1 and
            #CheckNameMobDoubleQuest() > 2
     then
        for r, v in pairs(Q) do
            for M, N in pairs(v) do
                for O, P in pairs(N.Task) do
                    if tostring(O) == Mob1 then
                        for a6, a7 in next, v do
                            for a8, a9 in next, a7.Task do
                                if a8 ~= Mob1 and a9 > 1 then
                                    if a7.LevelReq <= game.Players.LocalPlayer.Data.Level.Value then
                                        a5["Name"] = tostring(a8)
                                        a5["Mob2"] = r
                                        a5["ID"] = a6
                                    else
                                        a5["Name"] = Mob1
                                        a5["Mob2"] = Mob2
                                        a5["ID"] = Mob3
                                    end
                                    return a5
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        a5["Name"] = Mob1
        a5["Mob2"] = Mob2
        a5["ID"] = Mob3
        return a5
    end
    a5["Name"] = Mob1
    a5["Mob2"] = Mob2
    a5["ID"] = Mob3
    return a5
end
function MobLevel1OrMobLevel2()
    local aa = {}
    for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if
            not table.find(aa, v.Name) and v:IsA("Model") and v.Name ~= "PirateBasic" and
                not string.find(v.Name, "Brigade") and
                v:FindFirstChild("Humanoid") and
                v.Humanoid.Health > 0 and
                v:FindFirstChild("HumanoidRootPart")
         then
            table.insert(aa, v.Name)
        end
    end
    for r, v in pairs(aa) do
        local ab = v
        v = tostring(v:gsub(" %pLv. %d+%p", ""))
        if tostring(v) == CheckNameMobDoubleQuest() then
            return tostring(ab)
        end
    end
    return false
end
local ad = game.ReplicatedStorage.Remotes["CommF_"]
CFrameQuest()
function GetQuest()
    if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
        return
    end
    if not QuestPoint[tostring(CheckDoubleQuestSkidcuaYMF().Mob2)] then
        CFrameQuest()
        return
    end
    if
        (QuestPoint[CheckDoubleQuestSkidcuaYMF().Mob2].Position -
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
     then
        ad:InvokeServer("StartQuest", tostring(CheckDoubleQuestSkidcuaYMF().Mob2), CheckDoubleQuestSkidcuaYMF().ID)
    else
        QuestCFrame = QuestPoint[CheckDoubleQuestSkidcuaYMF().Mob2]
        if _G.S.BypassTele then
            Byp(QuestCFrame)
        end
    end
end

Mob = ""
Mob1 = ""
plr = game.Players.LocalPlayer
if game.Workspace:FindFirstChild("MobSpawns") then
    for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "MobSpawns" then
            v:Destroy()
        end
    end
end
local CreateFoldermmb = Instance.new("Folder")
CreateFoldermmb.Parent = game.Workspace
CreateFoldermmb.Name = "MobSpawns"

function RemoveLevelTitle(v)
    return tostring(tostring(v):gsub(" %pLv. %d+%p", ""):gsub(" %pRaid Boss%p", ""):gsub(" %pBoss%p", ""))
end 
task.spawn(
    function()
        while task.wait() do 
            pcall(function()
                for i,v in pairs(game.workspace.MobSpawns:GetChildren()) do  
                    v.Name = RemoveLevelTitle(v.Name)
                end
            end)
            task.wait(50)
        end
    end
)
function MobDepTrai()
    MobDepTraiTable = {}
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        table.insert(MobDepTraiTable, v)
    end
    local tablefoldermmb = {}
    for i, v in next, require(game:GetService("ReplicatedStorage").Quests) do
        for i1, v1 in next, v do
            for i2, v2 in next, v1.Task do
                if v2 > 1 then
                    table.insert(tablefoldermmb, i2)
                end
            end
        end
    end
    for i, v in pairs(getnilinstances()) do
        if table.find(tablefoldermmb, RemoveLevelTitle(v.Name)) then
            table.insert(MobDepTraiTable, v)
        end
    end
    return MobDepTraiTable
end
local MobSpawnList = MobDepTrai()
function ReloadFolderMob()
    for i, v in next, game.Workspace.MobSpawns:GetChildren() do
        v:Destroy()
    end
    for i, v in pairs(MobSpawnList) do
        if v then
            if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                MobNew = Instance.new("Part")
                MobNew.CFrame = v.HumanoidRootPart.CFrame
                MobNew.Name = v.Name
                MobNew.Parent = game.Workspace.MobSpawns
            elseif v:IsA("Part") then
                MobNew = v:Clone()
                MobNew.Parent = game.Workspace.MobSpawns
            end
        end
    end
end
ReloadFolderMob()
function GetMobSpawnList(a)
    a = RemoveLevelTitle(a)
    k = {}
    for i, v in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if v.Name == a then
            table.insert(k, v)
        end
    end
    return k
end
function GetMob()
    local tablegetmob = {}
    for i, v in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if not table.find(tablegetmob, v.Name) then
            table.insert(tablegetmob, v.Name)
        end
    end
    if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
        for i, v in pairs(tablegetmob) do
            local b = v
            v = tostring(v:gsub(" %pLv. %d+%p", ""))
            if v == CheckNameMobDoubleQuest() then
                return b
            end
        end
    else
        return CheckNameMobDoubleQuest()
    end
end

function CheckMobIsDie(NameMob)
    if NameMob.Humanoid.Health <= 0 or not v:FindFirstChild("HumanoidRootPart") or not v.Parent then
        return NameMob.Humanoid.Health <= 0 or not v:FindFirstChild("HumanoidRootPart") or not v.Parent
    end
end

Fastbeo = loadstring(game:HttpGet("https://raw.githubusercontent.com/SourceFullNightHub/ewihwg/main/8847hfgg"))()
function AttackFunction()
    Fastbeo:Attack()
end
function Click()
    local bc = game:GetService("VirtualUser")
    bc:CaptureController()
    bc:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
end

_G.S = {
    DelayAttack = 70,
    TimeWait = 5
}

function LoadSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("Night Hub") then
            makefolder("Night Hub")
        end
        if not isfolder("Night Hub/Blox Fruits/") then
            makefolder("Night Hub/Blox Fruits/")
        end
        if not isfile("Night Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            writefile(
                "Night Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json",
                game:GetService("HttpService"):JSONEncode(_G.S)
            )
        else
            local x =
                game:GetService("HttpService"):JSONDecode(
                readfile("Night Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json")
            )
            for y, z in pairs(x) do
                _G.S[y] = z
            end
        end
    else
        return
    end
end
function SaveSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfile("Night Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            LoadSettings()
        else
            local x =
                game:GetService("HttpService"):JSONDecode(
                readfile("Night Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json")
            )
            local A = {}
            for y, z in pairs(_G.S) do
                A[y] = z
            end
            writefile(
                "Night Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json",
                game:GetService("HttpService"):JSONEncode(A)
            )
        end
    else
        return
    end
end
LoadSettings()

spawn(
    function()
        while wait() do
            if FastNCooldown then
                Fastbeo:InputSetting(_G.S)
                Fastbeo:InputValue(_G.S.DelayAttack, _G.S.TimeWait)
                Fastbeo:Attack(true)
            else
                Fastbeo:Attack(false)
            end
        end
    end
)

task.spawn(function()
    while task.wait() do
        pcall(function()
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v.Humanoid.Health > 0 then
                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                        repeat task.wait()
                            FastNCooldown = true
                            Click()
                        until v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") or (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude > 100
                        FastNCooldown = false
                    end
                end
            end
        end)
    end
end)

function SendKeyEvents(c9, ca)
    if ca == nil then
        game:service("VirtualInputManager"):SendKeyEvent(true, c9, false, game)
        wait()
        game:service("VirtualInputManager"):SendKeyEvent(false, c9, false, game)
    else
        game:service("VirtualInputManager"):SendKeyEvent(true, c9, false, game)
        wait(ca)
        game:service("VirtualInputManager"):SendKeyEvent(false, c9, false, game)
    end
end

function CheckQuestVisible()
    if plr.PlayerGui.Main.Quest.Visible == true then
        return true
    end
    return false
end

function HopServer(bO)
    if not bO then
        bO = 10
    end
    ticklon = tick()
    repeat
        wait()
    until tick() - ticklon >= 1
    local function Hop()
        for r = 1, math.huge do
            if ChooseRegion == nil or ChooseRegion == "" then
                ChooseRegion = "Singapore"
            else
                plr.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = ChooseRegion
            end
            local bP = game.ReplicatedStorage.__ServerBrowser:InvokeServer(r)
            for k, v in pairs(bP) do
                if k ~= game.JobId and v["Count"] < bO then
                    game.ReplicatedStorage.__ServerBrowser:InvokeServer("teleport", k)
                end
            end
        end
        return false
    end
    if not getgenv().Loaded then
        local function bQ(v)
            if v.Name == "ErrorPrompt" then
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                        HopServer()
                        v.Visible = false
                    end
                end
                v:GetPropertyChangedSignal("Visible"):Connect(
                    function()
                        if v.Visible then
                            if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                HopServer()
                                v.Visible = false
                            end
                        end
                    end
                )
            end
        end
        for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
            bQ(v)
        end
        game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
        getgenv().Loaded = true
    end
    while not Hop() do
        wait()
    end
end

function CheckTextQuest(Tit)
    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, Tit) then
        return true
    end
    return false
end

CountQuestKill = 0
function KillPlayersQuest(LevelMin, LevelTrungbINH,  LevelHigh)
    if not CheckQuestVisible() then
        game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("PlayerHunter")
        CountQuestKill = CountQuestKill + 1
    elseif CheckQuestVisible() then
        local Cac = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat ", "")
        Cac = string.gsub(Cac, " %p(0/1)%p", "")
        if CheckQuestVisible() and not game:GetService("Workspace").Characters:FindFirstChild(Cac) then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        end
        if game.Players[Cac].Data.Level.Value < LevelMin or game.Players[Cac].Data.Level.Value < LevelTrungbINH or game.Players[Cac].Data.Level.Value >= LevelHigh then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            print(game.Players[Cac].Data.Level.Value)
        end
        if CountQuestKill >= 15 then
            HopServer()
        end
        if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
            for r, v in next, game:GetService("Workspace").Characters:GetChildren() do
                if v:IsA("Model") and v.Name == Cac then
                    if CheckTextQuest(v.Name) then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == false then
                            repeat wait()
                                EquipWeapon()
                                EnableBuso()                                            
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Humanoid.Health = 50
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(1 ,1 ,1)
                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 2, 2))
                                FastNCooldown = true
                                NoClip = true
                                if (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    SendKeyEvents("Z")
                                    SendKeyEvents("X")
                                    game:GetService "VirtualUser":CaptureController()
                                    game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                end
                            until game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true or v.Humanoid.Health <= 0 or not v.Parent or plr.Character.Humanoid.Health <= 0
                            NoClip = false
                            FastNCooldown = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                        end
                    end
                end
            end
        end
    end
end

function CheckSaberDoor()
    for r, v in next, game:GetService("Workspace").Map.Jungle.Final:GetChildren() do
        if v:IsA("Part") and not v.CanCollide then
            return true
        end
    end
end

function CheckButtonJungle()
    for r, v in pairs(game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren()) do
        if v:IsA("Model") then
            if v.Button:FindFirstChild("TouchInterest") then
                return v
            end
        end
    end
end

function CheckCup()
    return game.Workspace.Map.Desert.Burn.Part.CanCollide == false
end

function CheckInventory(OiOiOi)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == OiOiOi then
            return v
        end
    end
end

function StoreFruit()
    for i, v in pairs(plr.Backpack:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            local args = {
                [1] = "StoreFruit",
                [2] = v:GetAttribute("OriginalName"),
                [3] = v
            }
            game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        end
    end
    for i, v in pairs(plr.Character:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            local args = {
                [1] = "StoreFruit",
                [2] = v:GetAttribute("OriginalName"),
                [3] = v
            }
            game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        end
    end
end
function CheckKick(v)
    if v.Name == "ErrorPrompt" then
        if v.Visible then
            if v.TitleFrame.ErrorTitle.Text ~= "Teleport Failed" then
                game:GetService("TeleportService"):TeleportToPlaceInstance(
                    game.PlaceId,
                    game.JobId,
                    game.Players.LocalPlayer
                )
            end
        end
        v:GetPropertyChangedSignal("Visible"):Connect(
            function()
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text ~= "Teleport Failed" then
                        game:GetService("TeleportService"):TeleportToPlaceInstance(
                            game.PlaceId,
                            game.JobId,
                            game.Players.LocalPlayer
                        )
                    end
                end
            end
        )
    end
end
game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(CheckKick) 
spawn(
    function()
        while wait() do
            if not plr.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end
    end
)
function CheckNotifyComplete()
    for a, a in pairs(
        game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):GetChildren()
    ) do
        if a.Name == "NotificationTemplate" then
            if string.lower(a.Text):find("quest completed") then
                pcall(
                    function()
                        a:Destroy()
                    end
                )
                return true
            end
        end
    end
    return false
end
while task.wait() do
        if Sea1 then
            if IsLevel < 200 and not CheckInventory("Saber") then
                if IsLevel >= 1 and IsLevel <= 29 then
                    if CheckEnemies("Sky Bandit") then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Sky Bandit" then
                                if
                                        v:FindFirstChild("HumanoidRootPart") and
                                            v:FindFirstChild("Humanoid") and
                                            v.Humanoid.Health > 0
                                    then
                                        repeat wait()
                                            KillMob(v.Name)
                                            NoClip = true
                                        until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                        NoClip = false
                                    end
                                end
                            end
                        else
                            NoClip = true
                            Byp(CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625))
                        end
                    elseif IsLevel >= 30 and IsLevel <= 49 then
                        if CheckEnemies("Shanda") then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Shanda" then
                                    if
                                            v:FindFirstChild("HumanoidRootPart") and
                                                v:FindFirstChild("Humanoid") and
                                                v.Humanoid.Health > 0
                                        then
                                            repeat wait()
                                                KillMob(v.Name)
                                                NoClip = true
                                            until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                            NoClip = false
                                        end
                                    end
                                end
                            else
                                NoClip = true
                                Tween(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531))
                            end
                        elseif IsLevel >= 50 and IsLevel <= 300 and not CheckInventory("Saber") then
                            if not CheckNotifyComplete() then
                                KillPlayersQuest(20, 20, 150)
                            elseif CheckNotifyComplete() then
                                if CheckEnemies("Shanda") then
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Shanda" then
                                            if
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v:FindFirstChild("Humanoid") and
                                                    v.Humanoid.Health > 0
                                            then
                                                repeat wait()
                                                    KillMob(v.Name)
                                                    NoClip = true
                                                until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                NoClip = false
                                            end
                                        end
                                    end
                                else
                                    NoClip = true
                                    Tween(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531))
                                end
                            end
                        end
                    elseif IsLevel >= 200 and not CheckInventory("Saber") then
                        if not CheckSaberDoor() then
                            if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.CanCollide then
                                if CheckButtonJungle() then
                                    NoClip = true
                                    Tween(CheckButtonJungle().Button.CFrame)
                                end
                            else
                                if not CheckCup() then
                                    if
                                        not plr.Backpack:FindFirstChild("Torch") and
                                            not plr.Character:FindFirstChild("Torch")
                                    then
                                        Tween(game:GetService("Workspace").Map.Jungle.Torch.CFrame)
                                        wait(0.3)
                                        EquipTool("Torch")
                                    else
                                        NoClip = true
                                        Tween(
                                            CFrame.new(
                                                1114.61475,
                                                5.04679728,
                                                4350.22803,
                                                -0.648466587,
                                                -1.28799094e-09,
                                                0.761243105,
                                                -5.70652914e-10,
                                                1,
                                                1.20584542e-09,
                                                -0.761243105,
                                                3.47544882e-10,
                                                -0.648466587
                                            )
                                        )
                                    end
                                else
                                    if
                                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(
                                            "ProQuestProgress",
                                            "RichSon"
                                        ) ~= 0 and
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            ) ~= 1
                                    then
                                        print("lon")
                                        if
                                            not plr.Backpack:FindFirstChild("Cup") and
                                                not plr.Character:FindFirstChild("Cup")
                                        then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "GetCup"
                                            )
                                            wait(0.3)
                                            EquipTool("Cup")
                                            wait(0.5)
                                            Library:Notify(
                                                {
                                                    Title = "Night Hub",
                                                    Content = "Give the Cup to the thirsty old man",
                                                    Time = 1
                                                }
                                            )
                                            wait(0.3)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "FillCup",
                                                plr.Character.Cup
                                            )
                                            wait(0.3)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "SickMan"
                                            )
                                        end
                                    else
                                        if
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            ) == nil
                                        then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            )
                                        elseif
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            ) == 0
                                        then
                                            if CheckEnemies("Mob Leader") then
                                                KillMob("Mob Leader")
                                            else
                                                NoClip = true
                                                Tween(CFrame.new(-2967.59521, -4.91089821, 5328.70703))
                                            end
                                        elseif
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            ) == 1
                                        then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            )
                                            wait(0.1)
                                            EquipTool("Relic")
                                            wait(0.2)
                                            NoClip = true
                                            Tween(
                                                CFrame.new(
                                                    -1404.91504,
                                                    29.9773273,
                                                    3.80598116,
                                                    0.876514494,
                                                    5.66906877e-09,
                                                    0.481375456,
                                                    2.53851997e-08,
                                                    1,
                                                    -5.79995607e-08,
                                                    -0.481375456,
                                                    6.30572643e-08,
                                                    0.876514494
                                                )
                                            )
                                        end
                                    end
                                end
                            end
                        else
                            if CheckEnemies("Saber Expert") then
                                KillMob("Saber Expert")
                            else
                                if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                    if MobLevel1OrMobLevel2() then
                                        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == MobLevel1OrMobLevel2() then
                                                if
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                        v:FindFirstChild("Humanoid") and
                                                        v.Humanoid.Health > 0
                                                then
                                                    repeat wait()
                                                        KillMob(v.Name)
                                                        NoClip = true
                                                    until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                    NoClip = false
                                                end
                                            end
                                        end
                                    elseif not MobLevel1OrMobLevel2() then
                                        p2 = GetMobSpawnList(GetMob())
                                        for i, v in pairs(p2) do
                                            NoClip = true
                                            Tween(v.CFrame * CFrame.new(2, 20, 2))
                                        end
                                    end
                                end
                            end
                        end
                    elseif IsLevel >= 200 and CheckInventory("Saber") then
                        if IsLevel >= 300 and IsLevel <= 349 and not CheckInventory("Saber") then
                            if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                if MobLevel1OrMobLevel2() then
                                    for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == MobLevel1OrMobLevel2() then
                                            if
                                                v:FindFirstChild("HumanoidRootPart") and
                                                    v:FindFirstChild("Humanoid") and
                                                    v.Humanoid.Health > 0
                                            then
                                                repeat wait()
                                                    KillMob(v.Name)
                                                    NoClip = true
                                                until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                NoClip = false
                                            end
                                        end
                                    end
                                elseif not MobLevel1OrMobLevel2() then
                                    p2 = GetMobSpawnList(GetMob())
                                    for i, v in pairs(p2) do
                                        NoClip = true
                                        Tween(v.CFrame * CFrame.new(2, 20, 2))
                                    end
                                end
                            else
                                NoClip = true
                                GetQuest()
                            end
                    elseif IsLevel >= 350 and IsLevel <= 414 then
                        if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                            if MobLevel1OrMobLevel2() then
                                for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == MobLevel1OrMobLevel2() then
                                        if
                                            v:FindFirstChild("HumanoidRootPart") and
                                                v:FindFirstChild("Humanoid") and
                                                v.Humanoid.Health > 0
                                        then
                                            repeat wait()
                                                KillMob(v.Name)
                                                NoClip = true
                                            until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                            NoClip = false
                                        end
                                    end
                                end
                            elseif not MobLevel1OrMobLevel2() then
                                p2 = GetMobSpawnList(GetMob())
                                for i, v in pairs(p2) do
                                    NoClip = true
                                    Tween(v.CFrame * CFrame.new(2, 20, 2))
                                end
                            end
                        else
                            NoClip = true
                            GetQuest()
                        end
                    elseif IsLevel >= 415 and IsLevel <= 424 then
                        if not CheckNotifyComplete() then
                            KillPlayersQuest(20, 150, 500)
                        elseif CheckNotifyComplete() then
                            if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                if MobLevel1OrMobLevel2() then
                                    for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == MobLevel1OrMobLevel2() then
                                            if
                                                v:FindFirstChild("HumanoidRootPart") and
                                                    v:FindFirstChild("Humanoid") and
                                                    v.Humanoid.Health > 0
                                            then
                                                repeat wait()
                                                    KillMob(v.Name)
                                                    NoClip = true
                                                until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                NoClip = false
                                            end
                                        end
                                    end
                                elseif not MobLevel1OrMobLevel2() then
                                    p2 = GetMobSpawnList(GetMob())
                                    for i, v in pairs(p2) do
                                        NoClip = true
                                        Tween(v.CFrame * CFrame.new(2, 20, 2))
                                    end
                                end
                            else
                                NoClip = true
                                GetQuest()
                            end
                        end
                    elseif IsLevel >= 425 and IsLevel <= 474 then
                        if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                            if MobLevel1OrMobLevel2() then
                                for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == MobLevel1OrMobLevel2() then
                                        if
                                            v:FindFirstChild("HumanoidRootPart") and
                                                v:FindFirstChild("Humanoid") and
                                                v.Humanoid.Health > 0
                                        then
                                            repeat wait()
                                                KillMob(v.Name)
                                                NoClip = true
                                            until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                            NoClip = false
                                        end
                                    end
                                end
                            elseif not MobLevel1OrMobLevel2() then
                                p2 = GetMobSpawnList(GetMob())
                                for i, v in pairs(p2) do
                                    NoClip = true
                                    Tween(v.CFrame * CFrame.new(2, 20, 2))
                                end
                            end
                        else
                            NoClip = true
                            GetQuest()
                        end
                    elseif IsLevel >= 475 and IsLevel <= 480 then
                        if not CheckNotifyComplete() then
                            KillPlayersQuest(20, 150, 500)
                        elseif CheckNotifyComplete() then
                            if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                if MobLevel1OrMobLevel2() then
                                    for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == MobLevel1OrMobLevel2() then
                                            if
                                                v:FindFirstChild("HumanoidRootPart") and
                                                    v:FindFirstChild("Humanoid") and
                                                    v.Humanoid.Health > 0
                                            then
                                                repeat wait()
                                                    KillMob(v.Name)
                                                    NoClip = true
                                                until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                NoClip = false
                                            end
                                        end
                                    end
                                elseif not MobLevel1OrMobLevel2() then
                                    p2 = GetMobSpawnList(GetMob())
                                    for i, v in pairs(p2) do
                                        NoClip = true
                                        Tween(v.CFrame * CFrame.new(2, 20, 2))
                                    end
                                end
                            else
                                NoClip = true
                                GetQuest()
                            end
                        elseif IsLevel >= 481 and IsLevel <= 499 then
                            if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                if MobLevel1OrMobLevel2() then
                                    for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == MobLevel1OrMobLevel2() then
                                            if
                                                v:FindFirstChild("HumanoidRootPart") and
                                                    v:FindFirstChild("Humanoid") and
                                                    v.Humanoid.Health > 0
                                            then
                                                repeat wait()
                                                    KillMob(v.Name)
                                                    NoClip = true
                                                until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                NoClip = false
                                            end
                                        end
                                    end
                                elseif not MobLevel1OrMobLevel2() then
                                    p2 = GetMobSpawnList(GetMob())
                                    for i, v in pairs(p2) do
                                        NoClip = true
                                        Tween(v.CFrame * CFrame.new(2, 20, 2))
                                    end
                                end
                            else
                                NoClip = true
                                GetQuest()
                            end
                        elseif IsLevel >= 500 and IsLevel <= 511 then
                            if not CheckNotifyComplete() then
                                KillPlayersQuest(20, 150, 600)
                            elseif CheckNotifyComplete() then
                                if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                    if MobLevel1OrMobLevel2() then
                                        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == MobLevel1OrMobLevel2() then
                                                if
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                        v:FindFirstChild("Humanoid") and
                                                        v.Humanoid.Health > 0
                                                then
                                                    repeat wait()
                                                        KillMob(v.Name)
                                                        NoClip = true
                                                    until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                    NoClip = false
                                                end
                                            end
                                        end
                                    elseif not MobLevel1OrMobLevel2() then
                                        p2 = GetMobSpawnList(GetMob())
                                        for i, v in pairs(p2) do
                                            NoClip = true
                                            Tween(v.CFrame * CFrame.new(2, 20, 2))
                                        end
                                    end
                                else
                                    NoClip = true
                                    GetQuest()
                                end
                            elseif IsLevel >= 550 and IsLevel <= 560 then
                                if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                    if MobLevel1OrMobLevel2() then
                                        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == MobLevel1OrMobLevel2() then
                                                if
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                        v:FindFirstChild("Humanoid") and
                                                        v.Humanoid.Health > 0
                                                then
                                                    repeat wait()
                                                        KillMob(v.Name)
                                                        NoClip = true
                                                    until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                    NoClip = false
                                                end
                                            end
                                        end
                                    elseif not MobLevel1OrMobLevel2() then
                                        p2 = GetMobSpawnList(GetMob())
                                        for i, v in pairs(p2) do
                                            NoClip = true
                                            Tween(v.CFrame * CFrame.new(2, 20, 2))
                                        end
                                    end
                                else
                                    NoClip = true
                                    GetQuest()
                                end
                            elseif IsLevel >= 561 and IsLevel <= 600 then
                                if not CheckNotifyComplete() then
                                    KillPlayersQuest(20, 150, 600)
                                elseif CheckNotifyComplete() then
                                    if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                        if MobLevel1OrMobLevel2() then
                                            for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == MobLevel1OrMobLevel2() then
                                                    if
                                                        v:FindFirstChild("HumanoidRootPart") and
                                                            v:FindFirstChild("Humanoid") and
                                                            v.Humanoid.Health > 0
                                                    then
                                                        repeat wait()
                                                            KillMob(v.Name)
                                                            NoClip = true
                                                        until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                        NoClip = false
                                                    end
                                                end
                                            end
                                        elseif not MobLevel1OrMobLevel2() then
                                            p2 = GetMobSpawnList(GetMob())
                                            for i, v in pairs(p2) do
                                                NoClip = true
                                                Tween(v.CFrame * CFrame.new(2, 20, 2))
                                            end
                                        end
                                    else
                                        NoClip = true
                                        GetQuest()
                                    end
                                elseif IsLevel >= 601 and IsLevel <= 699 then
                                    if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                        if MobLevel1OrMobLevel2() then
                                            for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == MobLevel1OrMobLevel2() then
                                                    if
                                                        v:FindFirstChild("HumanoidRootPart") and
                                                            v:FindFirstChild("Humanoid") and
                                                            v.Humanoid.Health > 0
                                                    then
                                                        repeat wait()
                                                            KillMob(v.Name)
                                                            NoClip = true
                                                        until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                        NoClip = false
                                                    end
                                                end
                                            end
                                        elseif not MobLevel1OrMobLevel2() then
                                            p2 = GetMobSpawnList(GetMob())
                                            for i, v in pairs(p2) do
                                                NoClip = true
                                                Tween(v.CFrame * CFrame.new(2, 20, 2))
                                            end
                                        end
                                    else
                                        NoClip = true
                                        GetQuest()
                                    end
                                elseif IsLevel >= 700 then
                                    if game.Workspace.Map.Ice.Door.CanCollide then
                                        if not plr.Backpack:FindFirstChild("Key") and not plr.Character:FindFirstChild("Key") then
                                            if CheckDistancebehon(CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359), 5) then
                                                game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer(
                                                    "DressrosaQuestProgress",
                                                    "Detective"
                                                )
                                                Library:Notify(
                                                    {
                                                        Title = "Night Hub",
                                                        Content = "Ask To NPC In Prison",
                                                        Time = 1
                                                    }
                                                )
                                                wait(0.1)
                                                EquipTool("Key")
                                            else
                                                NoClip = true
                                                Tween(CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359))
                                            end
                                        else
                                            NoClip = true
                                            EquipTool("Key")
                                            if plr.Character:FindFirstChild("Key") then
                                                Tween(game.Workspace.Map.Ice.Door.CFrame)
                                                Library:Notify(
                                                    {
                                                        Title = "Night Hub",
                                                        Content = "Teleport Ice Door",
                                                        Time = 1
                                                    }
                                                )
                                            end
                                        end
                                    elseif not game.Workspace.Map.Ice.Door.CanCollide then
                                        if CheckEnemies("Ice Admiral") then
                                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == "Ice Admiral" then
                                                    if v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") then
                                                        repeat wait()
                                                            NoClip = true
                                                            KillMob(v.Name)
                                                        until CheckMobIsDie(v)
                                                        NoClip = false
                                                    end
                                                end
                                            end
                                        else
                                            NoClip = true
                                            Tween(game.Workspace.Map.Ice.Door.CFrame)
                                        end
                                    end
                                end
                            end
                        end
                    end
                elseif Sea2 then
                    if IsLevel >= 700 and IsLevel <= 849 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BartiloQuestProgress",
                        "Bartilo"
                    ) ~= 3 then
                        if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                            if MobLevel1OrMobLevel2() then
                                for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == MobLevel1OrMobLevel2() then
                                        if
                                            v:FindFirstChild("HumanoidRootPart") and
                                                v:FindFirstChild("Humanoid") and
                                                v.Humanoid.Health > 0
                                        then
                                            repeat wait()
                                                KillMob(v.Name)
                                                NoClip = true
                                            until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                            NoClip = false
                                        end
                                    end
                                end
                            elseif not MobLevel1OrMobLevel2() then
                                p2 = GetMobSpawnList(GetMob())
                                for i, v in pairs(p2) do
                                    NoClip = true
                                    Tween(v.CFrame * CFrame.new(2, 20, 2))
                                end
                            end
                        else
                            NoClip = true
                            GetQuest()
                        end
                    elseif IsLevel >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BartiloQuestProgress",
                        "Bartilo"
                    ) ~= 3 then
                        if
                                    game:GetService("Players").LocalPlayer.Data.Level.Value >= 850 and
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BartiloQuestProgress",
                                            "Bartilo"
                                        ) == 0
                                then
                                    if
                                        CheckTextQuest("Swan Pirates") and CheckTextQuest("50") and CheckQuestVisible() and
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "BartiloQuestProgress",
                                                "Bartilo"
                                            ) == 0
                                    then
                                        if CheckEnemies("Swan Pirate") then
                                            repeat
                                                wait()
                                                KillMob("Swan Pirate")
                                                NoClip = true
                                            until game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "BartiloQuestProgress",
                                                "Bartilo"
                                            ) ~= 0 or CheckMobIsDie(WS.Enemies:FindFirstChild("Swan Pirate")) 
                                            NoClip = false
                                        else
                                            Tween(CFrame.new(932.624451, 156.106079, 1180.27466))
                                        end
                                    else
                                        TakeQuest(CFrame.new(-456.28952, 73.0200958, 299.895966), "BartiloQuest", 1)
                                    end
                                elseif
                                    game:GetService("Players").LocalPlayer.Data.Level.Value >= 850 and
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BartiloQuestProgress",
                                            "Bartilo"
                                        ) == 1
                                then
                                    if CheckEnemies("Jeremy") then
                                        repeat wait()
                                            KillMob("Jeremy")
                                            NoClip = true
                                        until CheckMobIsDie(WS.Enemies:FindFirstChild("Swan Pirate")) 
                                        NoClip = false
                                    elseif CheckBoss("Jeremy") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BartiloQuestProgress",
                                            "Bartilo"
                                        )
                                        Tween(CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109))
                                    elseif
                                        not CheckBoss("Jeremy") and not CheckBoss("Jeremy") and
                                            (CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109).Position -
                                                plr.Character.HumanoidRootPart.Position).Magnitude <= 10
                                    then
                                        notify("Script", "Change Server to Find 'Jeremy' Boss", 5)
                                        wait(5)
                                        HopServer()
                                    else
                                        Tween(CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109))
                                    end
                                elseif
                                    game:GetService("Players").LocalPlayer.Data.Level.Value >= 850 and
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BartiloQuestProgress",
                                            "Bartilo"
                                        ) == 2
                                then
                                    repeat
                                        NoClip = true
                                        Tween(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                                        wait()
                                    until 
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                                            NoClip = false
                                    wait(1)
                                    repeat
                                        NoClip = true
                                        Tween(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                                        wait()
                                    until 
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                                            NoClip = false
                                    wait(1)
                                    repeat
                                        NoClip = true
                                        Tween(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                                        wait()
                                    until 
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                                            NoClip = false
                                    wait(1)
                                    repeat
                                        NoClip = true
                                        Tween(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                                        wait()
                                    until 
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                                            NoClip = false
                                    wait(1)
                                    repeat
                                        NoClip = true
                                        Tween(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                                        wait()
                                    until 
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                                            NoClip = false
                                    wait(1)
                                    repeat
                                        NoClip = true
                                        Tween(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                                        wait()
                                    until 
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                                            NoClip = false
                                    wait(1)
                                    repeat
                                        NoClip = true
                                        Tween(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                                        wait()
                                    until 
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                                            NoClip = false
                                    wait(1)
                                    repeat
                                        NoClip = true
                                        Tween(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                                        wait()
                                    until 
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                                            NoClip = false
                                end
                            elseif IsLevel >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BartiloQuestProgress",
                                "Bartilo"
                            ) == 3 then
                                if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                    if MobLevel1OrMobLevel2() then
                                        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == MobLevel1OrMobLevel2() then
                                                if
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                        v:FindFirstChild("Humanoid") and
                                                        v.Humanoid.Health > 0
                                                then
                                                    repeat wait()
                                                        KillMob(v.Name)
                                                        NoClip = true
                                                    until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                                                    NoClip = false
                                                end
                                            end
                                        end
                                    elseif not MobLevel1OrMobLevel2() then
                                        p2 = GetMobSpawnList(GetMob())
                                        for i, v in pairs(p2) do
                                            NoClip = true
                                            Tween(v.CFrame * CFrame.new(2, 20, 2))
                                        end
                                    end
                                else
                                    NoClip = true
                                    GetQuest()
                                end
                            end
                        end
                    end
            end
