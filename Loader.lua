if  not LPH_OBFUSCATED then
	function LPH_JIT_MAX(...)
		return ...;
	end
	function LPH_NO_VIRTUALIZE(...)
		return ...;
	end
	function LPH_NO_UPVALUES(...)
		return ...;
	end
end


v63 = "Xeter Attack"
	Fast_Attack = true
	DamageAura = true
	ClickNoCooldown = true

spawn(function()
	while wait() do
		if v63 then
			pcall(function()
				if (v63 == "Normal Attack") then
					v63 = 0.1;
				elseif (v63 == "Fast Attack") then
					v63 = 0.07;
				elseif (v63 == "Super Attack") then
					v63 = 0.04;
				elseif (v63 == "Xeter Attack") then
					v63 = 0.01;
				end
			end);
		end
	end
end);

NoAttackAnimation = true;
local v51 = game:GetService("ReplicatedStorage").Assets.GUI:WaitForChild("DamageCounter");
local v52 = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle);
local v53 = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib);
local v54 = v53.wrapAttackAnimationAsync;
v53.wrapAttackAnimationAsync = function(v347, v348, v349, v350, v351)
	if  not NoAttackAnimation then
		return v54(v347, v348, v349, 60, v351);
	end
	local v352 = {};
	local v353 = game.Players.LocalPlayer;
	local v354 = game:GetService("Workspace").Characters:GetChildren();
	for v768, v769 in pairs(v354) do
		local v770 = v769:FindFirstChildOfClass("Humanoid");
		if ((v769.Name ~= game.Players.LocalPlayer.Name) and v770 and v770.RootPart and (v770.Health > 0) and (v353:DistanceFromCharacter(v770.RootPart.Position) < 65)) then
			table.insert(v352, v770.RootPart);
		end
	end
	local v355 = game:GetService("Workspace").Enemies:GetChildren();
	for v771, v772 in pairs(v355) do
		local v773 = v772:FindFirstChildOfClass("Humanoid");
		if (v773 and v773.RootPart and (v773.Health > 0) and (v353:DistanceFromCharacter(v773.RootPart.Position) < 65)) then
			table.insert(v352, v773.RootPart);
		end
	end
	v347:Play(0.01, 0.01, 0.01);
	pcall(v351, v352);
end;
getAllBladeHits = LPH_NO_VIRTUALIZE(function(v356)
	local v357 = {};
	local v358 = game.Players.LocalPlayer;
	local v359 = game:GetService("Workspace").Enemies:GetChildren();
	for v774, v775 in pairs(v359) do
		local v776 = v775:FindFirstChildOfClass("Humanoid");
		if (v776 and v776.RootPart and (v776.Health > 0) and (v358:DistanceFromCharacter(v776.RootPart.Position) < (v356 + 5))) then
			table.insert(v357, v776.RootPart);
		end
	end
	return v357;
end);
getAllBladeHitsPlayers = LPH_NO_VIRTUALIZE(function(v360)
	local v361 = {};
	local v362 = game.Players.LocalPlayer;
	local v363 = game:GetService("Workspace").Characters:GetChildren();
	for v777, v778 in pairs(v363) do
		local v779 = v778:FindFirstChildOfClass("Humanoid");
		if ((v778.Name ~= game.Players.LocalPlayer.Name) and v779 and v779.RootPart and (v779.Health > 0) and (v362:DistanceFromCharacter(v779.RootPart.Position) < (v360 + 5))) then
			table.insert(v361, v779.RootPart);
		end
	end
	return v361;
end);
local v56 = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"));
local v57 = getupvalues(v56)[2];
local v58 = game:GetService("ReplicatedStorage").RigControllerEvent;
local v59 = Instance.new("Animation");
local v60 = 0;
local v61 = 0;
local v62 = 1000;
local v63 = 0.01;
local v64 = 0;
local v65 = {};
CancelCoolDown = LPH_JIT_MAX(function()
	local v364 = v57.activeController;
	if (v364 and v364.equipped) then
		v60 = tick() + (v63 or 0.01) + ((v64 / v62) * 0.3) ;
		v58.FireServer(v58, "weaponChange", v364.currentWeaponModel.Name);
		v64 = v64 + 1 ;
		v1.delay((v63 or 0.01) + ((v64 + (0.3 / v62)) * 0.3) , function()
			v64 = v64 - 1 ;
		end);
	end
end);
AttackFunction = LPH_JIT_MAX(function(v365)
	local v366 = v57.activeController;
	if (v366 and v366.equipped) then
		local v1386 = {};
		if (v365 == 1) then
			v1386 = getAllBladeHits(60);
		elseif (v365 == 2) then
			v1386 = getAllBladeHitsPlayers(65);
		else
			for v2057, v2058 in pairs(getAllBladeHits(55)) do
				table.insert(v1386, v2058);
			end
			for v2059, v2060 in pairs(getAllBladeHitsPlayers(55)) do
				table.insert(v1386, v2060);
			end
		end
		if ( #v1386 > 0) then
			pcall(v1.spawn, v366.attack, v366);
			if (tick() > v60) then
				CancelCoolDown();
			end
			if ((tick() - v61) > 0.1) then
				v366.timeToNextAttack = 0;
				v366.hitboxMagnitude = 60;
				pcall(v1.spawn, v366.attack, v366);
				v61 = tick();
			end
			local v1732 = v366.anims.basic[3];
			local v1733 = v366.anims.basic[2];
			local v1734 = v1732 or v1733 ;
			v59.AnimationId = v1734;
			local v1736 = v366.humanoid:LoadAnimation(v59);
			v1736:Play(0.01, 0.01, 0.01);
			v58.FireServer(v58, "hit", v1386, (v1732 and 3) or 2 , "");
			v1.delay(0.01, function()
				v1736:Stop();
			end);
		end
	end
end);
function CheckStun()
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stun") then
		return game:GetService("Players").LocalPlayer.Character.Stun.Value ~= 0 ;
	end
	return false;
end
LPH_JIT_MAX(function()
	spawn(function()
		while game:GetService("RunService").Stepped:Wait() do
			local v1387 = v57.activeController;
			if (v1387 and v1387.equipped and  not CheckStun()) then
				if (NeedAttacking and Fast_Attack) then
					v1.spawn(function()
						pcall(v1.spawn, AttackFunction, 1);
					end);
				elseif DamageAura then
					v1.spawn(function()
						pcall(v1.spawn, AttackFunction, 3);
					end);
				elseif (UsefastattackPlayers and Fast_Attack) then
					v1.spawn(function()
						pcall(v1.spawn, AttackFunction, 2);
					end);
				elseif (NeedAttacking and (Fast_Attack == false)) then
					if (v1387.hitboxMagnitude ~= 55) then
						v1387.hitboxMagnitude = 55;
					end
					pcall(v1.spawn, v1387.attack, v1387);
				end
			end
		end
	end);
end)();
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	wait(1);
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
inmyselfss = LPH_JIT_MAX(function(v367)
	local v368 = game:GetService("Players").LocalPlayer;
	local v369 = v368.Backpack:FindFirstChild(v367) or v368.Character:FindFirstChild(v367) ;
	if v369 then
		return v369;
	end
	for v780, v781 in pairs(v368.Character:GetChildren()) do
		if (v781:IsA("Tool") and (v781.Name == v367)) then
			return v781;
		end
	end
	return nil;
end);
v1.spawn(function()
	if (hookfunction and  not islclosure(hookfunction)) then
		workspace:WaitForChild("_WorldOrigin").ChildAdded:Connect(function(v1644)
			if (v1644.Name == "DamageCounter") then
				v1644.Enabled = false;
			end
		end);
		hookfunction(require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC, function()
		end);
		task.spawn(function()
			local v1645, v1646;
			repeat
				v1645, v1646 = pcall(function()
					for v1876, v1877 in pairs(getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.data) do
						if (typeof(v1877) == "function") then
							hookfunction(v1877, function()
							end);
						end
					end
				end);
				task.wait(1.5);
			until v1645
		end);
		abc = true;
		task.spawn(function()
			local v1647 = game.Players.LocalPlayer;
			local v1648 = require(v1647.PlayerScripts.CombatFramework.Particle);
			local v1649 = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib);
			shared.orl = shared.orl or v1649.wrapAttackAnimationAsync ;
			shared.cpc = shared.cpc or v1648.play ;
			if abc then
				pcall(function()
					v1649.wrapAttackAnimationAsync = function(v2061, v2062, v2063, v2064, v2065)
						local v2066 = v1649.getBladeHits(v2062, v2063, v2064);
						if v2066 then
							v1648.play = function()
							end;
							v2061:Play(0.1, 0.1, 0.1);
							v2065(v2066);
							v1648.play = shared.cpc;
							wait(0.5);
							v2061:Stop();
						end
					end;
				end);
			end
		end);
	end
end);

local v56 = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"));
local v57 = getupvalues(v56)[2];
local v123 = require(game:GetService("Players")['LocalPlayer'].PlayerScripts.CombatFramework.RigController);
local v124 = getupvalues(v123)[2];
local v125 = require(game.ReplicatedStorage.CombatFramework.RigLib);
local v126 = tick();
new = {};
function FastAttackConnectorFunction()
	repeat
		wait();
	until game:IsLoaded()
	repeat
		task.wait();
	until game.ReplicatedStorage
	repeat
		task.wait();
	until game.Players
	repeat
		task.wait();
	until game.Players.LocalPlayer
	repeat
		task.wait();
	until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
	local v610 = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"));
	local v611 = getupvalues(v610)[2];
	local v612 = require(game:GetService("Players")['LocalPlayer'].PlayerScripts.CombatFramework.RigController);
	local v613 = getupvalues(v612)[2];
	local v614 = require(game.ReplicatedStorage.CombatFramework.RigLib);
	local v615 = tick();
	ReturnFunctions = {};
	function CurrentWeapon()
		local v891 = v611.activeController;
		local v892 = v891.blades[1];
		if  not v892 then
			return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name;
		end
		pcall(function()
			while v892.Parent ~= game.Players.LocalPlayer.Character  do
				v892 = v892.Parent;
			end
		end);
		if  not v892 then
			return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name;
		end
		return v892;
	end
	function AttackFunctgggggion()
		if (game.Players.LocalPlayer.Character.Stun.Value ~= 0) then
			return nil;
		end
		local v893 = v611.activeController;
		v893.hitboxMagnitude = 55;
		if (v893 and v893.equipped) then
			for v1776 = 1, 1 do
				local v1777 = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character, {
					game.Players.LocalPlayer.Character.HumanoidRootPart
				}, 60);
				if ( #v1777 > 0) then
					local v1926 = debug.getupvalue(v893.attack, 5);
					local v1927 = debug.getupvalue(v893.attack, 6);
					local v1928 = debug.getupvalue(v893.attack, 4);
					local v1929 = debug.getupvalue(v893.attack, 7);
					local v1930 = ((v1926 * 798405) + (v1928 * 727595)) % v1927 ;
					local v1931 = (v1928 * 798405)(function()
						v1930 = ((v1930 * v1927) + NumberAc13) % 1099511627776 ;
						v1926 = math.floor(v1930 / v1927 );
						v1928 = v1930 - (v1926 * v1927) ;
					end)();
					v1929 = v1929 + 1 ;
					debug.setupvalue(v893.attack, 5, v1926);
					debug.setupvalue(v893.attack, 6, v1927);
					debug.setupvalue(v893.attack, 4, v1928);
					debug.setupvalue(v893.attack, 7, v1929);
					for v2127, v2128 in pairs(v893.animator.anims.basic) do
						v2128:Play(0.01, 0.01, 0.01);
					end
					if (game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and v893.blades and v893.blades[1]) then
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(CurrentWeapon()));
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", v1777, 2, "");
					end
				end
			end
		end
	end
	CountAttack = 0;
	TickCountAttack = tick();
	spawn(function()
		local v895 = getrawmetatable(game);
		local v896 = v895.__namecall;
		setreadonly(v895, false);
		v895.__namecall = newcclosure(function(v1566, ...)
			local v1567 = getnamecallmethod();
			local v1568 = {
				...
			};
			if ((v1567 == "FireServer") and (v1566.Name == "RigControllerEvent") and (v1568[1] == "hit")) then
				CountAttack = CountAttack + 1 ;
				TickCountAttack = tick();
			end
			return v896(v1566, unpack(v1568));
		end);
	end);
	ReturnFunctions.GetCount = function(v898)
		return CountAttack;
	end;
	ReturnFunctions.Attack = function(v899, v900)
		UFFF = v900;
	end;
	FastAttackSettings = {
		CDAAT = 80,
		TimeWait = 10
	};
	spawn(function()
		local v901 = require(game.ReplicatedStorage.Util.CameraShaker);
		v901:Stop();
	end);
	ReturnFunctions.InputValue = function(v902, v903, v904)
		FastAttackSettings['CDAAT'] = v903;
		FastAttackSettings['TimeWait'] = v904;
	end;
	ReturnFunctions.InputSetting = function(v907, v908)
		conchosetting = v908;
	end;
	function atack()
		pcall(function()
			AttackFunctgggggion();
		end);
	end
	ToiCanOxi = 0;
	conchosetting = {};
	ReturnFunctions.GetMethod = function(v909)
		MethodAttack = "Slow";
		if (CountAttack < FastAttackSettings['CDAAT']) then
			MethodAttack = "Fast";
		end
		return MethodAttack;
	end;
	spawn(function()
		while task.wait() do
			if UFFF then
				pcall(function()
					if (conchosetting and (type(conchosetting) == "table")) then
						if (conchosetting and conchosetting["Mastery Farm"]) then
							ToiCanOxi = 2;
							atack();
							if (conchosetting['DelayAttack'] and (type(conchosetting['DelayAttack']) == "number") and (conchosetting['DelayAttack'] >= 0.1)) then
								wait(conchosetting['DelayAttack']);
							else
								conchosetting['DelayAttack'] = 0.2;
								wait(conchosetting['DelayAttack']);
							end
						elseif (CountAttack < FastAttackSettings['CDAAT']) then
							ToiCanOxi = ToiCanOxi + 1 ;
							atack();
						elseif (CountAttack >= FastAttackSettings['CDAAT']) then
							ToiCanOxi = ToiCanOxi + 1 ;
							atack();
							if (conchosetting['DelayAttack'] and (type(conchosetting['DelayAttack']) == "number") and (conchosetting['DelayAttack'] >= 0.1)) then
								wait(conchosetting['DelayAttack'] * 2 );
							else
								conchosetting['DelayAttack'] = 0.2;
								wait(conchosetting['DelayAttack'] * 2 );
							end
						end
					end
				end);
			end
		end
	end);
	spawn(function()
		while task.wait() do
			pcall(function()
				if ((tick() - TickCountAttack) >= FastAttackSettings['TimeWait']) then
					CountAttack = 0;
				end
			end);
		end
	end);
	spawn(function()
		while task.wait() do
			if UFFF then
				pcall(function()
					local v1853 = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2];
					v1853.activeController.hitboxMagnitude = 55;
					v1853.activeController.timeToNextAttack = 0;
					v1853.activeController.attacking = false;
					v1853.activeController.increment = 3;
					v1853.activeController.blocking = false;
					v1853.activeController.timeToNextBlock = 0;
					v1853.activeController:attack();
					task.wait(0.2);
				end);
			end
		end
	end);
	spawn(function()
		while task.wait() do
			if UFFF then
				pcall(function()
					local v1860 = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2];
					v1860.activeController.hitboxMagnitude = 55;
					v1860.activeController.timeToNextAttack = 0;
					v1860.activeController.attacking = false;
					v1860.activeController.increment = 3;
					v1860.activeController.blocking = false;
					v1860.activeController.timeToNextBlock = 0;
					a = math.random(1, 5);
					if (a > 1) then
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):Button1Down(Vector2.new(50, 50));
					end
					task.wait(0.2);
				end);
			end
		end
	end);
	spawn(function()
		while wait() do
			if UFFF then
				pcall(function()
					if (CountAttack >= FastAttackSettings['CDAAT']) then
						TickFastAttackF = tick();
						repeat
							wait();
						until (tick() - TickFastAttackF) >= FastAttackSettings['TimeWait']
						CountAttack = 0;
					end
				end);
			end
		end
	end);
	return ReturnFunctions;
end
return FastAttackConnectorFunction();
