-- GodlySpawnerUI.lua

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create the UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GodlySpawnerUI"
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.Parent = screenGui

local spawnButton = Instance.new("TextButton")
spawnButton.Size = UDim2.new(0, 100, 0, 50)
spawnButton.Position = UDim2.new(0.5, -50, 0.5, -25)
spawnButton.AnchorPoint = Vector2.new(0.5, 0.5)
spawnButton.Text = "Spawn Godly"
spawnButton.Parent = frame

-- Remote event for spawning godlys
local spawnEvent = Instance.new("RemoteEvent")
spawnEvent.Name = "SpawnGodlyEvent"
spawnEvent.Parent = ReplicatedStorage

-- Spawn button click event
spawnButton.MouseButton1Click:Connect(function()
    spawnEvent:FireServer()
end)

print("GodlySpawnerUI loaded")