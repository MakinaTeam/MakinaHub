
if not _G.Config then
_G.Config = {
  ["Fishing"] = {
    ["Auto Fishing"] = true,
  },
  ["Misc"] = {
    ["Method Shake"] = "Fast",--Fast//Normal
    ["Delay Shake"] = 0,
    ["Black Screen"] = true,
    ["Fps Boost"] = false,
  },
  ["WebHook"] = {
    ["Url"] = "",
    ["Delay Send"] = false,
    ["Enable"] = false,
  },
}
end
          
function TP(p)
	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(p)
end
AnalyticsService = game:GetService("AnalyticsService")
CollectionService = game:GetService("CollectionService")
DataStoreService = game:GetService("DataStoreService")
HttpService = game:GetService("HttpService")
Lighting = game:GetService("Lighting")
MarketplaceService = game:GetService("MarketplaceService")
Players = game:GetService("Players")
ReplicatedFirst = game:GetService("ReplicatedFirst")
ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
ServerScriptService = game:GetService("ServerScriptService")
ServerStorage = game:GetService("ServerStorage")
SoundService = game:GetService("SoundService")
StarterGui = game:GetService("StarterGui")
StarterPack = game:GetService("StarterPack")
StarterPlayer = game:GetService("StarterPlayer")
TeleportService = game:GetService("TeleportService")
TweenService = game:GetService("TweenService")
Teams = game:GetService("Teams")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
UserInputService = game:GetService("UserInputService")
VirtualInputManager = game:GetService("VirtualInputManager")
ContextActionService = game:GetService("ContextActionService")
GuiService = game:GetService("GuiService")
print("ClientMonsterTools.lua loaded")


game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    print("Roblox Tried to kick you but we didn't let them kick you :D")
end)
warn("[Anti Afk] - loaded successfully") 

local teleportZoneFarm = {
    moosewood = CFrame.new(307.2499694824219, 133.68817138671875, 212.47703552246094),
TheDepths = CFrame.new(934.194824, -745.306641, 1416.5094, -0.984208703, 3.79512386e-08, 0.177012056, 4.68270365e-08, 1, 4.59648852e-08, -0.177012056, 5.35279874e-08, -0.984208703),
Vertigo = CFrame.new(-137.697098, -736.86377, 1233.15271, 1, -1.61821543e-08, -2.01375751e-05, 1.6184277e-08, 1, 1.05423091e-07, 2.01375751e-05, -1.0542341e-07, 1)
}

local teleportSpots = {
    altar = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    arch = CFrame.new(998.966796875, 126.6849365234375, -1237.1434326171875),
    birch = CFrame.new(1742.3203125, 138.25787353515625, -2502.23779296875),
    brine = CFrame.new(-1794.10596, -145.849701, -3302.92358, -5.16176224e-05, 3.10316682e-06, 0.99999994, 0.119907647, 0.992785037, 3.10316682e-06, -0.992785037, 0.119907647, -5.16176224e-05),
    deep = CFrame.new(-1510.88672, -237.695053, -2852.90674, 0.573604643, 0.000580655003, 0.81913209, -0.000340352941, 0.999999762, -0.000470530824, -0.819132209, -8.89541116e-06, 0.573604763),
    deepshop = CFrame.new(-979.196411, -247.910156, -2699.87207, 0.587748766, 0, 0.809043527, 0, 1, 0, -0.809043527, 0, 0.587748766),
    enchant = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    executive = CFrame.new(-29.836761474609375, -250.48486328125, 199.11614990234375),
    keepers = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    mod_house = CFrame.new(-30.205902099609375, -249.40594482421875, 204.0529022216797),
    moosewood = CFrame.new(383.10113525390625, 131.2406005859375, 243.93385314941406),
    mushgrove = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    roslit = CFrame.new(-1476.511474609375, 130.16842651367188, 671.685302734375),
    snow = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    snowcap = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    spike = CFrame.new(-1254.800537109375, 133.88555908203125, 1554.2021484375),
    statue = CFrame.new(72.8836669921875, 138.6964874267578, -1028.4193115234375),
    sunstone = CFrame.new(-933.259705, 128.143951, -1119.52063, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685),
    swamp = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    terrapin = CFrame.new(-143.875244140625, 141.1676025390625, 1909.6070556640625),
    trident = CFrame.new(-1479.48987, -228.710632, -2391.39307, 0.0435845852, 0, 0.999049723, 0, 1, 0, -0.999049723, 0, 0.0435845852),
    vertigo = CFrame.new(-112.007278, -492.901093, 1040.32788, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    volcano = CFrame.new(-1888.52319, 163.847565, 329.238281, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    wilson = CFrame.new(2938.80591, 277.474762, 2567.13379, 0.4648332, 0, 0.885398269, 0, 1, 0, -0.885398269, 0, 0.4648332),
    wilsons_rod = CFrame.new(2879.2085, 135.07663, 2723.64233, 0.970463336, -0.168695927, -0.172460333, 0.141582936, -0.180552125, 0.973321974, -0.195333466, -0.968990743, -0.151334763)
}
local FishAreas = {
    Roslit_Bay = CFrame.new(-1663.73889, 149.234116, 495.498016, 0.0380855016, 4.08820178e-08, -0.999274492, 5.74658472e-08, 1, 4.3101906e-08, 0.999274492, -5.90657123e-08, 0.0380855016),
    Ocean = CFrame.new(7665.104, 125.444443, 2601.59351, 0.999966085, -0.000609769544, -0.00821684115, 0.000612694537, 0.999999762, 0.000353460142, 0.00821662322, -0.000358482561, 0.999966204),
    Snowcap_Pond = CFrame.new(2778.09009, 283.283783, 2580.323, 1, 7.17688531e-09, -2.22843701e-05, -7.17796267e-09, 1, -4.83369114e-08, 2.22843701e-05, 4.83370712e-08, 1),
    Moosewood_Docks = CFrame.new(343.2359924316406, 133.61595153808594, 267.0580139160156),
    Deep_Ocean = CFrame.new(3569.07153, 125.480949, 6697.12695, 0.999980748, -0.00188910461, -0.00591362361, 0.00193980196, 0.999961317, 0.00857902411, 0.00589718809, -0.00859032944, 0.9999457),
    Vertigo = CFrame.new(-137.697098, -736.86377, 1233.15271, 1, -1.61821543e-08, -2.01375751e-05, 1.6184277e-08, 1, 1.05423091e-07, 2.01375751e-05, -1.0542341e-07, 1),
    Snowcap_Ocean = CFrame.new(3088.66699, 131.534332, 2587.11304, 1, 4.30694858e-09, -1.19097813e-14, -4.30694858e-09, 1, -2.80603398e-08, 1.17889275e-14, 2.80603398e-08, 1),
    Harvesters_Spike = CFrame.new(-1234.61523, 125.228767, 1748.57166, 0.999991536, -0.000663080777, -0.00405627443, 0.000725277001, 0.999881923, 0.0153511297, 0.00404561637, -0.0153539423, 0.999873936),
    SunStone = CFrame.new(-845.903992, 133.172211, -1163.57776, 1, -7.93465915e-09, -2.09446498e-05, 7.93544608e-09, 1, 3.75741536e-08, 2.09446498e-05, -3.75743205e-08, 1),
    Roslit_Bay_Ocean = CFrame.new(-1708.09302, 155.000015, 384.928009, 1, -9.84460868e-09, -3.24939563e-15, 9.84460868e-09, 1, 4.66220271e-08, 2.79042003e-15, -4.66220271e-08, 1),
    Moosewood_Pond = CFrame.new(509.735992, 152.000031, 302.173004, 1, -1.78487678e-08, -8.1329488e-14, 1.78487678e-08, 1, 8.45405168e-08, 7.98205428e-14, -8.45405168e-08, 1),
    Terrapin_Ocean = CFrame.new(58.6469994, 135.499985, 2147.41699, 1, 2.09643041e-08, -5.6023784e-15, -2.09643041e-08, 1, -9.92988376e-08, 3.52064755e-15, 9.92988376e-08, 1),
    Isonade = CFrame.new(-1060.99902, 121.164787, 953.996033, 0.999958456, 0.000633197487, -0.00909138657, -0.000568434712, 0.999974489, 0.00712434994, 0.00909566507, -0.00711888634, 0.999933302),
    Moosewood_Ocean = CFrame.new(-167.642715, 125.19548, 248.009521, 0.999997199, -0.000432743778, -0.0023210498, 0.000467110571, 0.99988997, 0.0148265222, 0.00231437827, -0.0148275653, 0.999887407),
    Roslit_Pond = CFrame.new(-1811.96997, 148.047089, 592.642517, 1, 1.12983072e-08, -2.16573972e-05, -1.12998171e-08, 1, -6.97014357e-08, 2.16573972e-05, 6.97016844e-08, 1),
    Moosewood_Ocean_Mythical = CFrame.new(252.802994, 135.849625, 36.8839989, 1, -1.98115071e-08, -4.50667564e-15, 1.98115071e-08, 1, 1.22230617e-07, 2.08510289e-15, -1.22230617e-07, 1),
    Terrapin_Olm = CFrame.new(22.0639992, 182.000015, 1944.36804, 1, 1.14953362e-08, -2.7011112e-15, -1.14953362e-08, 1, -7.09263972e-08, 1.88578841e-15, 7.09263972e-08, 1),
    The_Arch = CFrame.new(1283.30896, 130.923569, -1165.29602, 1, -5.89772364e-09, -3.3183043e-15, 5.89772364e-09, 1, 3.63913486e-08, 3.10367822e-15, -3.63913486e-08, 1),
    Scallop_Ocean = CFrame.new(23.2255898, 125.236847, 738.952271, 0.999990165, -0.00109633175, -0.00429760758, 0.00115595153, 0.999902785, 0.0138949333, 0.00428195624, -0.013899764, 0.999894202),
    SunStone_Hidden = CFrame.new(-1139.55701, 134.62204, -1076.94324, 1, 3.9719481e-09, -1.6278158e-05, -3.97231048e-09, 1, -2.22651142e-08, 1.6278158e-05, 2.22651781e-08, 1),
    Mushgrove_Stone = CFrame.new(2525.36011, 131.000015, -776.184021, 1, 1.90145943e-08, -3.24206519e-15, -1.90145943e-08, 1, -1.06596836e-07, 1.21516956e-15, 1.06596836e-07, 1),
    Keepers_Altar = CFrame.new(1307.13599, -805.292236, -161.363998, 1, 2.40881981e-10, -3.25609947e-15, -2.40881981e-10, 1, -1.35044154e-09, 3.255774e-15, 1.35044154e-09, 1),
    Lava = CFrame.new(-1959.86206, 193.144821, 271.960999, 1, -6.02453598e-09, -2.97388313e-15, 6.02453598e-09, 1, 3.37767716e-08, 2.77039384e-15, -3.37767716e-08, 1),
    Roslit_Pond_Seaweed = CFrame.new(-1785.2869873046875, 148.15780639648438, 639.9299926757812),    
}
local racistPeople = {
    Witch = CFrame.new(409.638092, 134.451523, 311.403687, -0.74079144, 0, 0.671735108, 0, 1, 0, -0.671735108, 0, -0.74079144),
    Quiet_Synph = CFrame.new(566.263245, 152.000031, 353.872101, -0.753558397, 0, -0.657381535, 0, 1, 0, 0.657381535, 0, -0.753558397),
    Pierre = CFrame.new(391.38855, 135.348389, 196.712387, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Phineas = CFrame.new(469.912292, 150.69342, 277.954987, 0.886104584, -0, -0.46348536, 0, 1, -0, 0.46348536, 0, 0.886104584),
    Paul = CFrame.new(381.741882, 136.500031, 341.891022, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Shipwright = CFrame.new(357.972595, 133.615967, 258.154541, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    Angler = CFrame.new(480.102478, 150.501053, 302.226898, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    Marc = CFrame.new(466.160034, 151.00206, 224.497086, -0.996853352, 0, -0.0792675018, 0, 1, 0, 0.0792675018, 0, -0.996853352),
    Lucas = CFrame.new(449.33963, 181.999893, 180.689072, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    Latern_Keeper = CFrame.new(-39.0456772, -246.599976, 195.644363, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Latern_Keeper2 = CFrame.new(-17.4230175, -304.970276, -14.529892, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Inn_Keeper = CFrame.new(487.458466, 150.800034, 231.498932, -0.564704418, 0, -0.825293183, 0, 1, 0, 0.825293183, 0, -0.564704418),
    Roslit_Keeper = CFrame.new(-1512.37891, 134.500031, 631.24353, 0.738236904, 0, -0.674541533, 0, 1, 0, 0.674541533, 0, 0.738236904),
    FishingNpc_1 = CFrame.new(-1429.04138, 134.371552, 686.034424, 0, 0.0168599077, -0.999857903, 0, 0.999857903, 0.0168599077, 1, 0, 0),
    FishingNpc_2 = CFrame.new(-1778.55408, 149.791779, 648.097107, 0.183140755, 0.0223737024, -0.982832015, 0, 0.999741018, 0.0227586292, 0.983086705, -0.00416803267, 0.183093324),
    FishingNpc_3 = CFrame.new(-1778.26807, 147.83165, 653.258606, -0.129575253, 0.501478612, 0.855411887, -2.44146213e-05, 0.862683058, -0.505744994, -0.991569638, -0.0655529201, -0.111770131),
    Henry = CFrame.new(483.539307, 152.383057, 236.296143, -0.789363742, 0, 0.613925934, 0, 1, 0, -0.613925934, 0, -0.789363742),
    Daisy = CFrame.new(581.550049, 165.490753, 213.499969, -0.964885235, 0, -0.262671858, 0, 1, 0, 0.262671858, 0, -0.964885235),
    Appraiser = CFrame.new(453.182373, 150.500031, 206.908783, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    Merchant = CFrame.new(416.690521, 130.302628, 342.765289, -0.249025017, -0.0326484665, 0.967946589, -0.0040341015, 0.999457955, 0.0326734781, -0.968488574, 0.00423171744, -0.249021754),
    Mod_Keeper = CFrame.new(-39.0905838, -245.141144, 195.837891, -0.948549569, -0.0898146331, -0.303623199, -0.197293222, 0.91766715, 0.34490931, 0.247647122, 0.387066364, -0.888172567),
    Ashe = CFrame.new(-1709.94055, 149.862411, 729.399536, -0.92290163, 0.0273250472, -0.384064913, 0, 0.997478604, 0.0709675401, 0.385035753, 0.0654960647, -0.920574605),
    Alfredrickus = CFrame.new(-1520.60632, 142.923264, 764.522034, 0.301733732, 0.390740901, -0.869642735, 0.0273988936, 0.908225596, 0.417582989, 0.952998459, -0.149826124, 0.26333645),
}
local itemSpots = {
    Training_Rod = CFrame.new(457.693848, 148.357529, 230.414307, 1, -0, 0, 0, 0.975410998, 0.220393807, -0, -0.220393807, 0.975410998),
    Plastic_Rod = CFrame.new(454.425385, 148.169739, 229.172424, 0.951755166, 0.0709736273, -0.298537821, -3.42726707e-07, 0.972884834, 0.231290117, 0.306858391, -0.220131472, 0.925948203),
    Lucky_Rod = CFrame.new(446.085999, 148.253006, 222.160004, 0.974526405, -0.22305499, 0.0233404674, 0.196993902, 0.901088715, 0.386306256, -0.107199371, -0.371867687, 0.922075212),
    Kings_Rod = CFrame.new(1375.57642, -810.201721, -303.509247, -0.7490201, 0.662445903, -0.0116144121, -0.0837960541, -0.0773290396, 0.993478119, 0.657227278, 0.745108068, 0.113431036),
    Flimsy_Rod = CFrame.new(471.107697, 148.36171, 229.642441, 0.841614008, 0.0774728209, -0.534493923, 0.00678436086, 0.988063335, 0.153898612, 0.540036798, -0.13314943, 0.831042409),
    Nocturnal_Rod = CFrame.new(-141.874237, -515.313538, 1139.04529, 0.161644459, -0.98684907, 1.87754631e-05, 1.87754631e-05, 2.21133232e-05, 1, -0.98684907, -0.161644459, 2.21133232e-05),
    Fast_Rod = CFrame.new(447.183563, 148.225739, 220.187454, 0.981104493, 1.26492232e-05, 0.193478703, -0.0522461236, 0.962867677, 0.264870107, -0.186291039, -0.269973755, 0.944674432),
    Carbon_Rod = CFrame.new(454.083618, 150.590073, 225.328827, 0.985374212, -0.170404434, 1.41561031e-07, 1.41561031e-07, 1.7285347e-06, 1, -0.170404434, -0.985374212, 1.7285347e-06),
    Long_Rod = CFrame.new(485.695038, 171.656326, 145.746109, -0.630167365, -0.776459217, -5.33461571e-06, 5.33461571e-06, -1.12056732e-05, 1, -0.776459217, 0.630167365, 1.12056732e-05),
    Mythical_Rod = CFrame.new(389.716705, 132.588821, 314.042847, 0, 1, 0, 0, 0, -1, -1, 0, 0),
    Midas_Rod = CFrame.new(401.981659, 133.258316, 326.325745, 0.16456604, 0.986365497, 0.00103566051, 0.00017541647, 0.00102066994, -0.999999464, -0.986366034, 0.1645661, -5.00679016e-06),
    Trident_Rod = CFrame.new(-1484.34192, -222.325562, -2194.77002, -0.466092706, -0.536795318, 0.703284025, -0.319611132, 0.843386114, 0.43191275, -0.824988723, -0.0234660208, -0.56466186),
    Enchated_Altar = CFrame.new(1310.54651, -799.469604, -82.7303467, 0.999973059, 0, 0.00733732153, 0, 1, 0, -0.00733732153, 0, 0.999973059),
    Bait_Crate = CFrame.new(384.57513427734375, 135.3519287109375, 337.5340270996094),
    Quality_Bait_Crate = CFrame.new(-177.876, 144.472, 1932.844),
    Crab_Cage = CFrame.new(474.803589, 149.664566, 229.49469, -0.721874595, 0, 0.692023814, 0, 1, 0, -0.692023814, 0, -0.721874595),
    GPS = CFrame.new(517.896729, 149.217636, 284.856842, 7.39097595e-06, -0.719539165, -0.694451928, -1, -7.39097595e-06, -3.01003456e-06, -3.01003456e-06, 0.694451928, -0.719539165),
    Basic_Diving_Gear = CFrame.new(369.174774, 132.508835, 248.705368, 0.228398502, -0.158300221, -0.96061182, 1.58026814e-05, 0.986692965, -0.162594408, 0.973567724, 0.037121132, 0.225361705),
    Fish_Radar = CFrame.new(365.75177, 134.50499, 274.105804, 0.704499543, -0.111681774, -0.70086211, 1.32396817e-05, 0.987542748, -0.157350808, 0.709704578, 0.110844307, 0.695724905)
}

-- Locals
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
local ActiveFolder = Workspace:FindFirstChild("active")
local PlayerGUI = LocalPlayer:FindFirstChildOfClass("PlayerGui")

function GetPosition()
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		return {
			Vector3.new(0,0,0),
			Vector3.new(0,0,0),
			Vector3.new(0,0,0)
		}
	end
	return {
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X,
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y,
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z
	}
end

function ExportValue(arg1, arg2)
	return tonumber(string.format("%."..(arg2 or 1)..'f', arg1))
end

-- Varbiables

local AutoFreeze = false
local autoShake = false
local AutoFish = false
local autoShake2 = false
local autoShake3 = false
local AutoZoneCast = false
local autoShakeDelay = 0.3
local autoReel = false
local AutoCast = false
local Noclip = false
local AntiDrown = false
local WebhookLog = false
local AutoSell = false
local AntiAfk = false
local AutoAppraiser = false

local Keybind = Enum.KeyCode.F

PlayerGUI.ChildAdded:Connect(function(GUI)
    if GUI:IsA("ScreenGui") then
        if GUI.Name == "reel" and autoReel then
            local reelfinishedEvent = ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished")
            if reelfinishedEvent then
                while GUI do
                    task.wait(2)
                    reelfinishedEvent:FireServer(100, false)
                end
            end
        end
    end
end)
function AutoFish5()
    if autoShake3 then
        task.spawn(function()
            while _G.Config["Fishing"]["Auto Fishing"] do
                local PlayerGUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                local shakeUI = PlayerGUI:FindFirstChild("shakeui")
                if shakeUI and shakeUI.Enabled then
                    local safezone = shakeUI:FindFirstChild("safezone")
                    if safezone then
                        local button = safezone:FindFirstChild("button")
                        if button and button:IsA("ImageButton") and button.Visible then
                            if autoShake then
                                local pos = button.AbsolutePosition
                                local size = button.AbsoluteSize
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, game:GetService("Players").LocalPlayer, 0)
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, game:GetService("Players").LocalPlayer, 0)
                            elseif autoShake2 then
                                GuiService.SelectedObject = button
                                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                            end
                        end
                    end
                end
                task.wait()
            end
        end)
    else
        task.spawn(function()
            while _G.Config["Fishing"]["Auto Fishing"] do
                task.wait(autoShakeDelay)
                local PlayerGUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                local shakeUI = PlayerGUI:FindFirstChild("shakeui")
                if shakeUI and shakeUI.Enabled then
                    local safezone = shakeUI:FindFirstChild("safezone")
                    if safezone then
                        local button = safezone:FindFirstChild("button")
                        if button and button:IsA("ImageButton") and button.Visible then
                            if autoShake then
                                local pos = button.AbsolutePosition
                                local size = button.AbsoluteSize
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, game:GetService("Players").LocalPlayer, 0)
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, game:GetService("Players").LocalPlayer, 0)
                            elseif autoShake2 then
                                GuiService.SelectedObject = button
                                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                            end
                        end
                    end
                end
            end
        end)
    end
end
function ZoneCasting()
    if not ProtectPremium then
        return
    end
    spawn(function()
        while AutoZoneCast do
            local player = game.Players.LocalPlayer
            local character = player.Character
            if character then
                local tool = character:FindFirstChildOfClass("Tool")
                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")
                    if hasBobber then
                        local ropeConstraint = hasBobber:FindFirstChild("RopeConstraint")
                        if ropeConstraint then
                            ropeConstraint.Length = 200000
                        end

                        local platformSize = Vector3.new(10, 1, 10)
                        local platformPositionOffset = Vector3.new(0, -4, 0)

                        -- Custom Zones
                        if selectedZoneCast == "Bluefin Tuna Abundance" then
                            local selectedZone = Workspace.zones.fishing:FindFirstChild("Deep Ocean")
                            if selectedZone then
                                local abundanceValue = selectedZone:FindFirstChild("Abundance")
                                if abundanceValue and abundanceValue.Value == "Bluefin Tuna" then
                                    local bobberPosition = CFrame.new(selectedZone.Position.X, 126.564, selectedZone.Position.Z)
                                    hasBobber.CFrame = bobberPosition
                                    
                                    local platform = Instance.new("Part")
                                    platform.Size = platformSize
                                    platform.Position = hasBobber.Position + platformPositionOffset
                                    platform.Anchored = true
                                    platform.Parent = hasBobber
                                    platform.BrickColor = BrickColor.new("Bright blue")
                                    platform.Transparency = 1.000
                                end
                            end
                        elseif selectedZoneCast == "Swordfish Abundance" then
                            local selectedZone = Workspace.zones.fishing:FindFirstChild("Deep Ocean")
                            if selectedZone then
                                local abundanceValue = selectedZone:FindFirstChild("Abundance")
                                if abundanceValue and abundanceValue.Value == "Swordfish" then
                                    local bobberPosition = CFrame.new(selectedZone.Position.X, 126.564, selectedZone.Position.Z)
                                    hasBobber.CFrame = bobberPosition
                                    
                                    local platform = Instance.new("Part")
                                    platform.Size = platformSize
                                    platform.Position = hasBobber.Position + platformPositionOffset
                                    platform.Anchored = true
                                    platform.Parent = hasBobber
                                    platform.BrickColor = BrickColor.new("Bright blue")
                                    platform.Transparency = 1.000
                                end
                            end
                        else
                            -- Default Zones
                            local selectedZone = Workspace.zones.fishing:FindFirstChild(selectedZoneCast)
                            if selectedZone then
                                local bobberPosition
                                if selectedZoneCast == "FischFright24" then
                                    bobberPosition = CFrame.new(selectedZone.Position.X, 126, selectedZone.Position.Z)
                                elseif selectedZoneCast == "Isonade" then
                                    bobberPosition = CFrame.new(selectedZone.Position.X, 126, selectedZone.Position.Z)
                                elseif selectedZoneCast == "Deep Ocean" then
                                    bobberPosition = CFrame.new(1521, 126, -3543)
                                elseif selectedZoneCast == "Desolate Deep" then
                                    bobberPosition = CFrame.new(-1068, 126, -3108)
                                elseif selectedZoneCast == "Harvesters Spike" then
                                    bobberPosition = CFrame.new(-1234, 126, 1748)
                                elseif selectedZoneCast == "Moosewood Docks" then
                                    bobberPosition = CFrame.new(345, 126, 214)
                                elseif selectedZoneCast == "Moosewood Ocean" then
                                    bobberPosition = CFrame.new(890, 126, 465)
                                elseif selectedZoneCast == "Moosewood Ocean Mythical" then
                                    bobberPosition = CFrame.new(270, 126, 52)
                                elseif selectedZoneCast == "Moosewood Pond" then
                                    bobberPosition = CFrame.new(526, 126, 305)
                                elseif selectedZoneCast == "Mushgrove Water" then
                                    bobberPosition = CFrame.new(2541, 126, -792)
                                elseif selectedZoneCast == "Ocean" then
                                    bobberPosition = CFrame.new(-5712, 126, 4059)
                                elseif selectedZoneCast == "Roslit Bay" then
                                    bobberPosition = CFrame.new(-1650, 126, 504)
                                elseif selectedZoneCast == "Roslit Bay Ocean" then
                                    bobberPosition = CFrame.new(-1825, 126, 946)
                                elseif selectedZoneCast == "Roslit Pond" then
                                    bobberPosition = CFrame.new(-1807, 141, 599)
                                elseif selectedZoneCast == "Roslit Pond Seaweed" then
                                    bobberPosition = CFrame.new(-1804, 141, 625)
                                elseif selectedZoneCast == "Scallop Ocean" then
                                    bobberPosition = CFrame.new(16, 126, 730)
                                elseif selectedZoneCast == "Snowcap Ocean" then
                                    bobberPosition = CFrame.new(2308, 126, 2200)
                                elseif selectedZoneCast == "Snowcap Pond" then
                                    bobberPosition = CFrame.new(2777, 275, 2605)
                                elseif selectedZoneCast == "Sunstone" then
                                    bobberPosition = CFrame.new(-645, 126, -955)
                                elseif selectedZoneCast == "Terrapin Ocean" then
                                    bobberPosition = CFrame.new(-57, 126, 2011)
                                elseif selectedZoneCast == "The Arch" then
                                    bobberPosition = CFrame.new(1076, 126, -1202)
                                elseif selectedZoneCast == "Vertigo" then
                                    bobberPosition = CFrame.new(-75, -740, 1200)
                                end

                                hasBobber.CFrame = bobberPosition
                                
                                local platform = Instance.new("Part")
                                platform.Size = platformSize
                                platform.Position = hasBobber.Position + platformPositionOffset
                                platform.Anchored = true
                                platform.Parent = hasBobber
                                platform.BrickColor = BrickColor.new("Bright blue")
                                platform.Transparency = 1.000
                            end
                        end
                    else
                        print("Bobber not found in the tool.")
                    end
                else
                    print("No tool found in the character.")
                end
            end
            task.wait(0.01)
        end
    end)
end

function AntiAfk2()
    spawn(function()
        while AntiAfk do
            game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("afk"):FireServer(false)
            task.wait(0.01)
        end
    end)
end           

PlayerGUI.ChildAdded:Connect(function(GUI)
    if GUI:IsA("ScreenGui") then
    elseif GUI.Name == "reel" and autoReel then
        local reelfinishedEvent = ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished")
        if reelfinishedEvent then
            while GUI do
                task.wait(2)
                reelfinishedEvent:FireServer(100, false)
            end
        end
    end
end)

function Pidoras()
    spawn(function()
        while AutoCast do
            local player = game.Players.LocalPlayer
            local character = player.Character

            if character then
                local tool = character:FindFirstChildOfClass("Tool")

                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")

                    if not hasBobber then
                        local castEvent = tool:FindFirstChild("events") and tool.events:FindFirstChild("cast")

                        if castEvent then
                            local Random = math.random() * (99 - 90) + 90
                            local FRandom = string.format("%.4f", Random)
                            print(FRandom)
                            
                            local Random2 = math.random(90, 99)
                            castEvent:FireServer(Random2)

                            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                            if humanoidRootPart then
                                humanoidRootPart.Anchored = false
                            end
                        end
                    end
                end
                task.wait(1)
            end
        end
    end)
end

NoclipConnection = RunService.Stepped:Connect(function()
    if Noclip == true then
        if LocalCharacter ~= nil then
            for i, v in pairs(LocalCharacter:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide == true then
                    v.CanCollide = false
                end
            end
        end
    end
end)

local initialPosition

function rememberPosition()
    spawn(function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local rootPart = character:WaitForChild("HumanoidRootPart")
 
        local initialCFrame = rootPart.CFrame
 
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bodyVelocity.Parent = rootPart
 
        local bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bodyGyro.D = 100
        bodyGyro.P = 10000
        bodyGyro.CFrame = initialCFrame
        bodyGyro.Parent = rootPart
 
        while AutoFreeze do
            rootPart.CFrame = initialCFrame
            task.wait(0.01)
        end
 
        if bodyVelocity then
            bodyVelocity:Destroy()
        end
        if bodyGyro then
            bodyGyro:Destroy()
        end
    end)
end
function WebhookManager()
    spawn(function()
        while _G.Config["WebHook"]["Enable"] do
            task.wait(_G.Config["WebHook"]["Delay Send"])
            local OSTime = os.time()
            local playerLocalTime = os.date('*t', OSTime)
            local formattedLocalTime = string.format('%02d:%02d:%02d',
                                             playerLocalTime.hour,
                                             playerLocalTime.min,
                                             playerLocalTime.sec)
            
            local player = game.Players.LocalPlayer
            local playerUserId = player.UserId
            local playerProfileUrl = "https://www.roblox.com/users/" .. playerUserId .. "/profile"

            local MoneyPlayer = game:GetService("Players").LocalPlayer.leaderstats["C$"].Value
            local LvlPlayer = game:GetService("Players").LocalPlayer.leaderstats.Level.Value

            local Embed = {
                title = 'Panda Hub | Fishing',
                color = 0xCC33CC,
                fields = {
                    { name = 'Player Profile', value = playerProfileUrl },
                    { name = '', value = '', },
                    { name = '💸 | Money', value = '```' .. MoneyPlayer .. '```', inline = true },
                    { name = '👑 | Level', value = '```' .. LvlPlayer .. '```', inline = true },
                    { name = '', value = '', },
                    { name = 'Current Time', value = formattedLocalTime },
                },
                timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ', OSTime),
            }
            local success, response = pcall(function()
                return (syn and syn.request or http_request) {
                    Url = _G.Config["WebHook"]["Url"],
                    Method = 'POST',
                    Headers = { ['Content-Type'] = 'application/json' },
                    Body = game:GetService('HttpService'):JSONEncode({
                        username = 'Panda Hub | Fisch',
                        avatar_url = 'https://cdn.discordapp.com/attachments/1275017654121398396/1310183986789879888/images.jpg?ex=67444b6c&is=6742f9ec&hm=c2e49e70bd92c6fd8b5c5e06dcbf549fa0e97763b4ebe4fc7f79b602787e5c62&',
                        embeds = { Embed }
                    }),
                }
            end)
        end
    end)
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local VirtualInputManager, RunService = game:GetService("VirtualInputManager"), game:GetService("RunService")
local player = game:GetService("Players").LocalPlayer

function AutoSellz()
    spawn(function()
        while AutoSell do
            SellFishAndReturnAll()
            task.wait(AutoSellDelay)
        end
    end)
end
function Appraise()
    spawn(function()
        while AutoAppraiser do
            workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Appraiser"):WaitForChild("appraiser"):WaitForChild("appraise"):InvokeServer()
            task.wait(0.1)
        end
    end)
end

function SellFishAndReturnAll()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")
    local currentPosition = rootPart.CFrame
    local sellPosition = CFrame.new(464, 151, 232)
    local wasAutoFreezeActive = false
    if AutoFreeze then
        wasAutoFreezeActive = true
        AutoFreeze = false
    end
    rootPart.CFrame = sellPosition
    task.wait(0.5)
    workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sellall"):InvokeServer()
    task.wait(3)

    rootPart.CFrame = currentPosition

    if wasAutoFreezeActive then
        AutoFreeze = true
        rememberPosition()
    end
end
function SellFishAndReturnOne()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")
    local currentPosition = rootPart.CFrame
    --local sellPosition = CFrame.new(464, 151, 232)
    local wasAutoFreezeActive = false
    if AutoFreeze then
        wasAutoFreezeActive = true
        AutoFreeze = false
    end
    --rootPart.CFrame = sellPosition
    task.wait(0.5)
    workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sell"):InvokeServer()
    task.wait(3)

    rootPart.CFrame = currentPosition

    if wasAutoFreezeActive then
        AutoFreeze = true
        rememberPosition()
    end
end
local isEventActive, isReelActive, lastActionTime, currentRod = false, false, tick(), nil
local lastEquipTime, lastEquipReset, equipCount, lastCastReset, castCount = 0, tick(), 0, tick(), 0

local function CheckCurrentRod()
    local rodsFolder, playerRods = ReplicatedStorage.playerstats[player.Name].Rods, Workspace[player.Name]
    for _, rod in pairs(rodsFolder:GetChildren()) do
        if playerRods:FindFirstChild(rod.Name) then
            currentRod = rod.Name
            break
        end
    end
end

local function EquipRodIfInBackpack()
    local currentTime = tick()
    if currentTime - lastEquipReset >= 1 then
        equipCount, lastEquipReset = 0, currentTime
    end
    if equipCount < 3 then
        for _, rod in pairs(ReplicatedStorage.playerstats[player.Name].Rods:GetChildren()) do
            if player.Backpack:FindFirstChild(rod.Name) then
                player.PlayerGui.hud.safezone.backpack.events.equip:FireServer(player.Backpack[rod.Name])
                equipCount, lastEquipTime = equipCount + 1, currentTime
                wait(0.5)
                CheckCurrentRod()
                return
            end
        end
        CheckCurrentRod()
    else end
end

ShakeMode = "Phantom"
autoShakeDelay = 0.001
TP(CFrame.new(1116.5216064453125, -745.3887329101562, 1711.9539794921875))

      autoReel = true
        AutoCast = true
        if AutoCast then
             wait(0.5)
            EquipRodIfInBackpack()
            --CastRod()
        Pidoras()
        end
        if ShakeMode == "Mouse" then
            autoShake = false
        elseif ShakeMode == "Phantom" then
            autoShake2 = true
        end
        _G.Config["Fishing"]["Auto Fishing"] = true
        AutoFish5()
        if AutoCast == true and LocalCharacter:FindFirstChildOfClass("Tool") ~= nil then
            local Tool = LocalCharacter:FindFirstChildOfClass("Tool")
            if Tool:FindFirstChild("events"):WaitForChild("cast") ~= nil then
                local Random = math.random() * (99 - 90) + 90
                local FRandom = string.format("%.4f", Random)
                print(FRandom)
                local Random2 = math.random(90, 99)
                Tool.events.cast:FireServer(Random2)
            end
        end
