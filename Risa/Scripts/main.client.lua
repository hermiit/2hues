--// Services
local uis = game:GetService("UserInputService")
local debris = game:GetService("Debris")

--// Variables
local root = script.Parent.Parent
local models = root:WaitForChild("Models")
local staff = models:WaitForChild("mari2")
local plr = game.Players.LocalPlayer
local char = workspace:WaitForChild(plr.Name)

--// Remotes
local remotepath = root:WaitForChild("Remotes")
local initremote = remotepath:WaitForChild("WeldRemote")

--// Main
local armw = char:WaitForChild("Right Arm")
initremote:FireServer(armw,staff.Handle)
local armjoint = armw:WaitForChild("StaffJoint")