--// Remotes
local remotepath = root:WaitForChild("Remotes")
local togremote = remotepath:WaitForChild("ToggleRemote")
local initremote = remotepath:WaitForChild("WeldRemote")


initremote.OnServerEvent:Connect(function(plr,arm,hand)
   local motor = Instance.new("Motor6D")
   motor.C0 = CFrame.new(
      0, 0, 0,
      1, 0, 0,
      0, 1, 0, 
      0, 0, 1
   )
   motor.C1 = CFrame.new(
      -1.47819519e-05, 0, -0.999879837,
      1.19248718e-08, -1.98485013e-05, -1,
      1, 8.7945398e-16, 1.19248718e-08,
      -2.3581137e-13, -1, 1.98485013e-05
   )
   motor.Part0 = arm
   motor.Part1 = hand
   motor.Name = "StaffJoint"
   motor.Parent = arm
end)