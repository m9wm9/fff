local GameInformation = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealXORA/Roblox/refs/heads/Main/Scripts%20/Utilities%20/Fetch%20Game%20Information.luau", true))()
if not GameInformation.Name:find("Zee Hood") then return end
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealXORA/Roblox/refs/heads/Main/Scripts%20/Anti-Cheats%20Bypassers%20/Adonis.luau", true))()

local OriginalNameCall
OriginalNameCall = hookmetamethod(game, "__namecall", newcclosure(function(Object, ...)
    local Arguments = {...}
    local Method = getnamecallmethod()
    if Method == "FireServer" and Object.Name == "MainRemoteEvent" and Arguments[1] == "Detection" then
        return coroutine.yield()
    end
    return OriginalNameCall(Object, ...)
end))

local Handler = game:FindService("ReplicatedStorage"):WaitForChild("MainModule")
local Module = require(Handler)
Module.Ignored = {
    workspace:WaitForChild("Vehicles"),
    workspace:WaitForChild("MAP"),
    workspace:WaitForChild("Ignored")
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/i77lhm/Libraries/refs/heads/main/Utopia/Library.lua"))()
local LoadingTick = os.clock()
local Window = Library:Window({
    Name = "offset.gg remake",
    GradientTitle = { Enabled = true, Start = Color3.fromRGB(255,255,255), Middle = Color3.new(0.431373, 0.019608, 0.411765), End = Color3.new(0.819608, 0.819608, 0.819608), Speed = 1 }
})
local Watermark = Library:Watermark("offset.gg remake", {"77974153657891", Color3.fromRGB(149,255,139)})
local KeybindList = Library:KeybindList()
Watermark:SetVisibility(false)
KeybindList:SetVisibility(false)

local CombatTab   = Window:Page({Name = "Combat",   Columns = 2})
local MovementTab = Window:Page({Name = "Movement", Columns = 2})
local VisualTab   = Window:Page({Name = "Visual",   Columns = 2})
local MiscTab     = Window:Page({Name = "Misc",     Columns = 2})
local SettingsTab = Window:Page({Name = "Settings", Columns = 2})

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Inset = game:GetService("GuiService"):GetGuiInset().Y

--------------------------------------------------------------------------------
-- MISC TAB: SEMI GOD MODE (Side 1)
--------------------------------------------------------------------------------
local MiscSection = MiscTab:Section({Name = "semi god mode", Side = 1})

local function InstantRespawn()
    replicatesignal(LocalPlayer.ConnectDiedSignalBackend)
    task.wait(Players.RespawnTime - 0.1)
    replicatesignal(LocalPlayer.Kill)
end

local Enabled = false
local RespawnLoop = nil
local PositionTracker = nil
local SavedPosition = nil

local function StartPositionTracking(character)
    if PositionTracker then PositionTracker:Disconnect() end
    local hrp = character:WaitForChild("HumanoidRootPart", 5)
    if not hrp then return end
    PositionTracker = RunService.Heartbeat:Connect(function()
        if Enabled and hrp and hrp.Parent then
            SavedPosition = hrp.CFrame
        end
    end)
end

local function StopPositionTracking()
    if PositionTracker then PositionTracker:Disconnect() PositionTracker = nil end
end

local function StartEndlessRespawnLoop()
    if RespawnLoop then RespawnLoop:Disconnect() end
    RespawnLoop = LocalPlayer.CharacterAdded:Connect(function(character)
        task.spawn(function()
            local hrp = character:WaitForChild("HumanoidRootPart", 10)
            if not hrp then return end
            if Enabled and SavedPosition then
                task.wait(0.25)
                hrp.CFrame = SavedPosition
            end
            if Enabled then
                task.wait(0.5)
                StartPositionTracking(character)
                InstantRespawn()
            end
        end)
    end)
end

MiscSection:Toggle({
    Name = "semi god mode",
    Flag = "semi god mode",
    Default = false,
    Callback = function(state)
        Enabled = state
        if state then
            Library:Notification("semi god mode on", 2, Color3.fromRGB(0, 255, 0))
            local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            StartPositionTracking(char)
            StartEndlessRespawnLoop()
            InstantRespawn()
        else
            Library:Notification("semi god mode off", 2, Color3.fromRGB(255, 100, 100))
            StopPositionTracking()
            if RespawnLoop then RespawnLoop:Disconnect() RespawnLoop = nil end
            SavedPosition = nil
        end
    end
})

--------------------------------------------------------------------------------
-- MISC TAB: FLOSS (Side 2)
--------------------------------------------------------------------------------
local FlossSection = MiscTab:Section({Name = "Floss", Side = 2})

local FlossEnabled = false
local FlossTrack = nil
local FlossConnection = nil
local FlossSpeed = 1

local function playFloss(character)
    if not character then return end
    local humanoid = character:FindFirstChild("Humanoid")
    if not humanoid then return end

    local animator = humanoid:FindFirstChild("Animator") or Instance.new("Animator", humanoid)

    if FlossTrack and FlossTrack.IsPlaying then FlossTrack:Stop() end

    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://10714340543"

    FlossTrack = animator:LoadAnimation(animation)
    FlossTrack.Looped = true
    FlossTrack.Priority = Enum.AnimationPriority.Action
    FlossTrack:Play()
    FlossTrack:AdjustSpeed(FlossSpeed)
end

local function stopFloss()
    if FlossTrack then FlossTrack:Stop() FlossTrack = nil end
    if FlossConnection then FlossConnection:Disconnect() FlossConnection = nil end
end

local function onCharacterAddedForFloss(character)
    if FlossEnabled then task.wait(0.5) playFloss(character) end
end

FlossSection:Toggle({
    Name = "Enable Floss",
    Flag = "Enable Floss",
    Default = false,
    Callback = function(state)
        FlossEnabled = state
        if state then
            Library:Notification("floss on", 2, Color3.fromRGB(255, 215, 0))
            local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            playFloss(char)
            if not FlossConnection then
                FlossConnection = LocalPlayer.CharacterAdded:Connect(onCharacterAddedForFloss)
            end
        else
            Library:Notification("floss off", 2, Color3.fromRGB(255, 100, 100))
            stopFloss()
        end
    end
})

FlossSection:Slider({
    Name = "Floss Speed",
    Flag = "Floss Speed",
    Min = 1,
    Max = 5,
    Default = 1,
    Decimals = 2,
    Callback = function(value)
        FlossSpeed = value
        if FlossTrack and FlossTrack.IsPlaying then FlossTrack:AdjustSpeed(FlossSpeed) end
    end
})

--------------------------------------------------------------------------------
-- MISC TAB: SPINBOT (Side 2)
--------------------------------------------------------------------------------
local SpinbotSection = MiscTab:Section({Name = "Spinbot", Side = 2})

local SpinbotEnabled = false
local SpinbotSpeed = 50
local SpinConnection = nil

local function startSpinbot(character)
    local hrp = character:FindFirstChild("HumanoidRootPart")
    local humanoid = character:FindFirstChild("Humanoid")
    if not hrp or not humanoid then return end

    humanoid.AutoRotate = false
    if SpinConnection then SpinConnection:Disconnect() end

    SpinConnection = RunService.RenderStepped:Connect(function(dt)
        if not SpinbotEnabled or not hrp.Parent then
            if SpinConnection then SpinConnection:Disconnect() end
            return
        end
        hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(SpinbotSpeed) * dt * 60, 0)
    end)
end

local function stopSpinbot()
    if SpinConnection then SpinConnection:Disconnect() SpinConnection = nil end
    local char = LocalPlayer.Character
    if char then
        local humanoid = char:FindFirstChild("Humanoid")
        if humanoid then humanoid.AutoRotate = true end
    end
end

SpinbotSection:Toggle({
    Name = "Spinbot",
    Flag = "Spinbot",
    Default = false,
    Callback = function(state)
        SpinbotEnabled = state
        if state then
            Library:Notification("Spinbot ON", 2, Color3.fromRGB(255, 215, 0))
            local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            startSpinbot(char)
        else
            Library:Notification("Spinbot OFF", 2, Color3.fromRGB(255, 100, 100))
            stopSpinbot()
        end
    end
})

SpinbotSection:Slider({
    Name = "Spin Speed",
    Flag = "Spin Speed",
    Min = 1,
    Max = 100,
    Default = 50,
    Decimals = 1,
    Callback = function(value) SpinbotSpeed = value end
})

LocalPlayer.CharacterAdded:Connect(function(char)
    if SpinbotEnabled then task.wait(0.3) startSpinbot(char) end
end)

--------------------------------------------------------------------------------
-- SILENT AIM + FOV
--------------------------------------------------------------------------------
local SilentCONFIG = {
    Enabled = false,
    HitPart = "Head",
    Prediction = 0.165,
    FOVRadius = 150,
    ShowFOV = false,
    FOVCentered = false
}

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.Name = "SilentFOV"
ScreenGui.ResetOnSpawn = false

local FOVCircle = Instance.new("Frame", ScreenGui)
FOVCircle.Size = UDim2.new(0, SilentCONFIG.FOVRadius * 2, 0, SilentCONFIG.FOVRadius * 2)
FOVCircle.AnchorPoint = Vector2.new(0.5, 0.5)
FOVCircle.BackgroundTransparency = 1

local UICorner = Instance.new("UICorner", FOVCircle)
UICorner.CornerRadius = UDim.new(1, 0)

local UIStroke = Instance.new("UIStroke", FOVCircle)
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 2
UIStroke.Transparency = 0

RunService.Heartbeat:Connect(function()
    if not SilentCONFIG.ShowFOV then FOVCircle.Visible = false return end
    FOVCircle.Visible = true
    FOVCircle.Size = UDim2.new(0, SilentCONFIG.FOVRadius * 2, 0, SilentCONFIG.FOVRadius * 2)
    if SilentCONFIG.FOVCentered then
        local cx, cy = Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2
        FOVCircle.Position = UDim2.new(0, cx, 0, cy)
    else
        local pos = UserInputService:GetMouseLocation()
        FOVCircle.Position = UDim2.new(0, pos.X, 0, pos.Y - 47)
    end
end)

local function GetClosestTarget()
    local closest, closestDist = nil, SilentCONFIG.FOVRadius
    local mousePos = SilentCONFIG.FOVCentered and Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2) or UserInputService:GetMouseLocation()
    for _, player in Players:GetPlayers() do
        if player == LocalPlayer or not player.Character then continue end
        local char = player.Character
        local part = char:FindFirstChild(SilentCONFIG.HitPart)
        local hum = char:FindFirstChild("Humanoid")
        local body = char:FindFirstChild("BodyEffects")
        local ko = body and body:FindFirstChild("K.O")
        local grab = not char:FindFirstChild("GRABBING_CONSTRAINT")
        if part and hum and hum.Health > 0 and body and ko and not ko.Value and grab then
            local sp, onScreen = Camera:WorldToViewportPoint(part.Position)
            if onScreen then
                local dist = (Vector2.new(sp.X, sp.Y) - mousePos).Magnitude
                if dist < closestDist then
                    closestDist = dist
                    closest = part
                end
            end
        end
    end
    return closest
end

local silentOldIndex
silentOldIndex = hookmetamethod(game, "__index", newcclosure(function(self, key)
    if not checkcaller() and self == Mouse and SilentCONFIG.Enabled and (key == "Hit" or key == "Target") then
        local target = GetClosestTarget()
        if target then
            local pred = target.Position + (target.Velocity * SilentCONFIG.Prediction)
            return key == "Hit" and CFrame.new(pred) or target
        end
    end
    return silentOldIndex(self, key)
end))

--------------------------------------------------------------------------------
-- TARGET AIM + TRACER + VIEW LOCK
--------------------------------------------------------------------------------
local TargetAimSection = CombatTab:Section({Name = "Target Aim", Side = 1})
local Target = nil
local Line = Drawing.new("Line")
Line.Thickness = 2
Line.Color = Color3.fromRGB(255, 0, 0)
Line.Visible = false

local viewDied, viewChanged, viewing = nil, nil, nil
local CONFIG = {
    TargetPart = "Head",
    Prediction = 0.135,
    TracerRGB = false,
    Keybind = Enum.KeyCode.Q,
    Enabled = false,
    ViewLock = false,
    TargetAll = false
}

local function getClosest()
    local closest, minDist = nil, math.huge
    local mousePos = Vector2.new(Mouse.X, Mouse.Y + Inset)
    for _, plr in Players:GetPlayers() do
        if plr == LocalPlayer or not plr.Character then continue end
        local root = plr.Character:FindFirstChild("HumanoidRootPart")
        local hum = plr.Character:FindFirstChild("Humanoid")
        local ko = plr.Character:FindFirstChild("BodyEffects") and plr.Character.BodyEffects["K.O"].Value ~= true
        local grab = not plr.Character:FindFirstChild("GRABBING_CONSTRAINT")
        if root and hum and hum.Health > 0 and ko and grab then
            local pos, onScreen = Camera:WorldToViewportPoint(root.Position)
            if onScreen then
                local dist = (Vector2.new(pos.X, pos.Y) - mousePos).Magnitude
                if dist < minDist then minDist = dist closest = plr end
            end
        end
    end
    return closest
end

local function predict(part)
    if not part then return part.Position end
    local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return part.Position end
    local dir = part.Position - hrp.Position
    local time = dir.Magnitude / 1500
    return part.Position + (part.Velocity * time * CONFIG.Prediction)
end

local mt = getrawmetatable(game)
local oldIndex = mt.__index
setreadonly(mt, false)
mt.__index = newcclosure(function(self, key)
    if not checkcaller() and self == Mouse and CONFIG.Enabled and Target and not CONFIG.TargetAll then
        local part = Target.Character and Target.Character:FindFirstChild(CONFIG.TargetPart)
        if part then
            local pred = predict(part)
            if key == "Hit" then return CFrame.new(pred) elseif key == "Target" then return part end
        end
    end
    return oldIndex(self, key)
end)
setreadonly(mt, true)

local function startViewing(plr)
    if not plr or not plr.Character then return end
    if viewDied then viewDied:Disconnect() end
    if viewChanged then viewChanged:Disconnect() end
    viewing = plr
    Camera.CameraSubject = viewing.Character
    Library:Notification("Viewing " .. viewing.DisplayName, 2, Color3.fromRGB(100, 255, 100))
    viewDied = viewing.CharacterAdded:Connect(function()
        repeat task.wait() until viewing.Character and viewing.Character:FindFirstChild("HumanoidRootPart")
        Camera.CameraSubject = viewing.Character
    end)
    viewChanged = Camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
        if viewing and Camera.CameraSubject ~= viewing.Character then
            Camera.CameraSubject = viewing.Character
        end
    end)
end

local function stopViewing()
    if viewDied then viewDied:Disconnect() viewDied = nil end
    if viewChanged then viewChanged:Disconnect() viewChanged = nil end
    viewing = nil
    if LocalPlayer.Character then Camera.CameraSubject = LocalPlayer.Character end
    Library:Notification("Stopped Viewing", 2, Color3.fromRGB(255, 100, 100))
end

--------------------------------------------------------------------------------
-- RAPID FIRE + KILL AURA
--------------------------------------------------------------------------------
local CombatSection = CombatTab:Section({Name = "Rapid Fire", Side = 2})
local isHolding = false
local currentTool = nil
local lastShot = 0
local COOLDOWN = 0.04
local savedAmmoMax = 6
local rapidEnabled = false
local targetAllEnabled = false
local INF_RANGE = 50000

local function makeRaycastParams()
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Blacklist
    local filter = {LocalPlayer.Character}
    for _, folder in ipairs(Module.Ignored) do if folder then table.insert(filter, folder) end end
    params.FilterDescendantsInstances = filter
    return params
end

local function updateTool()
    local char = LocalPlayer.Character
    if not char then return end
    currentTool = nil
    for _, tool in char:GetChildren() do
        if tool:IsA("Tool") and tool:FindFirstChild("Handle") then
            currentTool = tool
            local cd = tool:FindFirstChild("ShootingCooldown")
            if cd and cd:IsA("NumberValue") then COOLDOWN = math.max(cd.Value * 0.5, 0.01) end
            local ammo = tool:FindFirstChild("Ammo")
            if ammo and ammo:IsA("ValueBase") then savedAmmoMax = ammo.Value > 0 and ammo.Value or 6 end
            break
        end
    end
end

LocalPlayer.CharacterAdded:Connect(function(c)
    c.ChildAdded:Connect(updateTool)
    c.ChildRemoved:Connect(function() currentTool = nil end)
    updateTool()
end)
if LocalPlayer.Character then updateTool() end

local function doRaycast(o, d, r)
    local p = makeRaycastParams()
    local res = Workspace:Raycast(o, d * r, p)
    if res then return true, res.Instance, res.Normal, res.Position end
    return false, nil, nil, nil
end

local function fire()
    if not currentTool or not currentTool.Parent then return end
    local handle = currentTool:FindFirstChild("Handle")
    if not handle then return end

    local ammo = currentTool:FindFirstChild("Ammo")
    if ammo and ammo:IsA("ValueBase") then ammo.Value = savedAmmoMax end
    pcall(function()
        local r = Workspace.Players[LocalPlayer.Name].BodyEffects.Reload
        if r then r.Value = false end
    end)

    if tick() - lastShot < COOLDOWN then return end
    lastShot = tick()

    local muzzlePos = (handle.CFrame * CFrame.new(-1, 0.4, 0)).Position
    local targetPart, predicted = nil, nil
    local useTarget = CONFIG.Enabled and Target and not CONFIG.TargetAll
    local useSilent = SilentCONFIG.Enabled

    if useTarget then
        local part = Target.Character:FindFirstChild(CONFIG.TargetPart)
        if part then targetPart = part predicted = predict(part) end
    elseif useSilent then
        targetPart = GetClosestTarget()
        if targetPart then predicted = targetPart.Position + (targetPart.Velocity * SilentCONFIG.Prediction) end
    end

    local direction, finalHitPart, finalNormal, finalPos
    if predicted then
        direction = (predicted - muzzlePos).Unit
        local hit, part, normal, hitPos = doRaycast(muzzlePos, direction, INF_RANGE)
        finalHitPart = part or targetPart
        finalNormal = normal
        finalPos = hitPos or predicted
    else
        direction = (Mouse.Hit.Position - muzzlePos).Unit
        local hit, part, normal, hitPos = doRaycast(muzzlePos, direction, INF_RANGE)
        finalHitPart = part
        finalNormal = normal
        finalPos = hitPos or (muzzlePos + direction * INF_RANGE)
    end

    pcall(function()
        ReplicatedStorage.MainRemotes.MainRemoteEvent:FireServer(
            "ShootGun",
            handle,
            muzzlePos,
            finalHitPart ~= nil,
            finalHitPart,
            finalNormal,
            Workspace:GetServerTimeNow(),
            finalHitPart and finalHitPart.Size or Vector3.new()
        )
    end)

    local beam = Instance.new("Part", Workspace)
    beam.Anchored = true
    beam.CanCollide = false
    beam.Material = Enum.Material.Neon
    beam.Transparency = 0.1
    beam.Size = Vector3.new(0.1, 0.1, (muzzlePos - finalPos).Magnitude)
    beam.CFrame = CFrame.new(muzzlePos, finalPos) * CFrame.new(0, 0, -beam.Size.Z/2)
    beam.Color = useTarget and Color3.fromRGB(0,255,0) or useSilent and Color3.fromRGB(0,255,255) or Color3.new(1, 0.545, 0.149)
    game:GetService("Debris"):AddItem(beam, 0.03)
end

local function fireTargetAll()
    if not currentTool or not currentTool.Parent then return end
    local handle = currentTool:FindFirstChild("Handle")
    if not handle then return end

    local ammo = currentTool:FindFirstChild("Ammo")
    if ammo and ammo:IsA("ValueBase") then ammo.Value = savedAmmoMax end
    pcall(function()
        local r = Workspace.Players[LocalPlayer.Name].BodyEffects.Reload
        if r then r.Value = false end
    end)

    if tick() - lastShot < COOLDOWN then return end
    lastShot = tick()

    local muzzlePos = (handle.CFrame * CFrame.new(-1, 0.4, 0)).Position
    local params = makeRaycastParams()

    local targets = {}
    for _, plr in Players:GetPlayers() do
        if plr == LocalPlayer then continue end
        local char = plr.Character
        if not char then continue end
        local part = char:FindFirstChild(SilentCONFIG.HitPart)
        local hum = char:FindFirstChild("Humanoid")
        local body = char:FindFirstChild("BodyEffects")
        local ko = body and body:FindFirstChild("K.O")
        local grab = not char:FindFirstChild("GRABBING_CONSTRAINT")
        if part and hum and hum.Health > 0 and body and ko and not ko.Value and grab then
            table.insert(targets, {Player = plr, Part = part})
        end
    end

    for _, t in ipairs(targets) do
        task.spawn(function()
            local part = t.Part
            local pred = part.Position + (part.Velocity * SilentCONFIG.Prediction)
            local dir = (pred - muzzlePos).Unit
            local result = Workspace:Raycast(muzzlePos, dir * INF_RANGE, params)
            local hit = result ~= nil
            local hitPart = result and result.Instance
            local normal = result and result.Normal
            local hitPos = result and result.Position
            pcall(function()
                ReplicatedStorage.MainRemotes.MainRemoteEvent:FireServer(
                    "ShootGun",
                    handle,
                    muzzlePos,
                    hit,
                    hitPart or part,
                    normal,
                    Workspace:GetServerTimeNow(),
                    (hitPart or part).Size
                )
            end)

            local beamPos = hitPos or pred
            local dist = (muzzlePos - beamPos).Magnitude
            local beam = Instance.new("Part", Workspace)
            beam.Anchored = true
            beam.CanCollide = false
            beam.Material = Enum.Material.Neon
            beam.Transparency = 0.1
            beam.Color = Color3.fromRGB(255,0,0)
            beam.Size = Vector3.new(0.1, 0.1, dist)
            beam.CFrame = CFrame.new(muzzlePos, beamPos) * CFrame.new(0,0,-dist/2)
            game:GetService("Debris"):AddItem(beam, 0.03)
        end)
    end
end

task.spawn(function()
    while true do
        task.wait(0.0005)
        if not (isHolding and currentTool) then continue end
        if targetAllEnabled then fireTargetAll() elseif rapidEnabled then fire() end
    end
end)

UserInputService.InputBegan:Connect(function(i,gp) if not gp and i.UserInputType == Enum.UserInputType.MouseButton1 then isHolding = true end end)
UserInputService.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then isHolding = false end end)
RunService.Heartbeat:Connect(updateTool)

--------------------------------------------------------------------------------
-- TP WALK (Z)
--------------------------------------------------------------------------------
local MovementSection = MovementTab:Section({Name = "TP Walk", Side = 1})
local tpKeybindEnabled = false
local tpKeybindActive = false
local tpSpeed = 16

MovementSection:Toggle({
    Name = "TP Walk",
    Flag = "TP Walk",
    Default = false,
    Callback = function(v)
        tpKeybindEnabled = v
        if not v then tpKeybindActive = false end
        Library:Notification(v and "TP Walk on" or "TP Walk off", 2, v and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,100,100))
    end
})
MovementSection:Slider({
    Name = "TP Walk Speed",
    Flag = "TP Walk Speed",
    Min = 0,
    Max = 100,
    Default = 16,
    Decimals = 1,
    Callback = function(v) tpSpeed = v end
})
MovementSection:Label("press Z to toggle", "Left")

task.spawn(function()
    while task.wait() do
        if tpKeybindActive then
            local chr = LocalPlayer.Character
            local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
            if chr and hum and hum.MoveDirection.Magnitude > 0 then
                chr:TranslateBy(hum.MoveDirection * tpSpeed * 10 * RunService.Heartbeat:Wait())
            end
        end
    end
end)

--------------------------------------------------------------------------------
-- CAMERA FLY (F)
--------------------------------------------------------------------------------
local FlySection = MovementTab:Section({Name = "cframe fly", Side = 2})
local flyKeybindEnabled = false
local flyKeybindActive = false
local flySpeed = 50
local isFlying = false
local flyConnection = nil

FlySection:Toggle({
    Name = "Fly",
    Flag = "Fly",
    Default = false,
    Callback = function(v)
        flyKeybindEnabled = v
        if not v then flyKeybindActive = false; stopFlying() end
        Library:Notification(v and "Fly on" or "Fly off", 2, v and Color3.fromRGB(0,255,255) or Color3.fromRGB(255,100,100))
    end
})
FlySection:Slider({
    Name = "Fly Speed",
    Flag = "Fly Speed",
    Min = 10,
    Max = 200,
    Default = 50,
    Decimals = 1,
    Callback = function(v) flySpeed = v end
})
FlySection:Label("press F to toggle", "Left")

local function startFlying()
    if isFlying then return end
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChildWhichIsA("Humanoid")
    if not root or not hum then return end
    isFlying = true
    local oldState = hum:GetState()
    root:SetAttribute("OldHumanoidState", oldState)
    hum:ChangeState(Enum.HumanoidStateType.Physics)
    flyConnection = RunService.RenderStepped:Connect(function(delta)
        if not (flyKeybindActive and isFlying and root and root.Parent) then return end
        local cam = Camera
        local moveDir = Vector3.zero
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then moveDir += cam.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then moveDir -= cam.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then moveDir -= cam.CFrame.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then moveDir += cam.CFrame.RightVector end
        if moveDir.Magnitude > 0 then
            moveDir = moveDir.Unit * (flySpeed * delta * 60)
            root.CFrame += moveDir
        end
        local targetRot = CFrame.lookAt(root.Position, root.Position + cam.CFrame.LookVector)
        root.CFrame = root.CFrame:Lerp(targetRot, 0.2)
        root.AssemblyLinearVelocity = Vector3.zero
        root.AssemblyAngularVelocity = Vector3.zero
    end)
    Library:Notification("Fly ON (F)", 2, Color3.fromRGB(0, 255, 255))
end

local function stopFlying()
    if not isFlying then return end
    isFlying = false
    if flyConnection then flyConnection:Disconnect() flyConnection = nil end
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChildWhichIsA("Humanoid")
    if hum and root then
        local oldState = root:GetAttribute("OldHumanoidState")
        hum:ChangeState(oldState or Enum.HumanoidStateType.GettingUp)
    end
    Library:Notification("Fly OFF (F)", 2, Color3.fromRGB(255, 100, 100))
end

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.F then
        if flyKeybindEnabled then
            flyKeybindActive = not flyKeybindActive
            if flyKeybindActive then startFlying() else stopFlying() end
        else
            Library:Notification("enable fly first in the ui", 2, Color3.fromRGB(255, 150, 0))
        end
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    if flyKeybindActive then task.wait(0.5) startFlying() end
end)

--------------------------------------------------------------------------------
-- SPINNING SWASTIKA
--------------------------------------------------------------------------------
local SwastikaSection = VisualTab:Section({Name = "Swastika", Side = 1})
local SpinEnabled = false
local SpinConnection = nil
local PartsAndWelds = {}
local SpinSpeed = 4
local SwastikaColor = Color3.fromRGB(255, 0, 0)
local SwastikaTransparency = 0

local function updatePartColors()
    for _, data in ipairs(PartsAndWelds) do
        if data.part and data.part.Parent then
            data.part.Color = SwastikaColor
            data.part.Transparency = SwastikaTransparency
        end
    end
end

local function createWeldedPart(rootPart, size, positionOffset)
    local part = Instance.new("Part")
    part.Size = size
    part.Color = SwastikaColor
    part.Transparency = SwastikaTransparency
    part.Material = Enum.Material.Neon
    part.Anchored = false
    part.CanCollide = false
    part.CFrame = rootPart.CFrame * CFrame.new(positionOffset)
    part.Parent = workspace
    local weld = Instance.new("Weld")
    weld.Part0 = rootPart
    weld.Part1 = part
    weld.C0 = CFrame.new(positionOffset)
    weld.Parent = part
    return part, weld
end

local function removeSwastika()
    for _, data in ipairs(PartsAndWelds) do if data.part then data.part:Destroy() end end
    PartsAndWelds = {}
    if SpinConnection then SpinConnection:Disconnect() SpinConnection = nil end
end

local function buildSwastika(character)
    removeSwastika()
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end
    local parts = {
        {Vector3.new(0.3, 4, 0.3), Vector3.new(0, 6, 0)},
        {Vector3.new(2, 0.3, 0.3), Vector3.new(-1, 4, 0)},
        {Vector3.new(2, 0.3, 0.3), Vector3.new(1, 8, 0)},
        {Vector3.new(2, 0.3, 0.3), Vector3.new(1, 6, 0)},
        {Vector3.new(0.3, 2, 0.3), Vector3.new(2, 5, 0)},
        {Vector3.new(2, 0.3, 0.3), Vector3.new(-1, 6, 0)},
        {Vector3.new(0.3, 2, 0.3), Vector3.new(-2, 7, 0)},
    }
    for _, p in ipairs(parts) do
        local part, weld = createWeldedPart(rootPart, p[1], p[2])
        table.insert(PartsAndWelds, {weld = weld, offset = p[2], part = part})
    end
    updatePartColors()
    local time = 0
    SpinConnection = RunService.Heartbeat:Connect(function(dt)
        if not SpinEnabled or not rootPart.Parent then removeSwastika() return end
        time += dt
        local angle = time * SpinSpeed
        for _, data in ipairs(PartsAndWelds) do
            local offset = data.offset
            local rotated = CFrame.new(0, offset.Y, 0) * CFrame.Angles(0, angle, 0) * CFrame.new(offset.X, 0, offset.Z)
            data.weld.C0 = rotated
        end
    end)
end

local function onCharacterAdded(char)
    if SpinEnabled then task.wait(1) buildSwastika(char) end
end

SwastikaSection:Toggle({
    Name = "Swastika",
    Flag = "Swastika",
    Default = false,
    Callback = function(v)
        SpinEnabled = v
        if v then
            Library:Notification("Swastika on", 2, Color3.fromRGB(255, 0, 0))
            buildSwastika(LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait())
        else
            Library:Notification("Swastika off", 2, Color3.fromRGB(100, 100, 100))
            removeSwastika()
        end
    end
})

local ColorLabel = SwastikaSection:Label("Swastika Color", "Left")
ColorLabel:Colorpicker({
    Name = "Swastika Color",
    Flag = "Swastika Color",
    Default = Color3.fromRGB(255, 0, 0),
    Transparency = 0,
    Callback = function(color, alpha)
        SwastikaColor = color
        SwastikaTransparency = alpha or 0
        updatePartColors()
    end
})
SwastikaSection:Slider({
    Name = "Spin Speed",
    Flag = "Swastika Spin Speed",
    Min = 0.5,
    Max = 20,
    Default = 4,
    Decimals = 1,
    Callback = function(v) SpinSpeed = v end
})
SwastikaSection:Label("any color", "Left")
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

--------------------------------------------------------------------------------
-- FOV CHANGER
--------------------------------------------------------------------------------
local FOVSection = VisualTab:Section({Name = "FOV Changer", Side = 2})
local FOVEnabled = false
local CustomFOV = 70

FOVSection:Toggle({
    Name = "FOV Changer",
    Flag = "FOV Changer",
    Default = false,
    Callback = function(v)
        FOVEnabled = v
        if v then
            Camera.FieldOfView = CustomFOV
            Library:Notification("FOV set to " .. CustomFOV, 2, Color3.fromRGB(0, 255, 255))
        else
            Camera.FieldOfView = 70
            Library:Notification("FOV reset", 2, Color3.fromRGB(255, 100, 100))
        end
    end
})
FOVSection:Slider({
    Name = "FOV Value",
    Flag = "FOV Value",
    Min = 0,
    Max = 120,
    Default = 70,
    Decimals = 1,
    Callback = function(v)
        CustomFOV = v
        if FOVEnabled then Camera.FieldOfView = v end
    end
})

RunService.RenderStepped:Connect(function()
    if FOVEnabled then Camera.FieldOfView = CustomFOV end
end)

--------------------------------------------------------------------------------
-- NAME ESP
--------------------------------------------------------------------------------
local ESPSection = VisualTab:Section({Name = "Name ESP", Side = 2})

local ESPEnabled = false
local ESPColor = Color3.fromRGB(255, 255, 255)
local ESPCache = {}
local ESPConnection = nil

local function renderNameESP(plr)
    if not plr or ESPCache[plr] then return end
    local text = Drawing.new("Text")
    text.Size = 14
    text.Font = Drawing.Fonts.UI
    text.Outline = true
    text.OutlineColor = Color3.new(0,0,0)
    text.Center = true
    text.Visible = ESPEnabled
    text.Color = ESPColor
    ESPCache[plr] = text
end

local function removeNameESP(plr)
    if ESPCache[plr] then ESPCache[plr]:Remove() ESPCache[plr] = nil end
end

local function clearAllESP()
    for _, txt in pairs(ESPCache) do txt:Remove() end
    ESPCache = {}
end

local function recreateAllESP()
    clearAllESP()
    for _, plr in Players:GetPlayers() do if plr ~= LocalPlayer then renderNameESP(plr) end end
end

local function updateNameESP()
    if not ESPEnabled then return end
    local cam = workspace.CurrentCamera
    local localChar = LocalPlayer.Character
    if not localChar or not localChar:FindFirstChild("HumanoidRootPart") then return end

    for plr, text in pairs(ESPCache) do
        local char = plr.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") or not plr.Parent then
            text.Visible = false
            continue
        end
        local root = char.HumanoidRootPart
        local headPos = root.Position + Vector3.new(0, 3, 0)
        local screenPos, onScreen = cam:WorldToViewportPoint(headPos)
        if onScreen then
            text.Position = Vector2.new(screenPos.X, screenPos.Y)
            text.Text = plr.DisplayName or plr.Name
            text.Color = ESPColor
            text.Visible = true
        else
            text.Visible = false
        end
    end
end

for _, plr in Players:GetPlayers() do if plr ~= LocalPlayer then renderNameESP(plr) end end
Players.PlayerAdded:Connect(function(plr)
    if plr == LocalPlayer then return end
    renderNameESP(plr)
    plr.CharacterAdded:Connect(function()
        task.wait(0.5)
        if ESPCache[plr] and ESPEnabled then ESPCache[plr].Visible = true end
    end)
end)
Players.PlayerRemoving:Connect(removeNameESP)

ESPSection:Toggle({
    Name = "Name ESP",
    Flag = "Name ESP",
    Default = false,
    Callback = function(state)
        ESPEnabled = state
        Library:Notification(state and "Name ESP ON" or "Name ESP OFF", 2, state and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,100,100))
        if state then
            recreateAllESP()
            if not ESPConnection then ESPConnection = RunService.Heartbeat:Connect(updateNameESP) end
        else
            if ESPConnection then ESPConnection:Disconnect() ESPConnection = nil end
            for _, txt in pairs(ESPCache) do txt.Visible = false end
        end
    end
})

local ESPColorLabel = ESPSection:Label("Name Color", "Left")
ESPColorLabel:Colorpicker({
    Name = "Name Color",
    Flag = "Name ESP Color",
    Default = Color3.fromRGB(255, 255, 255),
    Callback = function(val)
        ESPColor = val
        for _, txt in pairs(ESPCache) do txt.Color = val end
    end
})

--------------------------------------------------------------------------------
-- UI + KEYBINDS
--------------------------------------------------------------------------------
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == CONFIG.Keybind and CONFIG.Enabled and not CONFIG.TargetAll then
        if Target then
            Target = nil
            Line.Visible = false
            stopViewing()
            Library:Notification("Target Unlocked", 2, Color3.fromRGB(255, 100, 100))
        else
            Target = getClosest()
            if Target then
                Library:Notification("Locked: " .. Target.DisplayName, 2, Color3.fromRGB(100, 255, 100))
                if CONFIG.ViewLock then startViewing(Target) end
            else
                Library:Notification("No Target", 2, Color3.fromRGB(255, 200, 100))
            end
        end
    end
    if input.KeyCode == Enum.KeyCode.Z then
        if tpKeybindEnabled then
            tpKeybindActive = not tpKeybindActive
            Library:Notification(tpKeybindActive and "TP Walk ON (Z)" or "TP Walk OFF (Z)", 2, tpKeybindActive and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,100,100))
        end
    end
end)

RunService.Heartbeat:Connect(function()
    if not CONFIG.Enabled or CONFIG.TargetAll or not Target or not Target.Character then Line.Visible = false return end
    local part = Target.Character:FindFirstChild(CONFIG.TargetPart)
    if not part then Line.Visible = false return end
    local pred = predict(part)
    local scr, on = Camera:WorldToViewportPoint(pred)
    if on then
        Line.From = Vector2.new(Mouse.X, Mouse.Y + Inset)
        Line.To = Vector2.new(scr.X, scr.Y)
        Line.Color = CONFIG.TracerRGB and Color3.fromHSV(tick()%5/5,1,1) or Color3.fromRGB(255,0,0)
        Line.Visible = true
    else Line.Visible = false end
end)

TargetAimSection:Toggle({Name="Target Aim", Flag="Target Aim", Default=false, Callback=function(v) CONFIG.Enabled=v if not v then Target=nil Line.Visible=false stopViewing() end end})
TargetAimSection:Dropdown({Name="Target Part", Flag="Target Part", Items={"Head","HumanoidRootPart","UpperTorso"}, Default="Head", Callback=function(v) CONFIG.TargetPart=v end})
TargetAimSection:Slider({Name="Prediction", Flag="Prediction", Min=0, Max=19, Default=13.5, Decimals=2, Callback=function(v) CONFIG.Prediction=v/100 end})
TargetAimSection:Toggle({Name="Rainbow Tracer", Flag="Rainbow Tracer", Default=false, Callback=function(v) CONFIG.TracerRGB=v end})
TargetAimSection:Toggle({Name="View Lock", Flag="View Lock", Default=false, Callback=function(v) CONFIG.ViewLock=v end})
TargetAimSection:Label("Keybind: Q", "Left")
TargetAimSection:Toggle({Name="Silent Aim", Flag="Silent Aim", Default=false, Callback=function(v) SilentCONFIG.Enabled=v end})
TargetAimSection:Dropdown({Name="Silent HitPart", Flag="Silent HitPart", Items={"Head","HumanoidRootPart","UpperTorso"}, Default="Head", Callback=function(v) SilentCONFIG.HitPart=v end})
TargetAimSection:Slider({Name="Silent Prediction", Flag="Silent Prediction", Min=0, Max=30, Default=16.5, Decimals=2, Callback=function(v) SilentCONFIG.Prediction=v/100 end})
TargetAimSection:Slider({Name="FOV Radius", Flag="FOV Radius", Min=10, Max=500, Default=150, Decimals=1, Callback=function(v) SilentCONFIG.FOVRadius=v end})
TargetAimSection:Toggle({Name="Show FOV Circle", Flag="Show FOV Circle", Default=false, Callback=function(v) SilentCONFIG.ShowFOV=v end})
TargetAimSection:Toggle({Name="FOV Centered (Center Screen)", Flag="FOV Centered", Default=false, Callback=function(v) SilentCONFIG.FOVCentered=v end})
TargetAimSection:Label("rapid fire works on all", "Left")

CombatSection:Toggle({Name="Rapid Fire", Flag="Rapid Fire", Default=false, Callback=function(v) rapidEnabled=v end})
CombatSection:Toggle({Name="target all", Flag="target all", Default=false, Callback=function(v) targetAllEnabled=v end})
CombatSection:Label("just hold lmb", "Left")

--------------------------------------------------------------------------------
-- SETTINGS TAB: THEMES + CONFIGS (OFFICIAL UTOPIA STYLE)
--------------------------------------------------------------------------------
local ThemesSection = SettingsTab:Section({ Name = "Settings", Side = 1 })
do
    for Index, Value in Library.Theme do
        Library.ThemeColorpickers[Index] = ThemesSection:Label(Index, "Left"):Colorpicker({
            Name = Index,
            Flag = "Theme" .. Index,
            Default = Value,
            Callback = function(Value)
                Library.Theme[Index] = Value
                Library:ChangeTheme(Index, Value)
            end
        })
    end
    ThemesSection:Dropdown({Name = "Themes list", Items = {"Default", "Bitchbot", "Onetap", "Aqua"}, Default = "Default", Callback = function(Value)
        local ThemeData = Library.Themes[Value]
        if not ThemeData then return end
        for Index, V in Library.Theme do
            Library.Theme[Index] = ThemeData[Index]
            Library:ChangeTheme(Index, ThemeData[Index])
            Library.ThemeColorpickers[Index]:Set(ThemeData[Index])
        end
        task.wait(0.3)
        Library:Thread(function()
            for Index, Value in Library.Theme do
                Library.Theme[Index] = Library.Flags["Theme"..Index].Color
                Library:ChangeTheme(Index, Library.Flags["Theme"..Index].Color)
            end
        end)
    end})

    local ThemeName
    local SelectedTheme
    local ThemesListbox = ThemesSection:Listbox({ Name = "Themes List", Flag = "Themes List", Items = {}, Multi = false, Default = nil, Callback = function(v) SelectedTheme = v end })
    ThemesSection:Textbox({ Name = "Name", Flag = "Theme Name", Default = "", Placeholder = ". . .", Callback = function(v) ThemeName = v end })
    ThemesSection:Button({
        Name = "Save Theme",
        Callback = function()
            if ThemeName == "" then return end
            if not isfile(Library.Folders.Themes .. "/" .. ThemeName .. ".json") then
                writefile(Library.Folders.Themes .. "/" .. ThemeName .. ".json", Library:GetTheme())
                Library:RefreshThemeList(ThemesListbox)
            else
                Library:Notification("Theme '" .. ThemeName .. ".json' already exists", 3, Color3.fromRGB(255, 0, 0))
            end
        end
    }):SubButton({
        Name = "Load Theme",
        Callback = function()
            if SelectedTheme then
                Library:LoadTheme(readfile(Library.Folders.Themes .. "/" .. SelectedTheme))
            end
        end
    })
    ThemesSection:Button({ Name = "Refresh Themes", Callback = function() Library:RefreshThemeList(ThemesListbox) end })
    Library:RefreshThemeList(ThemesListbox)
end

local ConfigsSection = SettingsTab:Section({ Name = "Configs", Side = 2 })
do
    local ConfigName
    local SelectedConfig
    local ConfigsListbox = ConfigsSection:Listbox({ Name = "Configs list", Flag = "Configs List", Items = {}, Multi = false, Default = nil, Callback = function(v) SelectedConfig = v end })
    ConfigsSection:Textbox({ Name = "Name", Flag = "Config Name", Default = "", Placeholder = ". . .", Callback = function(v) ConfigName = v end })

    ConfigsSection:Button({
        Name = "Load Config",
        Callback = function()
            if not SelectedConfig then return end
            Library:LoadConfig(readfile(Library.Folders.Configs .. "/" .. SelectedConfig))

            -- Re-apply cheat logic after UI is restored
            rapidEnabled      = Library.Flags["Rapid Fire"] or false
            targetAllEnabled  = Library.Flags["target all"] or false
            CONFIG.Enabled    = Library.Flags["Target Aim"] or false
            SilentCONFIG.Enabled = Library.Flags["Silent Aim"] or false
            CONFIG.TargetPart = Library.Flags["Target Part"] or "Head"
            SilentCONFIG.HitPart = Library.Flags["Silent HitPart"] or "Head"
            CONFIG.Prediction = (Library.Flags["Prediction"] or 13.5)/100
            SilentCONFIG.Prediction = (Library.Flags["Silent Prediction"] or 16.5)/100
            SilentCONFIG.FOVRadius = Library.Flags["FOV Radius"] or 150
            SilentCONFIG.ShowFOV = Library.Flags["Show FOV Circle"] or false
            SilentCONFIG.FOVCentered = Library.Flags["FOV Centered"] or false
            CONFIG.TracerRGB = Library.Flags["Rainbow Tracer"] or false
            CONFIG.ViewLock = Library.Flags["View Lock"] or false

            Enabled = Library.Flags["semi god mode"] or false
            if Enabled then
                local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                StartPositionTracking(char); StartEndlessRespawnLoop(); InstantRespawn()
            else
                StopPositionTracking()
                if RespawnLoop then RespawnLoop:Disconnect() RespawnLoop = nil end
                SavedPosition = nil
            end

            SpinEnabled = Library.Flags["Swastika"] or false
            if SpinEnabled then buildSwastika(LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()) else removeSwastika() end

            FlossEnabled = Library.Flags["Enable Floss"] or false
            if FlossEnabled then
                local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                playFloss(char)
                if not FlossConnection then FlossConnection = LocalPlayer.CharacterAdded:Connect(onCharacterAddedForFloss) end
            else stopFloss() end

            SpinbotEnabled = Library.Flags["Spinbot"] or false
            if SpinbotEnabled then
                local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                startSpinbot(char)
            else stopSpinbot() end

            tpKeybindEnabled = Library.Flags["TP Walk"] or false
            flyKeybindEnabled = Library.Flags["Fly"] or false
            FOVEnabled = Library.Flags["FOV Changer"] or false
            if FOVEnabled then Camera.FieldOfView = Library.Flags["FOV Value"] or 70 end

            Watermark:SetVisibility(Library.Flags["Watermark"] or false)
            KeybindList:SetVisibility(Library.Flags["Keybind List"] or false)
        end
    }):SubButton({
        Name = "Save Config",
        Callback = function()
            if SelectedConfig then Library:SaveConfig(SelectedConfig) end
        end
    })

    ConfigsSection:Button({
        Name = "Create Config",
        Callback = function()
            if ConfigName == "" then return end
            if not isfile(Library.Folders.Configs .. "/" .. ConfigName .. ".json") then
                writefile(Library.Folders.Configs .. "/" .. ConfigName .. ".json", Library:GetConfig())
                Library:RefreshConfigsList(ConfigsListbox)
            else
                Library:Notification("Config '" .. ConfigName .. ".json' already exists", 3, Color3.fromRGB(255, 0, 0))
            end
        end
    }):SubButton({
        Name = "Delete Config",
        Callback = function()
            if SelectedConfig then
                Library:DeleteConfig(SelectedConfig)
                Library:RefreshConfigsList(ConfigsListbox)
            end
        end
    })

    ConfigsSection:Button({ Name = "Refresh Configs", Callback = function() Library:RefreshConfigsList(ConfigsListbox) end })
    Library:RefreshConfigsList(ConfigsListbox)

    ConfigsSection:Label("Menu Keybind", "Left"):Keybind({
        Name = "Menu Keybind",
        Flag = "Menu Keybind",
        Default = Enum.KeyCode.RightControl,
        Mode = "Toggle",
        Callback = function(v) Library.MenuKeybind = Library.Flags["Menu Keybind"].Key end
    })
    ConfigsSection:Toggle({Name = "Watermark", Flag = "Watermark", Default = false, Callback = function(v) Watermark:SetVisibility(v) end})
    ConfigsSection:Toggle({Name = "Keybind List", Flag = "Keybind List", Default = false, Callback = function(v) KeybindList:SetVisibility(v) end})
    ConfigsSection:Dropdown({Name = "Style", Flag = "Tweening Style", Default = "Exponential", Items = {"Linear","Sine","Quad","Cubic","Quart","Quint","Exponential","Circular","Back","Elastic","Bounce"}, Callback = function(v) Library.Tween.Style = Enum.EasingStyle[v] end})
    ConfigsSection:Dropdown({Name = "Direction", Flag = "Tweening Direction", Default = "Out", Items = {"In","Out","InOut"}, Callback = function(v) Library.Tween.Direction = Enum.EasingDirection[v] end})
    ConfigsSection:Slider({Name = "Tweening Time", Flag = "Tweening Time", Minrophies = 0, Max = 5, Default = 0.25, Decimals = 0.01, Callback = function(v) Library.Tween.Time = v end})
    ConfigsSection:Button({Name = "Notification test", Callback = function() Library:Notification("Test",5,Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))) end})
    ConfigsSection:Button({Name = "Unload library", Callback = function() Library:Unload() end})
end

Library:Notification("offset.gg remake " .. string.format("%.4f", os.clock() - LoadingTick) .. "s", 6, Color3.fromRGB(0,255,0))
