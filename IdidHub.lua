-- Idid Hub UI for Murder Mystery 2

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "IdidHub"
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Create a Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.Parent = screenGui

-- Create a TextButton
local spawnButton = Instance.new("TextButton")
spawnButton.Size = UDim2.new(0, 180, 0, 40)
spawnButton.Position = UDim2.new(0.5, -90, 0.5, -20)
spawnButton.AnchorPoint = Vector2.new(0.5, 0.5)
spawnButton.Text = "Spawn Godly"
spawnButton.TextColor3 = Color3.fromRGB(255, 255, 255)
spawnButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
spawnButton.Parent = frame

-- Function to spawn godly
local function spawnGodly()
    local args = {
        [1] = "SpawnGodly"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GodlySpawner"):FireServer(unpack(args))
end

-- Connect the button to the spawn function
spawnButton.MouseButton1Click:Connect(spawnGodly)

-- Create a TextLabel for the title
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0, 180, 0, 20)
titleLabel.Position = UDim2.new(0.5, -90, 0, 10)
titleLabel.AnchorPoint = Vector2.new(0.5, 0)
titleLabel.Text = "Idid Hub"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 1
titleLabel.TextScaled = true
titleLabel.Parent = frame
