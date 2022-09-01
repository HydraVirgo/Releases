
--Made by : https://v3rmillion.net/member.php?action=profile&uid=244024
-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
local venyx = library.new("Chewy Custom", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Stuff", 5012544693)
local section1 = page:addSection("Main")


section1:addToggle("Auto Reset", false, function(value)
    getgenv().tog = value
end)
section1:addToggle("Desert Egg Farm", false, function(value)
    getgenv().eggfarm = value
end)
task.spawn(function()
    while task.wait() do
        if getgenv().eggfarm then
                game:GetService("ReplicatedStorage").Remotes.openEgg:InvokeServer(unpack({
                    [1] = 10,
                    [2] = {
                        [1] = "Cactoid",
                        [2] = "Tumble Weed",
                        [3] = "Locus Flower",
                        [4] = "Desert Dino",
                        [5] = "Epic Effect",
                        [6] = "Cactus Man",
                        [7] = "Demi Desert"
                    }
                }))
        end
    end
end)
section1:addToggle("Auto Treadmill", false, function(val)
    if val then
        getgenv().autowalk = val
        local part = Instance.new("Part")
part.Transparency = 1
part.CFrame = CFrame.new(-25293.3672, 584.889648, -8557.60352, -0.918077886, 2.47728362e-08, 0.396400064, -8.01467248e-09, 1, -8.10568253e-08, -0.396400064, -7.75934907e-08, -0.918077886)
part.Size = Vector3.new(20, .5, 20)
part.Anchored = true
part.Parent = game.Workspace
part.Name = "invpart"
local part = Instance.new("Part")
part.Transparency = 1
part.CFrame = CFrame.new(-25297.4609, 597.230225, -8548.20898, -0.926392853, 8.29135303e-08, 0.376558483, 5.01836048e-08, 1, -9.67281224e-08, -0.376558483, -7.07111809e-08, -0.926392853)
part.Size = Vector3.new(20, 300, 0.5)
part.Anchored = true
part.Parent = game.Workspace
part.Name = "invpart"
local part = Instance.new("Part")
part.Transparency = 1
part.CFrame = CFrame.new(-25285.459, 597.230408, -8552.96582, -0.362245172, -1.29945533e-07, -0.932082832, -2.52793626e-08, 1, -1.29589566e-07, 0.932082832, -2.33807356e-08, -0.362245172)
part.Size = Vector3.new(20, 300, 0.5)
part.Anchored = true
part.Parent = game.Workspace
part.Name = "invpart"
local part = Instance.new("Part")
part.Transparency = 1
part.CFrame = CFrame.new(-25288.5898, 597.230286, -8564.82129, 0.905744135, 3.73915441e-08, -0.423824906, -4.8602411e-09, 1, 7.78373561e-08, 0.423824906, -6.84408334e-08, 0.905744135)
part.Size = Vector3.new(20, 300, 0.5)
part.Anchored = true
part.Parent = game.Workspace
part.Name = "invpart"
local part = Instance.new("Part")
part.Transparency = 1
part.CFrame = CFrame.new(-25302.0254, 597.230225, -8561.1123, 0.384794533, -1.10002695e-07, 0.923002243, 8.0751601e-09, 1, 1.15812739e-07, -0.923002243, -3.71107163e-08, 0.384794533)
part.Size = Vector3.new(20, 300, 0.5)
part.Anchored = true
part.Parent = game.Workspace
part.Name = "invpart"
for i=0, 3 do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25294.0156, 597.230286, -8559.00391, -0.896095932, 1.55838009e-08, 0.443860382, 2.59980126e-08, 1, 1.73768875e-08, -0.443860382, 2.71108469e-08, -0.896095932)
    task.wait(.5)
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end

game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
    else
        getgenv().autowalk = val
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"W",false,game)
        for _,v in pairs(game.Workspace:GetChildren()) do
            if v.Name == "invpart" then
                v:Destroy()
            end
        end
    end
end)
task.spawn(function()
    while task.wait(1) do
        if getgenv().autowalk then
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
        end
    end
end)
task.spawn(function()
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        if getgenv().autowalk then
            for i=0, 3 do
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-25294.0156, 597.230286, -8559.00391, -0.896095932, 1.55838009e-08, 0.443860382, 2.59980126e-08, 1, 1.73768875e-08, -0.443860382, 2.71108469e-08, -0.896095932)
                game.Players.LocalPlayer.Character.Humanoid.Jump = true
            end
        end
    end)
end)
itemtbl = {}

for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") and not table.find(itemtbl, v.Name) then
        table.insert(itemtbl, v.Name)
    end
end
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Tool") and not table.find(itemtbl, v.Name) then
        table.insert(itemtbl, v.Name)
    end
end

section1:addDropdown("Equip..", itemtbl, function(val)
    getgenv().chosenitm = val
end)

section1:addToggle("Auto Equip", false, function(value)
    getgenv().aew = value
    if value then
        pcall(function()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[tostring(getgenv().chosenitm)])
        end)
    end
end)
task.spawn(function()
    while task.wait(1) do
        if getgenv().aew then
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[tostring(getgenv().chosenitm)])
            end)
        end
    end
end)

task.spawn(function()
    while task.wait(100) do
        if getgenv().tog then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end
end)
