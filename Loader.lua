local Library = loadstring(game:HttpGet("https://pastebin.com/raw/us155g5j"))()
local ThemeManager = loadstring(game:HttpGet('https://pastebin.com/raw/9p06pghh'))()
local SaveManager = loadstring(game:HttpGet('https://pastebin.com/raw/9MwnfUrA'))()

local Window = Library:CreateWindow({
Title = "Danny_Hub_Script Hub | "..os.date("%A, %B %dth, %Y."),
AutoShow = true,
Center = true,
})
task.spawn(function()
while task.wait() do
Window:SetWindowTitle("Danny Hub - Meme Sea | "..os.date("%A, %B %dth, %Y."))
end
end)

local Tabs = {
["GeneralTab"] = Window:AddTab("General"),
["VisualTab"] = Window:AddTab("Visual"),
["CongratulationTab"] = Window:AddTab("Congratulation"),
}

local https = game.HttpService
local filename = 'Danny_Hub_Script_' .. game.Players.LocalPlayer.Name .. ".json"
function loadconfig()
if (readfile and isfile and isfile('Danny_Hub_Script/' .. filename)) then
_G.Config = https:JSONDecode(readfile('Danny_Hub_Script/' .. filename))
end end
    
if not _G.Config then
loadconfig()
end
    
function Saveconfig()
local json;
if isfolder("Danny_Hub_Script") == false then
makefolder("Danny_Hub_Script")
end
if (writefile) then
local json = https:JSONEncode(_G.Config)
writefile('Danny_Hub_Script/' .. filename,json)
end end
    
if not _G.Config then
_G.Config = {
  ["Main"] = {
    ["Auto Farm Level"] = false,
    ["Auto Farm Nearest"] = false,
    ["Auto Awakening Orb"] = false,
  },
  ["Setting"] = {
    ["Select Weapon"] = "Melee",
    ["Select Framing Method"] = "Upper",
    ["Bring Monster"] = true,
    ["Enable Aura"] = false,
  },
  ["Quest"] = {
    ["Auto Cool Floppa"] = false,
    ["Auto Popcat"] = false,
  },
  ["Stats"] = {
    ["Select Stats"] = "nil",
    ["Enable"] = false,
    ["Point Stats"] = 3,
  },
  ["Enemie"] = {
    ["Select Enemie"] = "nil",
    ["Auto Farm Enemie"] = false,
  },
  ["MemeBeast"] = {
    ["Auto Farm Meme Beast"] = false,
    ["Auto Farm Meme Beast Hop"] = false,
  },
  ["GiantPumpkin"] = {
    ["Auto Farm Giant Pumpkin"] = false,
    ["Spawn Giant Pumpkin"] = false,
  },
  ["EvilNoob"] = {
    ["Auto Farm Evil Noob"] = false,
    ["Spawn Evil Noob"] = false,
  },
  ["LordSus"] = {
    ["Auto Farm Lord Sus"] = false,
    ["Spawn Lord Sus"] = false,
  },
  ["Dungeon"] = {
    ["Auto Farm Dungeon"] = false,
  },
  ["Island"] = {
    ["Select Island"] = "",
    ["Teleport Island"] = false,
  },
  ["PowerFruit"] = {
    ["Random Fruit"] = false,
    ["Store Fruit"] = false,
    ["Grab Fruit"] = false,
  },
}
end

local MainTab = Tabs["GeneralTab"]:AddLeftGroupbox("\\\\ Farming //")

MainTab:AddToggle('', {Text = "Auto Farm Level",Default = _G.Config["Main"]["Auto Farm Level"],}):OnChanged(function(Value)
Farm_Lv = Value
_G.Config["Main"]["Auto Farm Level"] =  Value
Saveconfig()
end)

MainTab:AddToggle('', {Text = "Auto Farm Nearest",Default = _G.Config["Main"]["Auto Farm Nearest"],}):OnChanged(function(Value)
NearestFarm = Value
_G.Config["Main"]["Auto Farm Nearest"] =  Value
Saveconfig()
end)

MainTab:AddToggle('', {Text = "Auto Awakening Orb",Default = _G.Config["Main"]["Auto Awakening Orb"],}):OnChanged(function(Value)
AwkOrb = Value
_G.Config["Main"]["Auto Awakening Orb"] =  Value
Saveconfig()
end)

local QuestTab = Tabs["GeneralTab"]:AddLeftGroupbox("\\\\ Quest //")

QuestTab:AddToggle('', {Text = "Auto Cool Floppa",Default = _G.Config["Quest"]["Auto Cool Floppa"],}):OnChanged(function(Value)
_G.CoolFloppa = Value
ATQuest = Value
_G.Config["Quest"]["Auto Cool Floppa"] =  Value
Saveconfig()
end)

QuestTab:AddToggle('', {Text = "Auto Popcat",Default = _G.Config["Quest"]["Auto Popcat"],}):OnChanged(function(Value)
_G.Popcat = Value
ATQuest = Value
_G.Config["Quest"]["Auto Popcat"] =  Value
Saveconfig()
end)

local SettingTab = Tabs["GeneralTab"]:AddRightGroupbox("\\\\ Setting - Farming //")

SettingTab:AddDropdown('', {Values = {"Melee", "Sword",},Default = _G.Config["Setting"]["Select Weapon"],Text = "Select Weapon / Combat : ",}):OnChanged(function(Value)
SelectWeapon = Value
_G.Config["Setting"]["Select Weapon"] = Value
Saveconfig()
end)

SettingTab:AddDropdown('', {Values = {"Upper","Behind","Below"},Default = _G.Config["Setting"]["Select Framing Method"],Text = "Select Framing Method : ",}):OnChanged(function(Value)
_G.Method = Value
_G.Config["Setting"]["Select Framing Method"] = Value
Saveconfig()
end)

SettingTab:AddToggle('', {Text = " - Bring Monster",Default = _G.Config["Setting"]["Bring Monster"],}):OnChanged(function(Value)
BringMobF = Value
_G.Config["Setting"]["Bring Monster"] =  Value
Saveconfig()
end)

SettingTab:AddToggle('', {Text = " - Enable Aura",Default = _G.Config["Setting"]["Enable Aura"],}):OnChanged(function(Value)
ActiceAura = Value
_G.Config["Setting"]["Enable Aura"] =  Value
Saveconfig()
end)

SettingTab:AddToggle('', {Text = " - Enable Aura",Default = _G.Config["Setting"]["Enable Aura"],}):OnChanged(function(Value)
ActiceAura = Value
_G.Config["Setting"]["Enable Aura"] =  Value
Saveconfig()
end)

SettingTab:AddButton('[ Redeem All Code ]', function()
		pcall(function()
			for i, v in pairs(require(game:GetService("ReplicatedStorage").ModuleScript.CodeList)) do
				if not game:GetService("Players").LocalPlayer.Code:FindFirstChild(i) then
					game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Code"):InvokeServer(i)
				end
			end
		end)
end)

local UpdateTab = Tabs["GeneralTab"]:AddRightGroupbox("\\\\ Auto Update Stats //")

UpdateTab:AddDropdown('', {Values = {"Melee", "Health", "Weapon","Power"},Default = _G.Config["Stats"]["Select Stats"],Text = "Select Update Stats : ",}):OnChanged(function(Value)
_G.SelectStats = Value
_G.Config["Stats"]["Select Stats"] = Value
Saveconfig()
end)

UpdateTab:AddToggle('', {Text = " - Enable",Default = _G.Config["Stats"]["Enable"],}):OnChanged(function(Value)
_G.UpStats = Value
_G.Config["Stats"]["Enable"] =  Value
Saveconfig()
end)

UpdateTab:AddSlider('', {Text = '[ Point Stats ] ',Default = _G.Config["Stats"]["Point Stats"],Min = 0,Max = 2400,Rounding = 0,Compact = true,}):OnChanged(function(Value)
Point = Value
_G.Config["Stats"]["Point Stats"] = Value
Saveconfig()
end)

local EnemieTab = Tabs["GeneralTab"]:AddLeftGroupbox("\\\\ Enemie //")

local MS = {
	["Floppa"] = 1,
	["Golden Floppa"] = 2,
	["Big Floppa"] = 3,
	["Doge"] = 4,
	["Cheems"] = 5,
	["Walter Dog"] = 6,
	["Staring Fish"] = 7,
	["Hamster"] = 8,
	["Snow Tree"] = 9,
	["The Rock"] = 10,
	["Banana Cat"] = 11,
	["Sus Face"] = 12,
	["Egg Dog"] = 13,
	["Popcat"] = 14,
	["Gorilla King"] = 15,
	["Smiling Cat"] = 16,
	["Killerfish"] = 17,
	["Bingus"] = 18,
	["Obamid"] = 19,
	["Floppy"] = 20,
	["Creepy Head"] = 21,
	["Scary Skull"] = 22,
	["Giant Pumpkin"] = 23,
	["Pink Absorber"] = 24,
	["Troll Face"] = 25,
	["Uncanny Cat"] = 26,
	["Quandale Dingle"] = 27,
	["Moai"] = 28,
	["Evil Noob"] = 29,
	["Red Sus"] = 30,
	["Sus Duck"] = 31,
	["Lord Sus"] = 32,
	["Sigma Man"] = 33,
	["Dancing Cat"] = 34,
	["Toothless Dragon"] = 35,
	["Manly Nugget"] = 36,
	["Huh Cat"] = 37,
	["Mystical Tree"] = 38,
	["Old Man"] = 39,
	["Nyan Cat"] = 40,
	["Baller"] = 41,
	["Slicer"] = 42,
	["Rick Roller"] = 43,
	["Gigachad"] = 44,
	["MrBeast"] = 45,
	["Handsome Man"] = 46
}

local MonsterList = {}
for i, v in next,MS do
	table.insert(MonsterList,i)
end

EnemieTab:AddDropdown('', {Values = MonsterList,Default = _G.Config["Enemie"]["Select Enemie"],Text = "Select Framing Monster : ",}):OnChanged(function(Value)
SelectMonster = Value
_G.Config["Enemie"]["Select Enemie"] = Value
Saveconfig()
end)

EnemieTab:AddToggle('', {Text = "Auto Farm Monster",Default = _G.Config["Enemie"]["Auto Farm Enemie"],}):OnChanged(function(Value)
FarmMonster = Value
_G.Config["Enemie"]["Auto Farm Enemie"] =  Value
Saveconfig()
end)

local MemeTab = Tabs["GeneralTab"]:AddLeftGroupbox("\\\\ Meme Best //")

local mb = MemeTab:AddLabel('..')

MemeTab:AddToggle('', {Text = "Auto Farm Meme Beast",Default = _G.Config["MemeBeast"]["Auto Farm Meme Beast"],}):OnChanged(function(Value)
MemeBeast = Value
_G.Config["MemeBeast"]["Auto Farm Meme Beast"] =  Value
Saveconfig()
end)

MemeTab:AddToggle('', {Text = "Auto Farm Meme Beast Hop",Default = _G.Config["MemeBeast"]["Auto Farm Meme Beast Hop"],}):OnChanged(function(Value)
MemeBeastHop = Value
_G.Config["MemeBeast"]["Auto Farm Meme Beast Hop"] =  Value
Saveconfig()
end)

local GiantTab = Tabs["GeneralTab"]:AddLeftGroupbox("\\\\ Giant Pumpkin //")

local gp = GiantTab:AddLabel('..')

GiantTab:AddToggle('', {Text = "Auto Farm Giant Pumpkin",Default = _G.Config["GiantPumpkin"]["Auto Farm Giant Pumpkin"],}):OnChanged(function(Value)
_G.PumpkinBoss = Value
AutoFarmBossPumpkin = Value
AutoItemBosspumpkin = Value
_G.Config["GiantPumpkin"]["Auto Farm Giant Pumpkin"] =  Value
Saveconfig()
end)

GiantTab:AddToggle('', {Text = "Spawn Giant Pumpkin",Default = _G.Config["GiantPumpkin"]["Spawn Giant Pumpkin"],}):OnChanged(function(Value)
_G.PumpkinBoss = Value
AutoSpawnBossPumpkin = Value
_G.Config["GiantPumpkin"]["Spawn Giant Pumpkin"] =  Value
Saveconfig()
end)

local EvilTab = Tabs["GeneralTab"]:AddLeftGroupbox("\\\\ Evil Noob //")

local en = EvilTab:AddLabel('..')

EvilTab:AddToggle('', {Text = "Auto Farm Evil Noob",Default = _G.Config["EvilNoob"]["Auto Farm Evil Noob"],}):OnChanged(function(Value)
_G.EvilNoobboss = Value
AutoFarmBossEvil = Value
AutoItemBossEvil = Value
_G.Config["EvilNoob"]["Auto Farm Evil Noob"] =  Value
Saveconfig()
end)

EvilTab:AddToggle('', {Text = "Spawn Evil Noob",Default = _G.Config["EvilNoob"]["Spawn Evil Noob"],}):OnChanged(function(Value)
_G.EvilNoobboss = Value
AutoSpawnBossEvil = Value
_G.Config["EvilNoob"]["Spawn Evil Noob"] =  Value
Saveconfig()
end)

local LordTab = Tabs["GeneralTab"]:AddLeftGroupbox("\\\\ Lord Sus //")

local ls = LordTab:AddLabel('..')

LordTab:AddToggle('', {Text = "Auto Farm Lord Sus",Default = _G.Config["LordSus"]["Auto Farm Lord Sus"],}):OnChanged(function(Value)
_G.LordBoss = Value
AutoFarmBossLord = Value
AutoItemBossLord = Value
_G.Config["LordSus"]["Auto Farm Lord Sus"] =  Value
Saveconfig()
end)

LordTab:AddToggle('', {Text = "Spawn Lord Sus",Default = _G.Config["LordSus"]["Spawn Lord Sus"],}):OnChanged(function(Value)
_G.EvilNoobboss = Value
_G.LordBoss = Value
AutoSpawnLord = Value
_G.Config["LordSus"]["Spawn Lord Sus"] =  Value
Saveconfig()
end)

local DungeonTab = Tabs["GeneralTab"]:AddRightGroupbox("\\\\ Dungeon //")

DungeonTab:AddToggle('', {Text = "Auto Farm Dungeon",Default = _G.Config["Dungeon"]["Auto Farm Dungeon"],}):OnChanged(function(Value)
ATRaid = Value
_G.Config["Dungeon"]["Auto Farm Dungeon"] =  Value
Saveconfig()
end)

local IslandTab = Tabs["VisualTab"]:AddLeftGroupbox("\\\\ Island //")

function GetPosition()
	local ss = {}
	for i, v in next, workspace:WaitForChild("Location"):WaitForChild("SpawnLocations"):GetChildren() do
		if not table.find(ss, v.Name) then
			table.insert(ss, v.Name)
		end
	end
	return ss
end

IslandTab:AddDropdown('', {Values = GetPosition(),Default = _G.Config["Island"]["Select Island"],Text = "Select Teleport Island : ",}):OnChanged(function(Value)
SelectIsland = Value
_G.Config["Island"]["Select Island"] = Value
Saveconfig()
end)

IslandTab:AddToggle('', {Text = "Teleport Island",Default = _G.Config["Island"]["Teleport Island"],}):OnChanged(function(Value)
InstanceTeleport = Value
if InstanceTeleport then
TP(workspace:WaitForChild("Location").SpawnLocations[SelectIsland].CFrame)
end
_G.Config["Island"]["Teleport Island"] =  Value
Saveconfig()
end)

local FruitTab = Tabs["VisualTab"]:AddRightGroupbox("\\\\ Power Fruit //")

FruitTab:AddToggle('', {Text = "Random Fruit",Default = _G.Config["PowerFruit"]["Random Fruit"],}):OnChanged(function(Value)
RandomFruit = Value
_G.Config["PowerFruit"]["Random Fruit"] =  Value
Saveconfig()
end)

FruitTab:AddToggle('', {Text = "Store Fruit",Default = _G.Config["PowerFruit"]["Store Fruit"],}):OnChanged(function(Value)
StoreFruit = Value
_G.Config["PowerFruit"]["Store Fruit"] =  Value
Saveconfig()
end)

FruitTab:AddToggle('', {Text = "Grab Fruit",Default = _G.Config["PowerFruit"]["Grab Fruit"],}):OnChanged(function(Value)
BringFruit = Value
_G.Config["PowerFruit"]["Grab Fruit"] =  Value
Saveconfig()
end)

function Getnamequest()
	local a = require(game:GetService("ReplicatedStorage").ModuleScript.Quest_Settings)
	local level = game:GetService("Players").LocalPlayer.PlayerData.Level.Value

	local closestQuest = nil
	local closestDifference = math.huge

	for i, v in pairs(a) do
		if v.LevelNeed <= level and not v.Special_Quest and v.LevelNeed ~= 1100 and v.LevelNeed ~= 1550 and v.LevelNeed ~= 1400 and string.find(i, "Floppa Quest") then
			local difference = level - v.LevelNeed
			if difference <= closestDifference then
				closestQuest = i
				closestDifference = difference
			end
		end
	end
	return closestQuest
end

function Getmob()
	local a = require(game:GetService("ReplicatedStorage").ModuleScript.Quest_Settings)
	local level = game:GetService("Players").LocalPlayer.PlayerData.Level.Value

	local mob = nil
	local closestDifference = math.huge

	for i, v in pairs(a) do
		if v.LevelNeed <= level and not v.Special_Quest and v.LevelNeed ~= 1100 and v.LevelNeed ~= 1550 and v.LevelNeed ~= 1400 and string.find(i, "Floppa Quest") then
			local difference = level - v.LevelNeed
			if difference <= closestDifference then
				mob = v.Target
				closestDifference = difference
			end
		end
	end
	return mob
end

function DetectQuest()
	if game.workspace.Location.QuestLocaion:FindFirstChild(Getnamequest()) then
		for i, v in pairs(game.workspace.Location.QuestLocaion:GetChildren()) do
			if v.Name == Getnamequest() then
				return v.CFrame, v
			end
		end
	else
		for i, v in pairs(workspace.NPCs.Quests_Npc:GetChildren()) do
			if v.Name == Getnamequest() then
				return v.WorldPivot, v
			end
		end
	end
end

function Getquest()
	local QuestPos, Quest = DetectQuest()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = QuestPos
	local PromptQuest = workspace.NPCs.Quests_Npc:FindFirstChild(Quest.Name)
	if PromptQuest then
		if game.Players.LocalPlayer:DistanceFromCharacter(PromptQuest.Block.Position) < 8 then
			if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ProximityPrompts") and game:GetService("Players").LocalPlayer.PlayerGui.ProximityPrompts:FindFirstChild("Prompt") and game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false then
				fireproximityprompt(PromptQuest.Block.QuestPrompt)
			end
		end
	end
end

function DetectMob()
	for i, v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
		if v.Name == Getmob() and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
			return v
		end
	end
end

function FarmMon(v)
	if v:FindFirstChild("Humanoid") then
		if v.Humanoid.Health > 0 then
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.PrimaryPart.CFrame * CFrame.new(0, DistanceFarm, 0) * CFrame.Angles(math.rad(-90), 0, 0))
		end
	end
end

function TP(p)
	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(p)
end

function EquipWeapon(ToolSe)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) and not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
		local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
		wait()
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end

function MagX(MagDis)
	if MagZ then
		return MagZ(MagDis)
	else
		return (MagDis.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200
	end
end
function BringMob(pos)
	for i, v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
		if v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - pos.Position).Magnitude <= 300 then
			if v:FindFirstChildOfClass("Humanoid") then
				local humanoid = v.Humanoid
				if humanoid:FindFirstChild("Animator") then
					humanoid.Animator:Destroy()
				end

				if MagX(v.HumanoidRootPart) then
					v.HumanoidRootPart.CFrame = pos
					v.Humanoid:ChangeState(14)
					for _, part in ipairs(v:GetDescendants()) do
						if part:IsA("BasePart") then
							part.CanCollide = false
						end
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
					setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
				end
			end
		end
	end
end

function Useskill(weapon, skill)
	if getgenv().posaim then
		local args = {
			[1] = workspace:WaitForChild("Character"):WaitForChild(game.Players.LocalPlayer.Name),
			[2] = weapon,
			[3] = skill,
			[4] = "Hold",
			[5] = {
				["Mouse_Position"] = getgenv().posaim,
				["Hit_Position"] = getgenv().posaim
			}
		}
		game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("SkillEvents"):WaitForChild(
		"Server_Skills"):FireServer(unpack(args))
		local args = {
			[1] = workspace:WaitForChild("Character"):WaitForChild(game.Players.LocalPlayer.Name),
			[2] = weapon,
			[3] = skill,
			[4] = "Release",
			[5] = {
				["Mouse_Position"] = getgenv().posaim,
				["Hit_Position"] = getgenv().posaim
			}
		}

		game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("SkillEvents"):WaitForChild("Server_Skills"):FireServer(unpack(args))
	end
end

function Kill(v,uu)
	repeat task.wait()
		EquipWeapon(Weapon)
		FarmMon(v)
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1e4, 1e4))
		pcall(function()
			if BringMobF and not (KillPlayer) then
				BringMob(v.HumanoidRootPart.CFrame)
			end
		end)
		pcall(function()
			if UseSkillZ then
				Useskill(Weapon, "Z")
			end
			if UseSkillX then
				Useskill(Weapon, "X")
			end
			if UseSkillC then
				Useskill(Weapon, "C")
			end
			if UseSkillV then
				Useskill(Weapon, "V")
			end
			getgenv().posaim = v.HumanoidRootPart.CFrame
		end)
	until not v or not v.Parent or not v.PrimaryPart or not v.Humanoid or v.Humanoid.Health <= 0 or (uu and uu())
end

function Monster(a)
	for i,v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
		if v.Name == a and v.Humanoid.Health > 0 then
			return v
		end
	end
	for i,v in pairs(game:GetService("ReplicatedStorage").MonsterSpawn:GetChildren()) do
		if v.Name == a and v.Humanoid.Health > 0 then
			return v
		end
	end
end

function Monsters(a)
	for i,v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
		if table.find(a, v.Name) and v.Humanoid.Health > 0 then
			return v
		end
	end
	for i,v in pairs(game:GetService("ReplicatedStorage").MonsterSpawn:GetChildren()) do
		if table.find(a, v.Name) and v.Humanoid.Health > 0 then
			return v
		end
	end
end

function CQuest(s)
	for i, v in next,MS do
		if i == s then
			return v
		end
	end
end

function Quest(a)
	if game.workspace.Location.QuestLocaion:FindFirstChild(a) then
		for i, v in pairs(game.workspace.Location.QuestLocaion:GetChildren()) do
			if v.Name == a then
				return v.CFrame, v
			end
		end
	else
		for i, v in pairs(workspace.NPCs.Quests_Npc:GetChildren()) do
			if v.Name == a then
				return v.WorldPivot, v
			end
		end
	end
end

function WaitMon(a)
	for i, v in pairs(game:GetService("Workspace").Location["Enemy_Location"]:GetChildren()) do
		if v.Name == a then
			TP(v.CFrame)
		end
	end
end

task.spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			if Farm_Lv or NoClip or MemeBeast or ATRaid or AutoFarmBoss or FarmMonster or AutoFarmAura or AutoFarmInstinct or AwkOrb then
				if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit then
					game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
				end
				if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
					local BodyVelocity = Instance.new("BodyVelocity")
					BodyVelocity.Name = "BodyVelocity1"
					BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					BodyVelocity.MaxForce = Vector3.new(10000,10000,10000)
					BodyVelocity.Velocity = Vector3.new(0, 0, 0)
				end
			else
				if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy()
				end
			end
		end)
	end)
end) --BodyClip

task.spawn(function()
	while task.wait(.5) do
		pcall(function()
			if SelectWeapon == "Melee" then
				SS = "Fight"
			elseif SelectWeapon == "Sword" then
				SS = "Weapon"
			elseif SelectWeapon == "Power Fruit" then
				SS = "Power"
			end
			for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip:find(SS) then
						Weapon = v.Name
					end
				end
			end
		end)
	end
end) -- Weapon

task.spawn(function()
	while wait(.5) do
		pcall(function()
			if ActiceAura then
				if #game.Players.LocalPlayer.Character.AuraColor_Folder:GetChildren() < 1 then
					game.Players.LocalPlayer.Ability.Aura.Value = true
					game.ReplicatedStorage:WaitForChild("OtherEvent").MainEvents.Ability:InvokeServer("Aura")
				end
			end
			if ActiceInstinct then
				if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight_Player") and game.Players.LocalPlayer.Ability.Instinct.Value then
					game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game.Players.LocalPlayer)
					game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
				end
			end
			if ActiceRace then
				game:GetService("ReplicatedStorage").OtherEvent.SkillEvents.Movement:FireServer("RaceSkill")
			end
		end)
	end
end) -- Abilities

task.spawn(function()
	while task.wait() do
		pcall(function()
			if Farm_Lv then
				if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false then
					Getquest()
				else
					local Mon = DetectMob()
					if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.QuestGiver.Text ~= Getnamequest() then
						for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.CloseFrame.Close.Activated)) do
							v.Function()
						end
					end
					if Mon then
						Kill(Mon, function() return not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible or not Farm_Lv end)
					else
						WaitMon(Getmob())
					end
				end
			end
		end)
	end
end) -- Farm Level

task.spawn(function()
	while task.wait() do
		pcall(function()
			if AwkOrb then
				local mon = Monster("Sogga")
				if not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible then
					TP(Quest("Dancing Banana Quest"))
					for i,v in pairs(game:GetService("Workspace").NPCs["Quests_Npc"]["Dancing Banana Quest"].Block:GetChildren()) do
						if v.Name == "QuestPrompt" then
							fireproximityprompt(v,30)
						end
					end
				else
					if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.QuestGiver.Text ~= "Dancing Banana Quest" then
						for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.CloseFrame.Close.Activated)) do
							v.Function()
						end
					end
					if mon then
						Kill(mon, function() return not AwkOrb or not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible end)
					else
						WaitMon("Sogga")
					end
				end
			end
		end)
	end
end) -- AwkOrb

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

function DetectQuestMisc(name)
	if game:GetService("ReplicatedStorage").NPC_Storage:FindFirstChild("Cool Floppa Quest") then
		return game:GetService("ReplicatedStorage").NPC_Storage:FindFirstChild("Cool Floppa Quest").WorldPivot.Position, "Cool Floppa Quest"
	end
	if game:GetService("Workspace").NPCs.Quests_Npc:FindFirstChild("Cool Floppa Quest") then
		return game:GetService("Workspace").NPCs.Quests_Npc:FindFirstChild("Cool Floppa Quest").WorldPivot.Position, "Cool Floppa Quest"
	end
end

function Getquestmisc(name)
	local QuestPos, Quest = DetectQuestMisc(name)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(QuestPos)
	local PromptQuest = workspace.NPCs.Quests_Npc:FindFirstChild(name)
	if PromptQuest then
		if game.Players.LocalPlayer:DistanceFromCharacter(PromptQuest.Block.Position) < 8 then
			if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ProximityPrompts") and game:GetService("Players").LocalPlayer.PlayerGui.ProximityPrompts:FindFirstChild("Prompt") and game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false then
				fireproximityprompt(PromptQuest.Block.QuestPrompt)
			end
			wait(0.5)
		end
	end
end

task.spawn(function()
	while task.wait() do
		pcall(function()
			if ATQuest then
				if _G.CoolFloppa then
					if not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible then
						Getquestmisc("Cool Floppa Quest")
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.QuestGiver.Text ~= "Cool Floppa Quest" and game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible then
							for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.CloseFrame.Close.Activated)) do
								v.Function()
							end
						end
						repeat task.wait()
							TP(CFrame.new(game:GetService("Workspace").Island.FloppaIsland:FindFirstChild("Lava Floppa").WorldPivot.Position))
							fireproximityprompt(game:GetService("Workspace").Island.FloppaIsland["Lava Floppa"].ClickPart.ProximityPrompt,30)
						until not ATQuest or not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible
					end

				elseif _G.Popcat then
					local textValue = game:GetService("Workspace").Island.FloppaIsland.Popcat_Clickable.Part.BillboardGui.Textlabel.Text:gsub(",", "")
					local numericValue = tonumber(textValue)
					repeat task.wait()
						TP(game:GetService("Workspace").Island.FloppaIsland.Popcat_Clickable.Part.CFrame)
						fireclickdetector(game:GetService("Workspace").Island.FloppaIsland.Popcat_Clickable.Part.ClickDetector)
					until not ATQuest or (numericValue and numericValue) > 10000
					if numericValue and numericValue > 10000 then
						if game:GetService("Workspace").NPCs.Misc_Npc:FindFirstChild("Ohio Popcat") then
							if game:GetService("Workspace").NPCs.Misc_Npc["Ohio Popcat"]:IsA("Model") then
								TP(game:GetService("Workspace").NPCs.Misc_Npc["Ohio Popcat"].WorldPivot)
							elseif game:GetService("Workspace").NPCs.Misc_Npc:IsA("Part") then
								TP(game:GetService("Workspace").NPCs.Misc_Npc["Ohio Popcat"].CFrame)
							end
						elseif game:GetService("ReplicatedStorage").NPC_Storage:FindFirstChild("Ohio Popcat") then
							if game:GetService("ReplicatedStorage").NPC_Storage["Ohio Popcat"]:IsA("Model") then
								TP(game:GetService("ReplicatedStorage").NPC_Storage["Ohio Popcat"].WorldPivot)
							elseif game:GetService("ReplicatedStorage").NPC_Storage["Ohio Popcat"]:IsA("Part") then
								TP(game:GetService("ReplicatedStorage").NPC_Storage["Ohio Popcat"].CFrame)
							end
						end
						game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer("Weapon_Seller","Ohio Popcat")
					end
				end
			end
		end)
	end
end) -- Quest

task.spawn(function()
	while task.wait() do
		pcall(function()
			if FarmMonster then
				local function GetMon(a)
					for i,v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
						if v.Name == a and v.Humanoid.Health > 0 then
							return v
						end
					end
					for i,v in pairs(game:GetService("ReplicatedStorage").MonsterSpawn:GetChildren()) do
						if v.Name == a and v.Humanoid.Health > 0 then
							return v
						end
					end
				end
				local function GetQuest()
					for i, v in next,MS do
						if i == SelectMonster then
							return v
						end
					end
				end
				local function CheckQuest()
					if game.workspace.Location.QuestLocaion:FindFirstChild("Floppa Quest "..GetQuest()) then
						for i, v in pairs(game.workspace.Location.QuestLocaion:GetChildren()) do
							if v.Name == "Floppa Quest "..GetQuest() then
								return v.CFrame, v
							end
						end
					else
						for i, v in pairs(workspace.NPCs.Quests_Npc:GetChildren()) do
							if v.Name == "Floppa Quest "..GetQuest() then
								return v.WorldPivot, v
							end
						end
					end
				end
				if GetMon(SelectMonster) then
					if GetQuestMonster then
						if not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible then
							TP(CheckQuest())
							for i,v in pairs(game:GetService("Workspace").NPCs["Quests_Npc"]["Floppa Quest "..GetQuest()].Block:GetChildren()) do
								if v.Name == "QuestPrompt" then
									fireproximityprompt(v,30)
								end
							end
						else
							if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.QuestGiver.Text ~= "Floppa Quest "..GetQuest() then
								for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.CloseFrame.Close.Activated)) do
									v.Function()
								end
							end
							Kill(GetMon(SelectMonster), function() return not FarmMonster or not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible end)
						end
					else
						Kill(GetMon(SelectMonster), function() return not FarmMonster end)
					end
				else
					WaitMon(SelectMonster)
				end
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if MemeBeast then
				local function GetSeaBeast()
					for i,v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
						if v.Name == "Meme Beast" and v.Humanoid.Health > 0 then
							return v
						end
					end
					for i,v in pairs(game:GetService("ReplicatedStorage").MonsterSpawn:GetChildren()) do
						if v.Name == "Meme Beast" and v.Humanoid.Health > 0 then
							return v
						end
					end
				end
				Kill(GetSeaBeast(), function() return not MemeBeast end)
			end
		end)
	end
end)

   spawn(function()
        pcall(function()
            while wait(.1) do
                if (MemeBeast and MemeBeastHop) and not game:GetService("Workspace").Monster:FindFirstChild("Meme Beast") and not game:GetService("ReplicatedStorage").MonsterSpawn:FindFirstChild("Meme Beast") then
                    Hop()
                end
            end
        end)
    end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.SelectStats == "Melee" and _G.UpStats then
				local args = {
					[1] = {
						["Target"] = "MeleeLevel",
						["Action"] = "UpgradeStats",
						["Amount"] = Point
					}
				}
				game:GetService("ReplicatedStorage").OtherEvent.MainEvents.StatsFunction:InvokeServer(unpack(args))
			end
			if _G.SelectStats == "Health" and _G.UpStats then
				local args = {
					[1] = {
						["Target"] = "DefenseLevel",
						["Action"] = "UpgradeStats",
						["Amount"] = Point
					}
				}

				game:GetService("ReplicatedStorage").OtherEvent.MainEvents.StatsFunction:InvokeServer(unpack(args))
			end
			if _G.SelectStats == "Weapon" and _G.UpStats then
				local args = {
					[1] = {
						["Target"] = "SwordLevel",
						["Action"] = "UpgradeStats",
						["Amount"] = Point
					}
				}

				game:GetService("ReplicatedStorage").OtherEvent.MainEvents.StatsFunction:InvokeServer(unpack(args))
			end
			if _G.SelectStats == "Power" and _G.UpStats then
				local args = {
					[1] = {
						["Target"] = "MemePowerLevel",
						["Action"] = "UpgradeStats",
						["Amount"] = Point
					}
				}

				game:GetService("ReplicatedStorage").OtherEvent.MainEvents.StatsFunction:InvokeServer(unpack(args))
			end
		end)
	end
end)

function Getnameraid()
	local distance = math.huge
	local name
	for i, v in next, game:GetService("Workspace").Raids:GetChildren() do
		if (v.WorldPivot.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < distance then
			distance = (v.WorldPivot.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude
			name = v
		end
	end
	return name
end

function Getmobraid()
	local wave = game:GetService("Players").LocalPlayer.PlayerGui.RaidGui.RaidFrame.Wave.Text:gsub(" ", "")
	if Getnameraid() then
		for i, v in next, game:GetService("Workspace").Raids[tostring(Getnameraid())].Enemy_Location[tostring(wave)]:GetChildren() do
			return v.Name
		end
	end
end

task.spawn(function()
	while task.wait() do
		pcall(function()
			if ATRaid then
				if not game:GetService("Players").LocalPlayer.PlayerGui.RaidGui.RaidFrame.Visible or not Getnameraid() then
					TP(CFrame.new(game:GetService("Workspace").Region.RaidArea.Position + Vector3.new(0, -18, 0)) * CFrame.Angles(0, math.rad(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Orientation.Y), 0))
				else
					if game:GetService("Players").LocalPlayer.PlayerGui.RaidGui.RaidFrame.Start_Button.Visible then
						pcall(function()
							repeat task.wait()
								for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.RaidGui.RaidFrame.Start_Button.Activated)) do
									v.Function()
								end
							until not game:GetService("Players").LocalPlayer.PlayerGui.RaidGui.RaidFrame.Start_Button.Visible
						end)
					end
					if game:GetService("Players").LocalPlayer.PlayerGui.RaidGui.RaidFrame.TimeLeft.Visible then
						for i, v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.CFrame.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								Kill(v, function() return not ATRaid or not game:GetService("Players").LocalPlayer.PlayerGui.RaidGui.RaidFrame.Visible end)
								TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
							end
						end
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if StoreFruit then
				for i, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
					if v:FindFirstChild("Script") then
						EquipWeapon(v.Name)
						local args = {
							[1] = "Eatable_Power",
							[2] = {
								["Action"] = "Store",
								["Tool"] = workspace.Character[game.Players.LocalPlayer.Name][tostring(v.Name)]
							}
						}

						game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer(unpack(args))
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if BringFruit then
				for i, v in next, game:GetService("Workspace").Dropped_Items:GetChildren() do
					if v and v.ToolTip == "Power" then
						firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Handle, 0)
					end
				end
			end
		end)
	end
end)

local ahihi
local gemneed
local belineed
spawn(function()
	while wait() do
		if SelectQuantity == "x1" then
			ahihi = "Once"
			gemneed = 25
			belineed = 25000
		elseif SelectQuantity == "x3" then
			ahihi = "Triple"
			gemneed = 25 * 3
			belineed = 25000 * 3
		else
			ahihi = "Decuple"
			gemneed = 25 * 10
			belineed = 25000 * 10
		end
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if RandomFruit then
				if SelectMethod == "Gem" then
					local args = {
						[1] = "Random_Power",
						[2] = {
							["Type"] = ahihi,
							["NPCName"] = "Doge Gacha",
							["GachaType"] = "Gem"
						}
					}

					game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer(unpack(args))
				elseif SelectMethod == "Money" then
					local args = {
						[1] = "Random_Power",
						[2] = {
							["Type"] = ahihi,
							["NPCName"] = "Floppa Gacha",
							["GachaType"] = "Money"
						}
					}

					game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents")
						:WaitForChild("Modules"):FireServer(unpack(args))
				else
					if game:GetService("Players").LocalPlayer.PlayerData.Money.Value >= belineed and game:GetService("Players").LocalPlayer.PlayerData.Gem.Value < gemneed then
						local args = {
							[1] = "Random_Power",
							[2] = {
								["Type"] = ahihi,
								["NPCName"] = "Doge Gacha",
								["GachaType"] = "Gem"
							}
						}

						game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer(unpack(args))
					elseif game:GetService("Players").LocalPlayer.PlayerData.Money.Value < belineed and game:GetService("Players").LocalPlayer.PlayerData.Gem.Value >= gemneed then
						local args = {
							[1] = "Random_Power",
							[2] = {
								["Type"] = ahihi,
								["NPCName"] = "Floppa Gacha",
								["GachaType"] = "Gem"
							}
						}

						game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer(unpack(args))
					elseif game:GetService("Players").LocalPlayer.PlayerData.Money.Value >= belineed and game:GetService("Players").LocalPlayer.PlayerData.Gem.Value >= gemneed then
						local args = {
							[1] = "Random_Power",
							[2] = {
								["Type"] = ahihi,
								["NPCName"] = "Floppa Gacha",
								["GachaType"] = "Money"
							}
						}

						game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer(unpack(args))
					end
				end
			end
		end)
	end
end)

function GetMaterial(MName)
	local ItemStorage = game:GetService("Players").LocalPlayer:WaitForChild("Items").ItemStorage
	return ItemStorage:FindFirstChild(MName) and ItemStorage[MName].Value or 0
end

task.spawn(function()
	while task.wait() do
		pcall(function()
			local function GetMon(a)
				for i,v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
					if v.Name == a and v.Humanoid.Health > 0 then
						return v
					end
				end
				for i,v in pairs(game:GetService("ReplicatedStorage").MonsterSpawn:GetChildren()) do
					if v.Name == a and v.Humanoid.Health > 0 then
						return v
					end
				end
			end
			local function CheckQuestBoss()
				for i, v in next,MS do
					if i == SelectBoss then
						return v
					end
				end
			end
			local function GetQuestBoss()
				local function CheckQuest()
					if game.workspace.Location.QuestLocaion:FindFirstChild("Floppa Quest "..CheckQuestBoss()) then
						for i, v in pairs(game.workspace.Location.QuestLocaion:GetChildren()) do
							if v.Name == "Floppa Quest "..CheckQuestBoss() then
								return v.CFrame, v
							end
						end
					else
						for i, v in pairs(workspace.NPCs.Quests_Npc:GetChildren()) do
							if v.Name == "Floppa Quest "..CheckQuestBoss() then
								return v.WorldPivot, v
							end
						end
					end
				end
				TP(CheckQuest())
				for i,v in pairs(game:GetService("Workspace").NPCs["Quests_Npc"]["Floppa Quest "..CheckQuestBoss()].Block:GetChildren()) do
					if v.Name == "QuestPrompt" then
						fireproximityprompt(v,30)
					end
				end
			end

			local function GetQuestMon(a)
				function CheckQuestMon()
					for i, v in next,MS do
						if i == a then
							return v
						end
					end
				end
				local function CheckQuestaa()
					if game.workspace.Location.QuestLocaion:FindFirstChild("Floppa Quest "..CheckQuestMon()) then
						for i, v in pairs(game.workspace.Location.QuestLocaion:GetChildren()) do
							if v.Name == "Floppa Quest "..CheckQuestMon() then
								return v.CFrame, v
							end
						end
					else
						for i, v in pairs(workspace.NPCs.Quests_Npc:GetChildren()) do
							if v.Name == "Floppa Quest "..CheckQuestMon() then
								return v.WorldPivot, v
							end
						end
					end
				end
				TP(CheckQuestaa())
				for i,v in pairs(game:GetService("Workspace").NPCs["Quests_Npc"]["Floppa Quest "..CheckQuestMon()].Block:GetChildren()) do
					if v.Name == "QuestPrompt" then
						fireproximityprompt(v,30)
					end
				end
			end
			if _G.LordBoss then
				if GetMon("Lord Sus") and AutoFarmBossLord then
					if GetQuestBossFun then
						if not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible then
							GetQuestBoss()
						else
							if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.QuestGiver.Text ~= "Floppa Quest "..CheckQuestBoss() then
								for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.CloseFrame.Close.Activated)) do
									v.Function()
								end
							end
							Kill(GetMon("Lord Sus"),function() return not AutoFarmBossLord or not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible end)
						end
					else
						Kill(GetMon("Lord Sus"),function() return not AutoFarmBossLord end)
					end
				else
					if GetMaterial("Sussy Orb") > 0 and AutoSpawnLord then
						TP(CFrame.new(6644, -95, 4811))
						fireproximityprompt(game:GetService("Workspace"):WaitForChild("Island").ForgottenIsland.Summon3.Summon.SummonPrompt)
					elseif AutoItemBossLord then
						if GetMon("Sus Duck") then
							if GetQuestMonBoss then
								if not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible then
									GetQuestMon("Sus Duck")
								else
									if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.QuestGiver.Text ~= "Floppa Quest "..CheckQuestMon() then
										for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.CloseFrame.Close.Activated)) do
											v.Function()
										end
									end
									Kill(GetMon("Sus Duck"),function() return not AutoItemBossLord or not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible end)
								end
							else
								Kill(GetMon("Sus Duck"),function() return not AutoItemBossLord end)
							end
						else
							WaitMon("Sus Duck")
						end
					end
				end
			elseif _G.EvilNoobboss then
				if GetMon("Evil Noob") and AutoFarmBossEvil then
					if GetQuestBossFun then
						if not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible then
							GetQuestBoss()
						else
							if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.QuestGiver.Text ~= "Floppa Quest "..CheckQuestBoss() then
								for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.CloseFrame.Close.Activated)) do
									v.Function()
								end
							end
							Kill(GetMon("Evil Noob"),function() return not AutoFarmBossEvil or not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible end)
						end
					else
						Kill(GetMon("Evil Noob"),function() return not AutoFarmBossEvil end)
					end
				else
					if GetMaterial("Noob Head") > 0 and AutoSpawnBossEvil then
						TP(CFrame.new(-2356, -81, 3180))
						fireproximityprompt(game:GetService("Workspace"):WaitForChild("Island").MoaiIsland.Summon2.Summon.SummonPrompt)
					elseif AutoItemBossEvil then
						if GetMon("Moai") then
							if GetQuestMonBoss then
								if not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible then
									GetQuestMon("Moai")
								else
									if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.QuestGiver.Text ~= "Floppa Quest "..CheckQuestMon() then
										for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.CloseFrame.Close.Activated)) do
											v.Function()
										end
									end
									Kill(GetMon("Moai"),function() return not AutoItemBosspumpkin or not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible end)
								end
							else
								Kill(GetMon("Moai"),function() return not AutoItemBossEvil end)
							end
						else
							WaitMon("Moai")
						end
					end
				end
			elseif _G.PumpkinBoss then
				if GetMon("Giant Pumpkin") and AutoFarmBossPumpkin then
					if GetQuestBossFun then
						if not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible then
							GetQuestBoss()
						else
							if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.QuestGiver.Text ~= "Floppa Quest "..CheckQuestBoss() then
								for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.CloseFrame.Close.Activated)) do
									v.Function()
								end
							end
							Kill(GetMon("Giant Pumpkin"),function() return not AutoFarmBossPumpkin or not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible end)
						end
					else
						Kill(GetMon("Giant Pumpkin"),function() return not AutoFarmBossPumpkin end)
					end
				else
					if GetMaterial("Flame Orb") > 0 and AutoSpawnBossPumpkin then
						TP(CFrame.new(-1180, -93, 1462))
						fireproximityprompt(game:GetService("Workspace"):WaitForChild("Island").PumpkinIsland.Summon1.Summon.SummonPrompt)
					elseif AutoItemBosspumpkin then
						if GetMon("Scary Skull") then
							if GetQuestMonBoss then
								if not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible then
									GetQuestMon("Scary Skull")
								else
									if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.QuestGiver.Text ~= "Floppa Quest "..CheckQuestMon() then
										for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.CloseFrame.Close.Activated)) do
											v.Function()
										end
									end
									Kill(GetMon("Scary Skull"),function() return not AutoItemBoss or not game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible end)
								end
							else
								Kill(GetMon("Scary Skull"),function() return not AutoItemBoss end)
							end
						else
							WaitMon("Scary Skull")
						end
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if NearestFarm then
				for i,v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
					if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
						Kill(v,function() return not NearestFarm end)
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game:GetService("Workspace").Monster:FindFirstChild("Meme Beast") or game:GetService("ReplicatedStorage").MonsterSpawn:FindFirstChild("Meme Beast") then
				mb:SetText("Meme Beast : 🟢")
			else
				mb:SetText("Meme Beast : 🔴")
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game:GetService("Workspace").Monster:FindFirstChild("Giant Pumpkin") or game:GetService("ReplicatedStorage").MonsterSpawn:FindFirstChild("Giant Pumpkin") then
				gp:SetText("Giant Pumpkin : 🟢")
			else
				gp:SetText("Giant Pumpkin : 🔴")
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game:GetService("Workspace").Monster:FindFirstChild("Evil Noob") or game:GetService("ReplicatedStorage").MonsterSpawn:FindFirstChild("Evil Noob") then
				en:SetText("Evil Noob : 🟢")
			else
				en:SetText("Evil Noob : 🔴")
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game:GetService("Workspace").Monster:FindFirstChild("Lord Sus") or game:GetService("ReplicatedStorage").MonsterSpawn:FindFirstChild("Lord Sus") then
				ls:SetText("Lord Sus : 🟢")
			else
				ls:SetText("Lord Sus : 🔴")
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if StoreFruit then
				for i, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
					if v:FindFirstChild("Script") then
						EquipWeapon(v.Name)
						local args = {
							[1] = "Eatable_Power",
							[2] = {
								["Action"] = "Store",
								["Tool"] = workspace.Character[game.Players.LocalPlayer.Name][tostring(v.Name)]
							}
						}

						game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer(unpack(args))
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if BringFruit then
				for i, v in next, game:GetService("Workspace").Dropped_Items:GetChildren() do
					if v and v.ToolTip == "Power" then
						firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Handle, 0)
					end
				end
			end
		end)
	end
end)

local ahihi
local gemneed
local belineed
spawn(function()
	while wait() do
		if SelectQuantity == "x1" then
			ahihi = "Once"
			gemneed = 25
			belineed = 25000
		elseif SelectQuantity == "x3" then
			ahihi = "Triple"
			gemneed = 25 * 3
			belineed = 25000 * 3
		else
			ahihi = "Decuple"
			gemneed = 25 * 10
			belineed = 25000 * 10
		end
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if RandomFruit then
				if SelectMethod == "Gem" then
					local args = {
						[1] = "Random_Power",
						[2] = {
							["Type"] = ahihi,
							["NPCName"] = "Doge Gacha",
							["GachaType"] = "Gem"
						}
					}

					game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer(unpack(args))
				elseif SelectMethod == "Money" then
					local args = {
						[1] = "Random_Power",
						[2] = {
							["Type"] = ahihi,
							["NPCName"] = "Floppa Gacha",
							["GachaType"] = "Money"
						}
					}

					game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents")
						:WaitForChild("Modules"):FireServer(unpack(args))
				else
					if game:GetService("Players").LocalPlayer.PlayerData.Money.Value >= belineed and game:GetService("Players").LocalPlayer.PlayerData.Gem.Value < gemneed then
						local args = {
							[1] = "Random_Power",
							[2] = {
								["Type"] = ahihi,
								["NPCName"] = "Doge Gacha",
								["GachaType"] = "Gem"
							}
						}

						game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer(unpack(args))
					elseif game:GetService("Players").LocalPlayer.PlayerData.Money.Value < belineed and game:GetService("Players").LocalPlayer.PlayerData.Gem.Value >= gemneed then
						local args = {
							[1] = "Random_Power",
							[2] = {
								["Type"] = ahihi,
								["NPCName"] = "Floppa Gacha",
								["GachaType"] = "Gem"
							}
						}

						game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer(unpack(args))
					elseif game:GetService("Players").LocalPlayer.PlayerData.Money.Value >= belineed and game:GetService("Players").LocalPlayer.PlayerData.Gem.Value >= gemneed then
						local args = {
							[1] = "Random_Power",
							[2] = {
								["Type"] = ahihi,
								["NPCName"] = "Floppa Gacha",
								["GachaType"] = "Money"
							}
						}

						game:GetService("ReplicatedStorage"):WaitForChild("OtherEvent"):WaitForChild("MainEvents"):WaitForChild("Modules"):FireServer(unpack(args))
					end
				end
			end
		end)
	end
end)
spawn(function()
 while wait() do
 pcall(function()
  if _G.Method == "Behind" then
  DistanceFarm = 0,0,7
  elseif _G.Method == "Below" then
  DistanceFarm = -5
  elseif _G.Method == "Upper" then
  DistanceFarm = 7
  else
   DistanceFarm = 7
  end
  end)
 end
 end)
