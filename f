local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


do
    local GameInformation = loadstring(game:HttpGet(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('jbqDaIyRaODRJWAsfsQhBncApVAFYSNHBREiUZnIzalXVrIjsiqwNXPaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1RoZVJlYWxYT1JBL1JvYmxveC9yZWZzL2hlYWRzL01haW4vU2NyaXB0cyUyMC9VdGlsaXRpZXMlMjAvRmV0Y2glMjBHYW1lJTIwSW5mb3JtYXRpb24ubHVhdQ=='), true))()
    if not GameInformation.Name:find(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ZhubxccavhnCUMdyuDLWAMnWNneKSSSmaEAfUznGcCQoRFUwtKxamnKWmVlIEhvb2Q=')) then return end
    loadstring(game:HttpGet(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('FrEuBxQpDbrfaBDTVLnkQRycNrkAOBKfCXdTdlmxWvniUmYuYQRXmXfaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1RoZVJlYWxYT1JBL1JvYmxveC9yZWZzL2hlYWRzL01haW4vU2NyaXB0cyUyMC9BbnRpLUNoZWF0cyUyMEJ5cGFzc2VycyUyMC9BZG9uaXMubHVhdQ=='), true))()
    local OriginalNameCall
    OriginalNameCall = hookmetamethod(game, JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('XIDDLeSMaewuWPuHoKnqZkrYQeMzVzNuiqDfncMKglYovBZjgRwplijX19uYW1lY2FsbA=='), newcclosure(function(Object, ...)
        local Arguments = {...}
        local Method = getnamecallmethod()
        if Method == JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('gTJqyOOFjjXrBvtZmjhUcrKXUehtwGHDXaERmVhQGuoiOZaeVGUzOMCRmlyZVNlcnZlcg==') and Object.Name == JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('riGBiQADJoTjuOqTYmyMHjijxXdmxyLCDUDSlKeBcyamZeUSbqmmPerTWFpblJlbW90ZUV2ZW50') and Arguments[1] == JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('geXUPmjBGIMDYMcnuUgJbcXApSLhqBJYKwKKlxURYybHZEXYxwdCfHoRGV0ZWN0aW9u') then
            return coroutine.yield()
        end
        return OriginalNameCall(Object, ...)
    end))
end
local Handler = game:FindService(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ogVEUzrvqlmCsSXQGECTXwVodCSNZKOTGUsMjPjVEhmtGZWlTKYyXfKUmVwbGljYXRlZFN0b3JhZ2U=')):WaitForChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('EDvKRdIhnmVNaoCIyyPWFdptwfjeoFEAHAfVckleqCYunMizIiloljkTWFpbk1vZHVsZQ=='))
local Module = require(Handler)
Module.Ignored = {
    workspace:WaitForChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('lqAeSVCPICLgjgIxkSXXXSzvHpldYwgQdmBAuEFAnVTCTSWjsgFNgNJVmVoaWNsZXM=')),
    workspace:WaitForChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('RmoWsGPBxBPgiHttelfjvxVWBsXEMaFVGjYBTGelIVSIblkzCCqvayhTUFQ')),
    workspace:WaitForChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ByozZbuHdDiutAfLIkPVNOZTlwqLQjIdpZzGslBwkmHKCrpFbOhwzGMSWdub3JlZA=='))
}
local Library = loadstring(game:HttpGet(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('CslUymrNVRembdNqupGqClWEeAftueRPlZFJPvByZDVxfTIKHFJNHCkaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2k3N2xobS9MaWJyYXJpZXMvcmVmcy9oZWFkcy9tYWluL1V0b3BpYS9MaWJyYXJ5Lmx1YQ==')))()
local LoadingTick = os.clock()
local Window = Library:Window({
    Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('YmJeJshxGBbNCCvBTiYUOouCNvuNhAkGVafMiKgjnyhNuhuacCRGPhJb2Zmc2V0LmdnIHJlbWFrZQ=='),
    GradientTitle = { Enabled = true, Start = Color3.fromRGB(255,255,255), Middle = Color3.new(0.431373, 0.019608, 0.411765), End = Color3.new(0.819608, 0.819608, 0.819608), Speed = 1 }
})
local Watermark = Library:Watermark(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('GvHuLYygLXZyIBdVYUMrPESwGatRkzYXRheRqgqNWRUabiyKoVsraNIb2Zmc2V0LmdnIHJlbWFrZQ=='), {JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('CKahmZvKjSCUWOwlvTBFvAzDPvIDaBVvvlhDmqkYQpWsnowbJyxvUjoNzc5NzQxNTM2NTc4OTE='), Color3.fromRGB(149,255,139)})
local KeybindList = Library:KeybindList()
Watermark:SetVisibility(false)
KeybindList:SetVisibility(false)
local CombatTab = Window:Page({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('oxLgXsDlYEmMHRvwtsZPyyamMILytsITAfVotBPzxRuNaZGeLCJRplHQ29tYmF0'), Columns = 2})
local MovementTab = Window:Page({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('CoJxgtTWEZFrpAJKUVThPfxbetXpSfdqlHLxiSYuYNicywgHepAhjowTW92ZW1lbnQ='), Columns = 2})
local VisualTab = Window:Page({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('KQgaUWSyCFkneUPdQpxwQvxiOFbiWriyQxOKWKfAJWXXRlLmJBsFojUVmlzdWFs'), Columns = 2})
local MiscTab = Window:Page({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('OPwKzQguJWIzJujSOjxiFzvJfuIwjtcaIqyxLDocmxKbbOkNOfPFmayTWlzYw=='), Columns = 2})
local SettingsTab = Window:Page({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('kbJPfwLWLYcGjVRXFbhbqztpGnuKCNoKKgvCjNZUzIxjxfwznlFwCEHU2V0dGluZ3M='), Columns = 2})
local Players = game:GetService(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('XoVKqQnPqcnKHyyfFfSAQAuzBHRCIWnQGVgxInvyCynqwHJAqxlzxfLUGxheWVycw=='))
local UserInputService = game:GetService(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ErpOYsbnFKMhsLKthscRhTIGdYxJSsZubrpTziwidfqiGheSoBCWooXVXNlcklucHV0U2VydmljZQ=='))
local ReplicatedStorage = game:GetService(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('VzbuShGzETqAzSpPJqEdwqMykKaoCkwlpzuMCwHMKZNYipQudxSItljUmVwbGljYXRlZFN0b3JhZ2U='))
local RunService = game:GetService(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('FOGDFAGJyRVAHYubtepbhDNKEzQnMPvLOtIpcSQLCSmFUIAAvjitpjYUnVuU2VydmljZQ=='))
local Workspace = game:GetService(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ZNjJIANZiKZblBMFexAcGLspcsySOraawlWfUUtYjzwWmgXnomnzsYHV29ya3NwYWNl'))
local Camera = Workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Inset = game:GetService(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('LsgWqUzfnrukxSwdRtVXspOMVRWWlQLkjlNgaSNwamZQaLoePYzmgSQR3VpU2VydmljZQ==')):GetGuiInset().Y

--------------------------------------------------------------------------------
-- INFINITE RESPAWN + POSITION SAVER (MISC TAB) - CLEAN (Toggle Only)
--------------------------------------------------------------------------------
local MiscSection = MiscTab:Section({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('QHrjlZFjbZXecjcpcDquCxoRKdrgnwNtsGpLvoTgCvJNnPByIIeBDnxc2VtaSBnb2QgbW9kZQ=='), Side = 1})

-- **INSTANT RESPAWN FUNCTION** (from CompKiller UI)
local function InstantRespawn()
    replicatesignal(LocalPlayer.ConnectDiedSignalBackend)
    task.wait(Players.RespawnTime - 0.1)
    replicatesignal(LocalPlayer.Kill)
end

-- **POSITION TRACKER VARS**
local Enabled = false
local RespawnLoop = nil
local PositionTracker = nil
local SavedPosition = nil

-- **POSITION TRACKER** (updates SavedPosition constantly)
local function StartPositionTracking(character)
    if PositionTracker then PositionTracker:Disconnect() end
    local hrp = character:WaitForChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('QHEhfNklrLzBRCoeKKDFwzUaXlTenAyDmDedknDHWEAdKbZSrANLChySHVtYW5vaWRSb290UGFydA=='), 5)
    if not hrp then return end
    PositionTracker = RunService.Heartbeat:Connect(function()
        if Enabled and hrp and hrp.Parent then
            SavedPosition = hrp.CFrame
        end
    end)
end

local function StopPositionTracking()
    if PositionTracker then
        PositionTracker:Disconnect()
        PositionTracker = nil
    end
end

-- **ENDLESS RESPAWN LOOP**
local function StartEndlessRespawnLoop()
    if RespawnLoop then RespawnLoop:Disconnect() end
    RespawnLoop = LocalPlayer.CharacterAdded:Connect(function(character)
        task.spawn(function()
            local hrp = character:WaitForChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('HzgurYsxpAxAApHeSODYOPfiZqHcswtIFHGNuXCSdDIzSPWtPHQovUbSHVtYW5vaWRSb290UGFydA=='), 10)
            if not hrp then return end
            -- Teleport to last saved position
            if Enabled and SavedPosition then
                task.wait(0.25)
                hrp.CFrame = SavedPosition
            end
            -- Start tracking again
            if Enabled then
                task.wait(0.5)
                StartPositionTracking(character)
                InstantRespawn()
            end
        end)
    end)
end

-- **TOGGLE ONLY**
MiscSection:Toggle({
    Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('IDdALbAeYvxcMoYeDFGqVmYzNtQeQRSFCCwBHALXiRANwtIfCbcKjphc2VtaSBnb2QgbW9kZQ=='), 
    Default = false, 
    Callback = function(state)
        Enabled = state
        if state then
            Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('KXLftdpNaWwltDnzWXDeOMjAueoFEqzfbNkBRBraVZptBAhnTuaXwTIc2VtaSBnb2QgbW9kZSBvbg=='), 2, Color3.fromRGB(0, 255, 0))
            local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            StartPositionTracking(char)
            StartEndlessRespawnLoop()
            InstantRespawn()
        else
            Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('aZXdXSiFaXpwJDkmJAYhmsFPaOXTtgEmOtjcBxFplyxArpsqMkORomzc2VtaSBnb2QgbW9kZSBvZmY='), 2, Color3.fromRGB(255, 100, 100))
            StopPositionTracking()
            if RespawnLoop then RespawnLoop:Disconnect() RespawnLoop = nil end
            SavedPosition = nil
        end
    end
})
--------------------------------------------------------------------------------
-- SILENT AIM + FOV (SHARED WITH RAPID FIRE)
--------------------------------------------------------------------------------
local SilentCONFIG = {
    Enabled = false,
    HitPart = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('UOOgTYofssSVyvnhPBXPFYiOvYwuLKLZWMZecNrOltHVIKmudJMjtmZSGVhZA=='),
    Prediction = 0.165,
    FOVRadius = 150,
    ShowFOV = false,
    FOVCentered = false
}

local ScreenGui = Instance.new(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('RZhnirQQIstyJLcwINNzOOhMcKydlRiUqpOOagumnZeGWkJtjGsThasU2NyZWVuR3Vp'))
ScreenGui.Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ohcyRxCofJZWglyKMbsYxHyVCdjuoLCJCitbgUHiCZbDFzBSXsZeQEPU2lsZW50Rk9W')
ScreenGui.Parent = game:GetService(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ntNEvlwPqWFDshzmEGHywAhtqsAKWkoJsoiaNucryxkfyZzoEUdEGYCQ29yZUd1aQ=='))
ScreenGui.ResetOnSpawn = false

local FOVCircle = Instance.new(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('yZjvMrADZrZOGcqyRqZCZQGdWNhDpsLYFSRDzFwwmQBhOASMiZXxoeERnJhbWU='))
FOVCircle.Size = UDim2.new(0, SilentCONFIG.FOVRadius * 2, 0, SilentCONFIG.FOVRadius * 2)
FOVCircle.AnchorPoint = Vector2.new(0.5, 0.5)
FOVCircle.BackgroundTransparency = 1
FOVCircle.Parent = ScreenGui

local FOVCorner = Instance.new(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('iUjgkQDsgFxfzOQBCfoIFkDpEIHlRpORWBKPwqJuVibQQBGFBGItEAiVUlDb3JuZXI='))
FOVCorner.CornerRadius = UDim.new(1, 0)
FOVCorner.Parent = FOVCircle

local FOVStroke = Instance.new(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('pXOewXzkgkpDfhoYFAMpMAGzmCaeROWsskgHICSpgPpRdqRbFsgdRCnVUlTdHJva2U='))
FOVStroke.Color = Color3.fromRGB(255, 255, 255)
FOVStroke.Thickness = 2
FOVStroke.Transparency = 0
FOVStroke.Parent = FOVCircle

RunService.Heartbeat:Connect(function()
    if not SilentCONFIG.ShowFOV then FOVCircle.Visible = false return end
    FOVCircle.Visible = true
    FOVCircle.Size = UDim2.new(0, SilentCONFIG.FOVRadius * 2, 0, SilentCONFIG.FOVRadius * 2)
    if SilentCONFIG.FOVCentered then
        local centerX = Camera.ViewportSize.X / 2
        local centerY = Camera.ViewportSize.Y / 2
        FOVCircle.Position = UDim2.new(0, centerX, 0, centerY)
    else
        local pos = UserInputService:GetMouseLocation()
        FOVCircle.Position = UDim2.new(0, pos.X, 0, pos.Y - 47)
    end
end)

local function GetClosestTarget()
    local closest = nil
    local closestDist = SilentCONFIG.FOVRadius
    local mousePos = SilentCONFIG.FOVCentered and Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2) or UserInputService:GetMouseLocation()
    for _, player in Players:GetPlayers() do
        if player ~= LocalPlayer and player.Character then
            local char = player.Character
            local part = char:FindFirstChild(SilentCONFIG.HitPart)
            local hum = char:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('KwLroFqQNLskFrGVWhsYcvTEWGBeIwlTtXMHqmnTnirkzoXqlNgjseQSHVtYW5vaWQ='))
            local body = char:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('EBJxVMcJeIRVovMSXfQUIEEFHyiwapbeQXkdIWmKSaKgvhDhwoHfGVTQm9keUVmZmVjdHM='))
            local ko = body and body:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('kEYmtRaPbMfREyrpsjjoBpjnByVNeriXvnHVziuensYjIdkxXMFTjZTSy5P'))
            local grab = not char:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('PUfpzOtdpwkuyNrItctiHIYScQZNYpbXNEQNAGpstkeeuhYpWJPRNSiR1JBQkJJTkdfQ09OU1RSQUlOVA=='))
            if part and hum and hum.Health > 0 and body and ko and not ko.Value and grab then
                local screenPos, onScreen = Camera:WorldToViewportPoint(part.Position)
                if onScreen then
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                    if dist < closestDist then
                        closestDist = dist
                        closest = part
                    end
                end
            end
        end
    end
    return closest
end

local silentOldIndex
silentOldIndex = hookmetamethod(game, JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('knHBKNyFaVcVKZvkKQwGKmrxREXesqjgJYZDlvZdMBphNckBHroULopX19pbmRleA=='), newcclosure(function(self, key)
    if not checkcaller() and self == Mouse and SilentCONFIG.Enabled and (key == JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('HalgfJrwWbQeDRKtgjauqjTdxJvEIjUOYoaPcQXpNdtVljVcLMjGVOSSGl0') or key == JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('PTtmGPZzFNBqvdcquuERHaxPnjSJzHZBSCSCwrIDPQxlovsAgfWGfvNVGFyZ2V0')) then
        local target = GetClosestTarget()
        if target then
            local predicted = target.Position + (target.Velocity * SilentCONFIG.Prediction)
            if key == JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('jwqfWwXUtfLNxrapAowNdOJlTBUJDJGnYPjffZZssaWxLrGJkDEtBRZSGl0') then
                return CFrame.new(predicted)
            else
                return target
            end
        end
    end
    return silentOldIndex(self, key)
end))

--------------------------------------------------------------------------------
-- TARGET AIM + TRACER + VIEW LOCK
--------------------------------------------------------------------------------
local TargetAimSection = CombatTab:Section({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('aMsUkqYROkkuSTnCKbZPoqESFGRteibkmWmbmocNVtZOqyVOeLjTINLVGFyZ2V0IEFpbQ=='), Side = 1})
local Target = nil
local Line = Drawing.new(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('sOogkzKnvBgZSXTqJPSvVUMukvrjyDPLHFoWoJeXGDziXlbzPTFVXzTTGluZQ=='))
Line.Thickness = 2
Line.Color = Color3.fromRGB(255, 0, 0)
Line.Visible = false
local viewDied, viewChanged, viewing = nil, nil, nil

local CONFIG = {
    TargetPart = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('OBVUFTlFTqqrmjjOBfAsUjqIcozlUYyrFZCNnhPoXcRvlCGvJkBHukhSGVhZA=='),
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
        if plr ~= LocalPlayer and plr.Character then
            local root = plr.Character:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('OpNMAuyNpZhuznHOlVZmxYByUMJXkJoqULrSscEALJAopTnJkPFLHhOSHVtYW5vaWRSb290UGFydA=='))
            local hum = plr.Character:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('QLxBwoRLuHWssMIaCNMXfTcZbIcsvujdwuTkhNKTkqQoAaFpZPNQoBeSHVtYW5vaWQ='))
            local ko = plr.Character:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('XSlWwiBeywjYZQmhXJNnIekUKuYrluaLyqedmGXwOOBRGjrXlKItxvbQm9keUVmZmVjdHM=')) and plr.Character.BodyEffects[JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('DaMewSLPnsbLBRdfBimDcxQYTOhsRGUlPQdPYHIfNnODbCTDgokVWFpSy5P')].Value ~= true
            local grab = not plr.Character:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('WENhHAxgPwUiIPSNoTLNVEIuIOsoAvKoyFzZYussCnDQEwodauzwPJRR1JBQkJJTkdfQ09OU1RSQUlOVA=='))
            if root and hum and hum.Health > 0 and ko and grab then
                local pos, onScreen = Camera:WorldToViewportPoint(root.Position)
                if onScreen then
                    local dist = (Vector2.new(pos.X, pos.Y) - mousePos).Magnitude
                    if dist < minDist then
                        minDist = dist
                        closest = plr
                    end
                end
            end
        end
    end
    return closest
end

local function predict(part)
    if not part then return part.Position end
    local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('NChbuOWpxUEyEHdQHdlAuoeLQKPKisCdGyfRJHEPopcIYcNQkOBgBtgSHVtYW5vaWRSb290UGFydA=='))
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
            if key == JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('uBfGjUUBpjRRbDOySllsVACTgCpZBZyAOWgldZLqOQzwNOBADgGvASuSGl0') then return CFrame.new(pred)
            elseif key == JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('OUSyfuMXTuzUEpxFaSOADcUeZldslwwhdfTnkvmmNUHXHpdgHtcuXVfVGFyZ2V0') then return part end
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
    Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('nXQDwGvlVhPeVFHFdCleypbIBBtaJGgmejHahenJCkeIHJNgoHMiIOtVmlld2luZyA=') .. viewing.DisplayName, 2, Color3.fromRGB(100, 255, 100))
    viewDied = viewing.CharacterAdded:Connect(function()
        repeat task.wait() until viewing.Character and viewing.Character:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('sRULWAUEtthTqzyukoUUQpCgjBAPWGKxVZUjKtBufyMEMuLeYwZtDkMSHVtYW5vaWRSb290UGFydA=='))
        Camera.CameraSubject = viewing.Character
    end)
    viewChanged = Camera:GetPropertyChangedSignal(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('KqHNqctRjrXzwMCytOmCqhSwOMRHhPAxrLKUlvEdBnviCFNfxAMvhpBQ2FtZXJhU3ViamVjdA==')):Connect(function()
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
    Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('wMrBnIgJJlWCSaYRssEVRhSDLFfmHedrBNNrPCwCmdKyNWblEXamDthU3RvcHBlZCBWaWV3aW5n'), 2, Color3.fromRGB(255, 100, 100))
end

--------------------------------------------------------------------------------
-- RAPID FIRE + KILL AURA (USES TARGET AIM > SILENT AIM > NORMAL)
--------------------------------------------------------------------------------
local CombatSection = CombatTab:Section({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('UfpKVvdUUYwHhXtxcYMdkNAgNGgAeIbOKbtsCPLJIZdbAyCqHwHZDfkUmFwaWQgRmlyZQ=='), Side = 2})
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
        if tool:IsA(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('vmkfWrubkXBcjANVeVQSPknKMrTODbgThnapXmizIervBToVPZoQMltVG9vbA==')) and tool:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('akqrXrqmmzHVncwpLmlPyGKJnhADBpmvqbsgHGdHnQAIJLYqsVJlihISGFuZGxl')) then
            currentTool = tool
            local cd = tool:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('IzDgxVlvBfUkTLpFGJCAnDHNYDOZJBbwtJhSJGWytetatjdyMXpQXICU2hvb3RpbmdDb29sZG93bg=='))
            if cd and cd:IsA(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('iKcbgWnQMhAyvLzWvNcFazLYnqDnESVFnoxfAduSAvsFlGzaOgmZfbnTnVtYmVyVmFsdWU=')) then COOLDOWN = math.max(cd.Value * 0.5, 0.01) end
            local ammo = tool:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('mHPruAMBRlswmXXlFveaMTlzUQGJiykawctYzrALBSHHHTJDEapOoeMQW1tbw=='))
            if ammo and ammo:IsA(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('osLSXRAbJTCaBGoixuYLIGoLMbBJWNPElFMYOjvxhnflfmAQRcTqMXfVmFsdWVCYXNl')) then savedAmmoMax = ammo.Value > 0 and ammo.Value or 6 end
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
    local handle = currentTool:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('HyzvdzHkXXXUdRBfzqqNraKVLcqdCZFZweItjiFirmIVLIWIkqaervxSGFuZGxl'))
    if not handle then return end
    local ammo = currentTool:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('bacSrsEppiJnqnwELcQYdliLbjdOOttuNoejjzxhHdooYlvXNZNtQDjQW1tbw=='))
    if ammo and ammo:IsA(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('tRDmfYCiHKSPyvgxryufQowwddtqDzCsRVUOHZiUpuNZjZVDcdgGHHRVmFsdWVCYXNl')) then ammo.Value = savedAmmoMax end
    pcall(function()
        local r = Workspace.Players[LocalPlayer.Name].BodyEffects.Reload
        if r then r.Value = false end
    end)
    if tick() - lastShot < COOLDOWN then return end
    lastShot = tick()
    local muzzlePos = (handle.CFrame * CFrame.new(-1, 0.4, 0)).Position

    local targetPart = nil
    local predicted = nil
    local useTarget = CONFIG.Enabled and Target and not CONFIG.TargetAll
    local useSilent = SilentCONFIG.Enabled

    if useTarget then
        local part = Target.Character:FindFirstChild(CONFIG.TargetPart)
        if part then
            targetPart = part
            predicted = predict(part)
        end
    elseif useSilent then
        targetPart = GetClosestTarget()
        if targetPart then
            predicted = targetPart.Position + (targetPart.Velocity * SilentCONFIG.Prediction)
        end
    end

    if targetAllEnabled then
        for _, plr in Players:GetPlayers() do
            if plr ~= LocalPlayer and plr.Character then
                local part = plr.Character:FindFirstChild(SilentCONFIG.HitPart)
                if part then
                    local pred = part.Position + (part.Velocity * SilentCONFIG.Prediction)
                    local dir = (pred - muzzlePos).Unit
                    local hit, hp, n, pos = doRaycast(muzzlePos, dir, INF_RANGE)
                    pcall(function()
                        local remote = ReplicatedStorage.MainRemotes.MainRemoteEvent
                        remote:FireServer(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('aVAeTukAwSisYmengPOGMofXuNscWJmNmOwVtFqzFPSUDBNvbwomkDvU2hvb3RHdW4='), handle, muzzlePos, hit, hp or part, n, Workspace:GetServerTimeNow(), (hp or part).Size)
                    end)
                    local beam = Instance.new(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('hEfrOUJWgeeEzhWfceXMMJbxNKwIsttDABULBnFItIzwhbLETVGWTqsUGFydA=='), Workspace)
                    beam.Anchored = true
                    beam.CanCollide = false
                    beam.Material = Enum.Material.Neon
                    beam.Transparency = 0.1
                    beam.Color = Color3.fromRGB(255,0,0)
                    local dist = (muzzlePos - (pos or pred)).Magnitude
                    beam.Size = Vector3.new(0.1, 0.1, dist)
                    beam.CFrame = CFrame.new(muzzlePos, pos or pred) * CFrame.new(0,0,-dist/2)
                    game:GetService(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('QShxTrpggqtGpvFGByohFTirNCeRHIoyLCwziVesyQqzAyIMjfqLSFbRGVicmlz')):AddItem(beam, 0.03)
                end
            end
        end
        return
    end

    local direction = nil
    local finalHitPart = nil
    local finalNormal = nil
    local finalPos = nil

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
        local remote = ReplicatedStorage.MainRemotes.MainRemoteEvent
        remote:FireServer(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('OtJiiLXslhnroOtdjTudLzCfcMyFPELYMQnuGBJdhdNhEwRXcfgNXoMU2hvb3RHdW4='), handle, muzzlePos, finalHitPart ~= nil, finalHitPart, finalNormal, Workspace:GetServerTimeNow(), finalHitPart and finalHitPart.Size or Vector3.new())
    end)

    local beam = Instance.new(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('WdhhFQSYpkhuymXucsELViqWuPpezXyTOEhIQaDLMdWvPlKzQPQtarJUGFydA=='), Workspace)
    beam.Anchored = true
    beam.CanCollide = false
    beam.Size = Vector3.new(0.1, 0.1, (muzzlePos - finalPos).Magnitude)
    beam.CFrame = CFrame.new(muzzlePos, finalPos) * CFrame.new(0, 0, -beam.Size.Z/2)
    beam.Material = Enum.Material.Neon
    beam.Transparency = 0.1
    if useTarget then
        beam.Color = Color3.fromRGB(0,255,0)
    elseif useSilent then
        beam.Color = Color3.fromRGB(0,255,255)
    else
        beam.Color = Color3.new(1, 0.545, 0.149)
    end
    game:GetService(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('OdvaWvpGSuURNBnQxRVeAwhxUgAZtyqSExxgHwcZeoRQQIwFptZeEFCRGVicmlz')):AddItem(beam, 0.03)
end

task.spawn(function()
    while task.wait(0.0005) do
        if (rapidEnabled or targetAllEnabled) and isHolding and currentTool then
            fire()
        end
    end
end)

UserInputService.InputBegan:Connect(function(i,gp) if not gp and i.UserInputType == Enum.UserInputType.MouseButton1 then isHolding = true end end)
UserInputService.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then isHolding = false end end)
RunService.Heartbeat:Connect(updateTool)

--------------------------------------------------------------------------------
-- TP WALK (Z)
--------------------------------------------------------------------------------
local MovementSection = MovementTab:Section({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('fzibMdnEUggGivVEEmyjCLOVNxaBajaTkvljODMEeUsPwprRlGROVHYVFAgV2Fsaw=='), Side = 1})
local tpKeybindEnabled = false
local tpKeybindActive = false
local tpSpeed = 16

MovementSection:Toggle({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ZLrKwyrENSGjbHaZDwtArCSGuoaNcwczFfPqGwGiYOspGzQXTTEsCkbVFAgV2Fsaw=='), Default = false, Callback = function(v)
    tpKeybindEnabled = v
    if not v then tpKeybindActive = false end
    Library:Notification(v and JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('zeDogBzYCZWuDVlsPSyFthrEmPjvxmFnBrEcLXHHxtFCnysHZUdMICEVFAgV2FsayBvbg==') or JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('FECREdoJppSDOmoGHSQHRosNdaosojKXcTzATJwGPGCKGlpmmmufHAbVFAgV2FsayBvZmY='), 2, v and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,100,100))
end})

MovementSection:Slider({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('DYYaivyHqOpDmvNmbcoEedMxuJbTKxkoefJxFPPvepcPLJbVpetbZRUVFAgV2FsayBTcGVlZA=='), Min = 0, Max = 100, Default = 16, Decimals = 1, Callback = function(v) tpSpeed = v end})
MovementSection:Label(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('IPlmerVzEVcDgZETbfrvnSMtTAVXyzRFbkhxWxHAcVwvcyuSgIDtQUqcHJlc3MgWiB0byB0b2dnbGU='), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('dbFcrVCsNSJkXuhUnRZNxHuzcXKSHgLcHlYwExqXeEePFaaYlHzsYgSTGVmdA=='))

task.spawn(function()
    while task.wait() do
        if tpKeybindActive then
            local chr = LocalPlayer.Character
            local hum = chr and chr:FindFirstChildWhichIsA(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('RLQUBNnfgygzQtOeKGDRwEFLekigzxKHSFjfEEZCmPDZQCyaBJAVarJSHVtYW5vaWQ='))
            if chr and hum and hum.MoveDirection.Magnitude > 0 then
                chr:TranslateBy(hum.MoveDirection * tpSpeed * 10 * RunService.Heartbeat:Wait())
            end
        end
    end
end)

--------------------------------------------------------------------------------
-- CAMERA FLY (F)
--------------------------------------------------------------------------------
local FlySection = MovementTab:Section({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('qMkDBDDAXAReJsdNgFpXSrGvkzSxSCdVOXBugAAjRxFNuThqkCeuvJQY2ZyYW1lIGZseQ=='), Side = 2})
local flyKeybindEnabled = false
local flyKeybindActive = false
local flySpeed = 50

FlySection:Toggle({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('fowupckaHZKJarrdKKmqLNJoKxYRdaWxxLoudOmQgsXmGJFzTTqiZbwRmx5'), Default = false, Callback = function(v)
    flyKeybindEnabled = v
    if not v then flyKeybindActive = false; stopFlying() end
    Library:Notification(v and JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('MPAnSsgiyZPyfjFjGdQXmjmMhioIqAiRsglLnCfmyNUDRarCvCTtQKyRmx5IG9u') or JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('nNAoRMDXLUoDLjinrDdVbnfuWxQWtnSKhChSVmlSsPKPcnFjHWjTXMdRmx5IG9mZg=='), 2, v and Color3.fromRGB(0,255,255) or Color3.fromRGB(255,100,100))
end})

FlySection:Slider({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('qXOqzKIlHjxRCbypnhvrxmqJscufEGRKAgPDNsjUvhthpVOcpAwmnPNRmx5IFNwZWVk'), Min = 10, Max = 200, Default = 50, Decimals = 1, Callback = function(v) flySpeed = v end})
FlySection:Label(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('CJvfRxpmMTiHvKdzGJPlhDpgmptqoPpsanUyGvBpuVebyhpcQazDHuPcHJlc3MgRiB0byB0b2dnbGU='), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('MmjfWJwcqaxbBNyrLZKAOUtYdEwqxHkucrPrSpRmCpzwfoAZPIiJKYkTGVmdA=='))

local isFlying = false
local flyConnection = nil

local function startFlying()
    if isFlying then return end
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('nNVjNvVYoHpADXRzlFHktjUhjpSHUmosQMknysrokBwWklsdFzBvTMYSHVtYW5vaWRSb290UGFydA=='))
    local hum = char and char:FindFirstChildWhichIsA(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('DWIQXPwszidoLCTbHvKlFhGdSkualanxXidxRgoQNSkChfAnspXJTrQSHVtYW5vaWQ='))
    if not root or not hum then return end
    isFlying = true
    local oldState = hum:GetState()
    root:SetAttribute(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('BeHHosHphcistwQZKwydXPyhRrkcehcrPEazAPPUNmUgCJLRrJfxMwkT2xkSHVtYW5vaWRTdGF0ZQ=='), oldState)
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
    Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('qYGSPdVsyezSPMMEEaYAkVFbMgxzGkAUlirmPlfgvqkdyHhjkOAzHwDRmx5IE9OIChGKQ=='), 2, Color3.fromRGB(0, 255, 255))
end

local function stopFlying()
    if not isFlying then return end
    isFlying = false
    if flyConnection then flyConnection:Disconnect() flyConnection = nil end
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('bqfPppKkCktaZQIjaCcQdNVtASPCqgVTOnPIaHztkkKYfCKSXouTdqwSHVtYW5vaWRSb290UGFydA=='))
    local hum = char and char:FindFirstChildWhichIsA(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('iLdARksuMVqrANsOjrjRCCQWCZxzSHFNUsNHZhDVLeaajGeMQNBapUySHVtYW5vaWQ='))
    if hum and root then
        local oldState = root:GetAttribute(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('VMhzgEiGzdFGIKvHANDeNPPsKvZAtpFvxApEXoSxIrUqrexZEFOITKtT2xkSHVtYW5vaWRTdGF0ZQ=='))
        hum:ChangeState(oldState or Enum.HumanoidStateType.GettingUp)
    end
    Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('TVorTzToygcXNOplHttzPIlqznVEOflrcZrHhECxezxGGZBSAvtnIZHRmx5IE9GRiAoRik='), 2, Color3.fromRGB(255, 100, 100))
end

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.F then
        if flyKeybindEnabled then
            flyKeybindActive = not flyKeybindActive
            if flyKeybindActive then startFlying() else stopFlying() end
        else
            Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('XYagwlqzlddcKMJKfBJByEXUbFvQcosowqYyIsnGXtVQObhruFHjPNNZW5hYmxlIGZseSBmaXJzdCBpbiB0aGUgdWk='), 2, Color3.fromRGB(255, 150, 0))
        end
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    if flyKeybindActive then task.wait(0.5) startFlying() end
end)

--------------------------------------------------------------------------------
-- SPINNING SWASTIKA
--------------------------------------------------------------------------------
local SwastikaSection = VisualTab:Section({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('PlhmotqOjhsEYulyRGszbVAcbndzvykMHmhrnHejzRTHnlFOTUuGCKYU3dhc3Rpa2E='), Side = 1})
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
    local part = Instance.new(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('UhcpqvjpGTNyUTNvnQBzqrKVTjvrcnqOiyhDQXYUHmitFcFLUAMuoEtUGFydA=='))
    part.Size = size
    part.Color = SwastikaColor
    part.Transparency = SwastikaTransparency
    part.Material = Enum.Material.Neon
    part.Anchored = false
    part.CanCollide = false
    part.CFrame = rootPart.CFrame * CFrame.new(positionOffset)
    part.Parent = workspace
    local weld = Instance.new(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('OZbdwpzdIEObeSKnzALuSyUmpfIkReBFaGWFOEDiOQgFqybbknbmTaNV2VsZA=='))
    weld.Part0 = rootPart
    weld.Part1 = part
    weld.C0 = CFrame.new(positionOffset)
    weld.Parent = part
    return part, weld
end

local function removeSwastika()
    for _, data in ipairs(PartsAndWelds) do
        if data.part then data.part:Destroy() end
    end
    PartsAndWelds = {}
    if SpinConnection then SpinConnection:Disconnect() SpinConnection = nil end
end

local function buildSwastika(character)
    removeSwastika()
    local rootPart = character:FindFirstChild(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('DixgAoaGjnmKPJnaqtrlWXciuwLLCQZyPRzwlYRvJUPXYQyxCjOCmIvSHVtYW5vaWRSb290UGFydA=='))
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
        if not SpinEnabled or not rootPart.Parent then
            removeSwastika()
            return
        end
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

SwastikaSection:Toggle({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('HjukajofhNfmwhlxkoyZHxLauzhejRtsQAQatgnPZQCXoVDAsDlxoNvU3dhc3Rpa2E='), Default = false, Callback = function(v)
    SpinEnabled = v
    if v then
        Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('rUvkmNVGpmlIJCfTIaazcnERaBlijhQivuPLJGgpIPIZvdiSjyRUHvBU3dhc3Rpa2Egb24='), 2, Color3.fromRGB(255, 0, 0))
        buildSwastika(LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait())
    else
        Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('rUNjqHvdmEYJfdLKWvMnJamZscjrMwPyTvoFhhsmoLeUNCFHieKfSVVU3dhc3Rpa2Egb2Zm'), 2, Color3.fromRGB(100, 100, 100))
        removeSwastika()
    end
end})

local ColorLabel = SwastikaSection:Label(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('YHfsjzWNBJvhADddfyeQttfRxIpmIziWVETqHNLaiZWaipHSqHOsjvHU3dhc3Rpa2EgQ29sb3I='), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('JKzGtJQcyLCFWPacuhSrsPdBqMBeKooffkjdLoANuxCLcCShbOKeXYYTGVmdA=='))
ColorLabel:Colorpicker({Default = Color3.fromRGB(255, 0, 0), Transparency = 0, Callback = function(color, alpha)
    SwastikaColor = color
    SwastikaTransparency = alpha or 0
    updatePartColors()
end})

SwastikaSection:Slider({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('tUJFpXhPaAwuKIAKgzrKsAMbeaYVkNAXMVvMEDUiVuGGWhqQyinUpHyU3BpbiBTcGVlZA=='), Min = 0.5, Max = 20, Default = 4, Decimals = 1, Callback = function(v) SpinSpeed = v end})
SwastikaSection:Label(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('aYwGLpTJGNOuBufkgSyQADHtqHlhrGpCnCnOLIqyikQMMigvvNSHnHrYW55IGNvbG9y'), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('vFNdEIhmEvANXLcfIrUXOiqZbWHwLFVnbRBzSTUwwYQZDRRgMvYwtjvTGVmdA=='))
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

--------------------------------------------------------------------------------
-- FOV CHANGER (VISUAL TAB)
--------------------------------------------------------------------------------
local FOVSection = VisualTab:Section({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('jAjlRWuzxDkZJasblEffteqolhZjnQYgoWteHaxEEWookahQojxrVDVRk9WIENoYW5nZXI='), Side = 2})
local FOVEnabled = false
local CustomFOV = 70

FOVSection:Toggle({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('lynLRzSsrqqQrsAjirOvayFBzDQQImMiEZVViOpbyuxVRsIJzjwYZatRk9WIENoYW5nZXI='), Default = false, Callback = function(v)
    FOVEnabled = v
    if v then
        Camera.FieldOfView = CustomFOV
        Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('gqckIFsQwhafEwrrWCKUtLPLEeakYHOUUjfdydemXFslBzxppHuJPBVRk9WIHNldCB0byA=') .. CustomFOV, 2, Color3.fromRGB(0, 255, 255))
    else
        Camera.FieldOfView = 70
        Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('FMiecGBChsPHaoLxoWwOPLrwgutdpHRmrZcJAVYHKziEpejvesMiWFRRk9WIHJlc2V0'), 2, Color3.fromRGB(255, 100, 100))
    end
end})

FOVSection:Slider({Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('LRHhljqpaHwqQiVAXNPpKOsusQIUnZXyWFChTpouGzRgVkagDVftqBjRk9WIFZhbHVl'), Min = 0, Max = 120, Default = 70, Decimals = 1, Callback = function(v)
    CustomFOV = v
    if FOVEnabled then
        Camera.FieldOfView = v
    end
end})

RunService.RenderStepped:Connect(function()
    if FOVEnabled then
        Camera.FieldOfView = CustomFOV
    end
end)

--------------------------------------------------------------------------------
-- UI + KEYBINDS + SETTINGS
--------------------------------------------------------------------------------
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == CONFIG.Keybind and CONFIG.Enabled and not CONFIG.TargetAll then
        if Target then
            Target = nil
            Line.Visible = false
            stopViewing()
            Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('frrsRIwMiPnrkdKZgiZTczHqRhYVEaAmItYyFgRExEdKoStyOHtwaiBVGFyZ2V0IFVubG9ja2Vk'), 2, Color3.fromRGB(255, 100, 100))
        else
            Target = getClosest()
            if Target then
                Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('cKDoVcWbTZCrkTAtUCleNaepOHaevbKXWMltVMqtunpcddLoIRRHrdvTG9ja2VkOiA=') .. Target.DisplayName, 2, Color3.fromRGB(100, 255, 100))
                if CONFIG.ViewLock then startViewing(Target) end
            else
                Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('GUbsvKkRJAeRyEKQGftGdLavLNHgmohDDVtzrAZnAmEmszhPNOznRUKTm8gVGFyZ2V0'), 2, Color3.fromRGB(255, 200, 100))
            end
        end
    end
    if input.KeyCode == Enum.KeyCode.Z then
        if tpKeybindEnabled then
            tpKeybindActive = not tpKeybindActive
            Library:Notification(tpKeybindActive and JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('tuppBKRJxLjmvjRzioMrKgsbTUlZuzAxyRvGqPwruBcKmfJFSAfVyIeVFAgV2FsayBPTiAoWik=') or JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('KpitlEbSWkudgmjUFaDGpSuRcXqhsKUsmaPyBNkrRezTfMRQYDQvTFyVFAgV2FsayBPRkYgKFop'), 2, tpKeybindActive and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,100,100))
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

TargetAimSection:Toggle({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ZVHzTtZGylavKEKlpTnHUhFKPawCCWBgkUCAgpxDPhOLElsuNpDAtSCVGFyZ2V0IEFpbQ=='), Default=false, Callback=function(v) CONFIG.Enabled=v if not v then Target=nil Line.Visible=false stopViewing() end end})
TargetAimSection:Dropdown({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('FGhvQcTzvdLXBOJGLvKDSCZmyErqgwvVbtKWkWxoUuzsIrleprwLjWeVGFyZ2V0IFBhcnQ='), Items={JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('DfEqeDOBeoAfaEAfASlvLVeeWMOpIVXNRJFqCdLmGYsZGhxXJvmBmzHSGVhZA=='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('qiEosXicoSyytRGCfcKTEynOYtMSBrQgJFVBIEwfIGRRUSnHdypXaDPSHVtYW5vaWRSb290UGFydA=='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('DRNvcnUPgLzibVcxHMukxVdvMiqsxLojAdIWFaWiFZscgAcloJmhxiCVXBwZXJUb3Jzbw==')}, Default=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('JRkzHpzMsorVelwNnGMwhKHpZDALhLxEHxACeWERfVTHpjpaOaEvqhgSGVhZA=='), Callback=function(v) CONFIG.TargetPart=v end})
TargetAimSection:Slider({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('fnEAnstUDdpzRDnEuWZYYpyQqOSKwnrLbYkRbhDoHrmcpjtFFGzJJZJUHJlZGljdGlvbg=='), Min=0, Max=19, Default=13.5, Decimals=2, Callback=function(v) CONFIG.Prediction=v/100 end})
TargetAimSection:Toggle({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('FqBZeXZPfYnveJiluTMAppwThpOBpICPHWMWugfhKhDcwhvWBRFNIwfUmFpbmJvdyBUcmFjZXI='), Default=false, Callback=function(v) CONFIG.TracerRGB=v end})
TargetAimSection:Toggle({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('BJhRfWMwZNFbuYyzDaYirDdMhUMqGWuXuYsVAeRsPephLeEDjyTVVfLVmlldyBMb2Nr'), Default=false, Callback=function(v) CONFIG.ViewLock=v end})
TargetAimSection:Label(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('TBjqLPsgMFMlopScMaglVRBUVAXIxZTGJjMNZIsKnqhHCWFkBATTbRyS2V5YmluZDogUQ=='), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('wmuqKwndiZGVKoZCcAhMMkMGGuMOOILoqVZHBkASVXFsqAnaeTzOvGVTGVmdA=='))
TargetAimSection:Toggle({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ynRZFSIMffYMtduzNXOLXxcfwmTxokWWJIQuAkwXRRvAQystNARjOqRU2lsZW50IEFpbQ=='), Default=false, Callback=function(v) SilentCONFIG.Enabled=v end})
TargetAimSection:Dropdown({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('gbOcxhYYOdLIvZBLByLwHwJqRcPCacwsKnmHpajmZvUftJzELUFxfwAU2lsZW50IEhpdFBhcnQ='), Items={JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('zFEmUyzgtTJClpIJriBhQXJTwmfbjvuxTqoHDQCUCmWzTvutxDSEoDvSGVhZA=='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('pVjmwsFdcyJODJqqmKydvZHnlRQPEkupHClGRsTpaCSYmsjmVvEURsTSHVtYW5vaWRSb290UGFydA=='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('xnfFVNjnFmdMecZsQmQaBYIFqYimqZuvVmcYOysJtNUpCxhZUfdbVVeVXBwZXJUb3Jzbw==')}, Default=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('eqBFOCiXMWWnlYRikTagUiEsBRBpzhOuSuzCTzrrFzzexqxeeJGqfKsSGVhZA=='), Callback=function(v) SilentCONFIG.HitPart=v end})
TargetAimSection:Slider({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('JsnmfLpisscKkbRrYxLKZTLShgeNrgSNZAjhYNPbSnCihNYBfCVnSTAU2lsZW50IFByZWRpY3Rpb24='), Min=0, Max=30, Default=16.5, Decimals=2, Callback=function(v) SilentCONFIG.Prediction=v/100 end})
TargetAimSection:Slider({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('QDMWBMHwUUBNokADKKmPnItOxVRLUvlzReLYPbxZfDCxvRyMcsQvdsxRk9WIFJhZGl1cw=='), Min=10, Max=500, Default=150, Decimals=1, Callback=function(v) SilentCONFIG.FOVRadius=v end})
TargetAimSection:Toggle({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('nomsCKVIEdcCPkgvSxGptfitBWyrLPMnOSUvaizAtYabVXwgfwwpNSuU2hvdyBGT1YgQ2lyY2xl'), Default=false, Callback=function(v) SilentCONFIG.ShowFOV=v end})
TargetAimSection:Toggle({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('QMkRTDCPPhGDJhSRAWtpCyiKUpvghFEaGCyihKAwiKDUgDaAlIUUhXgRk9WIENlbnRlcmVkIChDZW50ZXIgU2NyZWVuKQ=='), Default=false, Callback=function(v) SilentCONFIG.FOVCentered=v end})
TargetAimSection:Label(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('arMPcsbkLmDIOtKBfxaHPOxmyILLtCJAoiAgQsuEMMnbDgYfjDprMUscmFwaWQgZmlyZSB3b3JrcyBvbiBhbGw='), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('YtWHJYBulFoQcBpnFAGmPMbPYLSqvtRpTsULfoJtrPgPaYanHYLbwjbTGVmdA=='))

CombatSection:Toggle({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('thwXVSBeMuHTXIcBbHrMTzxHmODSrwcnlcrlaYfNttiwacnVlpSFYSTUmFwaWQgRmlyZQ=='), Default=false, Callback=function(v) rapidEnabled=v end})
CombatSection:Toggle({Name=JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('BDRCkEROhfRgxPXiOIcMzbHHmcBHzahwEjfqwyBBIRMbcYfzpHkRZXDdGFyZ2V0IGFsbA=='), Default=false, Callback=function(v) targetAllEnabled=v end})
CombatSection:Label(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('wWDmNclUGFyERyCflQOLYBSTSVqbxExSupfDakiIqthKtjjRtFIJMgganVzdCBob2xkIGxtYg=='), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('TwTeJmdEfSDlvOkFoNpJmISaQaBfGMFGxpSubQLKrDSaGdrGwRzmNDrTGVmdA=='))

local ThemesSection = SettingsTab:Section({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('cLvzCYSadwLrIFGaXlauTzzPRvZUToUpzqrkyXkhoNnnhpATPbdYErbVGhlbWVz'), Side = 1 })
local ConfigsSection = SettingsTab:Section({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('QnSICGDAYYTTTnXyfXfbSKdKYcGizOzmvgVpvyZplmuwerSyJJQcAogQ29uZmlncw=='), Side = 2 })

do
    for Index, Value in Library.Theme do
        Library.ThemeColorpickers[Index] = ThemesSection:Label(Index, JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('FOCQOulUxwYQRdeuigZiemeoBRUCMQQwCiSGlEsVKKTfTqifZewuAIWTGVmdA==')):Colorpicker({
            Name = Index,
            Flag = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('mvrGVQoZVjjXxcVUhqoBwttAZgwKCWmwzzyvMQxHRvrQeeLOkbqNJZxVGhlbWU=') .. Index,
            Default = Value,
            Callback = function(Value)
                Library.Theme[Index] = Value
                Library:ChangeTheme(Index, Value)
            end
        })
    end
    ThemesSection:Dropdown({
        Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('jhAqdjjyFGHXyYgzzTtKobblRpCpOvkaHshtKDupDwPvRkHLsrwAKELVGhlbWVzIGxpc3Q='),
        Items = {JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('xakZaGeDyKbkpmBNiJxZxYyBHSloGxBMScfmTvlhUWPQoFDrtSFPSTdRGVmYXVsdA=='), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('CDZeoGWLOSXkFUHkjJijrtaONDIhAmjjAbHmNPHZuzcPeIBAJcUmGbcQml0Y2hib3Q='), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('zcRdJcknBcUTTuLgHaDrGEivzyVuqemgamPzRYQrITjhyVofGARmEbZT25ldGFw'), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('PvFwgXGilewbcyuwugBKejrBaYBuFSsmVORjaVRRizbZYTOZKUbJIukQXF1YQ==')},
        Default = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('aATkEfseuWfYsMSLTEHqpxLpubIHpqPdJwuNUFJvZvCSCoiUPPRUzYURGVmYXVsdA=='),
        Callback = function(Value)
            local ThemeData = Library.Themes[Value]
            if not ThemeData then return end
            for Index, V in Library.Theme do
                Library.Theme[Index] = ThemeData[Index]
                Library:ChangeTheme(Index, ThemeData[Index])
                if Library.ThemeColorpickers[Index] then
                    Library.ThemeColorpickers[Index]:Set(ThemeData[Index])
                end
            end
        end
    })
    local ThemeName, SelectedTheme
    local ThemesListbox = ThemesSection:Listbox({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('aFQQfpwZLkrecqfFhCrJzcwcxSIZeWfDQbsAXCQjXOeasRtqAqwfsyPVGhlbWVzIExpc3Q='), Items = {}, Callback = function(v) SelectedTheme = v end })
    ThemesSection:Textbox({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('nmQpyxMxgXAXZiOIRaxEucMFtyuYCJVtUuhPnkghHlInUfsDwCfpyXHTmFtZQ=='), Placeholder = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('rQhQWtjnDaOpRziFLbMpFlgERCKWTNUPuUWeqstykkrNVMFLeXVJcdaLiAuIC4='), Callback = function(v) ThemeName = v end })
    ThemesSection:Button({
        Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('PtFhxicQwSTtvLOrATsqPJihwzBqjQhJxqaTQPxCfMxXHcWxirPJQYpU2F2ZSBUaGVtZQ=='),
        Callback = function()
            if not ThemeName or ThemeName == JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('FnCwMVvtOmDGvkORTLwwMJYErhlxPzhBHqNgKLdsVcBGCZBEiYQMWWc') then return end
            pcall(function()
                if not isfile(Library.Folders.Themes .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ultaeprFmglpBKnIxnwScAYVykXyFxrPeKTaecpCpTIuYyQtvyBtPMfLw==') .. ThemeName .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('HZgsGWemUqESyVfAliKPwsDrSIMiYjqRIIfXLyDdpjrKuucNPqOLAkhLmpzb24=')) then
                    writefile(Library.Folders.Themes .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('yrwdCKEgIpHqZIJsseofEWKrMtvkMrMYsKFOeptwiYAYcGmhIyntNpfLw==') .. ThemeName .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('lUguMHYmrolqveVGoiKcJCBUAkdGDyxjdtPQGdcwoKNCeSomOPcxyntLmpzb24='), Library:GetTheme())
                    Library:RefreshThemeList(ThemesListbox)
                end
            end)
        end
    }):SubButton({
        Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ZZcmubKMLsnkmoSBHKbmEsIlCYgYLUHqgQPkSQETlAcDnxRtECsfjSATG9hZA=='),
        Callback = function()
            if SelectedTheme then
                local ok, data = pcall(readfile, Library.Folders.Themes .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('wVUjSVSrvItvbiZOvJejvmPJlBcMNZGRkBiKEPwFqeynCyYwGqaIycYLw==') .. SelectedTheme)
                if ok and data then Library:LoadTheme(data) end
            end
        end
    })
    ThemesSection:Button({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('fGydaLTbTPuFxmJRtQMyPJLWtAXgXeoYtxUGxbfyqYGkwAQkfdlmeJWUmVmcmVzaA=='), Callback = function() Library:RefreshThemeList(ThemesListbox) end })
    Library:RefreshThemeList(ThemesListbox)
end

do
    local ConfigName, SelectedConfig
    local ConfigsListbox = ConfigsSection:Listbox({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('kbFnOyLDYROOzqnklSVydvyXuXkXrlhvOtiaJOFFJOElAHPDgOggNwcQ29uZmlncyBsaXN0'), Items = {}, Callback = function(v) SelectedConfig = v end })
    ConfigsSection:Textbox({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('QVoSydaXxPJKwCWXveKxvYXZPgQlgQPwawnamwYFWHQpoiNpIjtBgUqTmFtZQ=='), Placeholder = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('srSyOLAdjJRjAheXkywGDfBFmRyLLDxwKPZUnXxKWZTZzNsRvBAbhXQLiAuIC4='), Callback = function(v) ConfigName = v end })
    ConfigsSection:Button({
        Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('CpGmCtUsIfbqBFhEcKErmesbjRNzBwUOolRayZHEJmxwaatgIbctEXRTG9hZCBDb25maWc='),
        Callback = function()
            if SelectedConfig then
                local ok, data = pcall(readfile, Library.Folders.Configs .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('xjSGnqdSWXqgMVYQKSNbLWWZHeJTtMGfIHVdwqpyydErmRyLupDAKtfLw==') .. SelectedConfig)
                if ok and data then Library:LoadConfig(data) end
            end
        end
    }):SubButton({
        Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('iKrAqCJFghvzLysWeaBDaVxACFiFDfLWGlQFDCxUmKggJQiDPrWpLudU2F2ZQ=='),
        Callback = function() if SelectedConfig then pcall(Library.SaveConfig, Library, SelectedConfig) end end
    })
    ConfigsSection:Button({
        Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('wALiPhGRIaHceiiXSbMWZshJXUtdNlEmgRGyYjWwsIunqdLhQLDIxzHQ3JlYXRl'),
        Callback = function()
            if not ConfigName or ConfigName == JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('fpdXdbWCrfMsWnILPsSNPJGgfeEtHlSRzwTGJNEiHtiGnoqFWVIDaDy') then return end
            pcall(function()
                if not isfile(Library.Folders.Configs .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('UMtJpMrhfyBmFWHuxYnHwQfrRfEjQXtbLcUrAARVBINTgHXaJjSckeeLw==') .. ConfigName .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ZxIfXYAZbleGdhdjsqMftsbgPcNBZPVbVEIuhKOPjGCdFIzFtEUNSSgLmpzb24=')) then
                    writefile(Library.Folders.Configs .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('OsXSjrDyrBwRUaRDkspYziqJhgkMfColnYKzAZLWzYkvZILNYimeomzLw==') .. ConfigName .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('sCNVVNaGEajJEALlrAGJzUAuxjpcbxBJqmPdmywudypGdoFunnBqwLqLmpzb24='), Library:GetConfig())
                    Library:RefreshConfigsList(ConfigsListbox)
                end
            end)
        end
    }):SubButton({
        Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('IIxirJauYWXfZkojDxfkdJzJqHrSMnzmZSVxXGPFsiYdjpOzoJoqmsrRGVsZXRl'),
        Callback = function()
            if SelectedConfig then pcall(delfile, Library.Folders.Configs .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('lCewzMPlZWjVoHKFCOjnRNULIuaeFHlMjKBrlRhdNbfiWeBHiwbsdLdLw==') .. SelectedConfig); Library:RefreshConfigsList(ConfigsListbox) end
        end
    })
    ConfigsSection:Button({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('xigOiSnJHHTuEvjHaKHkISePnQMjUpuXnFaHNDkTwuIeVhzEHbmYOWJUmVmcmVzaA=='), Callback = function() Library:RefreshConfigsList(ConfigsListbox) end })
    Library:RefreshConfigsList(ConfigsListbox)
    ConfigsSection:Label(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('HHptKrYMjpbptKultGxNLactGcWRjXCwWboxGpNSbtcrFBPRteSGusWTWVudSBLZXliaW5k'), JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('aNfYbQBCnMfqOKSPNkKsmQGQZOSupzzDFfaYtOgMhuWurfjhFcrMgOdTGVmdA==')):Keybind({
        Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('aPDhEToWwhofVtDKWNQxVhEppjaIwgLQbJiQiTTQVbEpcZPblGEscUbTWVudSBLZXliaW5k'),
        Flag = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('PDqktnaHTkvTeCULakhvOxNVCkOPkjiYXLrGHmJWlEjNmhbZenXPwZpTWVudSBLZXliaW5k'),
        Default = Enum.KeyCode.RightControl,
        Mode = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('AWLmmAsSdNMJdbPSGyzfajilHdEcAkvoJPbJHegloficyyBYkHpnGSzVG9nZ2xl'),
        Callback = function()
            Library.MenuKeybind = Library.Flags[JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('UMaQAheMQUuYkhMOlmyToVJDcSDYjLECzlfEJVMDlqjBjGYVpiLPZFgTWVudSBLZXliaW5k')].Key
        end
    })
    ConfigsSection:Toggle({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('rqhJyymnpEdAnNhTSoWfUZAoRBqkiWexJRTQHQGFJVcyxMGHILixzxwV2F0ZXJtYXJr'), Default = false, Callback = function(v) Watermark:SetVisibility(v) end })
    ConfigsSection:Toggle({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('RxXNhLMVxMMzZTpCCvmoXydzaGqveDbvhUkjyFwuTmpLzmeeOnfgGDvS2V5YmluZCBMaXN0'), Default = false, Callback = function(v) KeybindList:SetVisibility(v) end })
    ConfigsSection:Dropdown({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('aLMpSgjXAsxBARINbozNXTiceppUBahmCYHkdmJWcrcLqHfTTbOhWOZU3R5bGU='), Items = {JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('PxwnutQFXeVZXgeRUtNnkAOaPrVOELlUntQSKJLSEtiIkOVtMgDkFrNTGluZWFy'),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('pZsCnvVMLXougIgDhWsvFJXSmczofXEzCkwOjIWsyvSmsHNkXjDHOFdU2luZQ=='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('jMFvGIHcQUiXjpuzmzykSKHFJGkJTUUBkgoVNDTyIrnaWCRVQquIotCUXVhZA=='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('XFGOmfpfWPevOyWvPgVEqZctmCiXjjJDjothdxISQCjjQKzNPQZsGUfQ3ViaWM='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('KeXVXpbSPfAmgamOtMgxsBOLPeuwgXgwdsxGLmCkYntgqGRmzeyjdzRUXVhcnQ='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('JXydaNvIPauVbYRlRCeBZhJrdVVzPHdwRTtmffGdaXxjRSnjdYhXYDCUXVpbnQ='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('PCQnZBUwxZPMnsjXybWeNxndhlFthRijZNWwOVzlRnXQUpAmftIYIVHRXhwb25lbnRpYWw='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('dLEDsxMVVvHFRLuMaLGIqeCduZJqlvkNoPHTGlOQeWXkmOVLFdourJrQ2lyY3VsYXI='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('hWLLGivPRdyzFCWtRNHZneALarCMAcBFIkYJwIcMjxyRZHrjxBoWbVdQmFjaw=='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('bqWrnBrWIQTfsozplwvouMDsiVKlsTFpLbavqYVHoisCrtPCUIFYwvjRWxhc3RpYw=='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('WfifuxFcikNRsPjwJmNXiHSEyNOLjxMlAWFWosMlHhrQdqGwZHhzLAxQm91bmNl')}, Default = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('UhstUcgwlcjNOAJCACwEVkfvIjkkbLKodVjEtWhZIIJdobBOsMwmsBHRXhwb25lbnRpYWw='), Callback = function(v) Library.Tween.Style = Enum.EasingStyle[v] end })
    ConfigsSection:Dropdown({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('tTuMdibItEhryTZICmZWCTvcuCWJEsmIFrwNlOBEXKRHzYSIqTqMODlRGlyZWN0aW9u'), Items = {JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('LzasBTJVZVeNOipKPjyJIyuTtBRWnCoHckLtcdppJFxfoOcUBLrArtJSW4='),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('CRYZmwiRToTvUppXAGoEcIPCKyvFpdyetbsMKrtBkGiaTvbIsszHoaUT3V0'),JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('PQXyNplgjLduDJOYKyguPvvyqjXCaUjyRmEtYYqlPJNCISBYybgyZTGSW5PdXQ=')}, Default = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('ilVQGmUQPaeNvVbckLBEaqNvCKjVxEYscwbUQDybrrBlrZIYFgpXHRRT3V0'), Callback = function(v) Library.Tween.Direction = Enum.EasingDirection[v] end })
    ConfigsSection:Slider({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('mxdfUVJbJGBhJeyyPmXDQyrqDDHCDdRkuqhwAJHZoZVlyJHnfjItSRKVHdlZW4gVGltZQ=='), Min = 0, Max = 5, Default = 0.25, Decimals = 0.01, Callback = function(v) Library.Tween.Time = v end })
    ConfigsSection:Button({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('yJtSkeYrUlWtHOAhEIcBhQRMCPocEsQTovTYEYISYtGVxibQUalgJQqTm90aWYgVGVzdA=='), Callback = function() Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('bTqwcCkldDetnnbbbKpdAmdLYYGauWVksuulPqAvdNOHMtTCNYqJvxSVGVzdA=='), 5, Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))) end })
    ConfigsSection:Button({ Name = JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('NEfiGFcjXKvkIAUsMrHotmGXMjJKFchbrtwUPzIoinqSvWXxqCthEYlVW5sb2Fk'), Callback = function() Library:Unload() end })
end

Library:Notification(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('sScYBHuMsUgnXEKFPsPvnnjXcELgRcgxGmVHOthgtRJMDDKJcSwsIVqb2Zmc2V0LmdnIHJlbWFrZSA=') .. string.format(JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('HFNIqaDgzLCmdMyBvcXOhiGwZILIKnkBClkSXrKFtlMSyJMVfCIJTFrJS40Zg=='), os.clock() - LoadingTick) .. JSPbDOpHozULjRRNDZGOaMJTSMSDNpByzXlf('jjhdhjnwIzlylZBjhLDxKGhTxKOYkDJIHsviXLyYdZnpfiCggNcojkycw=='), 6, Color3.fromRGB(0,255,0))    
