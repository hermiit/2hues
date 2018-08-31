--// Services
local uis = game:GetService("UserInputService")
local debris = game:GetService("Debris")
local CProvide = game:GetService("ContentProvider")

--// Variables
local root = script.Parent.Parent
local models = root:WaitForChild("Models")
local staff = models:WaitForChild("Maristaff2")
local plr = game.Players.LocalPlayer
local char = workspace:WaitForChild(plr.Name)

--/ Global
cool = math.rad
sine = math.sin
rand = math.random

ssub = string.sub
gsub = string.gsub
sfor = string.format


--/ Loading
local assetfldr = root:WaitForChild("Assets")
local assets = assetfldr:GetDescendants()
CProvide:PreloadAsync(assets)
print(sfor("Assets loaded for %s",plr.Name))

--// Remotes
local remotepath = root:WaitForChild("Remotes")
local initremote = remotepath:WaitForChild("WeldRemote")

--// Main
local armw = char:WaitForChild("Right Arm")
initremote:FireServer(armw,staff.Handle)
local armjoint = armw:WaitForChild("StaffJoint")