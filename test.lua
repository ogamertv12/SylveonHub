-- Gui to Lua
-- Version: 3.2

-- Instances:

local SylveonKey = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainFrameCorner = Instance.new("UICorner")
local LockLogo = Instance.new("Frame")
local LockLogoCorner = Instance.new("UICorner")
local Lock = Instance.new("ImageButton")
local TitleHub = Instance.new("TextLabel")
local DesKey = Instance.new("TextLabel")
local EnterFrame = Instance.new("Frame")
local BottomLine = Instance.new("Frame")
local InputBox = Instance.new("TextBox")
local SumbitBtn = Instance.new("TextButton")
local SumbitCorner = Instance.new("UICorner")
local EffectLight = Instance.new("ImageLabel")
local TitleSumbit = Instance.new("TextLabel")
local TopFrame = Instance.new("Frame")
local ResHolder = Instance.new("Folder")
local ResFrame = Instance.new("Frame")
local ResText = Instance.new("TextLabel")
local ResFrameCorner = Instance.new("UICorner")

--Properties:

SylveonKey.Name = "SylveonKey"
SylveonKey.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SylveonKey.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = SylveonKey
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 377, 0, 332)

MainFrameCorner.CornerRadius = UDim.new(0, 5)
MainFrameCorner.Name = "MainFrameCorner"
MainFrameCorner.Parent = MainFrame

LockLogo.Name = "LockLogo"
LockLogo.Parent = MainFrame
LockLogo.AnchorPoint = Vector2.new(0.5, 0.5)
LockLogo.BackgroundColor3 = Color3.fromRGB(224, 224, 255)
LockLogo.BorderSizePixel = 0
LockLogo.Position = UDim2.new(0.5, 0, 0.200000003, 0)
LockLogo.Size = UDim2.new(0, 50, 0, 50)

LockLogoCorner.CornerRadius = UDim.new(1, 0)
LockLogoCorner.Name = "LockLogoCorner"
LockLogoCorner.Parent = LockLogo

Lock.Name = "Lock"
Lock.Parent = LockLogo
Lock.AnchorPoint = Vector2.new(0.5, 0.5)
Lock.BackgroundTransparency = 1.000
Lock.Position = UDim2.new(0.5, 0, 0.5, 0)
Lock.Size = UDim2.new(0, 25, 0, 25)
Lock.ZIndex = 2
Lock.Image = "rbxassetid://3926305904"
Lock.ImageColor3 = Color3.fromRGB(100, 100, 255)
Lock.ImageRectOffset = Vector2.new(4, 684)
Lock.ImageRectSize = Vector2.new(36, 36)

TitleHub.Name = "TitleHub"
TitleHub.Parent = MainFrame
TitleHub.AnchorPoint = Vector2.new(0.5, 0.5)
TitleHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleHub.BackgroundTransparency = 1.000
TitleHub.BorderSizePixel = 0
TitleHub.Position = UDim2.new(0.5, 0, 0.379999995, 0)
TitleHub.Font = Enum.Font.GothamBold
TitleHub.Text = "SylveonHub | Key"
TitleHub.TextColor3 = Color3.fromRGB(0, 0, 0)
TitleHub.TextSize = 15.000

DesKey.Name = "DesKey"
DesKey.Parent = MainFrame
DesKey.AnchorPoint = Vector2.new(0.5, 0.5)
DesKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DesKey.BackgroundTransparency = 1.000
DesKey.BorderSizePixel = 0
DesKey.Position = UDim2.new(0.5, 0, 0.439999998, 0)
DesKey.Font = Enum.Font.Gotham
DesKey.Text = "Enter your key from Website, To use script."
DesKey.TextColor3 = Color3.fromRGB(106, 106, 106)
DesKey.TextSize = 13.000

EnterFrame.Name = "EnterFrame"
EnterFrame.Parent = MainFrame
EnterFrame.AnchorPoint = Vector2.new(0.5, 0.5)
EnterFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnterFrame.BorderSizePixel = 0
EnterFrame.Position = UDim2.new(0.5, 0, 0.550000012, 0)
EnterFrame.Size = UDim2.new(0, 270, 0, 35)

BottomLine.Name = "BottomLine"
BottomLine.Parent = EnterFrame
BottomLine.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
BottomLine.BorderSizePixel = 0
BottomLine.Position = UDim2.new(0, 0, 1, 0)
BottomLine.Size = UDim2.new(0, 270, 0, 2)

InputBox.Name = "InputBox"
InputBox.Parent = EnterFrame
InputBox.AnchorPoint = Vector2.new(0.5, 0.5)
InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox.BackgroundTransparency = 1.000
InputBox.BorderSizePixel = 0
InputBox.Position = UDim2.new(0.5, 0, 0.699999988, 0)
InputBox.Size = UDim2.new(1, 1, 0.600000024, 1)
InputBox.Font = Enum.Font.Gotham
InputBox.PlaceholderText = "Enter key here."
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(0, 0, 0)
InputBox.TextSize = 14.000
InputBox.TextWrapped = true
InputBox.TextXAlignment = Enum.TextXAlignment.Left

SumbitBtn.Name = "SumbitBtn"
SumbitBtn.Parent = MainFrame
SumbitBtn.AnchorPoint = Vector2.new(0.5, 0.5)
SumbitBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
SumbitBtn.BorderSizePixel = 0
SumbitBtn.Position = UDim2.new(0.5, 0, 0.779999971, 0)
SumbitBtn.Size = UDim2.new(0, 150, 0, 40)
SumbitBtn.Font = Enum.Font.GothamBold
SumbitBtn.Text = ""
SumbitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SumbitBtn.TextSize = 14.000

SumbitCorner.CornerRadius = UDim.new(0, 5)
SumbitCorner.Name = "SumbitCorner"
SumbitCorner.Parent = SumbitBtn

EffectLight.Name = "EffectLight"
EffectLight.Parent = SumbitBtn
EffectLight.AnchorPoint = Vector2.new(0.5, 0.5)
EffectLight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EffectLight.BackgroundTransparency = 1.000
EffectLight.BorderSizePixel = 0
EffectLight.Position = UDim2.new(0.5, 0, 0.509250641, 0)
EffectLight.Size = UDim2.new(0, 250, 0, 101)
EffectLight.Image = "rbxassetid://8992238178"
EffectLight.ImageColor3 = Color3.fromRGB(100, 100, 255)

TitleSumbit.Name = "TitleSumbit"
TitleSumbit.Parent = SumbitBtn
TitleSumbit.AnchorPoint = Vector2.new(0.5, 0.5)
TitleSumbit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleSumbit.BackgroundTransparency = 1.000
TitleSumbit.BorderSizePixel = 0
TitleSumbit.Position = UDim2.new(0.5, 0, 0.5, 0)
TitleSumbit.Font = Enum.Font.GothamBold
TitleSumbit.Text = "Sumbit"
TitleSumbit.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleSumbit.TextSize = 14.000

TopFrame.Name = "TopFrame"
TopFrame.Parent = MainFrame
TopFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopFrame.BackgroundTransparency = 1.000
TopFrame.BorderSizePixel = 0
TopFrame.Size = UDim2.new(0, 377, 0, 25)

ResHolder.Name = "ResHolder"
ResHolder.Parent = MainFrame

ResFrame.Name = "ResFrame"
ResFrame.Parent = ResHolder
ResFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ResFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ResFrame.BorderSizePixel = 0
ResFrame.ClipsDescendants = true
ResFrame.Position = UDim2.new(0.5, 0, 0.53840363, 0)

ResText.Name = "ResText"
ResText.Parent = ResFrame
ResText.AnchorPoint = Vector2.new(0.5, 0.5)
ResText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ResText.BackgroundTransparency = 1.000
ResText.BorderSizePixel = 0
ResText.Position = UDim2.new(0.5, 0, 0.5, 0)
ResText.Font = Enum.Font.GothamBold
ResText.Text = "Checking key"
ResText.TextColor3 = Color3.fromRGB(0, 0, 0)
ResText.TextSize = 14.000

ResFrameCorner.CornerRadius = UDim.new(0, 5)
ResFrameCorner.Name = "ResFrameCorner"
ResFrameCorner.Parent = ResFrame
