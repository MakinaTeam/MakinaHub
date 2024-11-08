UseFast = true
fastatkmode = "f"
fastattack = true


local old = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
local com = getupvalue(old,2)
require(rel.Util.CameraShaker):Stop()
spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        pcall(function()
            com.activeController.hitboxMagnitude = 60
            if UseFast then
                ifUseFast then
                    if fastatkmode == "n" then
                    com.activeController.hitboxMagnitude = 60
                    com.activeController.active = false
                    com.activeController.blocking = false
                    com.activeController.focusStart = 0 
                    com.activeController.hitSound = nil
                    com.activeController.increment = 0 
                    com.activeController.timeToNextAttack = 0 
                    com.activeController.timeToNextBlock = 0 
                    com.activeController:attack()
                    end
                end
            end
        end)
    end)
end)

local plr = game.Players.LocalPlayer

local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade()
    local active = CbFw2.activeController
    local blade = active.blades[1]
    if not blade then return end
    while blade.Parent~=game.Players.LocalPlayer.Character do blade=blade.Parent end
    return blade
end

function Attack()
    local AC = CbFw2.activeController
	if fastatkmode == "f" then
		xds = 0.01
	elseif fastatkmode == "very" then
		xds = 0.0005
	end
    for i = 1, 1 do 
        local bladehit = require(rel.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
				task.wait(xds)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                rel.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
            end
        end
    end
end

fastatkspeed = 0
spawn(function()
    while task.wait(fastatkspeed) do 
        if UseFast and fastattack then
            pcall(function ()
                if fastatkmode == "f" ornfastatkmode == "very" then
                    Attack()
                end
            end)
        end
    end
end)

local ply = game.Players.localPlayer
local mouse = ply:GetMouse()

local oldy = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
local com1 = getupvalue(oldy,2)
local CameraShakerR = require(rel.Util.CameraShaker)
CameraShakerR:Stop()

mouse.Button1Down:Connect(function()
    if fastattack then
        pcall(function ()
            if fastatkmode == "f" or fastatkmode == "f" then
                Attack()
            elseif fastatkmode == "n" then
                com.activeController.hitboxMagnitude = 60
                com.activeController.active = false
                com.activeController.blocking = false
                com.activeController.focusStart = 0 
                com.activeController.hitSound = nil
                com.activeController.increment = 0 
                com.activeController.timeToNextAttack = 0 
                com.activeController.timeToNextBlock = 0 
                com.activeController:attack()
            end
        end)
    end
end)

local mt = getrawmetatable(game)
local nm = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self,...)
    if getnamecallmethod() == 'Kick' or getnamecallmethod() == 'kick' and not Hopping then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end

    return nm(self,...)
end)

local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
 
local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()----delete animation
	if not shared.orl then
		shared.orl = STOPRL.wrapAttackAnimationAsync end
		if not shared.cpc then
			shared.cpc = STOP.play
		end
		while task.wait() do
			STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
			local Hits = STOPRL.getBladeHits(b,c,d)
			if Hits then
				STOP.play = function()end
				a:Play(0.01,0.01,0.01)
				func(Hits)
				STOP.play = shared.cpc
				wait(a.length * 0.5)
				a:Stop()
			end
		end
	end
end)
