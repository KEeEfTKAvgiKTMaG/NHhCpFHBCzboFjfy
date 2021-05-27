local char=workspace[game.Players.LocalPlayer.Name]
local val1=1
local val2=1
local HumanDied=false
if char.Humanoid.RigType==Enum.HumanoidRigType.R6 then
setfflag("AbuseReportScreenshotPercentage", 0)
setfflag("DFFlagAbuseReportScreenshot", "False")
setfflag("DFStringCrashPadUploadToBacktraceToBacktraceBaseUrl", "")
setfflag("DFIntCrashUploadToBacktracePercentage", "0")
setfflag("DFStringCrashUploadToBacktraceBlackholeToken", "")
setfflag("DFStringCrashUploadToBacktraceWindowsPlayerToken", "")
spawn(function()
    while true do
        game:GetService("RunService").Heartbeat:Wait()
        getgenv().isPrimaryOwner=true;
        game.Players.LocalPlayer.ReplicationFocus=game.Workspace;
        settings().Physics.PhysicsEnvironmentalThrottle=Enum.EnviromentalPhysicsThrottle.Disabled;
        settings().Physics.ThrottleAdjustTime=math.huge/9e10;
        settings().Physics.AllowSleep=false;
    end
end)
local hatnameclone={}
for _,v in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if v:IsA("Accessory") then
		if hatnameclone[v.Name] then
			if hatnameclone[v.Name]=="s" then
				hatnameclone[v.Name]={}
			end
			table.insert(hatnameclone[v.Name],v)
		else
			hatnameclone[v.Name]="s"
		end
	end
end
for _,v in pairs(hatnameclone) do
	if type(v)=="table" then
		local num=1
		for _,w in pairs(v) do
			w.Name=w.Name..num
			num=num + 1
		end
	end
end
hatnameclone=nil
if game.PlaceId==2041312716 then
	char:FindFirstChild("FirstPerson"):Destroy()
	char:FindFirstChild("Local Ragdoll"):Destroy()
	char:FindFirstChild("Controls"):Destroy()

	for _,RagdollConstraint in pairs(char:GetChildren()) do
		if RagdollConstraint:IsA("BallSocketConstraint") or RagdollConstraint:IsA("HingeConstraint") then
			RagdollConstraint:Destroy()
		end
	end
end
	function Align(Part0,Part1,S)
		local AlignPos=Instance.new('AlignPosition', Part1); AlignPos.Name="AliP_"..val2
		AlignPos.ApplyAtCenterOfMass=true;
		AlignPos.MaxForce=9999999;
		AlignPos.MaxVelocity=math.huge/9e110;
		AlignPos.ReactionForceEnabled=false;
		AlignPos.Responsiveness=200;
		AlignPos.RigidityEnabled=false;
		local AlignOri=Instance.new('AlignOrientation', Part1); AlignOri.Name="AliO_"..val2
		AlignOri.MaxAngularVelocity=math.huge/9e110;
		AlignOri.MaxTorque=9999999;
		AlignOri.PrimaryAxisOnly=false;
		AlignOri.ReactionTorqueEnabled=false;
		AlignOri.Responsiveness=200;
		AlignOri.RigidityEnabled=false;
		local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name="Ath_"..val2
		local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name="Ath_"..val2
		AttachmentA.Orientation=Vector3.new(0,0,0)
		AttachmentA.Position=Vector3.new(0,0,0)
		AlignPos.Attachment1=AttachmentA;
		AlignPos.Attachment0=AttachmentB;
		AlignOri.Attachment1=AttachmentA;
		AlignOri.Attachment0=AttachmentB;
		Part0.Velocity=Vector3.new(19.9941, 0, 19.9941)
		Part0.RotVelocity=Vector3.new(0, 25, 0)
		val2=val2 + 1
		return {AlignPos,AlignOri,AttachmentA,AttachmentB}
	end
game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable=true
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity=Vector3.new(19.9941, 0, 19.9941)
v.RotVelocity=Vector3.new(0, 25, 0)
v.CanCollide=false
v.Massless=false
end)
end
end
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("Accessory") then 
game:GetService("RunService").Heartbeat:connect(function()
v.Handle.Velocity=Vector3.new(19.9941, 0, 19.9941)
v.Handle.RotVelocity=Vector3.new(0, 25, 0)
v.Handle.CanCollide=false
v.Handle.Massless=true
end)
end
end
local DeadChar=game:FindFirstChildOfClass("Players").LocalPlayer.Character
local fldr=Instance.new("Folder",game:FindFirstChildOfClass("Players").LocalPlayer["Character"])
fldr.Name="Dummy"
local CloneChar=DeadChar:Clone()
if CloneChar:FindFirstChildOfClass("Folder") then CloneChar:FindFirstChildOfClass("Folder"):Destroy() end
if CloneChar.Torso:FindFirstChild("Neck") then
	local FakeNeck=CloneChar.Torso:FindFirstChild("Neck"):Clone()
	FakeNeck.Part0=nil
	FakeNeck.Part1=DeadChar.Head
	FakeNeck.Parent=DeadChar.Torso
end
CloneChar.Parent=fldr
CloneChar.HumanoidRootPart.CFrame=DeadChar.HumanoidRootPart.CFrame
CloneChar.Humanoid.BreakJointsOnDeath=true
CloneChar.Name="Dummy"
CloneChar.Humanoid.DisplayDistanceType="None"
for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		local topacc=false
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		v.Handle.Massless=true
		v.Handle.CanCollide=false
		Align(v.Handle,CloneChar[v.Name].Handle)
	end
end
local a=DeadChar.Torso local b=DeadChar.HumanoidRootPart local c=DeadChar.Humanoid a.Parent=game:FindFirstChildOfClass("Workspace")c.Parent=game:FindFirstChildOfClass("Workspace")local told=a:Clone()local told1=c:Clone()b["RootJoint"].Part0=told b["RootJoint"].Part1=DeadChar.Head a.Name="torso"a.Neck:Destroy()told.Parent=DeadChar told1.Parent=DeadChar DeadChar.PrimaryPart=told told1.Health=0 b:Destroy()a.Parent=DeadChar c.Parent=DeadChar told:Destroy()told1:Destroy()a.Name="Torso"
if CloneChar.Head:FindFirstChildOfClass("Decal") then CloneChar.Head:FindFirstChildOfClass("Decal").Transparency=1 end
local Collider
function UnCollide()
    if HumanDied then Collider:Disconnect(); return end
    for _,Parts in next, DeadChar:GetChildren() do
        if Parts:IsA("Part") then
        Parts.CanCollide=false
        end 
    end 
end
Collider=game:GetService("RunService").Stepped:Connect(UnCollide)
local resetBindable=Instance.new("BindableEvent")
resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
	resetBindable:Destroy()
	HumanDied=true
    pcall(function()
		CloneChar:Destroy()
		pcall(function()
			game:FindFirstChildOfClass("Players").LocalPlayer.Character=DeadChar
			DeadChar.Head:Destroy()
			DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
			game:FindFirstChildOfClass("Players").LocalPlayer.Character=CloneChar
			if DeadChar:FindFirstChildOfClass("Folder") then
				DeadChar:FindFirstChildOfClass("Folder"):Destroy()
			end
		end)
	end)
end)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)
coroutine.wrap(function()
    while true do
        game:GetService("RunService").RenderStepped:wait()
        if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChildOfClass("Humanoid") or CloneChar:FindFirstChildOfClass("Humanoid").Health <= 0 and not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChildOfClass("Humanoid") or DeadChar:FindFirstChildOfClass("Humanoid").Health <= 0 then 
	HumanDied=true
            pcall(function()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character=DeadChar
				DeadChar.Head:Destroy()
				DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
				DeadChar:BreakJoints()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character=CloneChar
				if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
			end)
            if resetBindable then
                game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
                resetBindable:Destroy()
            end
            break
        end		
    end
end)()
Align(DeadChar["Right Leg"],CloneChar["Right Leg"],1)
Align(DeadChar["Head"],CloneChar["Head"],1)
Align(DeadChar["Torso"],CloneChar["Torso"],1)
Align(DeadChar["Left Arm"],CloneChar["Left Arm"],1)
Align(DeadChar["Right Arm"],CloneChar["Right Arm"],1)
Align(DeadChar["Left Leg"],CloneChar["Left Leg"],1)
Align(DeadChar["Right Leg"],CloneChar["Right Leg"],1)
for _,v in pairs(DeadChar:GetChildren()) do
	if v:IsA("BasePart") and v.Name ~= "Head" then
	elseif v:IsA("BasePart") and v.Name=="Head" then
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame=DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)
			end
		end)()
	end
end
for _,BodyParts in next, CloneChar:GetDescendants() do
if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
BodyParts.Transparency=1 end end
game:GetService("RunService").RenderStepped:wait()
game:FindFirstChildOfClass("Players").LocalPlayer.Character=CloneChar
game:FindFirstChildOfClass("Workspace"):FindFirstChildOfClass("Camera").CameraSubject=CloneChar.Humanoid
for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		if v.Handle:FindFirstChildOfClass("AccessoryWeld") then v.Handle:FindFirstChildOfClass("AccessoryWeld"):Destroy() end
		if v.Handle:FindFirstChildOfClass("BodyBackAttachment") then v.Handle:FindFirstChildOfClass("BodyBackAttachment"):Destroy() end
	end
end
workspace.FallenPartsDestroyHeight=0/0
local char=workspace[game.Players.LocalPlayer.Name]
local v=char.Torso
for _,v in pairs(v:GetChildren()) do
    if v:IsA("Attachment") and not string.find(v.Name:lower(),"attachment") then
        v:Destroy()
    end
end
local c=char.Dummy.Dummy.Torso
local ath=Instance.new("Attachment",c)
ath.Name="nil"
coroutine.wrap(function()
    local con
    local function tpmeyes()
        v.CanCollide=false
        v.CFrame=c.CFrame
    end
    con=game["Run Service"].Heartbeat:connect(tpmeyes)
end)()
workspace.FallenPartsDestroyHeight=0/0
local char=workspace[game.Players.LocalPlayer.Name]
local v=char["Right Arm"]
for _,v in pairs(v:GetChildren()) do
    if v:IsA("Attachment") and not string.find(v.Name:lower(),"attachment") then
        v:Destroy()
    end
end
local c=char.Dummy.Dummy["Right Arm"]
local ath=Instance.new("Attachment",c)
ath.Name="nil"
coroutine.wrap(function()
    local con
    local function tpmeyes()
        v.CanCollide=false
        v.CFrame=c.CFrame
    end
    con=game["Run Service"].Heartbeat:connect(tpmeyes)
end)()
workspace.FallenPartsDestroyHeight=0/0
local char=workspace[game.Players.LocalPlayer.Name]
local v=char["Left Arm"]
for _,v in pairs(v:GetChildren()) do
    if v:IsA("Attachment") and not string.find(v.Name:lower(),"attachment") then
        v:Destroy()
    end
end
local c=char.Dummy.Dummy["Left Arm"]
local ath=Instance.new("Attachment",c)
ath.Name="nil"
coroutine.wrap(function()
    local con
    local function tpmeyes()
        v.CanCollide=false
        v.CFrame=c.CFrame
    end
    con=game["Run Service"].Heartbeat:connect(tpmeyes)
end)()
workspace.FallenPartsDestroyHeight=0/0
local char=workspace[game.Players.LocalPlayer.Name]
local v=char["Left Leg"]
for _,v in pairs(v:GetChildren()) do
    if v:IsA("Attachment") and not string.find(v.Name:lower(),"attachment") then
        v:Destroy()
    end
end
local c=char.Dummy.Dummy["Left Leg"]
local ath=Instance.new("Attachment",c)
ath.Name="nil"
coroutine.wrap(function()
    local con
    local function tpmeyes()
        v.CanCollide=false
        v.CFrame=c.CFrame
    end
    con=game["Run Service"].Heartbeat:connect(tpmeyes)
end)()
workspace.FallenPartsDestroyHeight=0/0
local char=workspace[game.Players.LocalPlayer.Name]
local v=char["Right Leg"]
for _,v in pairs(v:GetChildren()) do
    if v:IsA("Attachment") and not string.find(v.Name:lower(),"attachment") then
        v:Destroy()
    end
end
local c=char.Dummy.Dummy["Right Leg"]
local ath=Instance.new("Attachment",c)
ath.Name="nil"
coroutine.wrap(function()
    local con
    local function tpmeyes()
        v.CanCollide=false
        v.CFrame=c.CFrame
    end
    con=game["Run Service"].Heartbeat:connect(tpmeyes)
end)()
local Character=game.Players.LocalPlayer.Character
	if Character:FindFirstChild("Animate") then
		Character:FindFirstChild("Animate"):Destroy()
		wait()
		for _,AnimationTrack in pairs(Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks()) do
			AnimationTrack:Stop()
		end
	end
local char=workspace[game.Players.LocalPlayer.Name]
for i,hat1 in pairs(char:GetChildren()) do
	if hat1.ClassName=="Accessory" then
		workspace.FallenPartsDestroyHeight=0/0
		local v=hat1.Handle
		for _,v in pairs(v:GetChildren()) do
			if v:IsA("Attachment") and not string.find(v.Name:lower(),"attachment") then
				v:Destroy()
			end
		end
	for i,hat2 in pairs(char.Dummy.Dummy:GetChildren()) do
		if hat2.Name==hat1.Name then
		local c=hat2.Handle
		local ath=Instance.new("Attachment",c)
		ath.Name="nil"
		coroutine.wrap(function()
			local con
			local function tpmeyes()
				v.CanCollide=false
				v.CFrame=c.CFrame
			end
			con=game["Run Service"].Heartbeat:connect(tpmeyes)
		end)()
	end
	end
	end
end
local ScreenGui=Instance.new("ScreenGui")
local logo=Instance.new("ImageLabel")
ScreenGui.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
logo.Name="logo"
logo.Parent=ScreenGui
logo.BackgroundColor3=Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency=1.000
logo.Position=UDim2.new(0.368705608, 0, 0.253472179, 0)
logo.Size=UDim2.new(0, 359, 0, 279)
logo.Image="http://www.roblox.com/asset/?id=6871095379"
logo.ScaleType=Enum.ScaleType.Fit
local function ERPLR_fake_script()
	local script=Instance.new('LocalScript', logo)
	script.Parent.Parent.logo.ImageTransparency=0.9
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.8
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.7
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.6
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.5
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.4
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.3
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.2
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.1
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0
	wait(2)
	script.Parent.Parent.logo.ImageTransparency=0.1
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.2
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.3
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.4
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.5
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.6
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.7
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.8
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=0.9
	wait(0.025)
	script.Parent.Parent.logo.ImageTransparency=1
	script.Parent.Parent.logo.Active=false
	wait(0.5)
end
coroutine.wrap(ERPLR_fake_script)()
else
	game.StarterGui:SetCore("SendNotification", {
		Title="Nico's Reanimate.";
		Text="R15 Isn't supported yet!";
		Icon="rbxthumb://type=Asset&id=0&w=150&h=150";
		Duration=5;
	})
end
