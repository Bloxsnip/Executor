-- Internal UI

local Internal = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Code = Instance.new("TextBox")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local HttpService = game:GetService("HttpService")

Internal.Name = HttpService:GenerateGUID(false)
Internal.Parent = game.CoreGui

MainFrame.Name = HttpService:GenerateGUID(false)
MainFrame.Parent = Internal
MainFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.355123669, 0, 0.311491936, 0)
MainFrame.Size = UDim2.new(0, 655, 0, 374)
MainFrame.Active = true
MainFrame.Draggable = true

TopBar.Name = HttpService:GenerateGUID(false)
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0.10695187, 0)

Title.Name = HttpService:GenerateGUID(false)
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 180, 0, 40)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "BloxSnip Internal UI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22.000

Close.Name = HttpService:GenerateGUID(false)
Close.Parent = TopBar
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.938931286, 0, 0, 0)
Close.Size = UDim2.new(0, 40, 0, 40)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 41.000

Code.Name = HttpService:GenerateGUID(false)
Code.Parent = MainFrame
Code.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Code.BorderColor3 = Color3.fromRGB(0, 0, 0)
Code.BorderSizePixel = 0
Code.Position = UDim2.new(0, 0, 0.10695187, 0)
Code.ClearTextOnFocus = false
Code.Size = UDim2.new(0, 655, 0, 278)
Code.Font = Enum.Font.SourceSans
Code.Text = ""
Code.TextColor3 = Color3.fromRGB(0, 0, 0)
Code.TextSize = 20.000
Code.TextXAlignment = Enum.TextXAlignment.Left
Code.TextYAlignment = Enum.TextYAlignment.Top

Execute.Name = HttpService:GenerateGUID(false)
Execute.Parent = MainFrame
Execute.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.316030532, 0, 0.871657729, 0)
Execute.Size = UDim2.new(0, 116, 0, 39)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 23.000
Execute.MouseButton1Down:Connect(function()
	loadstring(Code.Text)
end)

Clear.Name = HttpService:GenerateGUID(false)
Clear.Parent = MainFrame
Clear.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.50687021, 0, 0.871657729, 0)
Clear.Size = UDim2.new(0, 116, 0, 39)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 23.000
Clear.MouseButton1Down:Connect(function()
	Code.Text = ""
end)
