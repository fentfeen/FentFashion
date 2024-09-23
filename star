local Players = game:GetService('Players')
local RunService = game:GetService('RunService')

local coolUsernames = {
    "ConfigCommanderRice",
    "YUMMYFENT2",
    "FentFeenin2009",
}

local function CharacterAddedStar(Character)
    local Humanoid = Character:WaitForChild('Humanoid')
    local display = Humanoid.DisplayName

    -- Check if the star emoji is already present
    if not string.match(display, "⭐") then
        -- Add star emoji with a space after it
        Humanoid.DisplayName = "[⭐] " .. display
    end
end

local function CheckPlayerStar(Player)
    while Player and Player.Character do
        local Character = Player.Character
        if table.find(coolUsernames, Player.Name) then
            CharacterAddedStar(Character)
        end
        wait(30) -- Check every 30 seconds
    end
end

Players.PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Wait()
    if table.find(coolUsernames, Player.Name) then
        Player.CharacterAdded:Connect(CharacterAddedStar)
        CharacterAddedStar(Player.Character)

        -- Start the periodic check for the star emoji
        spawn(function()
            CheckPlayerStar(Player)
        end)
    end
end)

-- For players already in-game when the script runs
for _, Player in pairs(Players:GetPlayers()) do
    if table.find(coolUsernames, Player.Name) then
        Player.CharacterAdded:Connect(CharacterAddedStar)
        if Player.Character then
            CharacterAddedStar(Player.Character)
        end
    end
end
