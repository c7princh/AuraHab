

-- AURA HUB
-- Roblox Studio GUI

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "AuraHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(280, 320)
frame.Position = UDim2.new(0.5, -140, 0.5, -160)
frame.BackgroundColor3 = Color3.fromRGB(20, 18, 30)
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius =
    UDim.new(0, 14)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 55)
title.BackgroundTransparency = 1
title.Text = "✦ AURA HUB"
title.TextColor3 = Color3.fromRGB(180, 120, 255)
title.TextSize = 25
title.Font = Enum.Font.GothamBold
title.Parent = frame

local function createButton(name, y)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -30, 0, 42)
    button.Position = UDim2.fromOffset(15, y)
    button.BackgroundColor3 = Color3.fromRGB(65, 40, 100)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 15
    button.Font = Enum.Font.GothamBold
    button.Text = name .. ": OFF"
    button.Parent = frame

    Instance.new("UICorner", button).CornerRadius =
        UDim.new(0, 9)

    local enabled = false

    button.MouseButton1Click:Connect(function()
        enabled = not enabled
        button.Text = name .. (enabled and ": ON" or ": OFF")
    end)
end

createButton("Auto Farm", 75)
createButton("Auto Quest", 125)
createButton("Enemy Finder", 175)
createButton("CDK Progress", 225)

print("AURA HUB loaded!")
