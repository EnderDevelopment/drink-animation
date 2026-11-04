-- Drinking Animation Script

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function onCharacterAdded(character)
    local humanoid = character:WaitForChild("Humanoid")
    local animator = character:WaitForChild("Animator")

    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://123456789"
    
    local animationTrack = animator:LoadAnimation(animation)

    local function onDrink(inputObject, gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode.E then
            animationTrack:Play()
        end
    end

    humanoid.Died:Connect(function()
        animationTrack:Stop()
    end)

    character:WaitForChild("HumanoidRootPart").Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("DrinkProp") then
            animationTrack:Play()
        end
    end)

    game:GetService("UserInputService").InputBegan:Connect(onDrink)
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(onCharacterAdded)
end)