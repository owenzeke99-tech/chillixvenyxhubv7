-- ==========================================
-- CHILLI X VENYX V7 - MODERN KEY SYSTEM
-- ==========================================

local CorrectKey = "ChilliXVenyxHubV7KywosjskieehLlaowiejejLajowowieplalw"
local GetKeyLink = "https://link4m.net/wntwtyU"
local SaveFileName = "ChilliVenyxKey_Data.json"

local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")

-- ==========================================
-- HỆ THỐNG LƯU TRỮ KEY (24 GIỜ)
-- ==========================================
local function IsKeySaved()
    if readfile and writefile and isfile and isfile(SaveFileName) then
        local success, data = pcall(function()
            return HttpService:JSONDecode(readfile(SaveFileName))
        end)
        if success and data and data.Key == CorrectKey then
            -- Kiểm tra xem đã qua 24 giờ (86400 giây) chưa
            if os.time() - data.Time < 86400 then
                return true
            end
        end
    end
    return false
end

local function SaveKeyData()
    if writefile then
        local data = {
            Key = CorrectKey,
            Time = os.time()
        }
        pcall(function()
            writefile(SaveFileName, HttpService:JSONEncode(data))
        end)
    end
end

-- Nếu đã lưu key và còn hạn 24h thì bỏ qua bảng key và chạy thẳng script chính
if IsKeySaved() then
    loadstring(game:HttpGet("https://id.tomroblox.com/raw/kairoblox/chilli-x-venyx-viet-hoa-premium-v7-pro"))()
    return
end

-- ==========================================
-- XÂY DỰNG GIAO DIỆN GIAO TIẾP
-- ==========================================

-- Dọn dẹp UI cũ nếu tồn tại
if CoreGui:FindFirstChild("ChilliKeyUI") then
    CoreGui.ChilliKeyUI:Destroy()
end

-- Tạo ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ChilliKeyUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui:FindFirstChild("RobloxGui") or CoreGui

-- Khung chính (Main Frame)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 380, 0, 220)
MainFrame.Position = UDim2.new(0.5, -190, 0.5, -110)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

-- Viền Neon Đỏ mỏng hiện đại
local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(220, 38, 38)
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.3
MainStroke.Parent = MainFrame

-- Tiêu đề (Title)
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 45)
Title.Position = UDim2.new(0, 0, 0, 12)
Title.Text = "CHILLI X VENYX V7"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.Font = Enum.Font.FredokaOne
Title.BackgroundTransparency = 1
Title.Parent = MainFrame

local SubTitle = Instance.new("TextLabel")
SubTitle.Size = UDim2.new(1, 0, 0, 20)
SubTitle.Position = UDim2.new(0, 0, 0, 44)
SubTitle.Text = "PREMIUM KEY SYSTEM"
SubTitle.TextColor3 = Color3.fromRGB(180, 40, 40)
SubTitle.TextSize = 11
SubTitle.Font = Enum.Font.GothamBold
SubTitle.BackgroundTransparency = 1
SubTitle.Parent = MainFrame

-- Khung Thông Báo Hiện Đại (Notification Pill) tích hợp sẵn trong menu
local NoticeFrame = Instance.new("Frame")
NoticeFrame.Size = UDim2.new(0.88, 0, 0, 26)
NoticeFrame.Position = UDim2.new(0.06, 0, 0.31, 0)
NoticeFrame.BackgroundColor3 = Color3.fromRGB(35, 20, 22)
NoticeFrame.BackgroundTransparency = 1
NoticeFrame.BorderSizePixel = 0
NoticeFrame.Parent = MainFrame

local NoticeCorner = Instance.new("UICorner")
NoticeCorner.CornerRadius = UDim.new(0, 6)
NoticeCorner.Parent = NoticeFrame

local NoticeStroke = Instance.new("UIStroke")
NoticeStroke.Color = Color3.fromRGB(255, 70, 70)
NoticeStroke.Transparency = 1
NoticeStroke.Thickness = 1
NoticeStroke.Parent = NoticeFrame

local NoticeLabel = Instance.new("TextLabel")
NoticeLabel.Size = UDim2.new(1, 0, 1, 0)
NoticeLabel.Text = ""
NoticeLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
NoticeLabel.TextSize = 11
NoticeLabel.Font = Enum.Font.GothamBold
NoticeLabel.BackgroundTransparency = 1
NoticeLabel.TextTransparency = 1
NoticeLabel.Parent = NoticeFrame

-- Ô nhập Key (TextBox Input)
local InputContainer = Instance.new("Frame")
InputContainer.Name = "InputContainer"
InputContainer.Size = UDim2.new(0.88, 0, 0, 42)
InputContainer.Position = UDim2.new(0.06, 0, 0.44, 0)
InputContainer.BackgroundColor3 = Color3.fromRGB(24, 24, 28)
InputContainer.BorderSizePixel = 0
InputContainer.Parent = MainFrame

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 8)
InputCorner.Parent = InputContainer

local InputStroke = Instance.new("UIStroke")
InputStroke.Color = Color3.fromRGB(45, 45, 50)
InputStroke.Thickness = 1
InputStroke.Parent = InputContainer

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(1, -20, 1, 0)
TextBox.Position = UDim2.new(0, 10, 0, 0)
TextBox.PlaceholderText = "Enter your key here..."
TextBox.PlaceholderColor3 = Color3.fromRGB(110, 110, 120)
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1
TextBox.Font = Enum.Font.GothamMedium
TextBox.TextSize = 13
TextBox.ClearTextOnFocus = false
TextBox.Parent = InputContainer

-- Nút Xác Nhận (Submit Button)
local BtnSubmit = Instance.new("TextButton")
BtnSubmit.Size = UDim2.new(0.58, 0, 0, 38)
BtnSubmit.Position = UDim2.new(0.06, 0, 0.73, 0)
BtnSubmit.Text = "SUBMIT"
BtnSubmit.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnSubmit.BackgroundColor3 = Color3.fromRGB(220, 38, 38)
BtnSubmit.Font = Enum.Font.GothamBold
BtnSubmit.TextSize = 13
BtnSubmit.AutoButtonColor = false
BtnSubmit.Parent = MainFrame

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 8)
BtnCorner.Parent = BtnSubmit

-- Nút Lấy Key (Get Key Button)
local BtnGetKey = Instance.new("TextButton")
BtnGetKey.Size = UDim2.new(0.28, 0, 0, 38)
BtnGetKey.Position = UDim2.new(0.66, 0, 0.73, 0)
BtnGetKey.Text = "GET KEY"
BtnGetKey.TextColor3 = Color3.fromRGB(200, 200, 200)
BtnGetKey.BackgroundColor3 = Color3.fromRGB(32, 32, 38)
BtnGetKey.Font = Enum.Font.GothamBold
BtnGetKey.TextSize = 12
BtnGetKey.AutoButtonColor = false
BtnGetKey.Parent = MainFrame

local GetKeyCorner = Instance.new("UICorner")
GetKeyCorner.CornerRadius = UDim.new(0, 8)
GetKeyCorner.Parent = BtnGetKey

local GetKeyStroke = Instance.new("UIStroke")
GetKeyStroke.Color = Color3.fromRGB(50, 50, 60)
GetKeyStroke.Thickness = 1
GetKeyStroke.Parent = BtnGetKey

-- ==========================================
-- XỬ LÝ HIỆU ỨNG VÀ LOGIC
-- ==========================================

-- Hàm hiển thị thông báo pill
local function ShowNotice(text, isSuccess)
    NoticeLabel.Text = text
    if isSuccess then
        NoticeFrame.BackgroundColor3 = Color3.fromRGB(20, 35, 25)
        NoticeLabel.TextColor3 = Color3.fromRGB(74, 222, 128)
        NoticeStroke.Color = Color3.fromRGB(34, 197, 94)
    else
        NoticeFrame.BackgroundColor3 = Color3.fromRGB(35, 20, 22)
        NoticeLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        NoticeStroke.Color = Color3.fromRGB(255, 70, 70)
    end
    
    TweenService:Create(NoticeFrame, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
    TweenService:Create(NoticeStroke, TweenInfo.new(0.2), {Transparency = 0}):Play()
    TweenService:Create(NoticeLabel, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
end

-- Hiệu ứng Rung lắc + Tự động xóa chữ ngay lập tức khi sai Key
local isShaking = false
local function ShakeAndClear()
    if isShaking then return end
    isShaking = true
    
    TextBox.Text = ""
    ShowNotice("Incorrect Key! Please try again.", false)
    
    local originalPos = UDim2.new(0.5, -190, 0.5, -110)
    local offsets = {10, -10, 8, -8, 5, -5, 2, -2, 0}
    
    TweenService:Create(MainStroke, TweenInfo.new(0.15), {Color = Color3.fromRGB(255, 0, 0), Thickness = 2.2}):Play()
    TweenService:Create(InputStroke, TweenInfo.new(0.15), {Color = Color3.fromRGB(255, 0, 0)}):Play()
    
    for _, offset in ipairs(offsets) do
        local targetPos = UDim2.new(originalPos.X.Scale, originalPos.X.Offset + offset, originalPos.Y.Scale, originalPos.Y.Offset)
        local tween = TweenService:Create(MainFrame, TweenInfo.new(0.04, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = targetPos})
        tween:Play()
        tween.Completed:Wait()
    end
    
    MainFrame.Position = originalPos
    
    TweenService:Create(MainStroke, TweenInfo.new(0.4), {Color = Color3.fromRGB(220, 38, 38), Thickness = 1.5}):Play()
    TweenService:Create(InputStroke, TweenInfo.new(0.4), {Color = Color3.fromRGB(45, 45, 50)}):Play()
    
    isShaking = false
end

-- Hover Button Effects
BtnSubmit.MouseEnter:Connect(function()
    TweenService:Create(BtnSubmit, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(239, 68, 68)}):Play()
end)
BtnSubmit.MouseLeave:Connect(function()
    TweenService:Create(BtnSubmit, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(220, 38, 38)}):Play()
end)

BtnGetKey.MouseEnter:Connect(function()
    TweenService:Create(BtnGetKey, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(45, 45, 55)}):Play()
end)
BtnGetKey.MouseLeave:Connect(function()
    TweenService:Create(BtnGetKey, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(32, 32, 38)}):Play()
end)

-- Click Get Key
BtnGetKey.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(GetKeyLink)
        ShowNotice("Get Key link copied to clipboard!", true)
    else
        ShowNotice("Link: " .. GetKeyLink, true)
    end
end)

-- Click Submit Key
BtnSubmit.MouseButton1Click:Connect(function()
    local InputedKey = TextBox.Text

    if InputedKey == CorrectKey then
        -- Lưu lại key vào thiết bị trong 24 giờ
        SaveKeyData()
        
        TweenService:Create(MainStroke, TweenInfo.new(0.3), {Color = Color3.fromRGB(34, 197, 94)}):Play()
        ShowNotice("Key correct! Loading script...", true)
        
        local shrinkTween = TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        })
        shrinkTween:Play()
        shrinkTween.Completed:Wait()
        
        ScreenGui:Destroy()
        
        -- Tải Script Chính
        loadstring(game:HttpGet("https://id.tomroblox.com/raw/kairoblox/chilli-x-venyx-viet-hoa-premium-v7-pro"))()
    else
        ShakeAndClear()
    end
end)
