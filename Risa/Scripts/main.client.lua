--// Services
local uis = game:GetService("UserInputService")
local debris = game:GetService("Debris")
local CProvide = game:GetService("ContentProvider")

--// Variables
local root = script.Parent.Parent
local models = root:WaitForChild("Models")
local staff = models:WaitForChild("Maristaff2")

--/ Player
local plr = game.Players.LocalPlayer
local char = workspace:WaitForChild(plr.Name)
local hum = char:WaitForChild("Humanoid")

local function plrinit()
   hum.WalkSpeed = 26
   hum.JumpPower = 65
end

plrinit()

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

--// Animations
local anims = assetfldr:WaitForChild("Animations")
local idleU = hum:LoadAnimation(anims:WaitForChild("idle(U)"))
local Xcharge = hum:LoadAnimation(anims:WaitForChild("shotcharge"))

--// Remotes
local remotepath = root:WaitForChild("Remotes")
local initremote = remotepath:WaitForChild("WeldRemote")

--// Functions
animfuncs = {
   moveyobody = function(spd)
      if spd < 0.05 then
         idleU:Play()
      else
         idleU:Stop()
      end
   end
}
--// Main
local armw = char:WaitForChild("Right Arm")
initremote:FireServer(armw,staff.Handle)
local armjoint = armw:WaitForChild("StaffJoint")

hum.Running:Connect(goodfuncs["moveyobody"])