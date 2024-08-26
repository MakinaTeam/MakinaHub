Library = {}

local Tw = game:GetService("TweenService")
local Tf = TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
local Tf2 = TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

local Patinum = Instance.new("ScreenGui")

if game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("Patinum") then 
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("Patinum"):Destroy()
end

Patinum.Parent = game.CoreGui
Patinum.Name = "Patinum"
Patinum.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Patinum.ResetOnSpawn = false

local CloseUIClick_1 = Instance.new("ImageButton")
local UICorner_1 = Instance.new("UICorner")

UICorner_1.Parent = CloseUIClick_1
UICorner_1.CornerRadius = UDim.new(0,9)

local UserInputService = game:GetService("UserInputService")

local gui = CloseUIClick_1

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.04, true) -- This is what I changed
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

function Library:CreateWindow(a)
   local BackGround = Instance.new("CanvasGroup")
	local UICorner =  Instance.new("UICorner")

	BackGround.Parent = Patinum
	BackGround.Active = true
	BackGround.BorderSizePixel = 0
	BackGround.BackgroundColor3 = Color3.fromRGB(242, 242, 242)
	BackGround.AnchorPoint = Vector2.new(0.5, 0.5)
	BackGround.GroupColor3 = Color3.fromRGB(242, 242, 242)
	BackGround.Size = UDim2.new(0, 0, 0, 0)
	BackGround.Position = UDim2.new(0.5, 0, 0.5, 0)
	BackGround.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BackGround.Name = "BackGround"

	local function OpenUI()
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
		local tweenOpenMin = Tw:Create(BackGround, tweenInfo, {Size = UDim2.new(0, 475, 0, 10)})
		tweenOpenMin:Play()
		tweenOpenMin.Completed:Connect(function()
			local tweenOpenMax = Tw:Create(BackGround, tweenInfo, {Size = UDim2.new(0, 475, 0, 300)})
			tweenOpenMax:Play()
		end)
	end

	OpenUI()


	CloseUIClick_1.MouseButton1Click:Connect(function()
		if BackGround.Visible then
			BackGround.Visible = false
		else
			BackGround.Visible = true
		end
	end)

	local UserInputService = game:GetService("UserInputService")

	local gui = BackGround

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.04, true) -- This is what I changed
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	UICorner.Parent = BackGround
	UICorner.CornerRadius = UDim.new(0, 9)

	local Tab = Instance.new("Frame")
	local UIStroke4 = Instance.new("UIStroke")
	local TabList = Instance.new("Frame")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout2 = Instance.new("UIListLayout")

	Tab["Parent"] = BackGround
	Tab["BorderSizePixel"] = 0
	Tab["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Tab["Size"] = UDim2.new(0, 85, 0, 300)
	Tab["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Tab["Name"] = [[Tab]]

	UIStroke4["Parent"] = Tab
	UIStroke4["Transparency"] = 0.6
	UIStroke4["Color"] = Color3.fromRGB(223, 223, 223)

	TabList["Parent"] = Tab
	TabList["BorderSizePixel"] = 0
	TabList["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	TabList["Size"] = UDim2.new(0, 54, 0, 222)
	TabList["Position"] = UDim2.new(0.17647, 0, 0.13, 0)
	TabList["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	TabList["Name"] = [[TabList]]
	TabList["BackgroundTransparency"] = 1

	ScrollingFrame["Parent"] = TabList
	ScrollingFrame["Active"] = true
	ScrollingFrame["BorderSizePixel"] = 0
	ScrollingFrame["CanvasSize"] = UDim2.new(0, 0, 1, 0)
	ScrollingFrame["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	ScrollingFrame["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
	ScrollingFrame["Transparency"] = 1
	ScrollingFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ScrollingFrame["ScrollBarThickness"] = 0

	UIListLayout2["Parent"] = ScrollingFrame
	UIListLayout2["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
	UIListLayout2["Padding"] = UDim.new(0, 10)
	UIListLayout2["VerticalAlignment"] = Enum.VerticalAlignment.Center
	UIListLayout2["SortOrder"] = Enum.SortOrder.LayoutOrder

	Library.Page = {
		Value = false
	}

	function Library.Page:AddPage(a)
		local ATab = Instance.new("Frame")
		local UICorner5 = Instance.new("UICorner")
		local UIStroke5 = Instance.new("UIStroke")
		local TabClick = Instance.new("TextButton")
		local IconTab = Instance.new("ImageLabel")
		local TitleTab = Instance.new("TextLabel")
		local tickback = Instance.new("Frame")
		local UICorner6 = Instance.new("UICorner")
		local tick1 = Instance.new("Frame")
		local UICorner7 = Instance.new("UICorner")
		local UIStroke6 = Instance.new("UIStroke")

		ATab["Parent"] = ScrollingFrame
		ATab["BorderSizePixel"] = 0
		ATab["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
		ATab["Size"] = UDim2.new(0, 54, 0, 44)
		ATab["Position"] = UDim2.new(0.86737, 0, 0.05667, 0)
		ATab["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		ATab["Name"] = [[ATab]]

		UICorner5["Parent"] = ATab
		UICorner5["CornerRadius"] = UDim.new(0, 9)

		UIStroke5["Parent"] = ATab
		UIStroke5["Transparency"] = 0.6
		UIStroke5["Color"] = Color3.fromRGB(223, 223, 223)

		TabClick["Parent"] = ATab
		TabClick["BorderSizePixel"] = 0
		TabClick["TextSize"] = 14
		TabClick["TextColor3"] = Color3.fromRGB(0, 0, 0)
		TabClick["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		TabClick["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		TabClick["Size"] = UDim2.new(1, 0, 1, 0)
		TabClick["BackgroundTransparency"] = 1
		TabClick["Name"] = [[TabClick]]
		TabClick["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		TabClick["Text"] = [[]]

		IconTab["Parent"] = ATab
		IconTab["BorderSizePixel"] = 0
		IconTab["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		IconTab["ImageColor3"] = Color3.fromRGB(0, 0, 0)
		IconTab["AnchorPoint"] = Vector2.new(0.5, 0.5)
		if assets[a.Icon] then
			IconTab.Image = assets[a.Icon]
		elseif type(a.Icon) == 'string' and not a.Icon:find('rbxassetid://') then
			IconTab.Image = "rbxassetid://".. a.Icon
		elseif type(a.Icon) == 'number' then
			IconTab.Image = "rbxassetid://".. a.Icon
		else
			IconTab.Image = a.Icon
		end

		IconTab["Size"] = UDim2.new(0, 15, 0, 15)
		IconTab["ClipsDescendants"] = true
		IconTab["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		IconTab["BackgroundTransparency"] = 1
		IconTab["Name"] = [[Icon]]
		IconTab["Position"] = UDim2.new(0.5, 0, 0.3, 0)
		IconTab["ImageTransparency"] = 0.5

		TitleTab["Parent"] = ATab
		TitleTab["TextWrapped"] = true
		TitleTab["BorderSizePixel"] = 0
		TitleTab["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		TitleTab["TextSize"] = 10
		TitleTab["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		TitleTab["TextColor3"] = Color3.fromRGB(0, 0, 0)
		TitleTab["BackgroundTransparency"] = 1
		TitleTab["AnchorPoint"] = Vector2.new(0.5, 0.5)
		TitleTab["Size"] = UDim2.new(0, 40, 0, 15)
		TitleTab["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		TitleTab["Text"] = a.Title
		TitleTab["Name"] = [[Title]]
		TitleTab["Position"] = UDim2.new(0.5, 0, 0.7, 0)
		TitleTab["TextTransparency"] = 0.5

		tickback["Parent"] = ATab
		tickback["BorderSizePixel"] = 0
		tickback["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		tickback["AnchorPoint"] = Vector2.new(0.5, 0.5)
		tickback["Size"] = UDim2.new(0, 10, 0, 10)
		tickback["Position"] = UDim2.new(0.85, 0, 0.2, 0)
		tickback["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		tickback["Name"] = [[tickback]]

		UICorner6["Parent"] = tickback
		UICorner6["CornerRadius"] = UDim.new(1, 0)

		tick1["Parent"] = tickback
		tick1["BorderSizePixel"] = 0
		tick1["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
		tick1["BackgroundTransparency"] = 0.5
		tick1["AnchorPoint"] = Vector2.new(0.5, 0.5)
		tick1["Size"] = UDim2.new(0.8, 0, 0.8, 0)
		tick1["Position"] = UDim2.new(0.5, 0, 0.5, 0)
		tick1["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		tick1["Name"] = [[tick]]

		UICorner7["Parent"] = tick1
		UICorner7["CornerRadius"] = UDim.new(1, 0)

		UIStroke6["Parent"] = tick1
		UIStroke6["Transparency"] = 0.6
		UIStroke6["Color"] = Color3.fromRGB(223, 223, 223)

		local Page = Instance.new("Frame")
		local PageL = Instance.new("Frame")
		local UICorner8 = Instance.new("UICorner")
		local UIStroke7 = Instance.new("UIStroke")
		local SectionFrame = Instance.new("Frame")
		local UIListLayout3 = Instance.new("UIListLayout")
		local IconPageL = Instance.new("ImageLabel")
		local TitlePageL = Instance.new("TextLabel")
		local UnderScore = Instance.new("Frame")

		Page["Parent"] = BackGround
		Page["BorderSizePixel"] = 0
		Page["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		Page["Size"] = UDim2.new(0, 350, 0, 208)
		Page["Position"] = UDim2.new(0.22105, 0, 0.27, 0)
		Page["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		Page["Name"] = [[Page]]
		Page["BackgroundTransparency"] = 1
		Page["Visible"] = false

		PageL = Instance.new("Frame", Page)
		PageL["BorderSizePixel"] = 0
		PageL["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		PageL["Size"] = UDim2.new(0, 171, 0, 208)
		PageL["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		PageL["Name"] = [[PageLeft]]

		UICorner8["Parent"] = PageL

		UIStroke7["Parent"] = PageL
		UIStroke7["Transparency"] = 0.6
		UIStroke7["Color"] = Color3.fromRGB(223, 223, 223)

		SectionFrame["Parent"] = PageL
		SectionFrame["BorderSizePixel"] = 0
		SectionFrame["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		SectionFrame["Size"] = UDim2.new(0, 170, 0, 20)
		SectionFrame["Position"] = UDim2.new(0, 0, 0.02885, 0)
		SectionFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		SectionFrame["Name"] = [[SectionFrame]]
		SectionFrame["BackgroundTransparency"] = 1

		UIListLayout3["Parent"] = SectionFrame
		UIListLayout3["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
		UIListLayout3["Padding"] = UDim.new(0, 5)
		UIListLayout3["VerticalAlignment"] = Enum.VerticalAlignment.Center
		UIListLayout3["SortOrder"] = Enum.SortOrder.LayoutOrder
		UIListLayout3["FillDirection"] = Enum.FillDirection.Horizontal

		IconPageL["Parent"] = SectionFrame
		IconPageL["BorderSizePixel"] = 0
		IconPageL["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		IconPageL["ImageColor3"] = Color3.fromRGB(0, 0, 0)
		IconPageL["AnchorPoint"] = Vector2.new(0.5, 0.5)
		if assets[a.Page.Left.Icon] then
			IconPageL.Image = assets[a.Page.Left.Icon]
		elseif type(a.Page.Left.Icon) == 'string' and not a.Page.Left.Icon:find('rbxassetid://') then
			IconPageL.Image = "rbxassetid://".. a.Page.Left.Icon
		elseif type(a.Page.Left.Icon) == 'number' then
			IconPageL.Image = "rbxassetid://".. a.Page.Left.Icon
		else
			IconPageL.Image = a.Page.Left.Icon
		end
		IconPageL["Size"] = UDim2.new(0, 10, 0, 10)
		IconPageL["ClipsDescendants"] = true
		IconPageL["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		IconPageL["BackgroundTransparency"] = 1
		IconPageL["Name"] = [[Icon]]
		IconPageL["Position"] = UDim2.new(0.5, 0, 0.3, 0)

		TitlePageL["Parent"] = SectionFrame
		TitlePageL["TextWrapped"] = true
		TitlePageL["BorderSizePixel"] = 0
		TitlePageL["TextXAlignment"] = Enum.TextXAlignment.Left
		TitlePageL["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		TitlePageL["TextSize"] = 10
		TitlePageL["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		TitlePageL["TextColor3"] = Color3.fromRGB(0, 0, 0)
		TitlePageL["BackgroundTransparency"] = 1
		TitlePageL["AnchorPoint"] = Vector2.new(0.5, 0.5)
		TitlePageL["Size"] = UDim2.new(0, 40, 0, 15)
		TitlePageL["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		TitlePageL["Text"] = a.Page.Left.Name
		TitlePageL["LayoutOrder"] = 1
		TitlePageL["Name"] = [[Title]]
		TitlePageL["Position"] = UDim2.new(0.5, 0, 0.7, 0)

		UnderScore["Parent"] = PageL
		UnderScore["BorderSizePixel"] = 0
		UnderScore["BackgroundColor3"] = Color3.fromRGB(223, 223, 223)
		UnderScore["Size"] = UDim2.new(0, 171, 0, 1)
		UnderScore["Position"] = UDim2.new(0, 0, 0.13462, 0)
		UnderScore["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		UnderScore["Name"] = [[UnderScore]]
		UnderScore["BackgroundTransparency"] = 0.4

		local PageR = Instance.new("Frame")
		local UICorner9 = Instance.new("UICorner")
		local UIStroke10 = Instance.new("UIStroke")
		local SectionFrame2 = Instance.new("Frame")
		local UIListLayout4 = Instance.new("UIListLayout")
		local IconPageR = Instance.new("ImageLabel")
		local TitlePageR = Instance.new("TextLabel")
		local UnderScore2 = Instance.new("Frame")

		PageR = Instance.new("Frame", Page)
		PageR["BorderSizePixel"] = 0
		PageR["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		PageR["Size"] = UDim2.new(0, 171, 0, 208)
		PageR["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		PageR["Name"] = [[PageRight]]
		PageR["Position"] = UDim2.new(0.51143, 0, 0, 0)

		UICorner9["Parent"] = PageR

		UIStroke10["Parent"] = PageR
		UIStroke10["Transparency"] = 0.6
		UIStroke10["Color"] = Color3.fromRGB(223, 223, 223)

		SectionFrame2["Parent"] = PageR
		SectionFrame2["BorderSizePixel"] = 0
		SectionFrame2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		SectionFrame2["Size"] = UDim2.new(0, 170, 0, 20)
		SectionFrame2["Position"] = UDim2.new(0, 0, 0.02885, 0)
		SectionFrame2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		SectionFrame2["Name"] = [[SectionFrame]]
		SectionFrame2["BackgroundTransparency"] = 1

		UIListLayout4["Parent"] = SectionFrame2
		UIListLayout4["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
		UIListLayout4["Padding"] = UDim.new(0, 5)
		UIListLayout4["VerticalAlignment"] = Enum.VerticalAlignment.Center
		UIListLayout4["SortOrder"] = Enum.SortOrder.LayoutOrder
		UIListLayout4["FillDirection"] = Enum.FillDirection.Horizontal

		IconPageR["Parent"] = SectionFrame2
		IconPageR["BorderSizePixel"] = 0
		IconPageR["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		IconPageR["ImageColor3"] = Color3.fromRGB(0, 0, 0)
		IconPageR["AnchorPoint"] = Vector2.new(0.5, 0.5)
		if assets[a.Page.Right.Icon] then
			IconPageR.Image = assets[a.Page.Right.Icon]
		elseif type(a.Page.Right.Icon) == 'string' and not a.Page.Right.Icon:find('rbxassetid://') then
			IconPageR.Image = "rbxassetid://".. a.Page.Right.Icon
		elseif type(a.Page.Right.Icon) == 'number' then
			IconPageR.Image = "rbxassetid://".. a.Page.Right.Icon
		else
			IconPageR.Image = a.Page.Right.Icon
		end

		IconPageR["Size"] = UDim2.new(0, 10, 0, 10)
		IconPageR["ClipsDescendants"] = true
		IconPageR["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		IconPageR["BackgroundTransparency"] = 1
		IconPageR["Name"] = [[Icon]]
		IconPageR["Position"] = UDim2.new(0.5, 0, 0.3, 0)

		TitlePageR["Parent"] = SectionFrame2
		TitlePageR["TextWrapped"] = true
		TitlePageR["BorderSizePixel"] = 0
		TitlePageR["TextXAlignment"] = Enum.TextXAlignment.Left
		TitlePageR["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		TitlePageR["TextSize"] = 10
		TitlePageR["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		TitlePageR["TextColor3"] = Color3.fromRGB(0, 0, 0)
		TitlePageR["BackgroundTransparency"] = 1
		TitlePageR["AnchorPoint"] = Vector2.new(0.5, 0.5)
		TitlePageR["Size"] = UDim2.new(0, 40, 0, 15)
		TitlePageR["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		TitlePageR["Text"] = a.Page.Right.Name
		TitlePageR["LayoutOrder"] = 1
		TitlePageR["Name"] = [[Title]]
		TitlePageR["Position"] = UDim2.new(0.5, 0, 0.7, 0)

		UnderScore2["Parent"] = PageR
		UnderScore2["BorderSizePixel"] = 0
		UnderScore2["BackgroundColor3"] = Color3.fromRGB(223, 223, 223)
		UnderScore2["Size"] = UDim2.new(0, 171, 0, 1)
		UnderScore2["Position"] = UDim2.new(0, 0, 0.13462, 0)
		UnderScore2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		UnderScore2["Name"] = [[UnderScore]]
		UnderScore2["BackgroundTransparency"] = 0.4

		local SectionList = Instance.new("Frame")
		local SectionList2 = Instance.new("Frame")
		local ScrollingFrame1 = Instance.new("ScrollingFrame")
		local ScrollingFrame2 = Instance.new("ScrollingFrame")
		local UIListLayout5 = Instance.new("UIListLayout")
		local UIListLayout6 = Instance.new("UIListLayout")

		SectionList["Parent"] = PageL
		SectionList["BorderSizePixel"] = 0
		SectionList["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		SectionList["Size"] = UDim2.new(0, 171, 0, 169)
		SectionList["Position"] = UDim2.new(0, 0, 0.1875, 0)
		SectionList["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		SectionList["Name"] = [[SectionList]]
		SectionList["BackgroundTransparency"] = 1

		SectionList2["Parent"] = PageR
		SectionList2["BorderSizePixel"] = 0
		SectionList2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		SectionList2["Size"] = UDim2.new(0, 171, 0, 169)
		SectionList2["Position"] = UDim2.new(0, 0, 0.1875, 0)
		SectionList2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		SectionList2["Name"] = [[SectionList]]
		SectionList2["BackgroundTransparency"] = 1

		ScrollingFrame1["Parent"] = SectionList
		ScrollingFrame1["Active"] = true
		ScrollingFrame1["BorderSizePixel"] = 0
		ScrollingFrame1["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		ScrollingFrame1["Size"] = UDim2.new(1, 0, 1, 0)
		ScrollingFrame1["ScrollBarImageColor3"] = Color3.fromRGB(0, 100, 255)
		ScrollingFrame1["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		ScrollingFrame1["ScrollBarThickness"] = 3
		ScrollingFrame1["BackgroundTransparency"] = 1

		ScrollingFrame2["Parent"] = SectionList2
		ScrollingFrame2["Active"] = true
		ScrollingFrame2["BorderSizePixel"] = 0
		ScrollingFrame2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		ScrollingFrame2["Size"] = UDim2.new(1, 0, 1, 0)
		ScrollingFrame2["ScrollBarImageColor3"] = Color3.fromRGB(0, 100, 255)
		ScrollingFrame2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		ScrollingFrame2["ScrollBarThickness"] = 3
		ScrollingFrame2["BackgroundTransparency"] = 1

		UIListLayout5["Parent"] = ScrollingFrame1
		UIListLayout5["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
		UIListLayout5["Padding"] = UDim.new(0, 8)
		UIListLayout5["SortOrder"] = Enum.SortOrder.LayoutOrder

		UIListLayout6["Parent"] = ScrollingFrame2
		UIListLayout6["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
		UIListLayout6["Padding"] = UDim.new(0, 8)
		UIListLayout6["SortOrder"] = Enum.SortOrder.LayoutOrder

		TabClick.MouseButton1Click:Connect(function()
			for i,v in pairs(BackGround:GetChildren()) do
				if v.Name == "Page" then
					v.Visible = false
					v.Position = UDim2.new(0.22105, 0, 0.3, 0)
				end
			end

			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v:IsA("Frame") then
					Tw:Create(v.Title ,Tf ,{TextTransparency = 0.5}):Play()
					Tw:Create(v.tickback.tick ,Tf ,{BackgroundTransparency = 0.5}):Play()
					Tw:Create(v.Icon ,Tf ,{ImageTransparency = 0.5}):Play()
					Tw:Create(v.tickback.tick ,Tf ,{BackgroundColor3 = Color3.fromRGB(0, 0, 0)}):Play()
				end
			end

			Tw:Create(TitleTab ,Tf ,{TextTransparency = 0}):Play()
			Tw:Create(tick1 ,Tf ,{BackgroundTransparency = 0}):Play()
			Tw:Create(IconTab ,Tf ,{ImageTransparency = 0}):Play()
			Tw:Create(tick1 ,Tf ,{BackgroundColor3 = Color3.fromRGB(0, 102, 255)}):Play()
			Page["Visible"] = true
			Tw:Create(Page ,Tf2 ,{Position = UDim2.new(0.22105, 0, 0.24667, 0)}):Play()
		end)

		delay(0,function()
			if not Library.Page.Value then
				Tw:Create(TitleTab ,Tf ,{TextTransparency = 0}):Play()
				Tw:Create(tick1 ,Tf ,{BackgroundTransparency = 0}):Play()
				Tw:Create(IconTab ,Tf ,{ImageTransparency = 0}):Play()
				Tw:Create(tick1 ,Tf ,{BackgroundColor3 = Color3.fromRGB(0, 102, 255)}):Play()
				Page["Visible"] = true
				Library.Page.Value = true
				Tw:Create(Page ,Tf2 ,{Position = UDim2.new(0.22105, 0, 0.24667, 0)}):Play()
			end
		end)

		UIListLayout5:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			ScrollingFrame1.CanvasSize = UDim2.new(0, 0, 0, UIListLayout5.AbsoluteContentSize.Y+5)
		end)

		UIListLayout6:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			ScrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, UIListLayout6.AbsoluteContentSize.Y+5)
		end)

		local function GetParent(s)
			if s == "Right" or s == "R" or s == "r" or s == "2" or s == "right" then
				return ScrollingFrame2
			elseif s == "Left" or s == "L" or s == "l" or s == "1" or s == "left" then
				return ScrollingFrame1
			else
				return ScrollingFrame1
			end
		end

		Library.Function = {}

		function Library.Function:CreateLabel(s,a)
			local Label = Instance.new("Frame")
			local UIStroke11 = Instance.new("UIStroke")
			local UICorner10 = Instance.new("UICorner")
			local TitleLabel = Instance.new("TextLabel")
			local DesLabel = Instance.new("TextLabel")

			Label["Parent"] = GetParent(s)
			Label["BorderSizePixel"] = 0
			Label["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
			Label["Size"] = UDim2.new(0, 151, 0, 35)
			Label["Position"] = UDim2.new(0.05848, 0, 0, 0)
			Label["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Label["Name"] = [[Label]]

			UIStroke11["Parent"] = Label
			UIStroke11["Transparency"] = 0.6
			UIStroke11["Color"] = Color3.fromRGB(223, 223, 223)

			UICorner10["Parent"] = Label

			TitleLabel["Parent"] = Label
			TitleLabel["BorderSizePixel"] = 0
			TitleLabel["TextXAlignment"] = Enum.TextXAlignment.Left
			TitleLabel["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			TitleLabel["TextSize"] = 9
			TitleLabel["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			TitleLabel["TextColor3"] = Color3.fromRGB(0, 0, 0)
			TitleLabel["BackgroundTransparency"] = 1
			TitleLabel["AnchorPoint"] = Vector2.new(0.5, 0.5)
			TitleLabel["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			TitleLabel["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			TitleLabel["Name"] = "Title"
			TitleLabel["Position"] = UDim2.new(0.4, 0, 0.35, 0)
			TitleLabel["Text"] = a.Title
			TitleLabel["RichText"] = true

			DesLabel["Parent"] = Label
			DesLabel["BorderSizePixel"] = 0
			DesLabel["TextXAlignment"] = Enum.TextXAlignment.Left
			DesLabel["TextTransparency"] = 0.5
			DesLabel["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			DesLabel["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			DesLabel["TextColor3"] = Color3.fromRGB(0, 0, 0)
			DesLabel["BackgroundTransparency"] = 1
			DesLabel["AnchorPoint"] = Vector2.new(0.5, 0.5)
			DesLabel["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			DesLabel["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			DesLabel["Text"] = a.Desc
			DesLabel["Name"] = "Des"
			DesLabel["Position"] = UDim2.new(0.4, 0, 0.66429, 0)
			DesLabel["RichText"] = true

			local Newtext = {}
			function Newtext:SetTitle(k)
				TitleLabel["Text"] = k
			end
			function Newtext:SetDesc(k)
				DesLabel["Text"] = k
			end

			if #DesLabel["Text"] == 0 then
				TitleLabel["Position"] = UDim2.new(0.4, 0, 0.5, 0)
			end
			return Newtext
		end

		function Library.Function:CreateToggle(s,a)
			local Toggle = Instance.new("Frame")
			local UIStroke12 = Instance.new("UIStroke")
			local UICorner11 = Instance.new("UICorner")
			local TitleToggle = Instance.new("TextLabel")
			local DesToggle = Instance.new("TextLabel")
			local ToggleO = Instance.new("Frame")
			local UICorner12 = Instance.new("UICorner")
			local UIStroke13 = Instance.new("UIStroke")
			local O = Instance.new("Frame")
			local UICorner13 = Instance.new("UICorner")
			local ToggleClick = Instance.new("TextButton")

			local Callback = a.Callback or function() end
			local bool = a.Value or false

			Toggle["BorderSizePixel"] = 0
			Toggle["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
			Toggle["Size"] = UDim2.new(0, 151, 0, 35)
			Toggle["Position"] = UDim2.new(0.05848, 0, 0, 0)
			Toggle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Toggle["Name"] = [[Toggle]]
			Toggle["Parent"] = GetParent(s)

			UIStroke12["Parent"] = Toggle
			UIStroke12["Transparency"] = 0.6
			UIStroke12["Color"] = Color3.fromRGB(223, 223, 223)

			UICorner11["Parent"] = Toggle

			TitleToggle["Parent"] = Toggle
			TitleToggle["BorderSizePixel"] = 0
			TitleToggle["TextXAlignment"] = Enum.TextXAlignment.Left
			TitleToggle["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			TitleToggle["TextSize"] = 9
			TitleToggle["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			TitleToggle["TextColor3"] = Color3.fromRGB(0, 0, 0)
			TitleToggle["BackgroundTransparency"] = 1
			TitleToggle["AnchorPoint"] = Vector2.new(0.5, 0.5)
			TitleToggle["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			TitleToggle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			TitleToggle["Text"] = a.Title
			TitleToggle["Name"] = [[Title]]
			TitleToggle["Position"] = UDim2.new(0.4, 0, 0.35, 0)

			DesToggle["Parent"] = Toggle
			DesToggle["BorderSizePixel"] = 0
			DesToggle["TextXAlignment"] = Enum.TextXAlignment.Left
			DesToggle["TextTransparency"] = 0.5
			DesToggle["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			DesToggle["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			DesToggle["TextColor3"] = Color3.fromRGB(0, 0, 0)
			DesToggle["BackgroundTransparency"] = 1
			DesToggle["AnchorPoint"] = Vector2.new(0.5, 0.5)
			DesToggle["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			DesToggle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			DesToggle["Text"] = a.Desc
			DesToggle["Name"] = [[Des]]
			DesToggle["Position"] = UDim2.new(0.4, 0, 0.66429, 0)

			if #DesToggle["Text"] == 0 then
				TitleToggle["Position"] = UDim2.new(0.4, 0, 0.5, 0)
			end

			ToggleO["Parent"] = Toggle
			ToggleO["BorderSizePixel"] = 0
			ToggleO["BackgroundColor3"] = Color3.fromRGB(213, 213, 213)
			ToggleO["AnchorPoint"] = Vector2.new(0.5, 0.5)
			ToggleO["Size"] = UDim2.new(0.2, 0, 0.35, 0)
			ToggleO["Position"] = UDim2.new(0.85, 0, 0.5, 0)
			ToggleO["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			ToggleO["Name"] = [[ToggleO]]

			UICorner12["Parent"] = ToggleO

			UIStroke13["Parent"] = ToggleO
			UIStroke13["Transparency"] = 0.6
			UIStroke13["Color"] = Color3.fromRGB(223, 223, 223)

			O["Parent"] = ToggleO
			O["BorderSizePixel"] = 0
			O["BackgroundColor3"] = Color3.fromRGB(156, 156, 156)
			O["AnchorPoint"] = Vector2.new(0.5, 0.5)
			O["Size"] = UDim2.new(0, 9, 0, 9)
			O["Position"] = UDim2.new(0.28, 0, 0.5, 0)
			O["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			O["Name"] = [[O]]

			UICorner13["Parent"] = O

			ToggleClick["Parent"] = ToggleO
			ToggleClick["BorderSizePixel"] = 0
			ToggleClick["TextSize"] = 14
			ToggleClick["TextColor3"] = Color3.fromRGB(0, 0, 0)
			ToggleClick["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			ToggleClick["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			ToggleClick["Size"] = UDim2.new(1, 0, 1, 0)
			ToggleClick["BackgroundTransparency"] = 1
			ToggleClick["Name"] = [[ToggleClick]]
			ToggleClick["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			ToggleClick["Text"] = [[]]

			local function TweenToggle(object, target)
				local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				local tween = Tw:Create(object, tweenInfo, {Position = target})
				tween:Play()
			end

			local function InItBoolCheck(bool : boolean)
				if not bool then 
					Callback(bool)
					O["BackgroundColor3"] = Color3.fromRGB(156, 156, 156)
					TweenToggle(O, UDim2.new(0.28, 0, 0.5, 0))
				elseif bool then 
					Callback(bool)
					O["BackgroundColor3"] = Color3.fromRGB(0, 102, 255)
					TweenToggle(O, UDim2.new(0.7, 0, 0.5, 0))
				end
			end

			ToggleClick.MouseButton1Down:Connect(function()
				bool = not bool 
				if bool then
					Callback(bool)
					O["BackgroundColor3"] = Color3.fromRGB(0, 102, 255)
					TweenToggle(O, UDim2.new(0.7, 0, 0.5, 0))
				elseif not bool then
					Callback(bool)
					O["BackgroundColor3"] = Color3.fromRGB(156, 156, 156)
					TweenToggle(O, UDim2.new(0.28, 0, 0.5, 0))
				end
			end)

			InItBoolCheck(bool)
		end

		function Library.Function:CreateButton(s, info)
			local title = info.Title or "nil"
			local Desc = info.Desc or "nil"
			local secure = info.Secure or false
			local callback = info.Callback or function() end

			local Buttons = {}

			Buttons["bb"] = Instance.new("Frame", GetParent(s))
			Buttons["bb"]["BorderSizePixel"] = 0
			Buttons["bb"]["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
			Buttons["bb"]["Size"] = UDim2.new(0, 151, 0, 35)
			Buttons["bb"]["Position"] = UDim2.new(0.05848, 0, 0, 0)
			Buttons["bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Buttons["bb"]["Name"] = [[Button]]

			Buttons["bc"] = Instance.new("UIStroke", Buttons["bb"])
			Buttons["bc"]["Transparency"] = 0.6
			Buttons["bc"]["Color"] = Color3.fromRGB(223, 223, 223)

			Buttons["bd"] = Instance.new("UICorner", Buttons["bb"])

			Buttons["be"] = Instance.new("TextLabel", Buttons["bb"])
			Buttons["be"]["BorderSizePixel"] = 0
			Buttons["be"]["TextXAlignment"] = Enum.TextXAlignment.Left
			Buttons["be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Buttons["be"]["TextSize"] = 9
			Buttons["be"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Buttons["be"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Buttons["be"]["BackgroundTransparency"] = 1
			Buttons["be"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Buttons["be"]["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			Buttons["be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Buttons["be"]["Text"] = tostring(title)
			Buttons["be"]["Name"] = [[Title]]
			Buttons["be"]["Position"] = UDim2.new(0.4, 0, 0.35, 0)

			Buttons["bf"] = Instance.new("TextLabel", Buttons["bb"])
			Buttons["bf"]["BorderSizePixel"] = 0
			Buttons["bf"]["TextXAlignment"] = Enum.TextXAlignment.Left
			Buttons["bf"]["TextTransparency"] = 0.5
			Buttons["bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Buttons["bf"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Buttons["bf"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Buttons["bf"]["BackgroundTransparency"] = 1
			Buttons["bf"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Buttons["bf"]["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			Buttons["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Buttons["bf"]["Text"] = tostring(Desc)
			Buttons["bf"]["Name"] = [[Des]]
			Buttons["bf"]["Position"] = UDim2.new(0.4, 0, 0.66429, 0)

			if #Buttons["bf"]["Text"] == 0 then
				Buttons["be"]["Position"] = UDim2.new(0.4, 0, 0.5, 0)
			end

			Buttons["c0"] = Instance.new("Frame", Buttons["bb"])
			Buttons["c0"]["BorderSizePixel"] = 0
			Buttons["c0"]["BackgroundColor3"] = Color3.fromRGB(0, 102, 255)
			Buttons["c0"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Buttons["c0"]["Size"] = UDim2.new(0.3, 0, 0.35, 0)
			Buttons["c0"]["Position"] = UDim2.new(0.77715, 0, 0.5, 0)
			Buttons["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Buttons["c0"]["Name"] = [[ButtonClick]]

			Buttons["c1"] = Instance.new("UICorner", Buttons["c0"])

			Buttons["c2"] = Instance.new("UIStroke", Buttons["c0"])
			Buttons["c2"]["Transparency"] = 0.6
			Buttons["c2"]["Color"] = Color3.fromRGB(223, 223, 223)

			Buttons["c3"] = Instance.new("TextButton", Buttons["c0"])
			Buttons["c3"]["BorderSizePixel"] = 0
			Buttons["c3"]["TextSize"] = 14
			Buttons["c3"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Buttons["c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Buttons["c3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			Buttons["c3"]["Size"] = UDim2.new(1, 0, 1, 0)
			Buttons["c3"]["BackgroundTransparency"] = 1
			Buttons["c3"]["Name"] = [[ToggleClick]]
			Buttons["c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Buttons["c3"]["Text"] = [[]]

			local ConfirmButton = Instance.new("Frame", BackGround)
			local Frame = Instance.new("Frame", ConfirmButton)
			local UICorner16 = Instance.new("UICorner", Frame)
			local UIStroke16 = Instance.new("UIStroke", Frame)
			local Confirm = Instance.new("Frame", Frame)
			local UICorner17 = Instance.new("UICorner", Confirm)
			local UIStroke17 = Instance.new("UIStroke", Confirm)
			local TextLabelC = Instance.new("TextLabel", Confirm)
			local TextButton = Instance.new("TextButton", Confirm)
			local Cancel = Instance.new("Frame", Frame)
			local UICorner18 = Instance.new("UICorner", Cancel)
			local UIStroke18 = Instance.new("UIStroke", Cancel)
			local TextLabel2 = Instance.new("TextLabel", Cancel)
			local TextButton2 = Instance.new("TextButton", Cancel)
			local Des2 = Instance.new("TextLabel", Frame)
			local Title2 = Instance.new("TextLabel", Frame)

			ConfirmButton["Visible"] = false
			ConfirmButton["ZIndex"] = 2
			ConfirmButton["BorderSizePixel"] = 0
			ConfirmButton["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
			ConfirmButton["Size"] = UDim2.new(1, 0, 1, 0)
			ConfirmButton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			ConfirmButton["Name"] = [[ConfirmButton]]
			ConfirmButton["BackgroundTransparency"] = 0.3

			Frame["BorderSizePixel"] = 0
			Frame["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
			Frame["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Frame["Size"] = UDim2.new(0, 200, 0, 100)
			Frame["Position"] = UDim2.new(0.5, 0, 0.5, 0)
			Frame["BorderColor3"] = Color3.fromRGB(0, 0, 0)

			UICorner16["CornerRadius"] = UDim.new(0, 9)

			UIStroke16["Transparency"] = 0.6
			UIStroke16["Color"] = Color3.fromRGB(223, 223, 223)

			Confirm["BorderSizePixel"] = 0
			Confirm["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Confirm["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Confirm["Size"] = UDim2.new(0, 85, 0, 30)
			Confirm["Position"] = UDim2.new(0.2617, 0, 0.7355, 0)
			Confirm["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Confirm["Name"] = [[Confirm]]

			UICorner17["CornerRadius"] = UDim.new(0, 9)

			UIStroke17["Transparency"] = 0.6
			UIStroke17["Color"] = Color3.fromRGB(223, 223, 223)

			TextLabelC["BorderSizePixel"] = 0
			TextLabelC["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			TextLabelC["TextSize"] = 14
			TextLabelC["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			TextLabelC["TextColor3"] = Color3.fromRGB(0, 102, 255)
			TextLabelC["BackgroundTransparency"] = 1
			TextLabelC["AnchorPoint"] = Vector2.new(0.5, 0.5)
			TextLabelC["Size"] = UDim2.new(1, 0, 1, 0)
			TextLabelC["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			TextLabelC["Text"] = [[Confirm]]
			TextLabelC["Position"] = UDim2.new(0.5, 0, 0.5, 0)

			TextButton["BorderSizePixel"] = 0
			TextButton["TextSize"] = 14
			TextButton["TextColor3"] = Color3.fromRGB(0, 0, 0)
			TextButton["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			TextButton["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			TextButton["Size"] = UDim2.new(1, 0, 1, 0)
			TextButton["BackgroundTransparency"] = 1
			TextButton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			TextButton["Text"] = [[]]

			Cancel["BorderSizePixel"] = 0
			Cancel["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Cancel["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Cancel["Size"] = UDim2.new(0, 85, 0, 30)
			Cancel["Position"] = UDim2.new(0.7367, 0, 0.7355, 0)
			Cancel["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Cancel["Name"] = [[Cancel]]

			UICorner18["CornerRadius"] = UDim.new(0, 9)

			UIStroke18["Transparency"] = 0.6
			UIStroke18["Color"] = Color3.fromRGB(223, 223, 223)

			TextLabel2["BorderSizePixel"] = 0
			TextLabel2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			TextLabel2["TextSize"] = 14
			TextLabel2["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			TextLabel2["TextColor3"] = Color3.fromRGB(255, 0, 0)
			TextLabel2["BackgroundTransparency"] = 1
			TextLabel2["AnchorPoint"] = Vector2.new(0.5, 0.5)
			TextLabel2["Size"] = UDim2.new(1, 0, 1, 0)
			TextLabel2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			TextLabel2["Text"] = [[Cancel]]
			TextLabel2["Position"] = UDim2.new(0.5, 0, 0.5, 0)

			TextButton2["BorderSizePixel"] = 0
			TextButton2["TextSize"] = 14
			TextButton2["TextColor3"] = Color3.fromRGB(0, 0, 0)
			TextButton2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			TextButton2["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			TextButton2["Size"] = UDim2.new(1, 0, 1, 0)
			TextButton2["BackgroundTransparency"] = 1
			TextButton2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			TextButton2["Text"] = [[]]

			Des2["BorderSizePixel"] = 0
			Des2["TextTransparency"] = 0.5
			Des2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Des2["TextSize"] = 10
			Des2["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Des2["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Des2["BackgroundTransparency"] = 1
			Des2["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Des2["Size"] = UDim2.new(0.8, 0, 0.2501, 0)
			Des2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Des2["Text"] = [[Do you want to confirm?]]
			Des2["Name"] = [[Des]]
			Des2["Position"] = UDim2.new(0.5, 0, 0.43495, 0)

			Title2["BorderSizePixel"] = 0
			Title2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Title2["TextSize"] = 12
			Title2["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Title2["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Title2["BackgroundTransparency"] = 1
			Title2["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Title2["Size"] = UDim2.new(0.8, 0, 0.2501, 0)
			Title2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Title2["Text"] = [[Button]]
			Title2["Name"] = [[Title]]
			Title2["Position"] = UDim2.new(0.5, 0, 0.17495, 0)

			local function tweensize(object, target)

				local targetSize = target

				local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				local tween = Tw:Create(object, tweenInfo, {Size = targetSize})

				tween:Play()
			end

			local secureConnection

			Buttons["c3"].MouseButton1Down:Connect(function()
				if callback then 
					tweensize(Buttons["bb"], UDim2.new(0, 135, 0, 30))
					if not secure then
						callback()
					else
						ConfirmButton["Visible"] = true


						if secureConnection then
							secureConnection:Disconnect()
						end

						TextButton2.MouseButton1Down:Connect(function()
							tweensize(Cancel, UDim2.new(0, 75, 0, 25))
							task.delay(0.16, function()
								ConfirmButton["Visible"] = false
								tweensize(Cancel, UDim2.new(0, 95, 0, 35))
								task.wait(0.05)
								tweensize(Cancel, UDim2.new(0, 85, 0, 30))
								ConfirmButton["Visible"] = false
							end)
						end)

						secureConnection = TextButton.MouseButton1Down:Connect(function()
							tweensize(Confirm, UDim2.new(0, 75, 0, 25))
							task.delay(0.16, function()
								ConfirmButton["Visible"] = false
								tweensize(Confirm, UDim2.new(0, 95, 0, 35))
								task.wait(0.05)
								tweensize(Confirm, UDim2.new(0, 85, 0, 30))
								callback()
								ConfirmButton["Visible"] = false
							end)
						end)
					end
				end

				task.delay(0.16, function()
					tweensize(Buttons["bb"], UDim2.new(0, 160, 0, 35))
					task.wait(0.05)
					tweensize(Buttons["bb"], UDim2.new(0, 151, 0, 35))
				end)
			end)

			return Buttons
		end

		function Library.Function:CreateSlider(s, info)
			local title = info.Title or "nil"
			local Desc = info.Desc or "nil"
			local Callback = info.Callback or function() end

			local Sliders = {}

			Sliders["a3"] = Instance.new("Frame", GetParent(s))
			Sliders["a3"]["BorderSizePixel"] = 0
			Sliders["a3"]["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
			Sliders["a3"]["Size"] = UDim2.new(0, 151, 0, 35)
			Sliders["a3"]["Position"] = UDim2.new(0.05848, 0, 0, 0)
			Sliders["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["a3"]["Name"] = [[Slider]]

			Sliders["a4"] = Instance.new("UIStroke", Sliders["a3"])
			Sliders["a4"]["Transparency"] = 0.6
			Sliders["a4"]["Color"] = Color3.fromRGB(223, 223, 223)

			Sliders["a5"] = Instance.new("UICorner", Sliders["a3"])

			Sliders["a6"] = Instance.new("TextLabel", Sliders["a3"])
			Sliders["a6"]["BorderSizePixel"] = 0
			Sliders["a6"]["TextXAlignment"] = Enum.TextXAlignment.Left
			Sliders["a6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Sliders["a6"]["TextSize"] = 9
			Sliders["a6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Sliders["a6"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["a6"]["BackgroundTransparency"] = 1
			Sliders["a6"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Sliders["a6"]["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			Sliders["a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["a6"]["Text"] = tostring(title)
			Sliders["a6"]["Name"] = [[Title]]
			Sliders["a6"]["Position"] = UDim2.new(0.4, 0, 0.35, 0)

			Sliders["a7"] = Instance.new("TextLabel", Sliders["a3"])
			Sliders["a7"]["BorderSizePixel"] = 0
			Sliders["a7"]["TextXAlignment"] = Enum.TextXAlignment.Left
			Sliders["a7"]["TextTransparency"] = 0.5
			Sliders["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Sliders["a7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Sliders["a7"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["a7"]["BackgroundTransparency"] = 1
			Sliders["a7"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Sliders["a7"]["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			Sliders["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["a7"]["Text"] = tostring(Desc)
			Sliders["a7"]["Name"] = [[Des]]
			Sliders["a7"]["Position"] = UDim2.new(0.4, 0, 0.66429, 0)

			if #Sliders["a7"]["Text"] == 0 then
				Sliders["a6"]["Position"] = UDim2.new(0.4, 0, 0.5, 0)
			end

			Sliders["a8"] = Instance.new("CanvasGroup", Sliders["a3"])
			Sliders["a8"]["BorderSizePixel"] = 0
			Sliders["a8"]["BackgroundColor3"] = Color3.fromRGB(213, 213, 213)
			Sliders["a8"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Sliders["a8"]["Size"] = UDim2.new(0.53, 0, 0.15, 0)
			Sliders["a8"]["Position"] = UDim2.new(0.682, 0, 0.329, 0)
			Sliders["a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["a8"]["Name"] = [[SliderBar]]

			Sliders["a9"] = Instance.new("UICorner", Sliders["a8"])

			Sliders["aa"] = Instance.new("UIStroke", Sliders["a8"])
			Sliders["aa"]["Transparency"] = 0.6
			Sliders["aa"]["Color"] = Color3.fromRGB(223, 223, 223)

			Sliders["ab"] = Instance.new("Frame", Sliders["a8"])
			Sliders["ab"]["BorderSizePixel"] = 0
			Sliders["ab"]["BackgroundColor3"] = Color3.fromRGB(0, 102, 255)
			Sliders["ab"]["Size"] = UDim2.new(0.5, 0, 1, 0)
			Sliders["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["ab"]["Name"] = [[BarValue]]

			Sliders["ac"] = Instance.new("UICorner", Sliders["ab"])

			Sliders["ad"] = Instance.new("TextButton", Sliders["a8"])
			Sliders["ad"]["BorderSizePixel"] = 0
			Sliders["ad"]["TextSize"] = 14
			Sliders["ad"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Sliders["ad"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			Sliders["ad"]["Size"] = UDim2.new(1, 0, 1, 0)
			Sliders["ad"]["BackgroundTransparency"] = 1
			Sliders["ad"]["Name"] = [[SliderButton]]
			Sliders["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["ad"]["Text"] = [[]]

			Sliders["ae"] = Instance.new("TextBox", Sliders["a3"])
			Sliders["ae"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["ae"]["BorderSizePixel"] = 0
			Sliders["ae"]["TextSize"] = 7
			Sliders["ae"]["Name"] = [[ValueBox]]
			Sliders["ae"]["BackgroundColor3"] = Color3.fromRGB(212, 212, 212)
			Sliders["ae"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Sliders["ae"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Sliders["ae"]["Size"] = UDim2.new(0.1, 0, 0.25, 0)
			Sliders["ae"]["Position"] = UDim2.new(0.89868, 0, 0.65, 0)
			Sliders["ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Sliders["ae"]["Text"] = [[50]]
			Sliders["ae"]["BackgroundTransparency"] = 1

			Sliders["af"] = Instance.new("UICorner", Sliders["ae"])

			Sliders["b0"] = Instance.new("UIStroke", Sliders["ae"])
			Sliders["b0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

			local function updateSlider(value)
				value = math.clamp(value, info.Min, info.Max)
				Sliders["ab"]:TweenSize(UDim2.new((value - info.Min) / (info.Max - info.Min), 0, 1, 0), "Out", "Back", 0.2, true)
				Sliders["ae"].Text = tostring(value)
				Sliders["ae"].Size = UDim2.new(0, Sliders["ae"].TextBounds.X + 4, 0.25, 0)
				Callback(value)
			end

			updateSlider(info.Value or 0)

			Sliders["ae"].FocusLost:Connect(function()
				local value = tonumber(Sliders["ae"].Text) or info.Min
				updateSlider(value)
			end)

			local function move(input)
				local sliderBar = Sliders["a8"]
				local relativeX = math.clamp((input.Position.X - sliderBar.AbsolutePosition.X) / sliderBar.AbsoluteSize.X, 0, 1)
				local value = math.floor(relativeX * (info.Max - info.Min) + info.Min)
				updateSlider(value)
			end

			local dragging = false

			Sliders["ad"].InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = true
					move(input)
				end
			end)

			Sliders["ad"].InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = false
				end
			end)

			game:GetService("UserInputService").InputChanged:Connect(function(input)
				if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
					move(input)
				end
			end)

			return Sliders
		end

		function Library.Function:CreateDropdown(s, info)
			local title = info.Title or "nil"
			local desc = info.Desc or "nil"
			local listdesc = info.ListDesc or "Select items"
			local value = info.Value or ""
			local list = info.List
			local callback = info.Callback or function() end
			local multi = info.MultiDropdown or false

			local Dropdowns = {}

			Dropdowns["b1"] = Instance.new("Frame", GetParent(s))
			Dropdowns["b1"]["BorderSizePixel"] = 0
			Dropdowns["b1"]["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
			Dropdowns["b1"]["Size"] = UDim2.new(0, 151, 0, 35)
			Dropdowns["b1"]["Position"] = UDim2.new(0.05848, 0, 0, 0)
			Dropdowns["b1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["b1"]["Name"] = [[Dropdown]]

			Dropdowns["b2"] = Instance.new("UIStroke", Dropdowns["b1"])
			Dropdowns["b2"]["Transparency"] = 0.6
			Dropdowns["b2"]["Color"] = Color3.fromRGB(223, 223, 223)

			Dropdowns["b3"] = Instance.new("UICorner", Dropdowns["b1"])

			Dropdowns["b4"] = Instance.new("TextLabel", Dropdowns["b1"])
			Dropdowns["b4"]["BorderSizePixel"] = 0
			Dropdowns["b4"]["TextXAlignment"] = Enum.TextXAlignment.Left
			Dropdowns["b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Dropdowns["b4"]["TextSize"] = 9
			Dropdowns["b4"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Dropdowns["b4"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["b4"]["BackgroundTransparency"] = 1
			Dropdowns["b4"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Dropdowns["b4"]["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			Dropdowns["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["b4"]["Text"] = tostring(title)
			Dropdowns["b4"]["Name"] = [[Title]]
			Dropdowns["b4"]["Position"] = UDim2.new(0.4, 0, 0.35, 0)

			Dropdowns["b5"] = Instance.new("TextLabel", Dropdowns["b1"])
			Dropdowns["b5"]["BorderSizePixel"] = 0
			Dropdowns["b5"]["TextXAlignment"] = Enum.TextXAlignment.Left
			Dropdowns["b5"]["TextTransparency"] = 0.5
			Dropdowns["b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Dropdowns["b5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Dropdowns["b5"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["b5"]["BackgroundTransparency"] = 1
			Dropdowns["b5"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Dropdowns["b5"]["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			Dropdowns["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["b5"]["Text"] = tostring(desc)
			Dropdowns["b5"]["Name"] = [[Des]]
			Dropdowns["b5"]["Position"] = UDim2.new(0.4, 0, 0.66429, 0)

			if #Dropdowns["b5"]["Text"] == 0 then
				Dropdowns["b4"]["Position"] = UDim2.new(0.4, 0, 0.5, 0)
			end

			Dropdowns["b6"] = Instance.new("Frame", Dropdowns["b1"])
			Dropdowns["b6"]["BorderSizePixel"] = 0
			Dropdowns["b6"]["BackgroundColor3"] = Color3.fromRGB(213, 213, 213)
			Dropdowns["b6"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Dropdowns["b6"]["Size"] = UDim2.new(0.3, 0, 0.35, 0)
			Dropdowns["b6"]["Position"] = UDim2.new(0.7904, 0, 0.5, 0)
			Dropdowns["b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["b6"]["Name"] = [[Dropdownlist]]

			Dropdowns["b7"] = Instance.new("UICorner", Dropdowns["b6"])

			Dropdowns["b8"] = Instance.new("UIStroke", Dropdowns["b6"])
			Dropdowns["b8"]["Transparency"] = 0.6
			Dropdowns["b8"]["Color"] = Color3.fromRGB(223, 223, 223)

			Dropdowns["b9"] = Instance.new("TextButton", Dropdowns["b6"])
			Dropdowns["b9"]["BorderSizePixel"] = 0
			Dropdowns["b9"]["TextSize"] = 14
			Dropdowns["b9"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Dropdowns["b9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			Dropdowns["b9"]["Size"] = UDim2.new(1, 0, 1, 0)
			Dropdowns["b9"]["BackgroundTransparency"] = 1
			Dropdowns["b9"]["Name"] = [[DropdownClick]]
			Dropdowns["b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["b9"]["Text"] = [[]]

			Dropdowns["38"] = Instance.new("Frame", BackGround)
			Dropdowns["38"]["Visible"] = false
			Dropdowns["38"]["ZIndex"] = 2
			Dropdowns["38"]["BorderSizePixel"] = 0
			Dropdowns["38"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["38"]["Size"] = UDim2.new(1, 0, 1, 0)
			Dropdowns["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["38"]["Name"] = [[DropdownSelect]]
			Dropdowns["38"]["BackgroundTransparency"] = 0.3

			Dropdowns["39"] = Instance.new("Frame", Dropdowns["38"])
			Dropdowns["39"]["BorderSizePixel"] = 0
			Dropdowns["39"]["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
			Dropdowns["39"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Dropdowns["39"]["Size"] = UDim2.new(0, 200, 0, 250)
			Dropdowns["39"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
			Dropdowns["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

			Dropdowns["3a"] = Instance.new("UICorner", Dropdowns["39"])
			Dropdowns["3a"]["CornerRadius"] = UDim.new(0, 9)

			Dropdowns["3b"] = Instance.new("UIStroke", Dropdowns["39"])
			Dropdowns["3b"]["Transparency"] = 0.6
			Dropdowns["3b"]["Color"] = Color3.fromRGB(223, 223, 223)

			local DropdownSelectList = Instance.new("Frame", Dropdowns["39"])
			DropdownSelectList["BorderSizePixel"] = 0
			DropdownSelectList["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			DropdownSelectList["AnchorPoint"] = Vector2.new(0.5, 0.5)
			DropdownSelectList["Size"] = UDim2.new(0.9, 0, 0.7536, 0)
			DropdownSelectList["Position"] = UDim2.new(0.5, 0, 0.5732, 0)
			DropdownSelectList["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			DropdownSelectList["Name"] = [[List]]

			local DropdownSelectListUICorner = Instance.new("UICorner", DropdownSelectList)
			DropdownSelectListUICorner["CornerRadius"] = UDim.new(0, 9)

			local DropdownSelectListUIStroke = Instance.new("UIStroke", DropdownSelectList)
			DropdownSelectListUIStroke["Transparency"] = 0.6
			DropdownSelectListUIStroke["Color"] = Color3.fromRGB(223, 223, 223)

			local CONTAINER = Instance.new("ScrollingFrame", DropdownSelectList)
			CONTAINER["Active"] = true
			CONTAINER["BorderSizePixel"] = 0
			CONTAINER["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			CONTAINER["Size"] = UDim2.new(1, 0, 0.95488, 0)
			CONTAINER["ScrollBarImageColor3"] = Color3.fromRGB(0, 100, 255)
			CONTAINER["Position"] = UDim2.new(0, 0, 0.04512, 0)
			CONTAINER["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			CONTAINER["ScrollBarThickness"] = 3
			CONTAINER["BackgroundTransparency"] = 1

			local DropdownDes = Instance.new("TextLabel", Dropdowns["39"])
			DropdownDes["BorderSizePixel"] = 0
			DropdownDes["TextTransparency"] = 0.5
			DropdownDes["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			DropdownDes["TextSize"] = 10
			DropdownDes["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			DropdownDes["TextColor3"] = Color3.fromRGB(0, 0, 0)
			DropdownDes["BackgroundTransparency"] = 1
			DropdownDes["AnchorPoint"] = Vector2.new(0.5, 0.5)
			DropdownDes["Size"] = UDim2.new(0.8, 0, 0.2501, 0)
			DropdownDes["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			DropdownDes["Text"] = [[Description Dropdown]]
			DropdownDes["Name"] = [[Des]]
			DropdownDes["Position"] = UDim2.new(0.5, 0, 0.12295, 0)

			local DropdownTitle = Instance.new("TextLabel", Dropdowns["39"])
			DropdownTitle["BorderSizePixel"] = 0
			DropdownTitle["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			DropdownTitle["TextSize"] = 12
			DropdownTitle["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			DropdownTitle["TextColor3"] = Color3.fromRGB(0, 0, 0)
			DropdownTitle["BackgroundTransparency"] = 1
			DropdownTitle["AnchorPoint"] = Vector2.new(0.5, 0.5)
			DropdownTitle["Size"] = UDim2.new(0.8, 0, 0.12205, 0)
			DropdownTitle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			DropdownTitle["Text"] = [[Dropdown]]
			DropdownTitle["Name"] = [[Title]]
			DropdownTitle["Position"] = UDim2.new(0.5, 0, 0.07897, 0)

			Dropdowns["70"] = Instance.new("TextButton", Dropdowns["39"])
			Dropdowns["70"]["BorderSizePixel"] = 0
			Dropdowns["70"]["TextSize"] = 14
			Dropdowns["70"]["TextColor3"] = Color3.fromRGB(255, 0, 0)
			Dropdowns["70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Dropdowns["70"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Dropdowns["70"]["Size"] = UDim2.new(0, 32, 0, 32)
			Dropdowns["70"]["BackgroundTransparency"] = 1
			Dropdowns["70"]["Name"] = [[X]]
			Dropdowns["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["70"]["Text"] = [[X]]
			Dropdowns["70"]["Position"] = UDim2.new(0.8375, 0, 0.008, 0)

			local itemslist = {}
			local selectedItem

			function itemslist:Clear()
				for _, child in ipairs(CONTAINER:GetChildren()) do
					if child:IsA("Frame") then
						child:Destroy()
					end
				end

				selectedItem = nil
				Dropdowns["ba"]["Text"] = ""
			end

			function itemslist:AddList(text, index)
				local item = {}

				item["40"] = Instance.new("Frame", CONTAINER)
				item["40"]["BorderSizePixel"] = 0
				item["40"]["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
				item["40"]["Size"] = UDim2.new(0, 150, 0, 20)
				item["40"]["Position"] = UDim2.new(0.08333, 0, 0, 0)
				item["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				item["40"]["Name"] = [[Select]]

				item["41"] = Instance.new("UIStroke", item["40"])
				item["41"]["Transparency"] = 0.6
				item["41"]["Color"] = Color3.fromRGB(223, 223, 223)

				item["42"] = Instance.new("UICorner", item["40"])
				item["42"]["CornerRadius"] = UDim.new(0, 9)

				item["43"] = Instance.new("TextLabel", item["40"])
				item["43"]["BorderSizePixel"] = 0
				item["43"]["TextTransparency"] = 0.5
				item["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				item["43"]["TextSize"] = 11
				item["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
				item["43"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
				item["43"]["BackgroundTransparency"] = 1
				item["43"]["Size"] = UDim2.new(1, 0, 1, 0)
				item["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				item["43"]["Text"] = tostring(text)

				item["44"] = Instance.new("Frame", item["40"])
				item["44"]["BorderSizePixel"] = 0
				item["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				item["44"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
				item["44"]["Size"] = UDim2.new(0, 10, 0, 10)
				item["44"]["Position"] = UDim2.new(0.95, 0, 0.5, 0)
				item["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				item["44"]["Name"] = [[tickback]]

				item["45"] = Instance.new("UICorner", item["44"])
				item["45"]["CornerRadius"] = UDim.new(1, 0)

				item["46"] = Instance.new("Frame", item["44"])
				item["46"]["BorderSizePixel"] = 0
				item["46"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
				item["46"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
				item["46"]["Size"] = UDim2.new(0.8, 0, 0.8, 0)
				item["46"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
				item["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				item["46"]["Name"] = [[tick]]
				item["46"]["BackgroundTransparency"] = 0.5

				item["47"] = Instance.new("UICorner", item["46"])
				item["47"]["CornerRadius"] = UDim.new(1, 0)

				item["48"] = Instance.new("UIStroke", item["44"])
				item["48"]["Transparency"] = 0.6
				item["48"]["Color"] = Color3.fromRGB(223, 223, 223)

				item["49"] = Instance.new("TextButton", item["40"])
				item["49"]["BorderSizePixel"] = 0
				item["49"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
				item["49"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
				item["49"]["Size"] = UDim2.new(1, 0, 1, 0)
				item["49"]["Text"] = ""
				item["49"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
				item["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				item["49"]["Name"] = [[tick]]
				item["49"]["BackgroundTransparency"] = 1

				local selectedItems = {}
				item["49"].MouseButton1Down:Connect(function()
					if multi then
						if selectedItems[index] then
							selectedItems[index]["46"].BackgroundTransparency = 0.5
							selectedItems[index]["46"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							selectedItems[index] = nil
						else
							selectedItems[index] = item
							item["46"].BackgroundColor3 = Color3.fromRGB(0, 102, 255)
							item["46"].BackgroundTransparency = 0
						end

						local selectedTexts = {}
						for _, selectedItem in pairs(selectedItems) do
							table.insert(selectedTexts, selectedItem["43"].Text)
						end
						Dropdowns["ba"]["Text"] = table.concat(selectedTexts, ", ")
						callback(Dropdowns["ba"]["Text"])
					else
						if selectedItem then
							selectedItem["46"].BackgroundTransparency = 0.5
							selectedItem["46"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						end
						selectedItem = item
						value = text
						Dropdowns["ba"]["Text"] = text
						callback(text)

						item["46"].BackgroundColor3 = Color3.fromRGB(0, 102, 255)
						item["46"].BackgroundTransparency = 0
					end
				end)

				if text == value then
					selectedItem = item
					item["46"].BackgroundColor3 = Color3.fromRGB(0, 102, 255)
					item["46"].BackgroundTransparency = 0
				end

				item["4a"] = Instance.new("UICorner", item["49"])
				item["4a"]["CornerRadius"] = UDim.new(1, 0)

				delay(0,function()
					Dropdowns["ba"]["Text"] = value or ""
					callback(value or "")
				end)
			end

			for i, v in ipairs(list) do
				itemslist:AddList(v, i)
			end

			Dropdowns["49"] = Instance.new("UIListLayout", CONTAINER)
			Dropdowns["49"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
			Dropdowns["49"]["Padding"] = UDim.new(0, 8)
			Dropdowns["49"]["SortOrder"] = Enum.SortOrder.LayoutOrder

			Dropdowns["49"]:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				CONTAINER.CanvasSize = UDim2.new(0, 0, 0, Dropdowns["49"].AbsoluteContentSize.Y+5)
			end)

			local function tweensize(object, target)

				local targetSize = target

				local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				local tween = Tw:Create(object, tweenInfo, {Size = targetSize})

				tween:Play()
			end

			local function tweenTransparency(object, targetTransparency)
				local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				local tween = Tw:Create(object, tweenInfo, {BackgroundTransparency = targetTransparency})
				tween:Play()
			end

			Dropdowns["b9"].MouseButton1Down:Connect(function()
				tweensize(Dropdowns["b1"], UDim2.new(0, 135, 0, 30))
				Dropdowns["38"]["Visible"] = true  
				task.delay(0.16, function()
					tweensize(Dropdowns["b1"], UDim2.new(0, 160, 0, 35))
					task.wait(0.05)
					tweensize(Dropdowns["b1"], UDim2.new(0, 151, 0, 35))
				end)
			end)

			Dropdowns["70"].MouseButton1Click:Connect(function()
				Dropdowns["38"]["Visible"] = false
			end)

			DropdownDes["Text"] = tostring(listdesc)

			Dropdowns["ba"] = Instance.new("TextLabel", Dropdowns["b6"])
			Dropdowns["ba"]["TextWrapped"] = true
			Dropdowns["ba"]["BorderSizePixel"] = 0
			Dropdowns["ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Dropdowns["ba"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Dropdowns["ba"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["ba"]["BackgroundTransparency"] = 1
			Dropdowns["ba"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Dropdowns["ba"]["Size"] = UDim2.new(0.8, 0, 1, 0)
			Dropdowns["ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Dropdowns["ba"]["Text"] = ""
			Dropdowns["ba"]["Name"] = [[SelectDropdown]]
			Dropdowns["ba"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

			return itemslist
		end

		function Library.Function:CreateTextBox(s, info)

			local title = info.Title or "nil"
			local desc = info.Desc or "nil"
			local value = info.Value or ""
			local callback = info.Callback or function() end

			local TextBox = {}

			TextBox["c9"] = Instance.new("Frame", GetParent(s))
			TextBox["c9"]["BorderSizePixel"] = 0
			TextBox["c9"]["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
			TextBox["c9"]["Size"] = UDim2.new(0, 151, 0, 35)
			TextBox["c9"]["Position"] = UDim2.new(0.05848, 0, 0, 0)
			TextBox["c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			TextBox["c9"]["Name"] = [[TextBox]]

			TextBox["ca"] = Instance.new("UIStroke", TextBox["c9"])
			TextBox["ca"]["Transparency"] = 0.6
			TextBox["ca"]["Color"] = Color3.fromRGB(223, 223, 223)

			TextBox["cb"] = Instance.new("UICorner", TextBox["c9"])

			TextBox["cc"] = Instance.new("TextLabel", TextBox["c9"])
			TextBox["cc"]["BorderSizePixel"] = 0
			TextBox["cc"]["TextXAlignment"] = Enum.TextXAlignment.Left
			TextBox["cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			TextBox["cc"]["TextSize"] = 9
			TextBox["cc"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			TextBox["cc"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			TextBox["cc"]["BackgroundTransparency"] = 1
			TextBox["cc"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			TextBox["cc"]["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			TextBox["cc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			TextBox["cc"]["Text"] = tostring(title)
			TextBox["cc"]["Name"] = [[Title]]
			TextBox["cc"]["Position"] = UDim2.new(0.4, 0, 0.35, 0)

			TextBox["cd"] = Instance.new("TextLabel", TextBox["c9"])
			TextBox["cd"]["BorderSizePixel"] = 0
			TextBox["cd"]["TextXAlignment"] = Enum.TextXAlignment.Left
			TextBox["cd"]["TextTransparency"] = 0.5
			TextBox["cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			TextBox["cd"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			TextBox["cd"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			TextBox["cd"]["BackgroundTransparency"] = 1
			TextBox["cd"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			TextBox["cd"]["Size"] = UDim2.new(0.7, 0, 0.7, 0)
			TextBox["cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			TextBox["cd"]["Text"] = tostring(desc)
			TextBox["cd"]["Name"] = [[Des]]
			TextBox["cd"]["Position"] = UDim2.new(0.4, 0, 0.66429, 0)

			if #TextBox["cd"]["Text"] == 0 then
				TextBox["cc"]["Position"] = UDim2.new(0.4, 0, 0.5, 0)
			end

			TextBox["ce"] = Instance.new("TextBox", TextBox["c9"])
			TextBox["ce"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
			TextBox["ce"]["BorderSizePixel"] = 0
			TextBox["ce"]["TextSize"] = 7
			TextBox["ce"]["Name"] = [[ValueBox]]
			TextBox["ce"]["BackgroundColor3"] = Color3.fromRGB(212, 212, 212)
			TextBox["ce"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			TextBox["ce"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			TextBox["ce"]["Size"] = UDim2.new(0.26668, 0, 0.45671, 0)
			TextBox["ce"]["Position"] = UDim2.new(0.815, 0, 0.5, 0)
			TextBox["ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			TextBox["ce"]["BackgroundTransparency"] = 1
			TextBox["ce"]["Text"] = value

			TextBox["cf"] = Instance.new("UICorner", TextBox["ce"])

			TextBox["d0"] = Instance.new("UIStroke", TextBox["ce"])
			TextBox["d0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

			TextBox["ce"].FocusLost:Connect(function()
				if value then
					if #TextBox["ce"]["Text"] > 0 then
						pcall(callback,TextBox["ce"]["Text"])
					end
				end
			end)
			delay(.1,function()
				if value then
					if #TextBox["ce"]["Text"] > 0 then
						pcall(callback,TextBox["ce"]["Text"])
					end
				end
			end)
		end

		return Library.Function
	end

	UIListLayout2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout2.AbsoluteContentSize.Y+5)
	end)

	return Library.Page
end

local AUI = {}

AUI[1] = Instance.new("Frame", Patinum)
AUI[1]["BorderSizePixel"] = 0
AUI[1]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
AUI[1]["AnchorPoint"] = Vector2.new(0.5, 0.5)
AUI[1]["Size"] = UDim2.new(0, 25, 0, 309)
AUI[1]["Position"] = UDim2.new(0.9734, 0, 0.57072, 0)
AUI[1]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
AUI[1]["Name"] = [[NotificationList]]
AUI[1]["BackgroundTransparency"] = 1

AUI[2] = Instance.new("UIListLayout", AUI[1])
AUI[2]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right
AUI[2]["Padding"] = UDim.new(0, 8)
AUI[2]["VerticalAlignment"] = Enum.VerticalAlignment.Center
AUI[2]["SortOrder"] = Enum.SortOrder.LayoutOrder

function Library:Notify(a)
	local Time = a.Time

	local notify = Instance.new("CanvasGroup", AUI[1])
	notify["BorderSizePixel"] = 0
	notify["BackgroundColor3"] = Color3.fromRGB(242, 242, 242)
	notify["Size"] = UDim2.new(0, 0, 0, 50)
	notify["BorderColor3"] = Color3.fromRGB(0, 0, 0)

	local UICorner = Instance.new("UICorner", notify)
	UICorner["CornerRadius"] = UDim.new(0, 9)

	local UIStroke = Instance.new("UIStroke", notify)
	UIStroke["Transparency"] = 0.6
	UIStroke["Color"] = Color3.fromRGB(223, 223, 223)

	local textList = Instance.new("Frame", notify)
	textList["BorderSizePixel"] = 0
	textList["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	textList["Size"] = UDim2.new(1, 0, 1, 0)
	textList["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	textList["Name"] = "TextList"

	local UIListLayout = Instance.new("UIListLayout", textList)
	UIListLayout["Padding"] = UDim.new(0, 8)
	UIListLayout["VerticalAlignment"] = Enum.VerticalAlignment.Center
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout["FillDirection"] = Enum.FillDirection.Horizontal

	local textFrame = Instance.new("Frame", textList)
	textFrame["BorderSizePixel"] = 0
	textFrame["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	textFrame["Size"] = UDim2.new(0, 154, 0, 50)
	textFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	textFrame["Name"] = "Text"
	textFrame["BackgroundTransparency"] = 1

	local title = Instance.new("TextLabel", textFrame)
	title["BorderSizePixel"] = 0
	title["TextXAlignment"] = Enum.TextXAlignment.Left
	title["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	title["TextSize"] = 13
	title["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	title["TextColor3"] = Color3.fromRGB(0, 0, 0)
	title["BackgroundTransparency"] = 1
	title["Size"] = UDim2.new(0, 154, 0, 15)
	title["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	title["Text"] = a.Title
	title["Name"] = "Title"
	title["Position"] = UDim2.new(0, 0, 0.16, 0)

	local desc = Instance.new("TextLabel", textFrame)
	desc["BorderSizePixel"] = 0
	desc["TextXAlignment"] = Enum.TextXAlignment.Left
	desc["TextTransparency"] = 0.5
	desc["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	desc["TextSize"] = 11
	desc["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	desc["TextColor3"] = Color3.fromRGB(0, 0, 0)
	desc["BackgroundTransparency"] = 1
	desc["Size"] = UDim2.new(0, 154, 0, 15)
	desc["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	desc["Text"] = a.Desc
	desc["Name"] = "Desc"
	desc["Position"] = UDim2.new(0, 0, 0.5, 0)

	local logo = Instance.new("Frame", textList)
	logo["BorderSizePixel"] = 0
	logo["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	logo["Size"] = UDim2.new(0, 45, 0, 50)
	logo["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	logo["Name"] = "Logo"
	logo["LayoutOrder"] = -1

	local logoStroke = Instance.new("UIStroke", logo)
	logoStroke["Transparency"] = 0.6
	logoStroke["Color"] = Color3.fromRGB(223, 223, 223)

	local logoImage = Instance.new("ImageLabel", logo)
	logoImage["BorderSizePixel"] = 0
	logoImage["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	logoImage["ImageTransparency"] = 0.5
	logoImage["ImageColor3"] = Color3.fromRGB(17, 17, 17)
	logoImage["AnchorPoint"] = Vector2.new(0.5, 0.5)
	logoImage["Image"] = [[rbxassetid://2790460444]]
	logoImage["Size"] = UDim2.new(0.8, 0, 0.65, 0)
	logoImage["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	logoImage["BackgroundTransparency"] = 1
	logoImage["Position"] = UDim2.new(0.5, 0, 0.5, 0)

	local timeBar = Instance.new("Frame", notify)
	timeBar["BorderSizePixel"] = 0
	timeBar["BackgroundColor3"] = Color3.fromRGB(0, 102, 255)
	timeBar["AnchorPoint"] = Vector2.new(0, 0.5)
	timeBar["Size"] = UDim2.new(1, 0, 0, 3)
	timeBar["Position"] = UDim2.new(0, 0, 0.9625, 0)
	timeBar["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	timeBar["Name"] = "Time"

	local closeButton = Instance.new("TextButton", notify)
	closeButton["BorderSizePixel"] = 0
	closeButton["TextColor3"] = Color3.fromRGB(0, 0, 0)
	closeButton["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
	closeButton["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	closeButton["AnchorPoint"] = Vector2.new(0.5, 0.5)
	closeButton["Size"] = UDim2.new(0, 10, 0, 10)
	closeButton["Name"] = "Close"
	closeButton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	closeButton["Text"] = "X"
	closeButton["Position"] = UDim2.new(0.95894, 0, 0.15, 0)
	closeButton["BackgroundTransparency"] = 1

	local TweenService = game:GetService("TweenService")
	local function TweenS(instance, targetSize)
		local tween = TweenService:Create(instance, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), { Size = targetSize })
		tween:Play()
		return tween
	end

	TweenS(notify, UDim2.new(0, 250, 0, 50))

	task.spawn(function()
		local totalDuration = Time
		while Time > 0 do
			wait(1)
			Time = Time - 1
			local targetSize = UDim2.new(Time / totalDuration, 0, 0, 3)
			TweenS(timeBar, targetSize)
		end
		wait(.2)
		TweenS(notify, UDim2.new(0, 0, 0, 50))
		wait(.5)
		notify:Destroy()
	end)

	closeButton.MouseButton1Click:Connect(function()
		TweenS(timeBar, UDim2.new(0, 0, 0, 3))
		Time = 0
	end)
end

return Library
