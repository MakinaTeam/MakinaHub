if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

getgenv().TweenSpeed = 350

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
                if v1380 then
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

spawn(function()
        pcall(function()
            while wait() do
                if _G.Tweenfruit then
                    if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
	            		local Highlight = Instance.new("Highlight")           
                   	Highlight.FillColor = Color3.fromRGB(24, 255, 24)
	            		Highlight.OutlineColor = Color3.fromRGB(24,255,24)         		
                  Highlight.Parent = game.Players.LocalPlayer.Character
                    end
                end
            end
        end)
    end)

    spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Tweenfruit then
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
      if _G.Tweenfruit then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)

   spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.Tweenfruit then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(5,2,5)
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

_G.Tweenfruit = true

spawn(function()
	while wait(.1) do
		if _G.Tweenfruit then
			for i, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					toTarget(v.Handle.CFrame)
				end
			end
		end
	end
end)
repeat
    local ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam", true)
    local UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController", true)
    if UIController and ChooseTeam then
        if ChooseTeam.Visible then
            for i, v in pairs(getgc()) do
                if type(v) == "function" and getfenv(v).script == UIController then
                    local constant = getconstants(v)
                    pcall(function()
                        if (constant[1] == "Pirates" or constant[1] == "Marines") and #constant == 1 then
                            local teamToSelect = getgenv().Team or "Pirates"
                            if constant[1] == teamToSelect then
                                v(teamToSelect)
                            end
                        end
                    end)
                end
            end
        end
    end
    wait(1)
until game.Players.LocalPlayer.Team
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.359138072, 0, -0.025062656, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "discord.gg/63Mwy9Sr"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 19.000

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.01, Color3.fromRGB(23, 48, 235)), ColorSequenceKeypoint.new(0.16, Color3.fromRGB(55, 23, 235)), ColorSequenceKeypoint.new(0.35, Color3.fromRGB(219, 13, 30)), ColorSequenceKeypoint.new(0.68, Color3.fromRGB(8, 152, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(114, 187, 255))}
UIGradient.Parent = TextLabel
game.StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Hiru Hub [ Premium ]",
        Text = "Looking for Fruit....",
        Duration = 999
    })
repeat
    wait()
until game.IsLoaded and (game.Players.LocalPlayer or game.Players.PlayerAdded:Wait()) and
    (game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait())
local a = Instance.new("ScreenGui")
local b = Instance.new("Frame")
local c = Instance.new("UICorner")
local d = Instance.new("Frame")
local e = Instance.new("ImageButton")
local f = Instance.new("ImageLabel")
local g = Instance.new("ImageLabel")
local h = Instance.new("TextButton")
local i = Instance.new("TextButton")
local j = Instance.new("TextLabel")
local k = Instance.new("TextLabel")
local l = Instance.new("TextLabel")
local l = true
game.Players.LocalPlayer.Idled:connect(
    function()
        while wait(2) do
            if l then
                game.VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                game.VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end
        end
    end
)
function AntiBan()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
     end
    end
    AntiBan()
if Ran then
    return
else
    getgenv().Ran = true
end
local a = game.Players.LocalPlayer
local b = a.Character
local c = game.TweenService
local d = Instance.new("BodyVelocity")
d.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
d.Velocity = Vector3.new()
d.Name = "bV"
local e = Instance.new("BodyAngularVelocity")
e.AngularVelocity = Vector3.new()
e.MaxTorque = Vector3.new(1 / 0, 1 / 0, 1 / 0)
e.Name = "bAV"
for f, f in next, workspace:GetChildren() do
    if f.Name:find("Fruit") and (f:IsA("Tool") or f:IsA("Model")) then
        repeat
            local d = d:Clone()
            d.Parent = b.HumanoidRootPart
            local e = e:Clone()
            e.Parent = b.HumanoidRootPart
            local a =
                c:Create(
                b.HumanoidRootPart,
                TweenInfo.new((a:DistanceFromCharacter(f.Handle.Position) - 0) / 300, Enum.EasingStyle.Linear),
                {CFrame = f.Handle.CFrame + Vector3.new(0, f.Handle.Size.Y, 0)}
            )
            a:Play()
            a.Completed:Wait()
            b.HumanoidRootPart.CFrame = f.Handle.CFrame
            d:Destroy()
            e:Destroy()
            wait(1)
        until f.Parent ~= workspace
        wait(1)
        local a =
            b:FindFirstChildOfClass("Tool") and b:FindFirstChildOfClass("Tool").Name:find("Fruit") and
            b:FindFirstChildOfClass("Tool") or
            (function()
                for a, a in a.Backpack:GetChildren() do
                    if a.Name:find("Fruit") then
                        return a
                    end
                end
            end)()
        print(a)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
            "StoreFruit",
            a:GetAttribute("OriginalName"),
            a
        )
    end
end
for a, a in pairs(game:GetService("Workspace"):GetChildren()) do
    if a:IsA("Tool") and string.find(a.Name, "Fruit") then
        NameFruit = a.Name
    end
end
print(NameFruit)
spawn(
    function()
        pcall(
            function()
                while wait(.1) do
                    if _G.AutoStoreFruit then
                        for a, a in pairs(NameFruit) do
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", a)
                        end
                    end
                end
            end
        )
    end
)
wait(1)
          game.StarterGui:SetCore("SendNotification", {
          Title = "Hiru Hub [ Premium ]",
          Text = "Hop Server....",
          Duration = 1,
          })
          Time = true
repeat
    task.spawn(
        pcall,
        function()
            Time = 0
            repeat
                wait()
            until game:IsLoaded()
            wait(Time)
            local a = game.PlaceId
            local b = {}
            local c = ""
            local d = os.date("!*t").hour
            local e = false
            function TPReturner()
                local e
                if c == "" then
                    e =
                        game.HttpService:JSONDecode(
                        game:HttpGet(
                            "https://games.roblox.com/v1/games/" .. a .. "/servers/Public?sortOrder=Asc&limit=100"
                        )
                    )
                else
                    e =
                        game.HttpService:JSONDecode(
                        game:HttpGet(
                            "https://games.roblox.com/v1/games/" ..
                                a .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. c
                        )
                    )
                end
                local f = ""
                if e.nextPageCursor and e.nextPageCursor ~= "null" and e.nextPageCursor ~= nil then
                    c = e.nextPageCursor
                end
                local c = 0
                for e, e in pairs(e.data) do
                    local g = true
                    f = tostring(e.id)
                    if tonumber(e.maxPlayers) > tonumber(e.playing) then
                        for a, a in pairs(b) do
                            if c ~= 0 then
                                if f == tostring(a) then
                                    g = false
                                end
                            else
                                if tonumber(d) ~= tonumber(a) then
                                    local a =
                                        pcall(
                                        function()
                                            delfile("NotSameServers.json")
                                            b = {}
                                            table.insert(b, d)
                                        end
                                    )
                                end
                            end
                            c = c + 1
                        end
                        if g == true then
                            table.insert(b, f)
                            wait()
                            pcall(
                                function()
                                    writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(b))
                                    wait()
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                                        a,
                                        f,
                                        game.Players.LocalPlayer
                                    )
                                end
                            )
                            wait(1)
                        end
                    end
                end
            end
            function Teleport()
                while wait() do
                    pcall(
                        function()
                            TPReturner()
                            if c ~= "" then
                                TPReturner()
                            end
                        end
                    )
                end
            end
            Teleport()
        end
    )
    wait()
until game.JobId ~= a
