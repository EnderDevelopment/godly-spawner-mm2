-- GodlySpawner.lua

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local spawnEvent = ReplicatedStorage:WaitForChild("SpawnGodlyEvent")

-- Function to spawn a godly
local function spawnGodly(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Create a godly model
    local godly = Instance.new("Model")
    godly.Name = "Godly"
    godly.Parent = workspace

    -- Add parts and other components to the godly model
    -- This is a placeholder; you need to customize this part based on your game's requirements
    local part = Instance.new("Part")
    part.Size = Vector3.new(4, 4, 4)
    part.Position = humanoidRootPart.Position + Vector3.new(0, 0, -10)
    part.Anchored = true
    part.Parent = godly

    print("Godly spawned for " .. player.Name)
end

-- Event handler for spawning godlys
spawnEvent.OnServerEvent:Connect(function(player)
    spawnGodly(player)
end)

print("GodlySpawner loaded")