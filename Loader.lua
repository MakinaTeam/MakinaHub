		if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('ContextActionGui') then
			game:GetService("Players").LocalPlayer.PlayerGui.ContextActionGui.Enabled = false
		end
		if game.CoreGui:FindFirstChild('SWP') then
			game.CoreGui:FindFirstChild('SWP'):Destroy()
		end
		local Luna = Instance.new("ScreenGui")
		local ToggleFrameUi = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local ToggleImgUi = Instance.new("ImageButton")
		local Uitoggle = Instance.new("TextLabel")
		local Yedhee = Instance.new("TextLabel")
		local SearchStroke = Instance.new("UIStroke")
		
		
		Luna.Name = "SWP"
		Luna.Parent = game.CoreGui
		Luna.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		
		ToggleFrameUi.Name = "ToggleFrameUi"
		ToggleFrameUi.Parent = Luna
		ToggleFrameUi.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		ToggleFrameUi.Position = UDim2.new(0.775, 0,0.3, 0)
		ToggleFrameUi.Size = UDim2.new(0, 148, 0, 48)
		
		SearchStroke.Thickness = 1
		SearchStroke.Name = ""
		SearchStroke.Parent = ToggleFrameUi
		SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
		SearchStroke.Color = Color3.fromRGB(0, 255, 186) 
		SearchStroke.Transparency = 0
		
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = ToggleFrameUi
		
		ToggleImgUi.Name = "ToggleImgUi"
		ToggleImgUi.Parent = ToggleFrameUi
		ToggleImgUi.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
		ToggleImgUi.BackgroundTransparency = 1
		ToggleImgUi.Position = UDim2.new(0.0454545468, 0, 0.125000313, 0)
		ToggleImgUi.Size = UDim2.new(0, 35, 0, 35)
		ToggleImgUi.Image = "rbxassetid://17260696651"
		ToggleImgUi.MouseButton1Click:Connect(function()
			if togle_up then
				ToggleImgUi.ImageTransparency = 0.3
				uihide = true
				game:GetService("CoreGui")["Switch Hub"].Enabled = false
				game.Lighting.ExposureCompensation = 0
				--BlurSwitch.Size = 0
				togle_up = false
				wait()
				ToggleImgUi.ImageTransparency = 0
			else
				ToggleImgUi.ImageTransparency = 0.3
				uihide = true
				game:GetService("CoreGui")["Switch Hub"].Enabled = true
				game.Lighting.ExposureCompensation = -10
				--BlurSwitch.Size = 80
				togle_up = true
				wait()
				ToggleImgUi.ImageTransparency = 0
			end
		end)
		
		Uitoggle.Name = "Uitoggle"
		Uitoggle.Parent = ToggleFrameUi
		Uitoggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Uitoggle.BackgroundTransparency = 1.000
		Uitoggle.Position = UDim2.new(0.14, 0, 0.1, 0)
		Uitoggle.Size = UDim2.new(0, 137, 0, 25)
		Uitoggle.Font = Enum.Font.GothamSemibold
		Uitoggle.Text = "Switch Hub Kaitun"
		Uitoggle.TextColor3 = Color3.fromRGB(255, 255, 255)
		Uitoggle.TextSize = 12.000
		
		Yedhee.Name = "Yedhee"
		Yedhee.Parent = ToggleFrameUi
		Yedhee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Yedhee.BackgroundTransparency = 1.000
		Yedhee.Position = UDim2.new(0.14, 0, 0.429166657, 0)
		Yedhee.Size = UDim2.new(0, 137, 0, 25)
		Yedhee.Font = Enum.Font.GothamSemibold
		Yedhee.Text = "White Screen (B)"
		Yedhee.TextColor3 = Color3.fromRGB(0, 255, 186) 
		Yedhee.TextSize = 12.000
		
		if game.CoreGui:FindFirstChild('Switch Hub C') then
			game.CoreGui:FindFirstChild('Switch Hub C'):Destroy()
		end
