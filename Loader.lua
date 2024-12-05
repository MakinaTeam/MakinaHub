pcall(function()
local request = http_request or request or HttpPost or syn.request
if game.PlaceId == 7449423635 and game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
    urlMystic = "https://discord.com/api/webhooks/1314156874915909662/EopynuKJdHaNTOwWwCEhzSYUoOY0KxQwRig6LPTCMuWF430CDpBKGbbkYRZYdKLzF3oV"
    for i,v in pairs(game.Players:GetPlayers()) do
        CheckPlayerMystic = i
		print(CheckPlayerMystic)
    end
	local Moon = {
['8'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
['7'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
['6'] = "http://www.roblox.com/asset/?id=9709143733", -- 🌗
['5'] = "http://www.roblox.com/asset/?id=9709150401", -- 🌘
['4'] = "http://www.roblox.com/asset/?id=9709135895",  -- 🌑
['3'] = "http://www.roblox.com/asset/?id=9709139597", -- 🌒
['2'] = "http://www.roblox.com/asset/?id=9709150086", -- 🌓
['1'] = "http://www.roblox.com/asset/?id=9709149680", -- 🌔
};

    if game:GetService("Lighting").Sky.MoonTextureId == Moon['1'] then
        MoonIcon = '🌔'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['2'] then
        MoonIcon = '🌓'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['3'] then
        MoonIcon = '🌒'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['4'] then
        MoonIcon = '🌑'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['5'] then
        MoonIcon = '🌘'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['6'] then
        MoonIcon = '🌗'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['7'] then
        MoonIcon = '🌖'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] then
        MoonIcon = '🌕'
    end

    for i,v in pairs(Moon) do
        if game:GetService("Lighting").Sky.MoonTextureId == v then
            MysticMoonPercent = i / 8 * 100
			print(MysticMoonPercent)
        end
    end
MysticScriptJoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,'..'\''..tostring(game.JobId)..'\''..')'
local MysticHook = {
	["embeds"] = {
        {
            ["title"] = "<:meofmeca:1158419480276389949>** KAY Webhooks Status**",
            ["description"] = "",
            ["color"] = 16250357,
            ["type"] = "rich",
            ["fields"] =  {
                                {
                                    ["name"] = "🏝️ **Spawn**",
                                    ["value"] = '```🟢```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "🔹Player Server🎄",
                                    ["value"] = '```yaml\n'..CheckPlayerMystic..'/12```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "**Job ID :**",
                                    ["value"] = '```lua\n'..game.JobId..'```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "**Script :**",
                                    ["value"] = '```lua\n'..MysticScriptJoinServer..'```',
                                    ["inline"] = true
                                }
            },
                ["image"] = {
                ["url"] = "https://cdn.discordapp.com/attachments/1120720323147481121/1158393704667693117/anh-bia-facebook-cute-cap-doi.jpg?ex=651c15b5&is=651ac435&hm=3ecffa3b5fe67e2a23040d3fd870e41d25707a425afd9a7037b3784d5189682a&",
                },
            ["footer"] = {
                ["text"] = "Yesterday at "..os.date("%H:%M")
            }
        }
},
}
local newdata = game:GetService("HttpService"):JSONEncode(MysticHook)
local headers = {["content-type"] = "application/json"}
request = http_request or request or HttpPost or syn.request
local Send = {Url = urlMystic, Body = newdata, Method = "POST", Headers = headers}
request(Send)
end
if game.PlaceId == 7449423635 and game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
    urlMystic = "https://discord.com/api/webhooks/1314156874915909662/EopynuKJdHaNTOwWwCEhzSYUoOY0KxQwRig6LPTCMuWF430CDpBKGbbkYRZYdKLzF3oV"
    for i,v in pairs(game.Players:GetPlayers()) do
        CheckPlayerMystic = i
		print(CheckPlayerMystic)
    end
	local Moon = {
['8'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
['7'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
['6'] = "http://www.roblox.com/asset/?id=9709143733", -- 🌗
['5'] = "http://www.roblox.com/asset/?id=9709150401", -- 🌘
['4'] = "http://www.roblox.com/asset/?id=9709135895",  -- 🌑
['3'] = "http://www.roblox.com/asset/?id=9709139597", -- 🌒
['2'] = "http://www.roblox.com/asset/?id=9709150086", -- 🌓
['1'] = "http://www.roblox.com/asset/?id=9709149680", -- 🌔
};

    if game:GetService("Lighting").Sky.MoonTextureId == Moon['1'] then
        MoonIcon = '🌔'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['2'] then
        MoonIcon = '🌓'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['3'] then
        MoonIcon = '🌒'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['4'] then
        MoonIcon = '🌑'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['5'] then
        MoonIcon = '🌘'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['6'] then
        MoonIcon = '🌗'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['7'] then
        MoonIcon = '🌖'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] then
        MoonIcon = '🌕'
    end

    for i,v in pairs(Moon) do
        if game:GetService("Lighting").Sky.MoonTextureId == v then
            MysticMoonPercent = i / 8 * 100
			print(MysticMoonPercent)
        end
    end
MysticScriptJoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,'..'\''..tostring(game.JobId)..'\''..')'
urlMystic1 = "https://discord.com/api/webhooks/1314156874915909662/EopynuKJdHaNTOwWwCEhzSYUoOY0KxQwRig6LPTCMuWF430CDpBKGbbkYRZYdKLzF3oV"
local MysticHook1 = {
	["embeds"] = {
{
    ["title"] = "<:meofmeca:1158419480276389949>** KAY Webhooks Status**",
    ["description"] = "",
    ["color"] = 16250357,
    ["type"] = "rich",
	["fields"] =  {
                        {
							["name"] = "🏝️ **Spawn**",
							["value"] = '```🟢```',
							["inline"] = true
                        },
						{
							["name"] = "🔹Player Server🎄",
							["value"] = '```yaml\n'..CheckPlayerMystic..'/12```',
							["inline"] = false
                        },
                        {
							["name"] = "**Job ID :**",
							["value"] = '```lua\n'..game.JobId..'```',
							["inline"] = false
                        },
						{
							["name"] = "**Script :**",
							["value"] = '```lua\n'..MysticScriptJoinServer..'```',
							["inline"] = true
                        }
	},
        ["image"] = {
        ["url"] = "https://cdn.discordapp.com/attachments/1120720323147481121/1158393704667693117/anh-bia-facebook-cute-cap-doi.jpg?ex=651c15b5&is=651ac435&hm=3ecffa3b5fe67e2a23040d3fd870e41d25707a425afd9a7037b3784d5189682a&",
        },
    ["footer"] = {
        ["text"] = "Yesterday at "..os.date("%H:%M")
    }
}
},
}
local newdata = game:GetService("HttpService"):JSONEncode(MysticHook1)
local headers = {["content-type"] = "application/json"}
local SendMystic = {Url = urlMystic1, Body = newdata, Method = "POST", Headers = headers}
request(SendMystic)
end

if game.PlaceId == 7449423635 then
local CMoon = {
	['8'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
	['7'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
	['6'] = "http://www.roblox.com/asset/?id=9709143733", -- 🌗
	['5'] = "http://www.roblox.com/asset/?id=9709150401", -- 🌘  
	['4'] = "http://www.roblox.com/asset/?id=9709135895",  -- 🌑
	['3'] = "http://www.roblox.com/asset/?id=9709139597", -- 🌒
	['2'] = "http://www.roblox.com/asset/?id=9709150086", -- 🌓
	['1'] = "http://www.roblox.com/asset/?id=9709149680", -- 🌔
	};

if game.PlaceId == 7449423635 and game:GetService("Lighting").Sky.MoonTextureId == CMoon['6'] or game:GetService("Lighting").Sky.MoonTextureId == CMoon['7'] or game:GetService("Lighting").Sky.MoonTextureId == CMoon['8']then
--https://discord.com/api/webhooks/1150237198571024434/uVdOl_XqkdyAIleuS2WsrEp6MtB_UxPG61jgF2doPIJVBk8W-rE9FG6tHwrc1eF4HysD

urlFullMoon = "https://discord.com/api/webhooks/1314156874915909662/EopynuKJdHaNTOwWwCEhzSYUoOY0KxQwRig6LPTCMuWF430CDpBKGbbkYRZYdKLzF3oV"
for i,v in pairs(game.Players:GetPlayers()) do
    CheckPlayerMoon = i
end
local Moon = {
['8'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
['7'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
['6'] = "http://www.roblox.com/asset/?id=9709143733", -- 🌗
['5'] = "http://www.roblox.com/asset/?id=9709150401", -- 🌘
['4'] = "http://www.roblox.com/asset/?id=9709135895",  -- 🌑
['3'] = "http://www.roblox.com/asset/?id=9709139597", -- 🌒
['2'] = "http://www.roblox.com/asset/?id=9709150086", -- 🌓
['1'] = "http://www.roblox.com/asset/?id=9709149680", -- 🌔
};

if game:GetService("Lighting").Sky.MoonTextureId == Moon['1'] then
    MoonIcon = '🌔'
elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['2'] then
    MoonIcon = '🌓'
elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['3'] then
    MoonIcon = '🌒'
elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['4'] then
    MoonIcon = '🌑'
elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['5'] then
    MoonIcon = '🌘'
elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['6'] then
    MoonIcon = '🌗'
elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['7'] then
    MoonIcon = '🌖'
elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] then
    MoonIcon = '🌕'
end

for i,v in pairs(Moon) do
    if game:GetService("Lighting").Sky.MoonTextureId == v then
        FullMoonPercent = i / 8 * 100
    end
end
MysticScriptJoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,'..'\''..tostring(game.JobId)..'\''..')'
local MysticHook = {
["embeds"] = {
{
["title"] = "<:meofmeca:1158419480276389949>** KAY Webhooks Status**",
["description"] = "",
["color"] = 16250357,
["type"] = "rich",
["fields"] =  {
                    {
                        ["name"] = "⏲ Time Of Day :",
                        ["value"] = '```Full Moon :  '..FullMoonPercent..'%```',
                        ["inline"] = true
                    },
                    {
                        ["name"] = "** Players : **",
                        ["value"] = '```yaml\n'..CheckPlayerMoon..'/12```',
                        ["inline"] = true
                    },
                                            {
                        ["name"] = "**Job ID :**",
                        ["value"] = '```lua\n'..game.JobId..'```',
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Script :**",
                        ["value"] = '```lua\n'..MysticScriptJoinServer..'```',
                        ["inline"] = true
                    }
},
    ["image"] = {
    ["url"] = "https://cdn.discordapp.com/attachments/1120720323147481121/1158387424506949652/hinh-anh-bia-cute.jpg?ex=651c0fdb&is=651abe5b&hm=049a2f6dd0d3a6ea7c018eb341a95e5203ab4cea93bc9269eaf769a25aea43fb&",
    },
["footer"] = {
        ["text"] = "Yesterday at "..os.date("%H:%M")
}
}
},
}
local newdata = game:GetService("HttpService"):JSONEncode(MysticHook)
local headers = {["content-type"] = "application/json"}
local Send = {Url = urlFullMoon, Body = newdata, Method = "POST", Headers = headers}
request(Send)
else
    print("Not Full Moon")
end
end

HakiCheck = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1")

url = "https://discord.com/api/webhooks/1314156874915909662/EopynuKJdHaNTOwWwCEhzSYUoOY0KxQwRig6LPTCMuWF430CDpBKGbbkYRZYdKLzF3oV"
    for i,v in pairs(game.Players:GetPlayers()) do
        CheckPlayerMystic = i
    end

HakiScriptJoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,'..'\''..tostring(game.JobId)..'\''..')'
local MysticHook = {
	["embeds"] = {
        {
            ["title"] = "<:meofmeca:1158419480276389949>** KAY Webhooks Status**",
            ["description"] = "",
            ["color"] = 16250357,
            ["type"] = "rich",
            ["fields"] =  {
                                {
                                    ["name"] = "🍁** Colors Name **",
                                    ["value"] = '```diff\n - '..HakiCheck..' ```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "🔹Player Server🎄",
                                    ["value"] = '```yml\n'..CheckPlayerMystic..'/12\n```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "**Job ID :**",
                                    ["value"] = '```yml\n'..game.JobId..'```',
                                    ["inline"] = false
                                },
                                                                                {
                                    ["name"] = "**Script :**",
                                    ["value"] = '```lua\n'..HakiScriptJoinServer..'\n```',
                                    ["inline"] = true
                                },
            },
                ["image"] = {
                ["url"] = "https://cdn.discordapp.com/attachments/1120720323147481121/1158391970142634054/anh-bia-facebook-dang-yeu_081147791.png?ex=651c1417&is=651ac297&hm=074437c6c3d74b777ce461a6588af0822c2d2539e18d72a6b1fdd96090ced5af&",
                },
            ["footer"] = {
                ["text"] = "Yesterday at "..os.date("%H:%M")
            }
        }
},
}
local newdata = game:GetService("HttpService"):JSONEncode(MysticHook)
local headers = {["content-type"] = "application/json"}
local Send = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(Send)

urhaki1 = "https://discord.com/api/webhooks/1314156874915909662/EopynuKJdHaNTOwWwCEhzSYUoOY0KxQwRig6LPTCMuWF430CDpBKGbbkYRZYdKLzF3oV"
local hakiHook1 = {
	["embeds"] = {
{
    ["title"] = "<:meofmeca:1158419480276389949>** KAY Webhooks Status**",
    ["description"] = "",
    ["color"] = 16250357,
    ["type"] = "rich",
	["fields"] =  {
                        {
							["name"] = "🍁** Colors Name **",
							["value"] = '```diff\n - '..HakiCheck..' ```',
							["inline"] = true
                        },
						{
							["name"] = "🔹Player Server🎄",
							["value"] = '```yml\n'..CheckPlayerMystic..'/12\n```',
							["inline"] = false
                        },
                        {
							["name"] = "**Job ID :**",
							["value"] = '```yml\n'..game.JobId..'```',
							["inline"] = false
                        },
																		{
							["name"] = "**Script :**",
							["value"] = '```lua\n'..HakiScriptJoinServer..'\n```',
							["inline"] = true
                        },
	},
        ["image"] = {
        ["url"] = "https://cdn.discordapp.com/attachments/1120720323147481121/1158391970142634054/anh-bia-facebook-dang-yeu_081147791.png?ex=651c1417&is=651ac297&hm=074437c6c3d74b777ce461a6588af0822c2d2539e18d72a6b1fdd96090ced5af&",
        },
    ["footer"] = {
        ["text"] = "Yesterday at "..os.date("%H:%M")
    }
}
},
}
local newdata = game:GetService("HttpService"):JSONEncode(hakiHook1)
local headers = {["content-type"] = "application/json"}
local SEndHaki = {Url = urhaki1, Body = newdata, Method = "POST", Headers = headers}
request(SEndHaki)
end)
