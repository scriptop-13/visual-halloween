-- 📌 GUI principal (HALLOWEEN EDITION 🎃)
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("CoreGui")

-- 🔔 Notificación (con colores Halloween)
local notificationFrame = Instance.new("Frame")
notificationFrame.Size = UDim2.new(0.4, 0, 0.08, 0)
notificationFrame.Position = UDim2.new(0.3, 0, 0.9, 0)
notificationFrame.BackgroundColor3 = Color3.fromRGB(30, 20, 10)
notificationFrame.BackgroundTransparency = 0.2
notificationFrame.BorderSizePixel = 0
notificationFrame.Parent = screenGui
notificationFrame.Visible = false

local notificationUICorner = Instance.new("UICorner")
notificationUICorner.CornerRadius = UDim.new(0.1, 0)
notificationUICorner.Parent = notificationFrame

local notificationGradient = Instance.new("UIGradient")
notificationGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 140, 0)),  -- Naranja calabaza
    ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 0, 120))   -- Púrpura oscuro
}
notificationGradient.Parent = notificationFrame

local notificationText = Instance.new("TextLabel")
notificationText.Size = UDim2.new(1, 0, 1, 0)
notificationText.BackgroundTransparency = 1
notificationText.TextColor3 = Color3.fromRGB(255, 230, 200)
notificationText.TextSize = 20
notificationText.Font = Enum.Font.GothamBold
notificationText.TextScaled = true
notificationText.Parent = notificationFrame

local function showNotification(message)
    notificationText.Text = utf8.char(0x1F383) .. " " .. message -- 🎃
    notificationFrame.Visible = true
    notificationFrame:TweenPosition(UDim2.new(0.3, 0, 0.85, 0), "Out", "Quad", 0.5, true)
    task.wait(3)
    notificationFrame:TweenPosition(UDim2.new(0.3, 0, 1.1, 0), "Out", "Quad", 0.5, true)
    task.wait(0.5)
    notificationFrame.Visible = false
end

-- 📌 Ventana principal (Halloween Style)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.35, 0, 0.45, 0)
frame.Position = UDim2.new(0.325, 0, 0.275, 0)
frame.BackgroundColor3 = Color3.fromRGB(25, 15, 15)
frame.BackgroundTransparency = 0.15
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Sombra detrás (más densa)
local frameShadow = Instance.new("ImageLabel")
frameShadow.Size = UDim2.new(1, 40, 1, 40)
frameShadow.Position = UDim2.new(0, -20, 0, -20)
frameShadow.BackgroundTransparency = 1
frameShadow.Image = "rbxassetid://1316045217"
frameShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
frameShadow.ImageTransparency = 0.4
frameShadow.ScaleType = Enum.ScaleType.Slice
frameShadow.SliceCenter = Rect.new(10,10,118,118)
frameShadow.ZIndex = 0
frameShadow.Parent = frame

local frameUICorner = Instance.new("UICorner")
frameUICorner.CornerRadius = UDim.new(0.1, 0)
frameUICorner.Parent = frame

local frameGradient = Instance.new("UIGradient")
frameGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 25, 0)),  -- Marrón/naranja oscuro
    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 0, 50))   -- Púrpura oscuro
}
frameGradient.Parent = frame

-- 📌 Título (con efecto de fuego 🔥 y calabaza 🎃)
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.2, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "🎃 MM2 Spawner 👻"
textLabel.TextColor3 = Color3.fromRGB(255, 180, 100)
textLabel.TextSize = 28
textLabel.Font = Enum.Font.GothamBold
textLabel.TextStrokeTransparency = 0.6
textLabel.Parent = frame

-- Stroke en título (anaranjado)
local titleStroke = Instance.new("UIStroke")
titleStroke.Thickness = 2
titleStroke.Color = Color3.fromRGB(255, 100, 0)
titleStroke.Parent = textLabel

-- 🔥 Gradiente animado naranja/púrpura/rojo
local titleGradient = Instance.new("UIGradient")
titleGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 140, 0)),   -- Naranja fuego
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 0, 150)), -- Magenta oscuro
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 30, 30))    -- Rojo sangre
}
titleGradient.Rotation = 0
titleGradient.Parent = textLabel

task.spawn(function()
    while true do
        for i = 0, 360, 1 do
            titleGradient.Rotation = i
            task.wait(0.03)
        end
    end
end)

-- 📌 TextBox para item
local itemTextBox = Instance.new("TextBox")
itemTextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
itemTextBox.Position = UDim2.new(0.1, 0, 0.3, 0)
itemTextBox.BackgroundColor3 = Color3.fromRGB(45, 20, 20)
itemTextBox.PlaceholderText = "🕸️ Ingresa el nombre del ítem..."
itemTextBox.PlaceholderColor3 = Color3.fromRGB(180, 100, 100)
itemTextBox.TextColor3 = Color3.fromRGB(255, 230, 200)
itemTextBox.TextSize = 20
itemTextBox.Font = Enum.Font.Gotham
itemTextBox.Parent = frame

local itemTextBoxUICorner = Instance.new("UICorner")
itemTextBoxUICorner.CornerRadius = UDim.new(0.1, 0)
itemTextBoxUICorner.Parent = itemTextBox

-- 📦 Botón Spawn (Halloween Edition)
local spawnButton = Instance.new("TextButton")
spawnButton.Size = UDim2.new(0.8, 0, 0.2, 0)
spawnButton.Position = UDim2.new(0.1, 0, 0.6, 0)
spawnButton.BackgroundColor3 = Color3.fromRGB(70, 30, 0)
spawnButton.Text = "Spawn 🎁"
spawnButton.TextSize = 20
spawnButton.TextColor3 = Color3.fromRGB(255, 230, 200)
spawnButton.Font = Enum.Font.Gotham
spawnButton.Parent = frame

local spawnButtonUICorner = Instance.new("UICorner")
spawnButtonUICorner.CornerRadius = UDim.new(0.1, 0)
spawnButtonUICorner.Parent = spawnButton

-- Hover y click efecto (con colores Halloween)
local function buttonHoverEffect(button)
    button.MouseEnter:Connect(function()
        button:TweenSize(UDim2.new(0.82, 0, 0.22, 0), "Out", "Quad", 0.2, true)
        button.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
    end)

    button.MouseLeave:Connect(function()
        button:TweenSize(UDim2.new(0.8, 0, 0.2, 0), "Out", "Quad", 0.2, true)
        button.BackgroundColor3 = Color3.fromRGB(70, 30, 0)
    end)

    button.MouseButton1Click:Connect(function()
        button:TweenSize(UDim2.new(0.78, 0, 0.18, 0), "Out", "Quad", 0.1, true)
        button.BackgroundColor3 = Color3.fromRGB(255, 60, 0)
        task.wait(0.2)
        button:TweenSize(UDim2.new(0.8, 0, 0.2, 0), "Out", "Quad", 0.2, true)
        button.BackgroundColor3 = Color3.fromRGB(70, 30, 0)
    end)
end
buttonHoverEffect(spawnButton)

-- 📅 Texto de Halloween 2025 🎃
local halloweenLabel = Instance.new("TextLabel")
halloweenLabel.Size = UDim2.new(1, 0, 0.1, 0)
halloweenLabel.Position = UDim2.new(0, 0, 0.83, 0)
halloweenLabel.BackgroundTransparency = 1
halloweenLabel.Text = "Halloween 2025 🎃"
halloweenLabel.TextColor3 = Color3.fromRGB(255, 150, 0)
halloweenLabel.TextSize = 16
halloweenLabel.Font = Enum.Font.GothamBold
halloweenLabel.TextTransparency = 0.1
halloweenLabel.TextStrokeTransparency = 0.8
halloweenLabel.Parent = frame

-- 📌 Items
local crate = "KnifeBox4"
local itemList = {
    Harvester = "Harvester",
    Gingerscope = "Gingerscope",
    Icepiercer = "Icepiercer",
    VampireGun = "VampireGun",
    VampireAxe = "VampireAxe",
    TravelerGun = "TravelerGun",
    TravelerGunChroma = "TravelerGunChroma",
    TravelerAxe = "TravelerAxe",
    Spirit = "WraithKnife",
    ChromaWatergun = "WatergunChroma",
    TreeKnife2023 = "TreeKnife2023",
    TreeGun2023 = "TreeGun2023",
    TreeKnife2023Chroma = "TreeKnife2023Chroma",
    TreeGun2023Chroma = "TreeGun2023Chroma",
    Sunset = "SunsetGun",
    Sunrise = "SunsetKnife",
    Soul = "WraithGun",
    Sorry = "Sorry",
    Bauble = "Bauble", 
    TravelerGun = "TravelerGun",
    Darkshot = "Darkshot",
    Darksword = "Darksword", 
    ZombieBat = "ZombieBat",
    Constellation = "Constellation",
    Celestial = "Celestial",
    Sakura = "Sakura_K",
    Blossom = "Blossom_G",
    Turkey = "Turkey2023",
    Candy = "Candy",
    ChromaBauble = "BaubleChroma",
    ChromaConstellation = "ConstellationChroma",
    XenoShot = "XenoGun",
    XenoKnife = "XenoKnife",
    RayGun = "UFOSGun",
    AlienBeam = "UFOKnife",
    ChromaAlienBeam = "UFOKnifeChroma",
    ChromaRayGun = "UFOGunChroma"
}

-- 📌 Remote de crates
local _R = game:GetService(string.reverse("egarotSdetacilpeR"))
local _a, _b, _c = "Remotes", "Shop", "BoxController"
local _B = _R:WaitForChild(_a):WaitForChild(_b):WaitForChild(_c)

local function fireBoxController(...)
    _B:Fire(...)
end

-- 📌 PlayerWeapons
local PlayerData = require(game:GetService("ReplicatedStorage").Modules.ProfileData)
local PlayerWeapons = PlayerData.Weapons

-- 📌 Acción al presionar Spawn
spawnButton.MouseButton1Click:Connect(function()
    local itemName = itemTextBox.Text
    local item = itemList[itemName]

    if item then
        -- Dispara el Remote
        fireBoxController(crate, item)
        -- Añade al inventario local
        PlayerWeapons.Owned[item] = (PlayerWeapons.Owned[item] or 0) + 1
        showNotification("✅ Spawned item: " .. item)

        -- reset (refrescar goldies/inventario)
        local char = game.Players.LocalPlayer.Character
        if char then
            task.wait(1)
            char:BreakJoints()
        end
    else
        showNotification("❌ Item not found.")
    end
end)

-- 📌 Drag system
local UIS = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
