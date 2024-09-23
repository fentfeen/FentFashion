local Players = game:GetService('Players');
local RunService = game:GetService('RunService');

local function CharacterAddedStar(Character)
    local display = Character:WaitForChild('Humanoid').DisplayName
    Character:WaitForChild('Humanoid').DisplayName = "[⭐]"..display.."";
end;

Players.PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Wait();
    if Player.Name == "ConfigCommanderRice" then
        Player.CharacterAdded:Connect(CharacterAddedStar);
        CharacterAddedStar(Player.Character);
    end
end);

Players.PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Wait();
    if Player.Name == "YUMMYFENT2" then
        Player.CharacterAdded:Connect(CharacterAddedStar);
        CharacterAddedStar(Player.Character);
    end
end);

Players.PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Wait();
    if Player.Name == "FentFeenin2009" then
        Player.CharacterAdded:Connect(CharacterAddedStar);
        CharacterAddedStar(Player.Character);
    end
end);
