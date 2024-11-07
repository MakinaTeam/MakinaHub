--- King Legacy มือถือ
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NOOBHUBX/LoadingUI/main/NOOB%20HUB.Lua"))()
local function gamekiller()
    while true do
          local fucku = 1
       end
    end

game:GetService("RunService").RenderStepped:connect(function()
game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow:Destroy()
for i,v in pairs(game.CoreGui:GetChildren()) do
    if v:FindFirstChild("PropertiesFrame") then
    if v:FindFirstChild("ExplorerPanel") then
    if v:FindFirstChild("SideMenu") then
             warn("DarkDex Detected")
             game.Players.LocalPlayer:kick("Do not open DarkDex")
             wait(.3)
             game:Shutdown()
             wait(0.2)
             gamekiller()
        end
        end
        end
    end
    end)
    

local placeId = game.PlaceId
if placeId == 4520749081 then
	OldWorld = true
elseif placeId == 6381829480 then
	newworld = true
end
raid = true

game:GetService("RunService").Heartbeat:Connect(function()
    pcall(function()
    if not game:GetService("Workspace"):FindFirstChild("LOL") then
        local LOL = Instance.new("Part")
        LOL.Name = "LOL"
        LOL.Parent = game.Workspace
        LOL.Anchored = true
        LOL.Transparency = 0.8
        LOL.Size = Vector3.new(10,0.5,10)
    end
    end)
end)
function changestate()
    game.Workspace["LOL"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
end
function CheckQuest()
	local MyLevel = game.Players.LocalPlayer.PlayerStats.lvl.Value
	if OldWorld then
		if MyLevel == 1 or MyLevel <= 9 then
			CFrameQuest = CFrame.new(2277.1884765625, 48.143299102783, -1648.5339355469)
			CFrameMon = CFrame.new(2388.6013183594, 350.19408416748, -1578.6862792969)
			NameMon = "Soldier"
			Ms = "Soldier [Lv. 1]"
			levelquest = 1
		elseif MyLevel == 10 or MyLevel <= 19 then
			CFrameQuest = CFrame.new(2496.5114746094, 48.135684967041, -1771.6900634766)
			CFrameMon = CFrame.new(2388.6013183594, 350.19408416748, -1578.6862792969)
			NameMon = "Clown Pirate"
			Ms = "Clown Pirate [Lv. 10]"
			levelquest = 10
		elseif MyLevel == 20 or MyLevel <= 29 then
			CFrameQuest = CFrame.new(2231.0498046875, 48.153293609619, -1779.0476074219)
			CFrameMon = CFrame.new(2293.3962402344, 350.193294525146, -1802.6019287109)
			NameMon = "Smoky"
			Ms = "Smoky [Lv. 20]"
			levelquest = 20
		elseif MyLevel == 30 or MyLevel <= 49 then
			CFrameQuest = CFrame.new(2011.1265869141, 48.143299102783, -1810.4008789063)
			CFrameMon = CFrame.new(2091.3608398438, 350.193294525146, -1928.6489257813)
			NameMon = "Tashi"
			Ms = "Tashi [Lv. 30]"
			levelquest = 30
		elseif MyLevel == 50 or MyLevel <= 74 then
			CFrameQuest = CFrame.new(4021.25781, 37.8887329, 268.103943, 0.529884458, -0, -0.848069847, 0, 1, -0, 0.848069847, 0, 0.529884458)
			CFrameMon = CFrame.new(3965.912109375, 395.80511474609, 119.3405380249)
			NameMon = "Clown Pirate"
			Ms = "Clown Pirate [Lv. 50]"
			levelquest = 50
		elseif MyLevel == 75 or MyLevel <= 144 then
			CFrameQuest = CFrame.new(4260.06592, 69.0870895, 249.896057, 0.529884458, -0, -0.848069847, 0, 1, -0, 0.848069847, 0, 0.529884458)
			CFrameMon = CFrame.new(4279.83838, 350.8366318, 53.9889946)
			NameMon = "The Clown"
			Ms = "The Clown [Lv. 75]"
			levelquest = 75
		elseif MyLevel == 145 or MyLevel <= 179 then
			CFrameQuest = CFrame.new(1607.07849, 68.6067047, 1359.05444)
			CFrameMon = CFrame.new(1708.06006, 350.6267929, 1412.47498)
			NameMon = "Axe-Hand"
			Ms = "Axe-Hand [Lv. 145]"
			levelquest = 145
		elseif MyLevel == 180 or MyLevel <= 229 then
			CFrameQuest = CFrame.new(3873.9126, 10.4919758, 3251.1311)
			CFrameMon = CFrame.new(4094.49268, 350.541934, 3257.55811)
			NameMon = "Fishman"
			Ms = "Fishman [Lv. 180]"
			levelquest = 180
		elseif MyLevel == 230 or MyLevel <= 249 then
			CFrameQuest = CFrame.new(4291.13379, 10.4919758, 3250.18872)
			CFrameMon = CFrame.new(4393.53223, 350.4659395, 3235.98608)
			NameMon = "SharkMan"
			Ms = "SharkMan [Lv. 230]"
			levelquest = 230
		elseif MyLevel == 250 or MyLevel <= 299 then
			CFrameQuest = CFrame.new(-51.7463303, 49.7374306, -87.7024078)
			CFrameMon = CFrame.new(-51.7463303, 350.7374306, -87.7024078)
			NameMon = "Trainer Chef"
			Ms = "Trainer Chef [Lv. 250]"
			levelquest = 250
		elseif MyLevel == 300 or MyLevel <= 349 then
			CFrameQuest = CFrame.new(39.4004707, 99.5126801, -47.8512077)
			CFrameMon = CFrame.new(96.1493149, 350.94034, -143.488434)
			NameMon = "Dark Leg"
			Ms = "Dark Leg [Lv. 300]"
			levelquest = 300
		elseif MyLevel == 350 or MyLevel <= 399 then
			CFrameQuest = CFrame.new(-44.2784309, 49.7609177, 115.918266)
			CFrameMon = CFrame.new(-103.605598, 350.94034, 233.536148)
			NameMon = "Weapon Man"
			Ms = "Weapon Man [Lv. 350]"
			levelquest = 350
		elseif MyLevel == 400 or MyLevel <= 449 then
			CFrameQuest = CFrame.new(-2851.466796875, 18.111785888672, 1420.4886474609)
			CFrameMon = CFrame.new(-2818.3337402344, 350.12328338623, 1470.3162841797)
			NameMon = "Snow Soldier"
			Ms = "Snow Soldier [Lv. 400]"
			levelquest = 400
		elseif MyLevel == 450 or MyLevel <= 524 then
			CFrameQuest = CFrame.new(-2838.9370117188, 18.091789245605, 1319.8012695313)
			CFrameMon = CFrame.new(-2860.3764648438, 350.121784210205, 1293.3358154297)
			NameMon = "King Snow"
			Ms = "King Snow [Lv. 450]"
			levelquest = 450
		elseif MyLevel == 525 or MyLevel <= 624 then
			CFrameQuest = CFrame.new(1731.5385742188, 12.902250289917, 3644.4453125)
			CFrameMon = CFrame.new(1761.9046630859, 350.971120834351, 3610.41015625)
			NameMon = "Candle Man"
			Ms = "Candle Man [Lv. 525]"
			levelquest = 525
		elseif MyLevel == 625 or MyLevel <= 724 then
			CFrameQuest = CFrame.new(1520.1804199219, 12.902250289917, 3431.5466308594)
			CFrameMon = CFrame.new(1538.6333007813, 350.902250289917, 3397.02734375)
			NameMon = "Bomb Man"
			Ms = "Bomb Man [Lv. 625]"
			levelquest = 625
		elseif MyLevel == 725 or MyLevel <= 799 then
			CFrameQuest = CFrame.new(1511.4117431641, 43.04167175293, 3541.400390625)
			CFrameMon = CFrame.new(1478.7867431641, 350.56248474121, 3638.8305664063)
			NameMon = "King of Sand"
			Ms = "King of Sand [Lv. 725]"
			levelquest = 725
		elseif MyLevel == 800 or MyLevel <= 849 then
			CFrameQuest = CFrame.new(-1251.8015136719, 200.67266845703, 4581.4990234375)
			CFrameMon = CFrame.new(-1294.9228515625, 500.30653381348, 4678.55859375)
			NameMon = "Sky Soldier"
			Ms = "Sky Soldier [Lv. 800]"
			levelquest = 800
		elseif MyLevel == 850 or MyLevel <= 899 then
			CFrameQuest = CFrame.new(-818.76123046875, 386.42059326172, 4745.69921875)
			CFrameMon = CFrame.new(-790.27984619141, 500.47073364258, 4807.623046875)
			NameMon = "Ball Man"
			Ms = "Ball Man [Lv. 850]"
			levelquest = 850
		elseif MyLevel == 900 or MyLevel <= 999 then
			CFrameQuest = CFrame.new(-861.33489990234, 386.42074584961, 4879.1186523438)
			CFrameMon = CFrame.new(-895.37359619141, 500.42074584961, 4946.294921875)
			NameMon = "Rumble Man"
			Ms = "Rumble Man [Lv. 900]"
			levelquest = 900
		elseif MyLevel == 1000 or MyLevel <= 1099 then
			CFrameQuest = CFrame.new(8271.4833984375, 11.896879196167, 5437.4653320313)
			CFrameMon = CFrame.new(8333.201171875, 350.846879959106, 5465.994140625)
			NameMon = "Soldier"
			Ms = "Soldier [Lv. 1000]"
			levelquest = 1000
		elseif MyLevel == 1100 or MyLevel <= 1149 then
			CFrameQuest = CFrame.new(8176.1176757813, 11.846877098083, 5287.4770507813)
			CFrameMon = CFrame.new(8274.4404296875, 500.251501083374, 5267.7802734375)
			NameMon = "Leader"
			Ms = "Leader [Lv. 1100]"
			levelquest = 1100
		elseif MyLevel == 1150 or MyLevel <= 1249 then
			CFrameQuest = CFrame.new(7993.27393, 11.8711519, 5765.53076, -0.278351784, 5.68772371e-08, -0.960479379, 9.40473655e-08, 1, 3.19621591e-08, 0.960479379, -8.14338179e-08, -0.278351784)
			CFrameMon = CFrame.new(8274.4404296875, 500.251501083374, 5267.7802734375)
			NameMon = "Pasta"
			Ms = "Pasta [Lv. 1150]"
			levelquest = 1150
		elseif MyLevel == 1250 or MyLevel <= 1324 then
			CFrameQuest = CFrame.new(4210.1782226563, 13.030811309814, 6768.8955078125)
			CFrameMon = CFrame.new(4166.5815429688, 500.090654373169, 6898.6127929688)
			NameMon = "Wolf"
			Ms = "Wolf [Lv. 1250]"
			levelquest = 1250
		elseif MyLevel == 1325 or MyLevel <= 1399 then
			CFrameQuest = CFrame.new(4311.3798828125, 13.042789459229, 6978.6538085938)
			CFrameMon = CFrame.new(4379.4565429688, 500.090654373169, 6949.353515625)
			NameMon = "Giraffe"
			Ms = "Giraffe [Lv. 1325]"
			levelquest = 1325
		elseif MyLevel == 1400 or MyLevel <= 1499 then
			CFrameQuest = CFrame.new(4312.81640625, 13.059648513794, 7417.8813476563)
			CFrameMon = CFrame.new(4391.2377929688, 500.961982727051, 7569.0166015625)
			NameMon = "Leo"
			Ms = "Leo [Lv. 1400]"
			levelquest = 1400
		elseif MyLevel == 1500 or MyLevel <= 1599 then
			CFrameQuest = CFrame.new(-776.28472900391, 47.856597900391, 8478.431640625)
			CFrameMon = CFrame.new(-778.30328369141, 500.856491088867, 8537.9267578125)
			NameMon = "Zombie"
			Ms = "Zombie [Lv. 1500]"
			levelquest = 1500
		elseif MyLevel == 1600 or MyLevel <= 1749 then
			CFrameQuest = CFrame.new(-793.65240478516, 47.857288360596, 8329.0654296875)
			CFrameMon = CFrame.new(-793.65240478516, 500.857288360596, 8329.0654296875)
			NameMon = "Shadow Master"
			Ms = "Shadow Master [Lv. 1600]"
			levelquest = 1600
		elseif MyLevel == 1750 or MyLevel <= 1799 then
			CFrameQuest = CFrame.new(8601.7705078125, 49.582111358643, 1731.2292480469)
			CFrameMon = CFrame.new(8601.7705078125, 500.582111358643, 1731.2292480469)
			NameMon = "New World Pirate"
			Ms = "New World Pirate [Lv. 1750]"
			levelquest = 1750
		elseif MyLevel == 1800 or MyLevel <= 1924 then
			CFrameQuest = CFrame.new(8580.9599609375, 49.578090667725, 1347.4166259766)
			CFrameMon = CFrame.new(8580.9599609375, 500.578090667725, 1347.4166259766)
			NameMon = "Rear Admiral"
			Ms = "Rear Admiral [Lv. 1800]"
			levelquest = 1800
		elseif MyLevel == 1925 or MyLevel <= 1849 then
			CFrameQuest = CFrame.new(8242.3994140625, 49.60005569458, 1392.0007324219)
			CFrameMon = CFrame.new(8242.3994140625, 500.60005569458, 1392.0007324219)
			NameMon = "Quake Woman"
			Ms = "Quake Woman [Lv. 1925]"
			levelquest = 1925
		elseif MyLevel == 1850 or MyLevel <= 1999 then
			CFrameQuest = CFrame.new(8555.9892578125, 49.57417678833, 1460.2507324219)
			CFrameMon = CFrame.new(8555.9892578125, 500.57417678833, 1460.2507324219)
			NameMon = "True Karate Fishman"
			Ms = "True Karate Fishman [Lv. 1850]"
			levelquest = 1850
		elseif MyLevel == 2000 or MyLevel <= 2049 then
			CFrameQuest = CFrame.new(2970.7785644531, 40.2607421875, 13349.877929688)
			CFrameMon = CFrame.new(2970.7785644531, 500.2607421875, 13349.877929688)
			NameMon = "Fishman"
			Ms = "Fishman [Lv. 2000]"
			levelquest = 2000
		elseif MyLevel == 2050 or MyLevel <= 2099 then
			CFrameQuest = CFrame.new(2783.875, 40.24825668335, 13617.719726563)
			CFrameMon = CFrame.new(2783.875, 500.24825668335, 13617.719726563)
			NameMon = "Combat Fishman"
			Ms = "Combat Fishman [Lv. 2050]"
			levelquest = 2050
		elseif MyLevel == 2100 or MyLevel <= 2149 then
			CFrameQuest = CFrame.new(3297.2663574219, 40.275020599365, 13793.421875)
			CFrameMon = CFrame.new(3297.2663574219, 500.275020599365, 13793.421875)
			NameMon = "Sword Fishman"
			Ms = "Sword Fishman [Lv. 2100]"
			levelquest = 2100
		elseif MyLevel == 2150 or MyLevel <= 2199 then
			CFrameQuest = CFrame.new(3019.2189941406, 40.270706176758, 13883.921875)
			CFrameMon = CFrame.new(3019.2189941406, 350.270706176758, 13883.921875)
			NameMon = "Fishman Soldier"
			Ms = "Fishman Soldier [Lv. 2150]"
			levelquest = 2150
		elseif MyLevel >= 2200 then
			CFrameQuest = CFrame.new(2785.8464355469, 40.275859832764, 13820.041992188)
			CFrameMon = CFrame.new(2785.8464355469, 350.275859832764, 13820.041992188)
			NameMon = "Seasoned Fishman"
			Ms = "Seasoned Fishman [Lv. 2200]"
			levelquest = 2200
		end
	end
	if newworld then
		if MyLevel >= 2250 and MyLevel <= 2299 then
			Ms = "Beast Pirate [Lv. 2250]"
			CFrameQuest = CFrame.new(558.123962, 75.4188766, -2156.09204, -1, 0, 0, 0, 1, 0, 0, 0, -1)
			NameMon = "Beast Pirate"
			CFrameMon = CFrame.new(3302.8967285156, 367.02523803711, 91.186454772949)
			levelquest = 2250
		elseif MyLevel >= 2300 and MyLevel <= 2349 then
			Ms = "Beast Pirate [Lv. 2300]"
			CFrameQuest = CFrame.new(416.176941, 75.386673, -5425.97754, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
			NameMon = "Beast Pirate"
			CFrameMon = CFrame.new(3341.6398925781, 363.15054321289, -270.224609375)
			levelquest = 2300
		elseif MyLevel >= 2350 and MyLevel <= 2399 then
			Ms = "Snake Man [Lv. 2350]"
			CFrameQuest = CFrame.new(88.140152, 75.3936996, -5321.16357, -0.023422122, 0, -0.99972564, 0, 1, 0, 0.99972564, 0, -0.023422122)
			NameMon = "Snake Man"
			CFrameMon = CFrame.new(2821.0869140625, 228.20420837402, 397.10614013672)
			levelquest = 2350
		elseif MyLevel >= 2400 and MyLevel <= 2449 then
			Ms = "Bandit Beast Pirate [Lv. 2400]"
			CFrameQuest = CFrame.new(-2120.31909, 74.9218903, -4906.35107, -1, 0, 0, 0, 1, 0, 0, 0, -1)
			NameMon = "Bandit Beast Pirate"
			CFrameMon = CFrame.new(2700.8044433594, 262.39566040039, -1133.3333740234)
			levelquest = 2400
		elseif MyLevel >= 2450 and MyLevel <= 2499 then
			Ms = "Powerful Beast Pirate [Lv. 2450]"
			CFrameQuest = CFrame.new(-2754.46362, 75.4548111, -5289.625, 0.57264179, 0, 0.819805682, 0, 1, 0, -0.819805682, 0, 0.57264179)
			NameMon = "Powerful Beast Pirate"
			CFrameMon = CFrame.new(2446.5532226563, 497.23837280273, -650.99859619141)
			levelquest = 2450
		elseif MyLevel >= 2500 and MyLevel <= 2549 then
			Ms = "Violet Samurai [Lv. 2500]"
			CFrameQuest = CFrame.new(-3022.99292, 75.7534866, -4925.86426, 0.901796937, 0, 0.43216005, 0, 1, 0, -0.43216005, 0, 0.901796937)
			NameMon = "Violet Samurai"
			CFrameMon = CFrame.new(2125.0998535156, 193.43463134766, -1028.8310546875)
			levelquest = 2500
		elseif MyLevel >= 2550 and MyLevel <= 2599 then
			Ms = "Rabbit Man [Lv. 2550]"
			CFrameQuest = CFrame.new(-1037.83777, 75.6733093, -1947.10742, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			NameMon = "Rabbit Man"
			CFrameMon = CFrame.new(1638.6165771484, 238.3356628418, -140.75988769531)
			levelquest = 2550
		elseif MyLevel >= 2600 and MyLevel <= 2649 then
			Ms = "Bat Man [Lv. 2600]"
			CFrameQuest = CFrame.new(-2710.16284, 75.4078979, -1561.74146, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			NameMon = "Bat Man"
			CFrameMon = CFrame.new(2427.9096679688, 214.50489807129, -285.6096496582)
			levelquest = 2600
		elseif MyLevel >= 2650 and MyLevel <= 2699 then
			Ms = "Kitsune Samurai [Lv. 2650]"
			CFrameQuest = CFrame.new(-2917.12598, 75.457901, -1452.71692, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			NameMon = "Kitsune Samurai"
			CFrameMon = CFrame.new(1694.7454833984, 279.47674560547, 132.89778137207)
			levelquest = 2650
		elseif MyLevel >= 2700 and MyLevel <= 2749 then
			Ms = "Elite Beast Pirate [Lv. 2700]"
			CFrameQuest = CFrame.new(-1042.13416, 75.4581985, 172.622971, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			NameMon = "Elite Beast Pirate"
			CFrameMon = CFrame.new(2813.0407714844, 137.29498291016, 1433.4289550781)
			levelquest = 2700
		elseif MyLevel >= 2750 and MyLevel <= 2799 then
			Ms = "Elite Beast Pirate [Lv. 2750]"
			CFrameQuest = CFrame.new(-1051.44336, 75.4359818, -113.772148, -1.1920929e-07, -0, -1.00000012, 0, 1, -0, 1.00000012, 0, -1.1920929e-07)
			NameMon = "Elite Beast Pirate"
			CFrameMon = CFrame.new(2901.4145507813, 189.0565032959, 737.08685302734)
			levelquest = 2750
		elseif MyLevel >= 2800 and MyLevel <= 2849 then
			Ms = "Bear Man [Lv. 2800]"
			CFrameQuest = CFrame.new(-387.776123, 75.4327545, 280.899261, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			NameMon = "Bear Man"
			CFrameMon = CFrame.new(3222.7277832031, 137.29498291016, 1384.826171875)
			levelquest = 2800
		elseif MyLevel >= 2850 and MyLevel <= 2899 then
			Ms = "Magician [Lv. 2850]"
			CFrameQuest = CFrame.new(-3519.60156, 75.506752, 1201.35449, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			NameMon = "Magician"
			CFrameMon = CFrame.new(1887.2744140625, 145.23045349121, 1004.4313964844)
			levelquest = 2850
		elseif MyLevel >= 2900 and MyLevel <= 2949 then
			Ms = "Pachy Woman [Lv. 2900]"
			CFrameQuest = CFrame.new(-4334.17969, 75.456749, 1914.44507, 0.480083644, -0, -0.877222717, 0, 1, -0, 0.877222717, 0, 0.480083644)
			NameMon = "Pachy Woman"
			CFrameMon = CFrame.new(1615.6518554688, 185.53813171387, 1583.0139160156)
			levelquest = 2900
		elseif MyLevel >= 2950 and MyLevel <= 2999 then
			Ms = "Kappa [Lv. 2950]"
			CFrameQuest = CFrame.new(-1426.53455, 74.8297577, 4112.34961, 0.0880642533, -0, -0.996114731, 0, 1, -0, 0.996114731, 0, 0.0880642533)
			NameMon = "Kappa"
			CFrameMon = CFrame.new(2399.1376953125, 188.26124572754, 2357.2336425781)
			levelquest = 2950
		elseif MyLevel >= 3000 and MyLevel <= 3024 then
			Ms = "Mammoth Man [Lv. 3000]"
			CFrameQuest = CFrame.new(-4276.69336, 74.254776, 4561.5752, 0.996116102, 0, 0.0880491585, 0, 1, 0, -0.0880491585, 0, 0.996116102)
			NameMon = "Mammoth Man"
			CFrameMon = CFrame.new(1988.3930664063, 211.38674926758, 2425.3681640625)
			levelquest = 3000
		elseif MyLevel >= 3025 and MyLevel <= 3074 then
			Ms = "Skull Pirate [Lv. 3050]"
			CFrameQuest = CFrame.new(-3816.54614, 51.3296509, 9891.29688, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
			NameMon = "Skull Pirate"
			CFrameMon = CFrame.new(-1690.8850097656, 159.86395263672, 6873.90234375)
			levelquest = 3025
		elseif MyLevel >= 3075 and MyLevel <= 3099 then
			Ms = "Elite Skeleton [Lv. 3100]"
			CFrameQuest = CFrame.new(1256.0002441406, 57.74426651001, 7062.068359375)
			NameMon = "Elite Skeleton"
			CFrameMon = CFrame.new(1304.2407226563, 118.83484649658, 7316.1401367188)
			levelquest = 3075
		elseif MyLevel >= 3100 and MyLevel <= 3124 then
			Ms = "Desert Thief [Lv.3125]"
			CFrameQuest = CFrame.new(8847.94238, 14.4670143, 1400.72119, -0.322491169, 0, 0.946572542, 0, 1, 0, -0.946572542, 0, -0.322491169)
			NameMon = "Desert Thief"
			CFrameMon = CFrame.new(8331.119140625, 266.55130004883, 1398.7974853516)
			levelquest = 3100
		elseif MyLevel >= 3125 and MyLevel <= 3149 then
			Ms = "Anubis [Lv.3150]"
			CFrameQuest = CFrame.new(9141.8457, 14.469614, 1055.01233, -0.894592047, 0, 0.446883589, 0, 1, 0, -0.446883589, 0, -0.894592047)
			NameMon = "Anubis"
			CFrameMon = CFrame.new(9568.6044921875, 86.315910339355, 1232.5357666016)
			levelquest = 3125
		elseif MyLevel >= 3150 and MyLevel <= 3174 then
			Ms = "Pharaoh [Lv.3175]"
			CFrameQuest = CFrame.new(9554.38672, 14.4762154, 1545.59363, 0.31220305, 0, 0.950015426, 0, 1, 0, -0.950015426, 0, 0.31220305)
			NameMon = "Pharaoh"
			CFrameMon = CFrame.new(9116.03125, 47.920093536377, 1914.4226074219)
			levelquest = 3150
		elseif MyLevel >= 3175 and MyLevel <= 3199 then
			Ms = "Flame User [Lv.3200]"
			CFrameQuest = CFrame.new(9857.44727, 14.7451639, 1684.2052, -0.0956259966, 0, 0.995417356, 0, 1, 0, -0.995417356, 0, -0.0956259966)
			NameMon = "Flame User"
			CFrameMon = CFrame.new(9780.2236328125, 316.51937866211, 1732.7475585938)
			levelquest = 3175
		elseif MyLevel >= 3200 and MyLevel <= 3224 then
			Ms = "Chess Soldier [Lv. 3200]"
			CFrameQuest = CFrame.new(6875, 28.9374027, 7951.53223, -0.992770553, 0, -0.12002904, 0, 1, 0, 0.12002904, 0, -0.992770553)
			NameMon = "Chess Soldier"
			CFrameMon = CFrame.new(6842.9458, 113.897461, 8166.92139, -0.978180647, 0, -0.207756639, 0, 1, 0, 0.207756639, 0, -0.978180647)
			levelquest = 3200
		elseif MyLevel >= 3225 and MyLevel <= 3249 then
			Ms = "Sunken Vessel [Lv.3225]"
			CFrameQuest = CFrame.new(6430.80225, 28.7034626, 7979.43799, -0.896995902, 0, -0.442038745, 0, 1, 0, 0.442038745, 0, -0.896995902)
			NameMon = "Sunken Vessel"
			CFrameMon = CFrame.new(6260.2124, 23.7355881, 8518.10645, -0.135348797, 0, -0.990798056, 0, 1, 0, 0.990798056, 0, -0.135348797)
			levelquest = 3225
		elseif MyLevel >= 3250 then
			Ms = "Biscuit Man [Lv.3250]"
			CFrameQuest = CFrame.new(5789.9624, 202.36792, 9032.56641, 0.256339848, -0, -0.966586709, 0, 1, -0, 0.966586709, 0, 0.256339848)
			NameMon = "Biscuit Man"
			CFrameMon = CFrame.new(6250.66699, 335.045502, 9107.34668, 0.196545959, -0, -0.980494618, 0, 1, -0, 0.980494618, 0, 0.196545959)
			levelquest = 3250
		end
	end
end

if game:GetService("CoreGui"):FindFirstChild("NOOBHUB") then
    game:GetService("CoreGui"):FindFirstChild("NOOBHUB"):Destroy()
end
-- Atom Lib
do 
	local ui =  game:GetService("CoreGui"):FindFirstChild("Atom Lib") 
	if ui then
		ui:Destroy()
	end
end



local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local Atomlib = Instance.new("ScreenGui")

Atomlib.Name = "Atom Lib"
Atomlib.Parent = game:GetService("CoreGui")
Atomlib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

do  local ui =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("Close")  if ui then ui:Destroy() end end
local Close = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainFrameUICorner = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer

Close.Name = "Close"
Close.Parent = game:GetService("CoreGui").RobloxGui.Modules
Close.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Close
MainFrame.Active = true
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BorderColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.18696712, 0, 0.164417177, 0)
MainFrame.Size = UDim2.new(0, 0, 0, 0) -- 0, 100, 0, 50

MakeDraggable(Button,MainFrame)

local DropFrameStroke = Instance.new("UIStroke")

DropFrameStroke.Thickness = 1
DropFrameStroke.Name = ""
DropFrameStroke.Parent = MainFrame
DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
DropFrameStroke.Color = Color3.fromRGB(255,24,24)
DropFrameStroke.Transparency = 1

TweenService:Create(
	MainFrame,
	TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{Size = UDim2.new(0, 100, 0, 50)}
):Play()

repeat wait() until MainFrame.Size == UDim2.new(0, 100, 0, 50)

TweenService:Create(
	DropFrameStroke,
	TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{Transparency = 0}
):Play()

repeat wait() until DropFrameStroke.Transparency == 0


MainFrameUICorner.Name = "MainFrameUICorner"
MainFrameUICorner.Parent = MainFrame

Button.Name = "Button"
Button.Parent = MainFrame
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(0, 100, 0, 50)
Button.AutoButtonColor = false
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000

TextLabel.Parent = MainFrame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 25)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "Open"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 12.000

Toggle = false 

Button.MouseButton1Click:Connect(function()
	if Toggle == false then
		TextLabel.TextSize = 0 
		TweenService:Create(
			TextLabel,
			TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{TextSize = 12}
		):Play()
		TextLabel.Text = "Close"
		Atomlib.Enabled = true
	else
		TextLabel.TextSize = 0 
		TweenService:Create(
			TextLabel,
			TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{TextSize = 12}
		):Play()
		TextLabel.Text = "Open"
		Atomlib.Enabled = false
	end
	Toggle = not Toggle
end)


local create = {}


function create:Win()

    local fs = false 
    local currentservertoggled = ""
    local Main = Instance.new("Frame")
        
    Main.Name = "Main"
    Main.Parent = Atomlib
    Main.BackgroundColor3 = Color3.fromRGB(19 , 19, 19)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.5   , 0)
    Main.Size = UDim2.new(0, 0, 0, 0)
    Main.ClipsDescendants = true 
    Main.AnchorPoint = Vector2.new(0.5, 0.5)

    local Logo = Instance.new("ImageLabel")

    
    Logo.Name = "Logo"
    Logo.Parent = Main
    Logo.AnchorPoint = Vector2.new(0.5, 0.5)
    Logo.Position = UDim2.new(0.1, 0, 0.08, 0)
    Logo.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    Logo.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Logo.BorderSizePixel = 0
    Logo.Size = UDim2.new(0, 56, 0, 56)
    Logo.Image = "rbxassetid://8252330502"
    
    
    local PageTap = Instance.new("Frame")
    local UIGradient_PageTap = Instance.new("UIGradient")

    PageTap.Name = "PageTap"
    PageTap.Parent = Main
    PageTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PageTap.BackgroundTransparency = 1
    PageTap.BorderSizePixel = 0
    PageTap.Position = UDim2.new(0.189873412, 0, 0, 0)
    PageTap.Size = UDim2.new(0, 320, 0, 56)

    UIGradient_PageTap.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(230, 0, 39)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 35, 138))}
    UIGradient_PageTap.Parent = PageTap

    
    local ScolTap = Instance.new("ScrollingFrame")
    local UIListLayout_ScolTap = Instance.new("UIListLayout")
    local UIPadding_ScolTap = Instance.new("UIPadding")

    ScolTap.Name = "ScolTap"
    ScolTap.Parent = PageTap
    ScolTap.Active = true
    ScolTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScolTap.BackgroundTransparency = 1
    ScolTap.BorderSizePixel = 0
    ScolTap.Size = UDim2.new(0, 320, 0, 56)
    ScolTap.CanvasSize = UDim2.new(0.5, 0, 0, 0)
    ScolTap.ScrollBarThickness = 3
    ScolTap.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)

    UIListLayout_ScolTap.Parent = ScolTap
    UIListLayout_ScolTap.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_ScolTap.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_ScolTap.Padding = UDim.new(0, 5)

    UIPadding_ScolTap.Parent = ScolTap
    UIPadding_ScolTap.PaddingTop = UDim.new(0, 6)


    local pagesFolder = Instance.new("Folder")

    pagesFolder.Name = "pagesFolder"
    pagesFolder.Parent = Main
  
    MakeDraggable(Main,Main)
    local tween = game:GetService("TweenService")
    local library = {currenttab = '',toggledui = false}
    tween:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 395, 0, 395)}):Play()


    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.RightControl then 
            if library.toggledui == false then
                library.toggledui = true  
                tween:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
            else 
                library.toggledui = false 
                tween:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 395, 0, 395)}):Play()
            end 
        end
    end)


local tap = {}

function tap:addtap(text)

    local TextButton_Tap = Instance.new("TextButton")

    TextButton_Tap.Parent = ScolTap
    TextButton_Tap.Name = "TextButton_Tap"
    TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_Tap.BackgroundTransparency = 1
    TextButton_Tap.Position = UDim2.new(0.0151898731, 0, 0.132352948, 0)
    TextButton_Tap.Size = UDim2.new(0, 75, 0, 50)
    TextButton_Tap.Font = Enum.Font.GothamSemibold
    TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
    TextButton_Tap.TextSize = 10.000
    TextButton_Tap.TextWrapped = true
    TextButton_Tap.Text = text
    
    

    local TextLabel_Tap = Instance.new("TextLabel") 

    TextLabel_Tap.Parent = TextButton_Tap
    TextLabel_Tap.Name = "TextLabel_Tap"
    TextLabel_Tap.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_Tap.Position = UDim2.new(0.52, 0, 0.8, 0)
    TextLabel_Tap.Size = UDim2.new(0, 0, 0, 0)
    TextLabel_Tap.Font = Enum.Font.SourceSans
    TextLabel_Tap.Text = " "
    TextLabel_Tap.TextColor3 = Color3.fromRGB(255, 0, 95)
    TextLabel_Tap.TextSize = 14.000
    TextLabel_Tap.BorderSizePixel = 0



    local MainFramePage = Instance.new("Frame")

    
    MainFramePage.Name = "MainFramePage"
    MainFramePage.Parent = pagesFolder
    MainFramePage.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    MainFramePage.BorderSizePixel = 0
    MainFramePage.Position = UDim2.new(0, 0, 0.141772151, 0)
    MainFramePage.Size = UDim2.new(0, 395, 0, 339)
    MainFramePage.Visible = false 



    local FramePage = Instance.new("Frame")
    local ScolPage = Instance.new("ScrollingFrame")
    local MainPage = Instance.new("Frame")
    local UIGridLayout_MainPage = Instance.new("UIGridLayout")
    local UIListLayout_MainPage = Instance.new("UIListLayout")
    local UIPadding_MainPage = Instance.new("UIPadding")

    --Properties:

    FramePage.Name = "FramePage"
    FramePage.Parent = MainFramePage
    FramePage.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    FramePage.BorderSizePixel = 0
    FramePage.ClipsDescendants = true
    FramePage.Position = UDim2.new(0, 0, 0.02359882, 0)
    FramePage.Size = UDim2.new(0, 395, 0, 331)
    FramePage.Visible = true 

    ScolPage.Name = "ScolPage"
    ScolPage.Parent = FramePage
    ScolPage.Active = true
    ScolPage.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    ScolPage.BorderSizePixel = 0
    ScolPage.Size = UDim2.new(0, 395, 0, 324)
    ScolPage.ScrollBarThickness = 3
    ScolPage.ScrollBarImageColor3 =  Color3.fromRGB(255, 0, 125)

    MainPage.Name = "MainPage"
    MainPage.Parent = ScolPage
    MainPage.BackgroundTransparency = 1 
    MainPage.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainPage.BorderSizePixel = 0
    MainPage.Size = UDim2.new(0, 395, 0, 324)

    UIGridLayout_MainPage.Parent = MainPage
    UIGridLayout_MainPage.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout_MainPage.CellPadding = UDim2.new(0, 20, 0, 10)
    UIGridLayout_MainPage.CellSize = UDim2.new(0, 170, 0, 295)

    UIListLayout_MainPage.Parent = MainPage
    UIListLayout_MainPage.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_MainPage.Padding = UDim.new(0, 5)

    UIPadding_MainPage.Parent = MainPage
    UIPadding_MainPage.PaddingLeft = UDim.new(0, 16)
    UIPadding_MainPage.PaddingTop = UDim.new(0, 10)


    TextButton_Tap.MouseButton1Click:connect(function (  )
        currentservertoggled = MainPage.Name
        for i, v in next, pagesFolder:GetChildren() do
            if v.Name == "MainFramePage" then
                -- TweenService:Create(
                --     fucklib,
                --     TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                --     {BackgroundTransparency = 0}
                -- ):Play()
                v.Visible = false

            end

            MainFramePage.Visible = true
       --     wait(0.125)
            -- TweenService:Create(
            --     fucklib,
            --     TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            --     {BackgroundTransparency = 1}
            -- ):Play()
        --    MainPage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Quad", 0.15, true)
        end
        
    for i ,v in next , ScolTap:GetChildren() do
        if v:IsA("TextButton") then
            TweenService:Create(
                v.TextLabel_Tap,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
            TweenService:Create(
                v,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)}
            ):Play()
            
            
        end
        TweenService:Create(
            TextLabel_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 50, 0, 2)}
        ):Play()
        TweenService:Create(
            TextButton_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)}
        ):Play()
    end
 end)



    if fs == false then
        TweenService:Create(
            TextLabel_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 50, 0, 2)}
        ):Play()
        TweenService:Create(
            TextButton_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)}
        ):Play()

        MainFramePage.Visible = true
        MainFramePage.Name  = text .. "Server"
        fs  = true
    end

local page = {}

function page:addpage()

    local Page = Instance.new("Frame")
    local ScolPage2 = Instance.new("ScrollingFrame")
    
    
    Page.Name = "Page"
    Page.Parent = MainPage
    Page.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    Page.BorderSizePixel = 0
    Page.Position = UDim2.new(0.51645571, 0, 0.0526315793, 0)
    Page.Size = UDim2.new(0, 178, 0, 262)
    
    ScolPage2.Name = "ScolPage"
    ScolPage2.Parent = Page
    ScolPage2.Active = true
    ScolPage2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ScolPage2.BorderSizePixel = 0
    ScolPage2.Size = UDim2.new(0, 185, 0, 298)
    ScolPage2.ScrollBarThickness = 3
    ScolPage2.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)
    

    local UIListLayout_ScolPage2 = Instance.new("UIListLayout")

    UIListLayout_ScolPage2.Parent = ScolPage2
    UIListLayout_ScolPage2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_ScolPage2.Padding = UDim.new(0, 7)

    
    local UIPadding_ScolPage2 = Instance.new("UIPadding")

    UIPadding_ScolPage2.Parent = ScolPage2
    UIPadding_ScolPage2.PaddingLeft = UDim.new(0,15)
    UIPadding_ScolPage2.PaddingTop = UDim.new(0, 15)

    game:GetService("RunService").Stepped:Connect(function ()
        pcall(function ()
              ScolTap.CanvasSize = UDim2.new(0,UIListLayout_ScolTap.AbsoluteContentSize.X  ,0,0)  
              ScolPage.CanvasSize = UDim2.new(0,0,0,UIGridLayout_MainPage.AbsoluteContentSize.Y + 20 )  
              ScolPage2.CanvasSize = UDim2.new(0,0,0,UIListLayout_ScolPage2.AbsoluteContentSize.Y+ 30 )  
        end)
    end)

    
local ems = {}

function ems:Button(text,callback)
    


    local ToggleFrame = Instance.new("Frame")
    
    ToggleFrame.Name = "ToggleFrame"
    ToggleFrame.Parent = ScolPage2
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.BackgroundTransparency = 1
    ToggleFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame.Size = UDim2.new(0, 155, 0, 22)

    local emsTextButton = Instance.new("TextButton")

    emsTextButton.Parent = ToggleFrame
    emsTextButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    emsTextButton.BackgroundTransparency = 1
    emsTextButton.AnchorPoint = Vector2.new(0.5, 0.5)
    emsTextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    emsTextButton.Size = UDim2.new(1, 0, 0.8, 0)
    emsTextButton.Font = Enum.Font.GothamSemibold
    emsTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    emsTextButton.TextSize = 13.000
    emsTextButton.TextWrapped = true
    emsTextButton.Text = ""
    emsTextButton.BorderSizePixel = 0
    emsTextButton.AutoButtonColor = false 

    local TextButton_Pageframe_Uiconner = Instance.new("UICorner")
            
    TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 3)
    TextButton_Pageframe_Uiconner.Name = ""
    TextButton_Pageframe_Uiconner.Parent = ToggleFrame

    local TextLabel_emsTextButton = Instance.new("TextLabel") 

    TextLabel_emsTextButton.Parent = emsTextButton
    TextLabel_emsTextButton.Name = "TextLabel_emsTextButton"
    TextLabel_emsTextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    TextLabel_emsTextButton.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_emsTextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel_emsTextButton.Size = UDim2.new(0, 0, 0, 0)
    TextLabel_emsTextButton.Font = Enum.Font.GothamSemibold
    TextLabel_emsTextButton.Text = text
    TextLabel_emsTextButton.TextColor3 = Color3.fromRGB(255, 0, 95)
    TextLabel_emsTextButton.TextSize = 10.000
    TextLabel_emsTextButton.BorderSizePixel = 0

    local MheeFrameStroke = Instance.new("UIStroke",ToggleFrame)
                    
    MheeFrameStroke.Thickness = 1
    MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
    MheeFrameStroke.Color = Color3.fromRGB(255, 0, 95)
    MheeFrameStroke.Transparency = 0

    emsTextButton.MouseButton1Click:Connect(function()
        TweenService:Create(
            TextLabel_emsTextButton,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize =5} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        wait(0.1)
        TweenService:Create(
            TextLabel_emsTextButton,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize = 10} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        pcall(callback)
    end)

    
    emsTextButton.MouseEnter:Connect(function (  )
    --    if joincheck.check1 == false then

            TweenService:Create(
                emsTextButton,
                TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 0, 95)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
--     end
        -- joincheck = not joincheck
        -- callback(joincheck)
    end)
    emsTextButton.MouseLeave:Connect(function (  )

            TweenService:Create(
                emsTextButton,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 0, 95)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
    end)
end

function ems:Button1(text,callback)

    local ToggleFrame1 = Instance.new("Frame")
    
    ToggleFrame1.Name = "ToggleFrame"
    ToggleFrame1.Parent = ScolPage2
    ToggleFrame1.BackgroundColor3 = Color3.fromRGB(255, 0 ,95)
    ToggleFrame1.BorderSizePixel = 0
    ToggleFrame1.BackgroundTransparency = 0
    ToggleFrame1.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame1.Size = UDim2.new(0, 155, 0, 22)

    local emsTextButton1 = Instance.new("TextButton")

    emsTextButton1.Parent = ToggleFrame1
    emsTextButton1.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    emsTextButton1.BackgroundTransparency = 1
    emsTextButton1.AnchorPoint = Vector2.new(0.5, 0.5)
    emsTextButton1.Position = UDim2.new(0.5, 0, 0.5, 0)
    emsTextButton1.Size = UDim2.new(1, 0, 0.8, 0)
    emsTextButton1.Font = Enum.Font.GothamSemibold
    emsTextButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
    emsTextButton1.TextSize = 13.000
    emsTextButton1.TextWrapped = true
    emsTextButton1.Text = ""
    emsTextButton1.BorderSizePixel = 0
    emsTextButton1.AutoButtonColor = false 

    local TextButton_Pageframe_Uiconner1 = Instance.new("UICorner")
            
    TextButton_Pageframe_Uiconner1.CornerRadius = UDim.new(0, 3)
    TextButton_Pageframe_Uiconner1.Name = ""
    TextButton_Pageframe_Uiconner1.Parent = ToggleFrame1

    local TextLabel_emsTextButton1 = Instance.new("TextLabel") 

    TextLabel_emsTextButton1.Parent = emsTextButton1
    TextLabel_emsTextButton1.Name = "TextLabel_emsTextButton"
    TextLabel_emsTextButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_emsTextButton1.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_emsTextButton1.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel_emsTextButton1.Size = UDim2.new(0, 0, 0, 0)
    TextLabel_emsTextButton1.Font = Enum.Font.GothamSemibold
    TextLabel_emsTextButton1.Text = text
    TextLabel_emsTextButton1.TextColor3 = Color3.fromRGB(255, 255 ,255)
    TextLabel_emsTextButton1.TextSize = 10.000
    TextLabel_emsTextButton1.BorderSizePixel = 0

    local MheeFrameStroke1 = Instance.new("UIStroke",ToggleFrame1)
                    
    MheeFrameStroke1.Thickness = 1
    MheeFrameStroke1.LineJoinMode = Enum.LineJoinMode.Round
    MheeFrameStroke1.Color = Color3.fromRGB(255, 0 ,95)
    MheeFrameStroke1.Transparency = 0

    emsTextButton1.MouseButton1Click:Connect(function()
        TweenService:Create(
            TextLabel_emsTextButton1,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize =5} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        wait(0.1)
        TweenService:Create(
            TextLabel_emsTextButton1,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize = 10} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        pcall(callback)
    end)

    
    emsTextButton1.MouseEnter:Connect(function (  )
    --    if joincheck.check1 == false then

            TweenService:Create(
                emsTextButton1,
                TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
--     end
        -- joincheck = not joincheck
        -- callback(joincheck)
    end)
    emsTextButton1.MouseLeave:Connect(function (  )

            TweenService:Create(
                emsTextButton1,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
    end)
end

function  ems:Toggle(text,de,callback)

    local togdoc = {boolen = false ; }
    local ToggleFrame = Instance.new("Frame")
    
    ToggleFrame.Name = "ToggleFrame"
    ToggleFrame.Parent = ScolPage2
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.BackgroundTransparency = 1
    ToggleFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame.Size = UDim2.new(0, 10, 0, 30)
    
    local ToggleButton = Instance.new("TextButton")

    ToggleButton.Parent = ToggleFrame
    ToggleButton.BackgroundColor3 = Color3.fromRGB( 0, 0, 60)
    ToggleButton.BackgroundTransparency = 1
    ToggleButton.AnchorPoint = Vector2.new(0, 0.5)
    ToggleButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleButton.Size = UDim2.new(0, 155, 0, 25)
    ToggleButton.Font = Enum.Font.GothamSemibold
    ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.TextSize = 13.000
    ToggleButton.TextWrapped = false
    ToggleButton.Text = ""
    ToggleButton.BorderSizePixel = 0 
    ToggleButton.AutoButtonColor = false 
    ToggleButton.ClipsDescendants = true 

    local ToggleButton2 = Instance.new("TextButton")

    ToggleButton2.Parent = ToggleFrame
    ToggleButton2.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    ToggleButton2.BackgroundTransparency = 1
    ToggleButton2.AnchorPoint = Vector2.new(0.5, 0.5)
    ToggleButton2.Position = UDim2.new(1, 0, 0.45, 0)
    ToggleButton2.Size = UDim2.new(0, 20, 0, 20)
    ToggleButton2.Font = Enum.Font.GothamSemibold
    ToggleButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton2.TextSize = 13.000
    ToggleButton2.TextWrapped = false
    ToggleButton2.Text = ""
    ToggleButton2.BorderSizePixel = 0 


    local TextLabelToggle = Instance.new("TextLabel") 

    TextLabelToggle.Parent = ToggleButton
    TextLabelToggle.Name = "TextLabelToggle"
    TextLabelToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    TextLabelToggle.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabelToggle.Position = UDim2.new(0.64, 0, 0.4, 0)
    TextLabelToggle.Size =  UDim2.new(0, 150, 0, 40)
    TextLabelToggle.Font = Enum.Font.GothamBold
    TextLabelToggle.Text = tostring(text)
    TextLabelToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabelToggle.TextSize = 11.000
    TextLabelToggle.BorderSizePixel = 0
    TextLabelToggle.TextScaled = true
    TextLabelToggle.BackgroundTransparency = 1
    TextLabelToggle.TextXAlignment = Enum.TextXAlignment.Left
    local resizetext2 =  Instance.new("UITextSizeConstraint",TextLabelToggle)
    resizetext2.MaxTextSize = 11
    
    local TextButton_2_Toggle = Instance.new("TextButton")

    TextButton_2_Toggle.Parent = ToggleButton2
    TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(249, 53, 139)
    TextButton_2_Toggle.BorderSizePixel = 0
    TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_2_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextButton_2_Toggle.Size = UDim2.new(0, 19, 0, 19)
    TextButton_2_Toggle.Font = Enum.Font.SourceSans
    TextButton_2_Toggle.Text = " "
    TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_2_Toggle.TextSize = 12.000
    TextButton_2_Toggle.AutoButtonColor = false 

    local TextButton_3_Toggle = Instance.new("TextButton")


    TextButton_3_Toggle.Parent = TextButton_2_Toggle
    TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(255, 0, 95)
    TextButton_3_Toggle.BorderSizePixel = 0
    TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_3_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextButton_3_Toggle.Size = UDim2.new(0, 17, 0, 17)
    TextButton_3_Toggle.Font = Enum.Font.SourceSans
    TextButton_3_Toggle.Text = " "
    TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_3_Toggle.TextSize = 12.000
    TextButton_3_Toggle.AutoButtonColor = false 

    local ImageLabel_Toggle = Instance.new("ImageButton")


    ImageLabel_Toggle.Parent = TextButton_2_Toggle
    ImageLabel_Toggle.BackgroundTransparency = 1
    ImageLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_Toggle.Size = UDim2.new(0, 0, 0, 0)
    ImageLabel_Toggle.Image = "rbxassetid://5880482965"
    ImageLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel_Toggle.Position = UDim2.new(0.47, 0, 0.5, 0)


    local FrameToggle = Instance.new("UICorner")
            
    FrameToggle.CornerRadius = UDim.new(0, 4)
    FrameToggle.Name = ""
    FrameToggle.Parent = emsTextButton

    local FrameToggle1 = Instance.new("UICorner")
            
    FrameToggle1.CornerRadius = UDim.new(0, 4)
    FrameToggle1.Name = ""
    FrameToggle1.Parent = TextButton_2_Toggle

    local FrameToggle2 = Instance.new("UICorner")
            
    FrameToggle2.CornerRadius = UDim.new(0, 4)
    FrameToggle2.Name = ""
    FrameToggle2.Parent = ImageLabel_Toggle

    local FrameToggle3 = Instance.new("UICorner")
            
    FrameToggle3.CornerRadius = UDim.new(0, 4)
    FrameToggle3.Name = ""
    FrameToggle3.Parent = TextButton_3_Toggle

    TextButton_3_Toggle.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)

    ImageLabel_Toggle.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)

    TextButton_2_Toggle.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)


    ToggleButton.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)

        if de == true then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            togdoc.boolen = not togdoc.boolen
            pcall(callback,togdoc.boolen)
        end
    end

function ems:DropDown(text,text2,list,callback)


    local checkdrop = {checkscol = false ; }
    local DropFrame = Instance.new("Frame")
    local dropfuc = {}

    DropFrame.Name = "DropFrame"
    DropFrame.Parent = ScolPage2
    DropFrame.BackgroundColor3 = Color3.fromRGB(255, 0 ,95)
    DropFrame.BorderSizePixel = 0
    DropFrame.BackgroundTransparency = 1
    DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropFrame.Size = UDim2.new(0, 155, 0, 45)
    DropFrame.BackgroundTransparency = 1
    DropFrame.ClipsDescendants = true 

    local TextLabelDrop = Instance.new("TextLabel") 

    TextLabelDrop.Parent = DropFrame
    TextLabelDrop.Name = "TextLabelDrop"
    TextLabelDrop.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    TextLabelDrop.BackgroundTransparency = 1
    TextLabelDrop.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabelDrop.Position = UDim2.new(0.5, 0, 0.2, 0)
    TextLabelDrop.Size = UDim2.new(0, 155, 0, 15)
    TextLabelDrop.Font = Enum.Font.GothamSemibold
    TextLabelDrop.Text = text
    TextLabelDrop.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabelDrop.TextSize = 10.000
    TextLabelDrop.BorderSizePixel = 0
    TextLabelDrop.ClipsDescendants = true 

    local FrameDrop = Instance.new("Frame")
    
    FrameDrop.Name = "FrameDrop"
    FrameDrop.Parent = DropFrame
    FrameDrop.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    FrameDrop.BorderSizePixel = 0
    FrameDrop.BackgroundTransparency = 1
    FrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
    FrameDrop.Position = UDim2.new(0.5, 0, 0.75, 0)
    FrameDrop.Size = UDim2.new(0, 155, 0, 27)
    FrameDrop.BackgroundTransparency = 0
    FrameDrop.ClipsDescendants = true 

    local DropButton = Instance.new("TextButton")

    DropButton.Parent = FrameDrop
    DropButton.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    DropButton.BackgroundTransparency = 1
    DropButton.AnchorPoint = Vector2.new(0.5, 0.5)
    DropButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropButton.Size = UDim2.new(0, 155, 0, 24)
    DropButton.Font = Enum.Font.GothamSemibold
    DropButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    DropButton.TextSize = 11.000
    DropButton.TextWrapped = true
    DropButton.Text = ""
    DropButton.BorderSizePixel = 0 
    DropButton.AutoButtonColor = false 
    DropButton.ClipsDescendants = true 

    local TextLabelDrop2 = Instance.new("TextLabel") 

    TextLabelDrop2.Parent = DropButton
    TextLabelDrop2.Name = "TextLabelDrop"
    TextLabelDrop2.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    TextLabelDrop2.BackgroundTransparency = 1
    TextLabelDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabelDrop2.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabelDrop2.Size = UDim2.new(0, 155, 0, 22)
    TextLabelDrop2.Font = Enum.Font.GothamSemibold
    TextLabelDrop2.Text = text2.." : "
    TextLabelDrop2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabelDrop2.TextSize = 10.000
    TextLabelDrop2.BorderSizePixel = 0
    TextLabelDrop2.ClipsDescendants = true 

    local DropConer = Instance.new("UICorner")
            
    DropConer.CornerRadius = UDim.new(0, 4)
    DropConer.Name = ""
    DropConer.Parent = DropButton

    local DropConer1 = Instance.new("UICorner")
            
    DropConer1.CornerRadius = UDim.new(0, 4)
    DropConer1.Name = ""
    DropConer1.Parent = FrameDrop
    

    
    local TextButton_Dropdown = Instance.new("TextButton")

    TextButton_Dropdown.Parent = DropButton
    TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    TextButton_Dropdown.BorderSizePixel = 0
    TextButton_Dropdown.Size = UDim2.new(0, 22, 0, 24)
    TextButton_Dropdown.Font = Enum.Font.SourceSans
    TextButton_Dropdown.Text = "  "
    TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_Dropdown.TextSize = 14.000
    TextButton_Dropdown.AutoButtonColor = false 
    TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_Dropdown.Position = UDim2.new(0.91, 0, 0.5, 0)
    
    local DropConer2 = Instance.new("UICorner")
            
    DropConer2.CornerRadius = UDim.new(0, 4)
    DropConer2.Name = ""
    DropConer2.Parent = TextButton_Dropdown

    local DropArbt_listimage = Instance.new("ImageButton")
                            
    DropArbt_listimage.Parent = TextButton_Dropdown
    DropArbt_listimage.BackgroundTransparency = 1
    DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
    DropArbt_listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropArbt_listimage.BorderSizePixel = 0
    DropArbt_listimage.Size = UDim2.new(0, 20, 0, 20)
    DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"

    local ListFrame = Instance.new("Frame")
    
    ListFrame.Name = "ListFrame"
    ListFrame.Parent = ScolPage2
    ListFrame.BackgroundColor3 = Color3.fromRGB(255, 0 ,95)
    ListFrame.BorderSizePixel = 0
    ListFrame.BackgroundTransparency = 1
    ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ListFrame.Size = UDim2.new(0, 155, 0, 0)
    ListFrame.BorderSizePixel = 0 
    ListFrame.ClipsDescendants = true 
    ListFrame.Visible = false 

    local ScolPage_list = Instance.new("ScrollingFrame")


    local UIListLayout_MainPage_list = Instance.new("UIListLayout")
    local UIPadding_MainPage_list = Instance.new("UIPadding")


    ScolPage_list.Name = "ScolPage_list"
    ScolPage_list.Parent = ListFrame
    ScolPage_list.Active = true
    ScolPage_list.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    ScolPage_list.BorderSizePixel = 0
    ScolPage_list.Size = UDim2.new(0, 155, 0, 0)
    ScolPage_list.ScrollBarThickness = 3
    ScolPage_list.AnchorPoint = Vector2.new(0.5, 0.5)
    ScolPage_list.Position = UDim2.new(0.5, 0, 0.5, 0)
    ScolPage_list.ClipsDescendants = true 
    ScolPage_list.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)
    ScolPage_list.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)

    UIListLayout_MainPage_list.Parent = ScolPage_list
    UIListLayout_MainPage_list.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_MainPage_list.Padding = UDim.new(0, 5)

    UIPadding_MainPage_list.Parent = ScolPage_list
    UIPadding_MainPage_list.PaddingLeft = UDim.new(0, 0)
    UIPadding_MainPage_list.PaddingTop = UDim.new(0, 0)


    local DropConer4 = Instance.new("UICorner")
            
    DropConer4.CornerRadius = UDim.new(0, 4)
    DropConer4.Name = ""
    DropConer4.Parent = ListFrame

    local framesize =  50
    local count = 0 
    for i , v in pairs(list) do 
        count = count + 1 
        
        if count == 1 then
            framesize = 50 
        elseif count == 2 then
            framesize = 70 
        elseif count >= 3 then
            framesize = 150 
        end

    local listDropButton = Instance.new("TextButton")

    listDropButton.Parent = ScolPage_list
    listDropButton.BackgroundColor3 = Color3.fromRGB(15, 15 ,15)
    listDropButton.BorderSizePixel = 0
    listDropButton.Size = UDim2.new(0, 155, 0, 24)
    listDropButton.Font = Enum.Font.GothamSemibold
    listDropButton.Text = tostring(v)
    listDropButton.TextColor3 = Color3.fromRGB(255, 20, 95)
    listDropButton.TextSize = 11.000
    listDropButton.AutoButtonColor = false 
    listDropButton.AnchorPoint = Vector2.new(0.5, 0.5)
    listDropButton.Position = UDim2.new(0.5, 0, 0.5, 0)

    listDropButton.MouseButton1Click:Connect(function()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 155, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 155, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 155, 0, 0)
        ListFrame.Visible = false
        TextLabelDrop2.Text = text2.." : "..tostring(v)  
        callback(v)
    end
)

    listDropButton.MouseEnter:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(25, 25, 25)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)
    listDropButton.MouseLeave:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(15, 15, 15)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)

    ScolPage_list.CanvasSize = UDim2.new(0,0,0,UIListLayout_MainPage_list.AbsoluteContentSize.Y + 10)  



end

    DropArbt_listimage.MouseButton1Click:Connect(function()     
        if checkdrop.checkscol == false then 
            ListFrame.Visible = true 
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = -180}
            ):Play()
            TweenService:Create(
                ListFrame,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 155, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                ScolPage_list,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 155, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()

    else
        TweenService:Create(
            DropArbt_listimage,
            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
            {Rotation = 0}
        ):Play()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 155, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 155, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 155, 0, 0)
        ListFrame.Visible = false
        end
        checkdrop.checkscol  = not    checkdrop.checkscol  
        pcall(callback,   checkdrop.checkscol )
    end)


    DropButton.MouseButton1Click:Connect(function()     
        if checkdrop.checkscol == false then 
            ListFrame.Visible = true 
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = -180}
            ):Play()
            TweenService:Create(
                ListFrame,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 155, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                ScolPage_list,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 155, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()

    else
        TweenService:Create(
            DropArbt_listimage,
            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
            {Rotation = 0}
        ):Play()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 155, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 155, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 155, 0, 0)
        ListFrame.Visible = false
        end
        checkdrop.checkscol  = not    checkdrop.checkscol  
        pcall(callback,   checkdrop.checkscol )
    end)

    function dropfuc:Add(text2)
       
    local listDropButton = Instance.new("TextButton")

    listDropButton.Parent = ScolPage_list
    listDropButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    listDropButton.BorderSizePixel = 0
    listDropButton.Size = UDim2.new(0, 155, 0, 24)
    listDropButton.Font = Enum.Font.GothamSemibold
    listDropButton.Text = tostring(text2)
    listDropButton.TextColor3 = Color3.fromRGB(255, 0, 95)
    listDropButton.TextSize = 11.000
    listDropButton.AutoButtonColor = false 
    listDropButton.AnchorPoint = Vector2.new(0.5, 0.5)
    listDropButton.Position = UDim2.new(0.5, 0, 0.5, 0)



    listDropButton.MouseButton1Click:Connect(function()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 140, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 140, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 140, 0, 0)
        ListFrame.Visible = false
        TextLabelDrop2.Text = text.." : "..tostring(text2)  
        callback(text2)
    end
)

    listDropButton.MouseEnter:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(25, 25, 25)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)
    listDropButton.MouseLeave:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(15, 15, 15)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)

    ScolPage_list.CanvasSize = UDim2.new(0,0,0,UIListLayout_MainPage_list.AbsoluteContentSize.Y + 10)  


    end

    function dropfuc:Clear()
    for i, v in next, ScolPage_list:GetChildren() do
        if v:IsA("TextButton")  then 
        v:Destroy()
        
        end
        ScolPage_list.CanvasSize = UDim2.new(0,0,0,UIListLayout_MainPage_list.AbsoluteContentSize.Y + 10)  
    end   

end  
    return  dropfuc
end

function ems:Slder(text,min,max,de,callback)
    local SliderFunc = {}
    local SliderFrame = Instance.new("Frame")


    SliderFrame.Name = "SliderFrame"
    SliderFrame.Parent = ScolPage2
    SliderFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
    SliderFrame.BorderSizePixel = 0
    SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    SliderFrame.Size = UDim2.new(0, 155, 0, 50)
    SliderFrame.BackgroundTransparency = 1
    SliderFrame.ClipsDescendants = true 

    local fakeclick = Instance.new("TextButton",SliderFrame)

    fakeclick.BackgroundColor3 = Color3.fromRGB(15,15,15)
    fakeclick.BorderSizePixel = 0
    fakeclick.Size = UDim2.new(1, 0, 1, 0)
    fakeclick.Font = Enum.Font.GothamSemibold
    fakeclick.Text = ""
    fakeclick.TextColor3 = Color3.fromRGB(255, 255, 255)
    fakeclick.Transparency = 1
    fakeclick.TextSize = 10.000
    fakeclick.AutoButtonColor = false 
    fakeclick.AnchorPoint = Vector2.new(0.5, 0.5)
    fakeclick.Position = UDim2.new(0.5, 0, 0.3, 0)

    local Conner_SliderFrame1 = Instance.new("UICorner")
       
    Conner_SliderFrame1.CornerRadius = UDim.new(0, 5)
    Conner_SliderFrame1.Name = ""
    Conner_SliderFrame1.Parent = SliderFrame

    local SlisFrameStroke = Instance.new("UIStroke",SliderFrame)
                    
    SlisFrameStroke.Thickness = 1
    SlisFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
    SlisFrameStroke.Color = Color3.fromRGB(255, 0, 95)
    SlisFrameStroke.Transparency = 0
    local TalabelSlider = Instance.new("TextLabel") 

    TalabelSlider.Parent = SliderFrame
    TalabelSlider.Name = "TalabelSlider"
    TalabelSlider.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    TalabelSlider.BackgroundTransparency = 1
    TalabelSlider.AnchorPoint = Vector2.new(0.5, 0.5)
    TalabelSlider.Position = UDim2.new(0.5, 0, 0.2, 0)
    TalabelSlider.Size = UDim2.new(0, 145, 0, 20)
    TalabelSlider.Font = Enum.Font.GothamSemibold
    TalabelSlider.Text = text
    TalabelSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
    TalabelSlider.TextSize = 11.000
    TalabelSlider.BorderSizePixel = 0
    TalabelSlider.ClipsDescendants = true 
    TalabelSlider.TextXAlignment = Enum.TextXAlignment.Left

       
    local ValueFrame = Instance.new("Frame")

    ValueFrame.Name = "ValueFrame"
    ValueFrame.Parent = SliderFrame
    ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    ValueFrame.BorderSizePixel = 0
    ValueFrame.BackgroundTransparency = 0
    ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ValueFrame.Position = UDim2.new(0.5, 0, 0.7, 0)
    ValueFrame.Size = UDim2.new(0, 145, 0, 20)
    ValueFrame.BackgroundTransparency = 1
    ValueFrame.ClipsDescendants = true 

    local SecValue = Instance.new("Frame")

    SecValue.Name = "SecValue"
    SecValue.Parent = ValueFrame
    SecValue.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    SecValue.BorderSizePixel = 0
    SecValue.BackgroundTransparency = 0
    SecValue.AnchorPoint = Vector2.new(0.5, 0.5)
    SecValue.Position = UDim2.new(0.5, 0, 0.5, 0)
    SecValue.Size = UDim2.new(0, 135, 0, 4)
    SecValue.BackgroundTransparency = 0
    SecValue.ClipsDescendants = false 

    
    local MainValue = Instance.new("Frame")

    MainValue.Name = "MainValue"
    MainValue.Parent = SecValue
    MainValue.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    MainValue.BorderSizePixel = 0
    MainValue.BackgroundTransparency = 0
    -- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
    MainValue.Position = UDim2.new(0., 0, 0., 0)
    MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 4)
    MainValue.BackgroundTransparency = 0
    MainValue.ClipsDescendants = false 

     
    local ConneValue = Instance.new("Frame")

    ConneValue.Name = "ConneValue"
    ConneValue.Parent = SecValue
    ConneValue.BackgroundColor3 = Color3.fromRGB(255,255, 255)
    ConneValue.Size = UDim2.new(0, 10, 0, 10)
    ConneValue.BackgroundTransparency = 0
    ConneValue.BorderSizePixel = 0 
    ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
    ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.5,0.5, 0) 
    ConneValue.ClipsDescendants = false 

    local Conner_Conne = Instance.new("UICorner")
                    
    Conner_Conne.CornerRadius = UDim.new(0, 10)
    Conner_Conne.Name = ""
    Conner_Conne.Parent = ConneValue

            
    local ScolDown_Uiconner2 = Instance.new("UICorner")
                
    ScolDown_Uiconner2.CornerRadius = UDim.new(0, 8)
    ScolDown_Uiconner2.Name = ""
    ScolDown_Uiconner2.Parent = MainValue

    local ScolDown_Uiconner3 = Instance.new("UICorner")
        
    ScolDown_Uiconner3.CornerRadius = UDim.new(0, 8)
    ScolDown_Uiconner3.Name = ""
    ScolDown_Uiconner3.Parent = SecValue


    
    local ShowValueFarm = Instance.new("Frame")

    ShowValueFarm.Name = "ShowValueFarm"
    ShowValueFarm.Parent = SliderFrame
    ShowValueFarm.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    ShowValueFarm.Size = UDim2.new(0, 50, 0, 14)
    ShowValueFarm.BackgroundTransparency = 1
    ShowValueFarm.BorderSizePixel = 0 
    ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
    ShowValueFarm.Position = UDim2.new(0.80, 0, 0.28, 0)
    ShowValueFarm.ClipsDescendants = false

    local MheeFrameStroke1 = Instance.new("UIStroke",ShowValueFarm)
                    
    MheeFrameStroke1.Thickness = 1
    MheeFrameStroke1.LineJoinMode = Enum.LineJoinMode.Round
    MheeFrameStroke1.Color = Color3.fromRGB(255, 0, 95)
    MheeFrameStroke1.Transparency = 0

    local CustomValue = Instance.new("TextBox")

    CustomValue.Parent = ShowValueFarm
    CustomValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CustomValue.BorderSizePixel = 0
    CustomValue.ClipsDescendants = true
    CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
    CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
    CustomValue.Size = UDim2.new(0, 145, 0, 26)
    CustomValue.Font = Enum.Font.GothamSemibold
    CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
    CustomValue.PlaceholderText =  ""
    CustomValue.Text =  tostring(de and math.floor((de / max) * (max - min) + min) or 0)
    CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
    CustomValue.TextSize = 9.000
    CustomValue.BackgroundTransparency = 1

    local ScolDown_Uiconner3222 = Instance.new("UICorner")
        
    ScolDown_Uiconner3222.CornerRadius = UDim.new(0, 4)
    ScolDown_Uiconner3222.Name = ""
    ScolDown_Uiconner3222.Parent = ShowValueFarm
    local function move(input)
        local pos =
            UDim2.new(
                math.clamp((input.Position.X - SecValue.AbsolutePosition.X) / SecValue.AbsoluteSize.X, 0, 1),
                0,
                0.5,
                0
            )
        local pos1 =
            UDim2.new(
                math.clamp((input.Position.X - SecValue.AbsolutePosition.X) / SecValue.AbsoluteSize.X, 0, 1),
                0,
                0,
                5
            )
        
            MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

            ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
            local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
            CustomValue.Text = tostring(value)
            callback(value)

        end
        local dragging = false 
        ConneValue.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = true

                end
            end
        )
        ConneValue.InputEnded:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                 
                end
            end
        )
            
        
        ValueFrame.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = true

                end
            end
        )
        ValueFrame.InputEnded:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                 
                end
            end
        )


        game:GetService("UserInputService").InputChanged:Connect(
            function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    move(input)
                end
            end
            )
                   CustomValue.FocusLost:Connect(function()    
                        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                        CustomValue.Text = tostring(CustomValue.Text and math.floor((CustomValue.Text / max) * (max - min) + min) )
                        pcall(callback,tonumber( CustomValue.Text))
                        -- if  CustomValue.Text == "" then

                        --     MainValue:TweenSize(UDim2.new((CustomValue.PlaceholderText  or 0) / max, 0, 0, 2), "Out", "Sine", 0.2, true)
                        --     ConneValue:TweenPosition(UDim2.new((CustomValue.PlaceholderText  or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                        --     CustomValue.Text = tostring(CustomValue.PlaceholderText  and math.floor((    CustomValue.PlaceholderText  / max) * (max - min) + min) or 0)
                        --     pcall(callback,CustomValue.PlaceholderText ) 
                        -- end
                    end)

				function SliderFunc:change(tochange)
                    MainValue:TweenSize(UDim2.new((tochange or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                    ConneValue:TweenPosition(UDim2.new((tochange or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
					CustomValue.Text = tostring(tochange and math.floor((CustomValue.Text / max) * (max - min) + min) )
					pcall(callback, tonumber(tochange))
				end
                return  SliderFunc
                
end

function ems:Ti(text)
    local tiframe = Instance.new("Frame")

    tiframe.Name = "tiframe"
    tiframe.Parent = ScolPage2
    tiframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tiframe.BackgroundTransparency = 1
    tiframe.BorderSizePixel = 0
    tiframe.ClipsDescendants = true
    tiframe.AnchorPoint = Vector2.new(0.5, 0.5)
    tiframe.Position = UDim2.new(0.5, 0, 0.5, 0)
    tiframe.Size = UDim2.new(0, 155, 0, 20)

    local  lineframe = Instance.new("TextLabel")
                  
    lineframe.Parent = tiframe
    lineframe.BackgroundColor3 = Color3.fromRGB(255, 0 ,95)
    lineframe.BackgroundTransparency = 0
    lineframe.AnchorPoint = Vector2.new(0.6, 0.5)
    lineframe.Position = UDim2.new(0., 0, 0.4, 0)
    lineframe.BorderSizePixel = 0
    lineframe.Size = UDim2.new(0, 40, 0, 1)
    lineframe.Font = Enum.Font.GothamSemibold
    lineframe.TextColor3 = Color3.fromRGB(255, 255, 255)
    lineframe.TextSize = 13.000
    lineframe.Text = ""

    local  lineframe2 = Instance.new("TextLabel")
                  
    lineframe2.Parent = tiframe
    lineframe2.BackgroundColor3 = Color3.fromRGB(255, 0, 95)
    lineframe2.BackgroundTransparency = 0
    lineframe2.AnchorPoint = Vector2.new(0.5, 0.5)
    lineframe2.Position = UDim2.new(1, 0, 0.4, 0)
    lineframe2.BorderSizePixel = 0
    lineframe2.Size = UDim2.new(0, 40, 0, 1)
    lineframe2.Font = Enum.Font.GothamSemibold
    lineframe2.TextColor3 = Color3.fromRGB(255, 255, 255)
    lineframe2.TextSize = 11.000
    lineframe2.Text = ""

    local  lineframe3 = Instance.new("TextLabel")
                  
    lineframe3.Parent = tiframe
    lineframe3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    lineframe3.BackgroundTransparency = 1
    lineframe3.AnchorPoint = Vector2.new(0.5, 0.5)
    lineframe3.Position = UDim2.new(0.5, 0, 0.5, 0)
    lineframe3.BorderSizePixel = 0
    lineframe3.Size = UDim2.new(0, 130, 0, 20)
    lineframe3.Font = Enum.Font.GothamSemibold
    lineframe3.Text = tostring(text)
    lineframe3.TextColor3 = Color3.fromRGB(255, 100, 150)
    lineframe3.TextSize = 12.000
end

function ems:Label(text)

    local labelfuc = {}
    local  Labelxd = Instance.new("TextLabel")
                  
    Labelxd.Parent = ScolPage2
    Labelxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Labelxd.BackgroundTransparency = 1
    Labelxd.AnchorPoint = Vector2.new(0.5, 0.5)
    Labelxd.Position = UDim2.new(0.5, 0, 0.8, 0)
    Labelxd.BorderSizePixel = 0
    Labelxd.Size = UDim2.new(0, 155, 0, 13)
    Labelxd.Font = Enum.Font.GothamSemibold
    Labelxd.Text = tostring(text)
    Labelxd.TextColor3 = Color3.fromRGB(255, 255, 255)
    Labelxd.TextSize = 12.000

    function  labelfuc:Change(text2)
        Labelxd.Text = tostring(text2)
    end
    return  labelfuc
end

    return ems 
end
    return page
end
    return tap
end
 function click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
 end
--return create
--
game.StarterGui:SetCore("SendNotification", {
    Icon = "rbxassetid://7996551096";
    Title = "NOOB HUB", 
    Text = "Sucessful"
 })
 wait(1)
local win = create:Win()
local Tab = win:addtap("Main")
local Main = Tab:addpage("Main")
Main:Ti("BLOX FRUIT PAID!")
Main:Label("Made BY : 03s.#4358")
Main:Label("Discord : NOOB HUB")
Main:Button("Copy Discord",function()
setclipboard("https://discord.gg/J6gQRVk48n")
game.StarterGui:SetCore("SendNotification", {
    Icon = "rbxassetid://7996551096";
    Title = "NOOBHUB : Discord", 
    Text = "Copy"
 })
 wait(.1)
end)
Main:Label("Youtube : NOOB HUB")
Main:Button("Copy Youtube",function()
   setclipboard("https://www.youtube.com/channel/UCpbG2pkTiPODfMOq_voRQDg/videos") 
game.StarterGui:SetCore("SendNotification", {
    Icon = "rbxassetid://7996551096";
    Title = "NOOBHUB : YouTube", 
    Text = "Copy"
 })
 wait(.1)
end)
local Main2 = Tab:addpage("")
Main2:Ti("Update")
Main2:Label("[+] New UI")
Main2:Label("[+] Fix Auto Boss")
Main2:Label("[+] Fix Auto Farm")
local Tab1 = win:addtap("AutoFarm")
 local AutoFram = Tab1:addpage("AutoFarm")
 DistanceMob = 5
 local AT =  AutoFram:Slder("DistanceMob", 1, 50, 5, function(t)
    DistanceMob = t
end)
	AutoFram:Button("Change 5",function ( ... )
    AT:change(5)
end)
 Wapon = {}
 for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
     if v:IsA("Tool") then
         table.insert(Wapon ,v.Name)
     end
 end
 local SelectWeapona = AutoFram:DropDown("Select Weapon","Select Weapon",Wapon,function(Value)
     _G.SelectWeapon = Value
 end)
 AutoFram:Button("Refresh Weapon",function()
     SelectWeapona:Clear()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
         if v:IsA("Tool") then
             SelectWeapona:Add(v.Name)
         end
     end
 end)
 function eq()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ClassName == "Tool" then
        if v.Name == _G.SelectWeapon then
     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
     wait()
        end
end
end
end
 AutoFram:Toggle("Auto Farm",_G.AutoFarm,function(start)
    _G.AutoFarm = start
loadstring(game:HttpGet('https://ghostbin.com/0Sxdb/raw'))()
        if  _G.AutoFarm == false then
        _G.OPENTWEEN = false
end
end)
spawn(function()
    while wait() do
     if _G.AutoFarm then
         pcall(function()
         if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false then
               CheckQuest()
               eq()
               if not game:GetService("Workspace").AntiTPNPC:FindFirstChild("QuestLvl"..levelquest) then
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage").MAP["QuestLvl"..levelquest].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
               else 
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").AntiTPNPC["QuestLvl"..levelquest].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
               end
               game:GetService'VirtualUser':Button1Down(Vector2.new(0,0.9))
               game:GetService'VirtualUser':Button1Up(Vector2.new(0,0.9))
               wait()
               for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                  if v.Name == "Dialogue" then
                     v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                     v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                     v.Accept.ImageTransparency = 1
                  end
               end
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == true then
                     pcall(function()
                         CheckQuest()
                         for i, v in pairs(game:GetService("Workspace").Monster:GetDescendants()) do
                             if v.Name == Ms then
                                 repeat wait()
                                     if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == true then
                                     if v.Humanoid.Health > 0 then
                                           if not game:GetService("Workspace").AntiTPNPC:FindFirstChild("QuestLvl"..levelquest) then
                                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage").MAP["QuestLvl"..levelquest].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                                           else 
                                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").AntiTPNPC["QuestLvl"..levelquest].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                                           end
                                       for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                          if v.Name == "Dialogue" then
                                             v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                             v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                             v.Accept.ImageTransparency = 1
                                          end
                                       end
     
                   game:GetService'VirtualUser':Button1Down(Vector2.new(50,50))
               game:GetService'VirtualUser':Button1Up(Vector2.new(50,50))
                                         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90),0, 0) * CFrame.new(0,0,DistanceMob)
                                     end
                                     else
                                          CheckQuest()
                                             game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                                       if not game:GetService("Workspace").AntiTPNPC:FindFirstChild("QuestLvl"..levelquest) then
                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage").MAP["QuestLvl"..levelquest].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                                       else 
                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").AntiTPNPC["QuestLvl"..levelquest].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                                       end
                                       game:GetService'VirtualUser':Button1Down(Vector2.new(50,50))
                                     game:GetService'VirtualUser':Button1Up(Vector2.new(50,50))
                                       wait()
                                       for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                          if v.Name == "Dialogue" then
                                             v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                             v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                             v.Accept.ImageTransparency = 1
                                          end
                                       end
                                     end
                                 until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false
                             elseif v.Name ~= Ms then
                                 if not game:GetService("Workspace").AntiTPNPC:FindFirstChild("QuestLvl"..levelquest) then
                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage").MAP["QuestLvl"..levelquest].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                                       else 
                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").AntiTPNPC["QuestLvl"..levelquest].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                                       end
                             end
                             end
                     end)
                 end
         end)
     end
     end
 end)
         function MoreSKill()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
 end
 AutoFram:Toggle("Auto Seaking",_G.Seaking,function(State)
 _G.Seaking = State
loadstring(game:HttpGet('https://ghostbin.com/0Sxdb/raw'))()
        if  _G.Seaking == false then
        _G.OPENTWEEN = false
end
 end)
  function swordeq()
     for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" then
                if v.ToolTip == "Sword" or v.ToolTip == "Combat" or v.ToolTip == "Power" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
               local ToolSe = tostring(v.Name)
              local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
              wait(.2)
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
           end
        end
     end
 end
 end
 spawn(function()
     while wait() do
    if _G.Seaking then
        pcall(function()
            MoreSKill()
            swordeq()
             click()
				for i,v in pairs(game:GetService("Workspace").SeaMonster:GetDescendants()) do
				   if game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") then
					  if v.Name == "SeaKing" then
						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,100,0)
						 if v.Humanoid.Health <= 0 then
							if game:GetService("Workspace").Island:FindFirstChild("Legacy Island1") then
							   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island1").ChestSpawner.CFrame
							elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island2") then
							   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island2").ChestSpawner.CFrame
							elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island3") then
							   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island3").ChestSpawner.CFrame
							elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island4") then
							   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island4").ChestSpawner.CFrame
							end
						 end
					  end
				   end
				end
        end)
    end
     end
     end)
AutoFram:Toggle("Auto SeaHop",_G.SeaHop,function(State)
        SeaHop = State
wait(5)
end)
spawn(function()
       while wait() do
              if SeaHop then
                              if not game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") then
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
                                       -- delfile("NotSameServers.json")
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
                                 -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
              end
       end
end)
function CheckBossO()
    if BOs ==  "Smoky [Lv. 20]" then
        quset = CFrame.new(2292.1242675781, 48.14330291748, -1742.8865966797)
        loadPart = CFrame.new(2320.162109375, 57.571983337402, -1740.5062255859) 
        elseif BOs ==  "Tashi [Lv. 30]" then
        quset = CFrame.new(2007.6955566406, 48.143291473389, -1822.5390625)
        loadPart = CFrame.new(2042.9066162109, 57.137214660645, -1989.4123535156)
        elseif BOs ==  "The Clown [Lv. 75]" then
        quset = CFrame.new(3812.3996582031, 68.74845123291, -606.12103271484)
        loadPart = CFrame.new(3767.1879882813, 80.12931060791, -775.60186767578)
        elseif BOs ==  "Axe-Hand [Lv. 145]" then
        quset = CFrame.new(1743.0162353516, 68.606925964355, 346.45907592773)
        loadPart = CFrame.new(1807.3372802734, 68.591590881348, 346.01788330078)
        elseif BOs ==  "Captain [Lv. 120]" then
        quset = CFrame.new(1967.4479980469, 59.983749389648, 324.75720214844)
        loadPart = CFrame.new(1982.6417236328, 59.972068786621, 350.39193725586)
        elseif BOs ==   "Karate Fishman [Lv. 200]" then
        quset = CFrame.new(3231.9221191406, 10.491975784302, 1513.8372802734)
        loadPart = CFrame.new(3260.8696289063, 10.541935920715, 1518.7398681641)
        elseif BOs ==  "SharkMan [Lv. 230]" then
        quset = CFrame.new(3649.9929199219, 10.491978645325, 1512.7091064453)
        loadPart = CFrame.new(3724.3852539063, 10.465728759766, 1489.2579345703)
        elseif BOs ==   "Dark Leg [Lv. 300]" then
        quset = CFrame.new(42.914310455322, 99.508811950684, -48.066848754883)
        loadPart = CFrame.new(63.965442657471, 99.419105529785, -82.953910827637)
        elseif BOs ==   "Weapon Man [Lv. 350]" then
        quset = CFrame.new(-44.183567047119, 49.760871887207, 115.82402038574)
        loadPart = CFrame.new(-44.183567047119, 49.760871887207, 115.82402038574)
        elseif BOs ==  "King Snow [Lv. 450]" then
        quset = CFrame.new(-1335.8610839844, 18.289672851563, 1406.9560546875)
        loadPart = CFrame.new(-1335.8610839844, 18.289672851563, 1406.9560546875)
        elseif BOs ==  "Heavy Man [Lv. 500]" then
        quset = CFrame.new(-1096.8812255859, 18.072799682617, 1789.9683837891)
        loadPart = CFrame.new(-1096.8812255859, 18.072799682617, 1789.9683837891)
        elseif BOs ==  "Bomb Man [Lv. 625]" then
        quset = CFrame.new(1260.7414550781, 13.239151000977, 2080.4819335938)
        loadPart = CFrame.new(1301.8360595703, 14.830826759338, 2033.3840332031)
        elseif BOs ==  "King of Sand [Lv. 725]" then
        quset = CFrame.new(1252.8192138672, 42.979652404785, 2186.3791503906)
        loadPart = CFrame.new(1242.4521484375, 43.032848358154, 2227.5104980469)
        elseif BOs ==  "Candle Man [Lv. 525]" then
        quset = CFrame.new(1474.6043701172, 12.841288566589, 2288.9931640625)
        loadPart = CFrame.new(1502.0964355469, 12.855179786682, 2264.0866699219)
        elseif BOs ==  "Rumble Man [Lv. 900]" then
        quset = CFrame.new(112.10726165771, 386.42065429688, 4222.9208984375)
        loadPart = CFrame.new(112.10726165771, 386.42065429688, 4222.9208984375)
        elseif BOs ==   "Ball Man [Lv. 850]" then
        quset = CFrame.new(155.14279174805, 386.42059326172, 4088.5747070313)
        loadPart = CFrame.new(155.14279174805, 386.42059326172, 4088.5747070313)
        elseif BOs ==  "Leader [Lv. 1100]" then
        quset = CFrame.new(5943.138671875, 11.846879005432, 3550.5241699219)
        loadPart = CFrame.new(5943.138671875, 11.846879005432, 3550.5241699219)
        elseif BOs ==  "Pasta [Lv. 1150]" then
        quset = CFrame.new(5743.0649414063, 11.846879005432, 3867.5695800781)
        loadPart = CFrame.new(5743.0649414063, 11.846879005432, 3867.5695800781)
        elseif BOs ==  "Leo [Lv. 1400]" then
        quset = CFrame.new(3087.3666992188, 12.961270332336, 5731.5688476563)
        loadPart = CFrame.new(3087.3666992188, 12.961270332336, 5731.5688476563)
        elseif BOs ==   "Giraffe [Lv. 1325]" then
        quset = CFrame.new(3014.0310058594, 13.245304107666, 5103.7397460938)
        loadPart = CFrame.new(3014.0310058594, 13.245304107666, 5103.7397460938)
        elseif BOs ==   "Quake Woman [Lv. 1925]" then
        quset = CFrame.new(6266.65234375, 49.600048065186, 761.03460693359)
        loadPart = CFrame.new(6266.65234375, 49.600048065186, 761.03460693359)
        elseif BOs ==  "True Karate Fishman [Lv. 1850]" then
        quset =  CFrame.new(6581.4750976563, 49.576057434082, 828.45385742188)
        loadPart =  CFrame.new(6581.4750976563, 49.576057434082, 828.45385742188)
        elseif BOs ==  "Seasoned Fishman [Lv. 2200]" then
        quset = CFrame.new(2278.4760742188, 40.275871276855, 9359.3642578125)
        loadPart = CFrame.new(2278.4760742188, 40.275871276855, 9359.3642578125)
        elseif BOs ==  "Sword Fishman [Lv. 2100]" then
        quset = CFrame.new(2786.7756347656, 40.275077819824, 9331.708984375)
        loadPart = CFrame.new(2786.7756347656, 40.275077819824, 9331.708984375)
        elseif BOs ==  "Combat Fishman [Lv. 2050]" then
        quset = CFrame.new(2274.3764648438, 40.248260498047, 9157.2841796875)
        loadPart = CFrame.new(2274.3764648438, 40.248260498047, 9157.2841796875)
        elseif BOs == "Shadow Master [Lv. 1600]" then
        quset = CFrame.new(788.10736083984, 47.857349395752, 6292.78125)
        loadPart = CFrame.new(788.10736083984, 47.857349395752, 6292.78125)
end
end
        
 if OldWorld then
AutoFram:Ti("BOSS")
local boss = {
      "Smoky [Lv. 20]",
      "Tashi [Lv. 30]",
      "The Clown [Lv. 75]",
      "Axe-Hand [Lv. 145]",
      "Captain [Lv. 120]",
      "Karate Fishman [Lv. 200]",
      "SharkMan [Lv. 230]",
      "Dark Leg [Lv. 300]",
      "Weapon Man [Lv. 350]",
      "King Snow [Lv. 450]",
      "Heavy Man [Lv. 500]",
      "Bomb Man [Lv. 625]",
      "Candle Man [Lv. 525]",
      "King of Sand [Lv. 725]",
      "Rumble Man [Lv. 900]",
      "Ball Man [Lv. 850]",
      "Leader [Lv. 1100]",
      "Pasta [Lv. 1150]",
      "Leo [Lv. 1400]",
      "Giraffe [Lv. 1325]",
      "Wolf [Lv. 1250]",
      "Quake Woman [Lv. 1925]",
      "True Karate Fishman [Lv. 1850]",
      "Seasoned Fishman [Lv. 2200]",
      "Sword Fishman [Lv. 2100]",
      "Combat Fishman [Lv. 2050]",
      "Shadow Master [Lv. 1600]",
      
}
AutoFram:DropDown("Select Boss","Select Boss",boss,function(start)
   BOs = start
end)
 local SelectWeapona = AutoFram:DropDown("Select Weapon","Select Weapon",Wapon,function(Value)
     SelectWeapon = Value
 end)
  AutoFram:Button("Refresh Weapon",function()
     SelectWeapona:Clear()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
         if v:IsA("Tool") then
             SelectWeapona:Add(v.Name)
         end
     end
 end)
 AutoFram:Toggle("Auto Equip",false,function(start)
     _G.Eq = start
     while _G.Eq do wait()
         pcall(function()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ClassName == "Tool" then
        if v.Name == SelectWeapon then
     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
     wait()
        end
 end
     end
end)
 end
 end)
AutoFram:Toggle("USE ITEM ALL",false,function(w)
_G.all = w
while _G.all do wait()
    pcall(function()
 swordeq()
 end)
end
end)

AutoFram:Toggle("Auto Farm BOSS",false,function(start)
_G.BOSSs = start
loadstring(game:HttpGet('https://ghostbin.com/0Sxdb/raw'))()
        if  _G.BOSSs == false then
        _G.OPENTWEEN = false
end
end)
spawn(function()
    while wait() do
if _G.BOSSs then
    pcall(function()
        if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false then
               CheckBossO()
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = quset
               game:GetService'VirtualUser':Button1Down(Vector2.new(0,0.9))
               game:GetService'VirtualUser':Button1Up(Vector2.new(0,0.9))
               wait()
               for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                  if v.Name == "Dialogue" then
                     v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                     v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                     v.Accept.ImageTransparency = 1
                  end
               end
        else
 for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetDescendants()) do
             if v.Name == BOs then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90),0, 0) * CFrame.new(0,0,DistanceMob)
end
end
end
end)
end
end
end)

AutoFram:Toggle("Auto Skill All", false, function(State)
_G.allskill = State
while _G.allskill do wait()
    pcall(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           
           game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

           game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

           game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart) 
           end)
end
end)
end
function CheckBoss()
    if BO ==  "Violet Samurai [Lv. 2500]" then
        quset = CFrame.new(2106.8483886719, 85.352478027344, -810.69787597656)
        loadPart = CFrame.new(2086.7368164063, 85.352478027344, -809.15740966797)
    elseif BO == "Snake Man [Lv. 2350]" then
       quset = CFrame.new(2879.04296875, 57.335067749023, 210.6049041748)
        loadPart = CFrame.new(2876.2556152344, 57.335067749023, 184.35032653809)
    elseif BO == "Rabbit Man [Lv. 2550]" then
              quset = CFrame.new(1878.8551025391, 99.790603637695, -41.391815185547)
        loadPart = CFrame.new(1852.2419433594, 99.790832519531, -38.700977325439)
          elseif BO == "Kitsune Samurai [Lv. 2650]" then
              quset = CFrame.new(1967.0479736328, 99.792854309082, 254.88389587402)
        loadPart = CFrame.new(1969.1220703125, 99.792106628418, 215.72245788574)
          elseif BO == "Bat Man [Lv. 2600]" then
            quset = CFrame.new(2307.7888183594, 57.335083007813, 126.72570800781)
            loadPart = CFrame.new(2308.4677734375, 57.338077545166, 149.92227172852)
          elseif BO == "Bear Man [Lv. 2800]" then
              quset = CFrame.new(3108.9782714844, 29.205724716187, 1368.4494628906)
        loadPart = CFrame.new(3149.5793457031, 29.205724716187, 1369.7227783203)
          elseif BO == "Magician [Lv. 2850]" then
              quset = CFrame.new(1796.2565917969, 57.285064697266, 1035.6416015625)
        loadPart = CFrame.new(1821.2906494141, 57.285064697266, 1034.8504638672)
          elseif BO == "Kappa [Lv. 2950]" then
              quset = CFrame.new(2182.2795410156, 57.335083007813, 1960.2161865234)
        loadPart = CFrame.new(2163.6821289063, 57.335083007813, 1961.9953613281)
          elseif BO == "Pachy Woman [Lv. 2900]" then
              quset = CFrame.new(1762.0991210938, 57.285064697266, 1276.9967041016)
        loadPart = CFrame.new(1762.0991210938, 57.285064697266, 1276.9967041016)
          elseif BO == "Mammoth Man [Lv. 3000]" then
              quset = CFrame.new(2139.2985839844, 57.335071563721, 1958.0523681641)
        loadPart = CFrame.new(2151.3393554688, 57.335083007813, 1956.2550048828)
          elseif BO ==  "Elite Skeleton [Lv. 3100]" then
              quset = CFrame.new(-3032.25317, 51.5443535, 9854.83691, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
        loadPart = CFrame.new(-257.12750244141, 109.84118652344, 7219.068359375)
          elseif BO == "Anubis [Lv.3150]" then
              quset = CFrame.new(9141.8457, 14.469614, 1055.01233, -0.894592047, 0, 0.446883589, 0, 1, 0, -0.446883589, 0, -0.894592047)
        loadPart = CFrame.new(9568.6044921875, 86.315910339355, 1232.5357666016)
          elseif BO == "Pharaoh [Lv.3175]" then
              quset =  CFrame.new(9554.38672, 14.4762154, 1545.59363, 0.31220305, 0, 0.950015426, 0, 1, 0, -0.950015426, 0, 0.31220305)
        loadPart = CFrame.new(9116.03125, 47.920093536377, 1914.4226074219)
          elseif BO ==  "Desert Thief [Lv.3125]" then
              quset = CFrame.new(8847.94238, 14.4670143, 1400.72119, -0.322491169, 0, 0.946572542, 0, 1, 0, -0.946572542, 0, -0.322491169)
        loadPart = CFrame.new(8331.119140625, 266.55130004883, 1398.7974853516)
          elseif BO == "Flame User [Lv.3200]" then
              quset = CFrame.new(9857.44727, 14.7451639, 1684.2052, -0.0956259966, 0, 0.995417356, 0, 1, 0, -0.995417356, 0, -0.0956259966)
        loadPart = CFrame.new(9780.2236328125, 316.51937866211, 1732.7475585938)
          elseif BO == "Dough Master [Lv.3275]" then
              loadPart = CFrame.new(30409.513671875, 24.792255401611, 93327.7890625)
          elseif BO == "Sunken Vessel [Lv.3225]" then
              quset = CFrame.new(6430.80225, 28.7034626, 7979.43799, -0.896995902, 0, -0.442038745, 0, 1, 0, 0.442038745, 0, -0.896995902)
        loadPart = CFrame.new(6260.2124, 23.7355881, 8518.10645, -0.135348797, 0, -0.990798056, 0, 1, 0, 0.990798056, 0, -0.135348797)
          elseif BO == "Biscuit Man [Lv.3250]" then
              quset = CFrame.new(5789.9624, 202.36792, 9032.56641, 0.256339848, -0, -0.966586709, 0, 1, -0, 0.966586709, 0, 0.256339848)
        loadPart = CFrame.new(6250.66699, 335.045502, 9107.34668, 0.196545959, -0, -0.980494618, 0, 1, -0, 0.980494618, 0, 0.196545959)
          elseif BO == "King Samurai [Lv. 3500]" then
              quset = CFrame.new(1668.9193115234, 345.84030151367, 187.70753479004)
        loadPart = CFrame.new(1668.9193115234, 345.84030151367, 187.70753479004)
          elseif BO == "Dragon [Lv. 5000]" then
              quset = CFrame.new(1161.7325439453, 295.51303100586, 7375.2416992188)
        loadPart = CFrame.new(1161.7325439453, 295.51303100586, 7375.2416992188)
          elseif BO ==  "Ms. Mother [Lv.7500]" then 
       quset =  CFrame.new(7137.2778320313, 190.00395202637, 9043.904296875)
        loadPart = CFrame.new(7137.2778320313, 190.00395202637, 9043.904296875)
          elseif BO == "Jack o lantern [Lv. 10000]" then
        quset = CFrame.new(11833.954101563, 258.34759521484, 6259.0068359375)
        loadPart = CFrame.new(11833.954101563, 258.34759521484, 6259.0068359375)
    end
end
if newworld then
AutoFram:Ti("BOSS")
local boss = {
    "Violet Samurai [Lv. 2500]",
    "Snake Man [Lv. 2350]",
    "Rabbit Man [Lv. 2550]",
    "Bat Man [Lv. 2600]",
    "Kitsune Samurai [Lv. 2650]",
    "Bear Man [Lv. 2800]",
     "Magician [Lv. 2850]",
     "Kappa [Lv. 2950]",
     "Pachy Woman [Lv. 2900]",
     "Mammoth Man [Lv. 3000]",
     "Elite Skeleton [Lv. 3100]",
     "Anubis [Lv.3150]",
     "Pharaoh [Lv.3175]",
     "Desert Thief [Lv.3125]",
     "Flame User [Lv.3200]",
     "Sunken Vessel [Lv.3225]",
    "Biscuit Man [Lv.3250]",
    "Dough Master [Lv.3275]",
    "King Samurai [Lv. 3500]",
    "Dragon [Lv. 5000]",
    "Ms. Mother [Lv.7500]",
    "Jack o lantern [Lv. 10000]",
}
AutoFram:DropDown("Select Boss","Select Boss",boss,function(start)
   BO = start
end)
 local SelectWeapona = AutoFram:DropDown("Select Weapon","Select Weapon",Wapon,function(Value)
     SelectWeapon = Value
 end)
  AutoFram:Button("Refresh Weapon",function()
     SelectWeapona:Clear()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
         if v:IsA("Tool") then
             SelectWeapona:Add(v.Name)
         end
     end
 end)
 AutoFram:Toggle("Auto Equip",false,function(start)
     _G.Eq = start
     while _G.Eq do wait()
         pcall(function()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ClassName == "Tool" then
        if v.Name == SelectWeapon then
     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
     wait()
        end
 end
     end
end)
 end
 end)
AutoFram:Toggle("USE ITEM ALL",false,function(w)
_G.all = w
while _G.all do wait()
    pcall(function()
 swordeq()
end)
end
end)
AutoFram:Toggle("Auto Farm BOSS",false,function(start)
_G.BOSS = start
loadstring(game:HttpGet('https://ghostbin.com/0Sxdb/raw'))()
        if  _G.BOSS == false then
        _G.OPENTWEEN = false
end
end)
spawn(function()
   while wait() do
if _G.BOSS then
    pcall(function()
    click()
        if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false then
               CheckBoss()
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = quset
               game:GetService'VirtualUser':Button1Down(Vector2.new(0,0.9))
               game:GetService'VirtualUser':Button1Up(Vector2.new(0,0.9))
               wait()
               for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                  if v.Name == "Dialogue" then
                     v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                     v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                     v.Accept.ImageTransparency = 1
                  end
               end
        else
    if game:GetService("Workspace").Monster.Boss:FindFirstChild(BO) then
 for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetDescendants()) do
             if v.Name == BO then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90),0, 0) * CFrame.new(0,0,DistanceMob)
end
end
else
    CheckBoss()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loadPart
end
end
end)
end
end
end)
AutoFram:Toggle("Auto Skill All", false, function(State)
_G.allskill = State
while _G.allskill do wait()
    pcall(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           
           game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

           game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

           game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart) 
end)
end
end)
AutoFram:Ti("Not Quest")
AutoFram:Toggle("Auto Farm Boss",false,function(start)
_G.Bosw = start
loadstring(game:HttpGet('https://ghostbin.com/0Sxdb/raw'))()
        if  _G.Bosw == false then
        _G.OPENTWEEN = false
end
end)
spawn(function()
    while wait() do
if _G.Bosw then
    pcall(function()
    click()
        if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == true then
               CheckBoss()
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loadPart
        else
    if game:GetService("Workspace").Monster.Boss:FindFirstChild(BO) then
 for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetDescendants()) do
             if v.Name == BO then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90),0, 0) * CFrame.new(0,0,DistanceMob)
end
end
else
    CheckBoss()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loadPart
end
end
end)
end
end
end)
end
local Stats = Tab1:addpage("Auto-Stats")
     Stats:Toggle("Melee",_G.Melee,function(Value)
         _G.Melee = Value    
     end)
     Stats:Toggle("Defense",_G.Defense,function(value)
         _G.Defense = value
     end)
     Stats:Toggle("Sword",_G.Sword,function(value)
         _G.Sword = value
     end)
     Stats:Toggle("Gun",_G.Gun,function(value)
         _G.Gun = value
     end)
     Stats:Toggle("Devil Fruit",_G.Fruit,function(value)
         _G.Fruit = value
     end)
     PointStats = 1
     Stats:Slder("Point",1, 100,PointStats,function(a)
         PointStats = a
     end)
     spawn(function()
         while wait() do
         if _G.Defense then
               pcall(function()
                  local args = {
                     [1] = "Defense",
                     [2] = PointStats
                  }
                  game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
               end)
            end
            if _G.Melee then
               pcall(function()
              local args = {
                  [1] = "Melee",
                  [2] = PointStats
              }
              
              game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
              
               end)
            end
            if _G.Sword then
               pcall(function()
                  local args = {
                     [1] = "Sword",
                     [2] = PointStats
                  }
                  game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
               end)
            end
            if _G.Fruit then
               pcall(function()
                  local args = {
                     [1] = "Devil Fruit",
                     [2] = PointStats
                  }
                  game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
               end)
            end
            end
     end)
local Tab2 = win:addtap("Awaken-Raid")
  local Awaken = Tab2:addpage()
  Awaken:Ti("Awaken")
    Awaken:Button("Teleport",function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2880.3276367188, 81.408004760742, 2202.9829101563) 
end)
Awaken:Toggle("Auto Awaken",false,function(State)
 _G.Awaken = State
end)
 while _G.Awaken do wait()
         pcall(function()
                if game:GetService("Workspace"):GetChildren("HumanoidRootPart") then
                 for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                     if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                         repeat game:GetService("RunService").Heartbeat:wait()
                             MinHealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 65 / 100
                             if game.Players.LocalPlayer.Character.Humanoid.Health > MinHealth then
                                 if v.Humanoid.Health > 0 then
                                     swordeq()
                                     game:GetService'VirtualUser':CaptureController()
                                     game:GetService('VirtualUser'):ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
                                 end
                             else
                                 repeat game:GetService("RunService").Heartbeat:wait()
                                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,500,0)
                                 until _G.Awaken == false or game.Players.LocalPlayer.Character.Humanoid.Health == game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                             end
                         until not v.Parent or v.Humanoid.Health <= 0 or _G.Awaken == false
                     end
                 end
             else
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,500,0)
             end
 end)
     end

Awaken:Label("Auto-Skill")
Awaken:Toggle("Auto Skill All",false,function(State)
_G.allskill2 = State
while _G.allskill2 do wait()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           
           game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

           game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

           game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart) 

            game:GetService("VirtualInputManager"):SendKeyEvent(true,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
end
end)
 Awaken:Toggle("Auto Skill [ Z ]",false,function(State)
     _G.SkillZ = State
while _G.SkillZ do wait()
    pcall(function()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        end)
        end
 end)
 Awaken:Toggle("Auto Skill [ X ]",false,function(State)
_G.SkillX = State
while _G.SkillX do wait()
    pcall(function()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        end)
        end
 end)
 Awaken:Toggle("Auto Skill [ C ]",false, function(State)
     _G.SkillC = State
    while _G.SkillC do wait()
        pcall(function()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        end)
        end
 end)
 Awaken:Toggle("Auto Skill [ V ]",false,function(State)
     _G.SkillV = State
     while _G.SkillV do wait()
         pcall(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           end)
 end
 end)
Awaken:Toggle("Auto Skill [ B ]",false,function(Stats)
    _G.SkillB = Stats
    while _G.SkillB do wait()
        pcall(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        end)
    end
    end)
local Raid = Tab2:addpage()
Raid:Ti("Raid")
 if OldWorld then
 Raid:Button("Teleport To Raid [ Raid ]", function()
     game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6716.5322265625, 102.78722381592, 956.6162109375)
 end)
 end
 if newworld then
 Raid:Button("Teleport To Raid [ Raid ]", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2698.080078125, 223.14372253418, 4.9081406593323)
 end)
 end
if raid then
 Raid:Toggle("Auto Raid [ Raid ]",false,function(State)
_G.AutoRaid = State
loadstring(game:HttpGet('https://ghostbin.com/0Sxdb/raw'))()
        if  _G.AutoRaid == false then
        _G.OPENTWEEN = false
end
end)
spawn(function()
    while wait() do
  if _G.AutoRaid then
    pcall(function()
        if game:GetService("Workspace").MOB:GetDescendants("HumanoidRootPart") then
        for i,v in pairs(game:GetService("Workspace").MOB:GetDescendants()) do
          if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
            repeat game:GetService("RunService").Heartbeat:wait()
              MinHealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 30 / 100
              if game.Players.LocalPlayer.Character.Humanoid.Health > MinHealth then
                if v.Humanoid.Health > 0 then
                  swordeq()
                  game:GetService'VirtualUser':CaptureController()
                  game:GetService('VirtualUser'):ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,8)
                end
              else
                repeat game:GetService("RunService").Heartbeat:wait()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,500,0)
                until _G.AutoRaid == false or game.Players.LocalPlayer.Character.Humanoid.Health == game.Players.LocalPlayer.Character.Humanoid.MaxHealth
              end
            until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoRaid == false
          end
        end
      else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,500,0)
      end
end)
end
end
end)
Raid:Label("Auto Skill")
Raid:Toggle("Auto Skill [ Z ]",_G.SkillZ,function(State)
  _G.Z = State
while _G.Z do wait()
  pcall(function()
     game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
     game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end)
    end
end)
Raid:Toggle("Auto Skill [ X ]",_G.SkillX,function(State)
_G.xzzzzzzzz = State
while _G.xzzzzzzzz do wait()
  pcall(function()
     game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
     game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end)
    end
end)
Raid:Toggle("Auto Skill [ C ]",_G.SkillC,function(State)
  _G.c = State
  while _G.c do wait()
    pcall(function()
     game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
     game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end)
    end
end)
Raid:Toggle("Auto Skill [ V ]",_G.SkillV,function(State)
  _G.v = State
  while _G.v do wait()
    pcall(function()
      game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
     game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
     end)
end
end)
Raid:Toggle("Auto Skill [ B ]",_G.SkillB,function(Stats)
    _G.SkillB = Stats
    while _G.SkillB do wait()
        pcall(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        end)
    end
    end)
end
spawn(function()
    while wait() do
if _G.Useall then
 swordeq()
 MoreSKill()
end
end
end)




local plrhumanoid = game.Players.LocalPlayer.Character.Humanoid
local Tab3 = win:addtap("Teleport-Player")
local Teleport = Tab3:addpage()
if OldWorld then
 Teleport:Toggle("Teleport newworld",false,function(s)
 		_G.autonew = s
		while _G.autonew do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1836.2213134766, 17.258979797363, -1484.0748291016)			
wait(.5)
			local args = {
				[1] = workspace.AntiTPNPC:FindFirstChild("Elite Pirate")
			}

			game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
			if game:GetService("Players").LocalPlayer.PlayerGui["Elite Pirate"].Dialogue.Accept.Visible == true then
				game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
				game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
				wait(.1)
				for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
					if v.Name == "Dialogue" then
						v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
						v.Accept.Position = UDim2.new(-2, 0, -5, 0)
						v.Accept.ImageTransparency = 1
					end
				end
			end
		end

	end)
end
if newworld then
Teleport:Toggle("Teleport OldWorld",false,function(s)
_G.autonew = s
		while _G.autonew do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3949.3024902344, 16.768924713135, 324.21032714844)		
wait(.5)
			local args = {
				[1] = workspace.AntiTPNPC:FindFirstChild("Elite Pirate")
			}

			game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
			if game:GetService("Players").LocalPlayer.PlayerGui["Elite Pirate"].Dialogue.Accept.Visible == true then
				game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
				game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
				wait(.1)
				for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
					if v.Name == "Dialogue" then
						v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
						v.Accept.Position = UDim2.new(-2, 0, -5, 0)
						v.Accept.ImageTransparency = 1
					end
				end
			end
		end

	end)
end
if OldWorld then
Teleport:Ti("Teleport Island")
Teleport:Button("Stone Rain Sea",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6157.8969726563, 257.10565185547, -2055.2817382813)
end)
Teleport:Button("Town",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1914.3870849609, 16.39058303833, -1499.3818359375)
end)
Teleport:Button("Pirate Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3589.8996582031, 38.009464263916, -534.47290039063)
end)
Teleport:Button("Soldier Town",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1816.4361572266, 39.931896209717, 151.49806213379)
end)
Teleport:Button("Shark Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3258.72265625, 10.659820556641, 1478.6558837891)
end)
Teleport:Button("Chef Ship",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36.736728668213, 49.899345397949, 148.02322387695)
end)
Teleport:Button("Snow Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1290.9379882813, 18.407562255859, 1544.3410644531)
end)
Teleport:Button("Desert Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1465.0296630859, 13.005693435669, 2080.2541503906)
end)
Teleport:Button("Skyland",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29.492475509644, 386.59158325195, 4081.8803710938)
end)
Teleport:Button("Bubbleland",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5834.935546875, 12.333806991577, 3565.673828125)
end)
Teleport:Button("Lobby Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2990.255859375, 13.208541870117, 5101.4956054688)
end)
Teleport:Button("War Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6481.0458984375, 51.469699859619, 959.49676513672)
end)
Teleport:Button("Stone Arena",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9672.5810546875, 37.840091705322, -3748.7685546875)
end)
Teleport:Button("Fishland",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2376.3774414063, 40.366146087646, 9148.59375)
end)
Teleport:Button("Zombie Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(496.62362670898, 226.86659240723, 6346.6674804688)
end)
end
if newworld then
Teleport:Ti("Teleport Island")
Teleport:Button("Japan",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3530.58203125, 57.335056304932, 230.64198303223)
end)
Teleport:Button("Desert",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9823.3857421875, 14.436893463135, 1637.6741943359)
end)
Teleport:Button("Loaf Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6803.677734375, 31.405124664307, 8190.4956054688)
end)
Teleport:Button("Mirror Room",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(30434.181640625, 24.792255401611, 93295.171875)
end)
Teleport:Button("Skull Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1456.9604492188, 370.4836730957, 7256.5791015625)
end)
Teleport:Button("Halloween Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11856.908203125, 258.35546875, 6284.6787109375)
end)
Teleport:Button("SummonAltar",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1299.5186767578, 462.16180419922, 7379.3012695313)
end)
end

local Players = Tab3:addpage()
Players:Ti("Players")
if OldWorld then
 Wapon = {}
 for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
     if v:IsA("Tool") then
         table.insert(Wapon ,v.Name)
     end
 end
 local SelectWeapona = Players:DropDown("Select Weapon","Select Weapon",Wapon,function(Value)
     SelectWeapon = Value
 end)
  Players:Button("Refresh Weapon",function()
     SelectWeapona:Clear()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
         if v:IsA("Tool") then
             SelectWeapona:Add(v.Name)
         end
     end
 end)
 Players:Toggle("Auto Equip",false,function(start)
     _G.Eq = start
     while _G.Eq do wait()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ClassName == "Tool" then
        if v.Name == SelectWeapon then
     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
     wait()
        end
 end
 end
 end
 end)
Players:Toggle("USE ITEM ALL",false,function(w)
_G.all = w
while _G.all do wait()
 swordeq()
end
end)    
 ply = {}
 for i,v in pairs(game.Players:GetPlayers()) do
    table.insert(ply,v.Name)
 end
 local Dropdown = Players:DropDown("Select Players","Select Players",ply,function(Value)
     Noobply = Value
 end)
 Players:Button("Refresh Players",function()
     Dropdown:Clear()
 for i,v in pairs(game.Players:GetPlayers()) do
             Dropdown:Add(v.Name)
         end
 end)
  Players:Toggle("Spectate",false, function(k)
_G.sep = k 
while _G.sep do wait()
 for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == Noobply then
game.Workspace.Camera.CameraSubject = v.Character.Humanoid
end
end
end
game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)
  Players:Toggle("Auto Kill Players",false, function(k)
      _G.KillPlayer = k
while _G.KillPlayer do wait()
       pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(Noobply).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
			game.Players:FindFirstChild(Noobply).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
			game:GetService'VirtualUser':CaptureController()
			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

if _G.KillPlayer == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2133.3891601563, 50.50365447998, -1627.73046875)
end
end)
end
end)
Players:Label("Use All Item And Skill All")
Players:Toggle("Auto Kill Players",false, function(k)
_G.Useall = k
while _G.Useall do wait()
    pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(Noobply).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
			game.Players:FindFirstChild(Noobply).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
			game:GetService'VirtualUser':CaptureController()
			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
			if _G.Useall == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2133.3891601563, 50.50365447998, -1627.73046875)	    
end
end)
end
end)
 Players:Button("Teleport", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Noobply].Character.HumanoidRootPart.CFrame
 end)
Players:Label("Auto-Skill")
Players:Toggle("Auto Skill All", false, function(State)
_G.allskill = State
while _G.allskill do wait()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           
           game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

           game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

           game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart) 
end
end)
 Players:Toggle("Auto Skill [ Z ]", false, function(State)
     _G.Z = State
while _G.Z do wait()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end
 end)
 Players:Toggle("Auto Skill [ X ]", false, function(State)
_G.X = State
while _G.X do wait()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        end
 end)
 Players:Toggle("Auto Skill [ C ]", false, function(State)
     _G.c = State
    while _G.c do wait()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        end
 end)
 Players:Toggle("Auto Skill [ V ]", false, function(State)
     _G.v = State
     while _G.v do wait()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
 end
 end)
end
if newworld then
 Wapon = {}
 for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
     if v:IsA("Tool") then
         table.insert(Wapon ,v.Name)
     end
 end
 local SelectWeapona = Players:DropDown("Select Weapon","Select Weapon",Wapon,function(Value)
     SelectWeapon = Value
 end)
  Players:Button("Refresh Weapon",function()
     SelectWeapona:Clear()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
         if v:IsA("Tool") then
             SelectWeapona:Add(v.Name)
         end
     end
 end)
 Players:Toggle("Auto Equip",false,function(start)
     _G.Eq = start
     while _G.Eq do wait()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ClassName == "Tool" then
        if v.Name == SelectWeapon then
     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
     wait()
        end
 end
 end
 end
 end)
Players:Toggle("USE ITEM ALL",false,function(w)
_G.all = w
while _G.all do wait()
 swordeq()
end
end)    
 ply = {}
 for i,v in pairs(game.Players:GetPlayers()) do
    table.insert(ply,v.Name)
 end
 local Dropdown = Players:DropDown("Select Players","Select Players",ply,function(Value)
     Noobply = Value
 end)
 Players:Button("Refresh Players",function()
     Dropdown:Clear()
 for i,v in pairs(game.Players:GetPlayers()) do
             Dropdown:Add(v.Name)
         end
 end)
  Players:Toggle("Spectate",false, function(k)
_G.sep = k 
while _G.sep do wait()
 for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == Noobply then
game.Workspace.Camera.CameraSubject = v.Character.Humanoid
end
end
end
game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)
  Players:Toggle("Auto Kill Players",false, function(k)
      _G.KillPlayer = k
while _G.KillPlayer do wait()
       pcall(function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(Noobply).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
			game.Players:FindFirstChild(Noobply).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
			game:GetService'VirtualUser':CaptureController()
			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

if _G.KillPlayer == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6789.7666015625, 31.405130386353, 8178.2348632813)
end
end)
end
end)
Players:Label("Use All Item And Skill All")
Players:Toggle("Auto Kill Players",false, function(k)
_G.Useall = k
while _G.Useall do wait()
    pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(Noobply).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
			game.Players:FindFirstChild(Noobply).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
			game:GetService'VirtualUser':CaptureController()
			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
			if _G.Useall == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6789.7666015625, 31.405130386353, 8178.2348632813)
end
end)
end
end)
 Players:Button("Teleport", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Noobply].Character.HumanoidRootPart.CFrame
 end)
Players:Label("Auto-Skill")
 Players:Toggle("Auto Skill All", false, function(State)
_G.allskill = State
while _G.allskill do wait()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           
           game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

           game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

           game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart) 
end
end)
 Players:Toggle("Auto Skill [ Z ]", false, function(State)
     _G.Z = State
while _G.Z do wait()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end
 end)
 Players:Toggle("Auto Skill [ X ]", false, function(State)
_G.X = State
while _G.X do wait()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        end
 end)
 Players:Toggle("Auto Skill [ C ]", false, function(State)
     _G.c = State
    while _G.c do wait()
           game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        end
 end)
 Players:Toggle("Auto Skill [ V ]", false, function(State)
     _G.v = State
     while _G.v do wait()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
 end
 end)
end

 local Tab4 = win:addtap("Misc")
 local Misc = Tab4:addpage()
 Misc:Ti("Misc")
 if _G.FPSBoost then
    spawn(function()
        wait(3)
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
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
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
 end
 Misc:Button("FPS Boost",function(t)
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
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
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
 Misc:Button("Anti-AFK", function()
     local vu = game:GetService("VirtualUser")
     game:GetService("Players").LocalPlayer.Idled:connect(function()
         vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
         wait(1)
         vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 end)
 end)
  Misc:Button("Rejoin", function()
 local ts = game:GetService("TeleportService")
	local p = game:GetService("Players").LocalPlayer
	ts:Teleport(game.PlaceId, p)
end)
Misc:Button("Server Hop Less",function()
local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    if not _G.FailedServerID then _G.FailedServerID = {} end

    local function serversearch()
        data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
        for _, v in pairs(data_table.data) do
            pcall(function()
                if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end)
        end
    end

    function getservers()
        pcall(serversearch)
        for i, v in pairs(data_table) do
            if i == "nextPageCursor" then
                if gamelink:find"&cursor=" then
                    local a = gamelink:find"&cursor="
                    local b = gamelink:sub(a)
                    gamelink = gamelink:gsub(b, "")
                end
                gamelink = gamelink .. "&cursor=" .. v
                pcall(getservers)
            end
        end
    end

    pcall(getservers)
    wait()
    if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
    end
    table.insert(_G.FailedServerID, goodserver)
    game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
end)
 Misc:Button("Server Hop", function()
 local PlaceID = game.PlaceId
     local AllIDs = {}
     local foundAnything = ""
     local actualHour = os.date("!*t").hour
     local Deleted = false
     --[[
     local File = pcall(function()
         AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
     end)
     if not File then
         table.insert(AllIDs, actualHour)
         writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
     end
     ]]
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
                                 -- delfile("NotSameServers.json")
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
                         -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
 end)
  Misc:Ti("ESP", true)
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
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Team == game.Players.LocalPlayer.Team then
                                name.TextColor3 = Color3.new(255, 255 ,255)
                            else
                                name.TextColor3 = Color3.new(255, 255 ,255)
                            end
                        else
                            v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
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
 Misc:Toggle("ESP Player",false,function(a)
        ESPPlayer = a
        while ESPPlayer do wait()
            UpdatePlayerChams()
        end
 end)

 
 
 Misc:Button("No Geppo Cooldown", function()
  game.Players.LocalPlayer.Backpack.GeppoNew.cds.Value = 10000
 end)
 Misc:Button("No Dodge Cooldown", function()
  
     local a;
  
     a = hookfunc(getrenv().wait, function(x)
        if tostring(getfenv(2).script) == "Dash" then
           return game:GetService("RunService").RenderStepped:wait()
        end
        return a(x)
     end)
 end)
  spawn(function()
    while wait() do
 if _G.AutoFarm or _G.BOSS or _G.KillPlayer or _G.Awaken or _G.Useall or _G.all or _G.Seaking  or _G.Bosw then
 pcall(function()
                    if game.Players.LocalPlayer.Character.Haki.Value == 0 then
                    game.Players.LocalPlayer.Character.Haki.Value = 1
                    game:GetService("Players").LocalPlayer.Character.Services.Client.KenEvent:InvokeServer()
end
end)
end
end
end)

 
 spawn(function()
    while wait() do
        if _G.AutoFarm or _G.BOSS or _G.KillPlayer or _G.Awaken or _G.Useall or _G.all or _G.SeaKing  or _G.Bosw then
            pcall(function()
                    if game.Players.LocalPlayer.Character.Haki.Value == 0 then
                    game.Players.LocalPlayer.Character.Haki.Value = 1
                    game:GetService("Players").LocalPlayer.Character.Services.Client.Armament:FireServer()
                    end
                             end)
                 end
end
end)
local Misc1 = Tab4:addpage()
Misc1:Ti("Misc")
 if OldWorld then
Misc1:DropDown("Select Spin","Select Spin",{"Beli","Gem"},function(e)
 w = e
 end)
 Misc1:Toggle("Auto Random Fruit",false,function(s)
 _G.Fruit = s
 while _G.Fruit do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2028.4040527344, 48.262172698975, -1737.3084716797)
 if _G.Fruit == true then
 local args = {
     [1] = workspace.AntiTPNPC.ARandomFruit
 }
 game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
 wait()
 if _G.Fruit == true then
     pcall(function()
  game:GetService'VirtualUser':Button1Down(Vector2.new(0,0.9))
 game:GetService'VirtualUser':Button1Up(Vector2.new(0,0.9))
 for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ARandomFruit.Dialogue:GetChildren()) do
     if v.Name == w then
     v.Size = UDim2.new(0, 10000, 0, 10000)
     v.Position = UDim2.new(-2, 0, -5, 0)
     v.ImageTransparency = 1
 wait(.1)
end
end
end)
end
end
end
end)
end
 if newworld then
 Misc1:DropDown("Select Spin","Select Spin",{"Beli","Gem"},function(e)
 w = e
 end)
 Misc1:Toggle("Auto Rendom Fruit",false,function(s)
 _G.Fruit = s
 while _G.Fruit do wait()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2361.5256347656, 57.335083007813, 257.87176513672)
 if _G.Fruit == true then
 local args = {
     [1] = workspace.AntiTPNPC.ARandomFruit
 }
 game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
 wait()
 if _G.Fruit == true then
     pcall(function()
  game:GetService'VirtualUser':Button1Down(Vector2.new(0,0.9))
 game:GetService'VirtualUser':Button1Up(Vector2.new(0,0.9))
 for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ARandomFruit.Dialogue:GetChildren()) do
     if v.Name == w then
     v.Size = UDim2.new(0, 10000, 0, 10000)
     v.Position = UDim2.new(-2, 0, -5, 0)
     v.ImageTransparency = 1
 wait(.1)
end
end
end)
end
end
end
end)
end
if OldWorld then
local fruit = {
    "WolfWolf",
    "BombBomb",
    "BarrierBarrier",
    "DarkDark",
    "DragonDragon",
    "FlameFlame",
    "GiraffeGiraffe",
    "GravityGravity",
    "GumGum",
    "HumanHuman",
    "IceIce",
    "LeopardLeopard",
    "LightLight",
    "LoveLove",
    "MagmaMagma",
    "OpOp",
    "PawPaw",
    "PhoenixPhoenix",
    "QuakeQuake",
    "RumbleRumble",
    "SandSand",
    "ShadowShadow",
    "SnowSnow",
    "StringString",
    "VenomVenom",
    "BuddhaBuddha",
    "SpinoSpino",
    "AlloAllo",
    "DoughDough",
    "BrachioBrachio",
    "GasGas",
    "SpinSpin",
    "SpiritSpirit",
    "SpikeSpike",
}
 Misc1:DropDown("Select Devil Fruit","Select Devil Fruit",fruit,function(e)
     q = e
end)
Misc1:Toggle("Sniper Devil Fruit","Sniper Devil Fruit",false,function(e)
_G.sn = e
while _G.sn do wait()
local args = {
    [1] = q,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Functions.dfbeli:InvokeServer(unpack(args))
wait(.1)
end
end)
end
if newworld then
local fruit = {
    "WolfWolf",
    "BombBomb",
    "BarrierBarrier",
    "DarkDark",
    "DragonDragon",
    "FlameFlame",
    "GiraffeGiraffe",
    "GravityGravity",
    "GumGum",
    "HumanHuman",
    "IceIce",
    "LeopardLeopard",
    "LightLight",
    "LoveLove",
    "MagmaMagma",
    "OpOp",
    "PawPaw",
    "PhoenixPhoenix",
    "QuakeQuake",
    "RumbleRumble",
    "SandSand",
    "ShadowShadow",
    "SnowSnow",
    "StringString",
    "VenomVenom",
    "BuddhaBuddha",
    "SpinoSpino",
    "AlloAllo",
    "DoughDough",
    "BrachioBrachio",
    "GasGas",
    "SpinSpin",
    "SpiritSpirit",
    "SpikeSpike",
}
 Misc1:DropDown("Select Devil Fruit","Select Devil Fruit",fruit,function(e)
     q = e
end)
Misc1:Toggle("Sniper Devil Fruit",false,function(e)
_G.sn = e
while _G.sn do wait()
local args = {
    [1] = q,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Functions.dfbeli:InvokeServer(unpack(args))
wait(.1)
end
end)
end
  Misc:Toggle("Bring All Fruit",false,function(State)
_G.Bring = State
while _G.Bring do wait()
                  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
         if v:IsA "Tool" then
             if string.find(v.Name, "Fruit") then
                 v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
             end
         end
     end
     end
  end)
  Misc:Toggle("No Water Damage",_G.Water,function(w)
     _G.Water = w
     end)
spawn(function()
    while wait() do
        pcall(function()
        if _G.Water then
             local args = {
     [1] = "Out"
 }
 
 game:GetService("Players").LocalPlayer.Character.SwimRemote:FireServer(unpack(args))
end
end)
    end
    end)
 Misc:Toggle("No Clip",false,function(value)
     NoClip = value
 end)
   local function gamekiller()
      while true do
          local fucku = 1
      end
   end
   
   game:GetService("RunService").RenderStepped:connect(function()
   for i,v in pairs(game.CoreGui:GetChildren()) do
      if v:FindFirstChild("PropertiesFrame") then
      if v:FindFirstChild("ExplorerPanel") then
      if v:FindFirstChild("SideMenu") then
          warn("DarkDex Detected")
          game.Players.LocalPlayer:kick("Anti Dark Dex")
          wait(.3)
          game:Shutdown()
           wait(0.2)
          gamekiller()
      end
      end
      end
   end
   end)
