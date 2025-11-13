local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


local GameInformation = loadstring(game:HttpGet(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('PGWxCbWzhaCVWRLZyfDyzWAgHNHPEoakToACstxbbPsctYuzcxqtHHCaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1RoZVJlYWxYT1JBL1JvYmxveC9yZWZzL2hlYWRzL01haW4vU2NyaXB0cyUyMC9VdGlsaXRpZXMlMjAvRmV0Y2glMjBHYW1lJTIwSW5mb3JtYXRpb24ubHVhdQ=='), true))()
if not GameInformation.Name:find(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('DXrGbLfLRziSZtagfqfSUrCkdapEYEzGbAVozSVvTMdAKmwovlXJcwIWmVlIEhvb2Q=')) then return end
loadstring(game:HttpGet(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('hFZOLzVBJhtGEUpblbepraOMHlIeyIPpYROgIqzTbLhJXAUJQOHjzjRaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1RoZVJlYWxYT1JBL1JvYmxveC9yZWZzL2hlYWRzL01haW4vU2NyaXB0cyUyMC9BbnRpLUNoZWF0cyUyMEJ5cGFzc2VycyUyMC9BZG9uaXMubHVhdQ=='), true))()

local OriginalNameCall
OriginalNameCall = hookmetamethod(game, CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('ZLXUHmwfqaLuAGztHxoPfTJgeMaNWyICoGDMvcUrdwQnDybfkAiAvhiX19uYW1lY2FsbA=='), newcclosure(function(Object, ...)
    local Arguments = {...}
    local Method = getnamecallmethod()
    if Method == CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('eHXxMJoHZJngxRwWKfszJcYQlTbpNhntYIewuWBGqnAgdIDogixVNYHRmlyZVNlcnZlcg==') and Object.Name == CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('nTNqAjvfMngiZKLEDHPUkhFXsBLxHtNMOcGXMQNWAVfyhfHnzVWEnTPTWFpblJlbW90ZUV2ZW50') and Arguments[1] == CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('AkFJrAqWwbAZmqVFOrbAsOqBoUUFBidgWAKHAZLVIkEtMNDmctKbPHCRGV0ZWN0aW9u') then
        return coroutine.yield()
    end
    return OriginalNameCall(Object, ...)
end))

local Handler = game:FindService(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('mFiVTGNQFOAEUFwlMkObpIVVhZybkSvmMdyrEadyDlyIbmXwfpDUnCTUmVwbGljYXRlZFN0b3JhZ2U=')):WaitForChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('fmbegorFfOZYOFJtRuZbkZJZdWNHbfRCuaFqDNlLRTNnsXMctLQWETKTWFpbk1vZHVsZQ=='))
local Module = require(Handler)
Module.Ignored = {
    workspace:WaitForChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('OoQjAdjmGgyFwPhxoreOutXiKcVBVDsApgmWiIQyOaNFodEkqjlPfWJVmVoaWNsZXM=')),
    workspace:WaitForChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('uiZZSpCeVznNtzyupUXKtpskEkXshirjnUKKvdDgDkhcAYtBrVZOGFQTUFQ')),
    workspace:WaitForChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('kfsfvYSTmEKoVFKSuAPRbrLfgmqZCIBdTjQmreNCQZUAVVZcvjgTWoISWdub3JlZA=='))
}

local Library = loadstring(game:HttpGet(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('vQKFQDEXdzYCfTDAisqZKPCbwWRAbLekMSsFbOnpzwQQKaPGrftwICFaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2k3N2xobS9MaWJyYXJpZXMvcmVmcy9oZWFkcy9tYWluL1V0b3BpYS9MaWJyYXJ5Lmx1YQ==')))()
local LoadingTick = os.clock()
local Window = Library:Window({
    Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('ZABRAMJDCnotQxGBJpdzwgMwaiotLodEMCNEFfalLFplzGQFAhmaxLMb2Zmc2V0LmdnIHJlbWFrZQ=='),
    GradientTitle = { Enabled = true, Start = Color3.fromRGB(255,255,255), Middle = Color3.new(0.431373, 0.019608, 0.411765), End = Color3.new(0.819608, 0.819608, 0.819608), Speed = 1 }
})
local Watermark = Library:Watermark(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('rQkUPOuvUuTFVMNdVTAsxCBomeIujfvCewqlqXMfJpKJrWJOAJcFbtCb2Zmc2V0LmdnIHJlbWFrZQ=='), {CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('rZHEsilfweXxWWpxuEeNGvmxOugYIOtXiBduvciLgTfMsRQPlBFnrJjNzc5NzQxNTM2NTc4OTE='), Color3.fromRGB(149,255,139)})
local KeybindList = Library:KeybindList()
Watermark:SetVisibility(false)
KeybindList:SetVisibility(false)

local CombatTab = Window:Page({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('GHFBOdLGZPaELnildwPDFbdKDYPNoMzFJDsPTsMfzxpyyzTZOFTvUECQ29tYmF0'), Columns = 2})
local MovementTab = Window:Page({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('azaomwWqgNkdNvbJUalaZCbYDSSVhkvoVZSWwKbYFvKIaZkvjbzvlLVTW92ZW1lbnQ='), Columns = 2})
local VisualTab = Window:Page({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('yPBpyFivSDqeqKISCRuBiJjxZTJroUbLzEtQgsJxYhDUgyHIUNLrOYPVmlzdWFs'), Columns = 2})
local MiscTab = Window:Page({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('ngLDJnUbUrelEkGVqEATsTbggvxefeKOnUHhoMWdXEIOQRYmokuAcQCTWlzYw=='), Columns = 2})
local SettingsTab = Window:Page({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('gitftZApZHyWuXkfnxCHhDhMpTVgrWcvCNrgNxOKFesMxEAOCTZrjbtU2V0dGluZ3M='), Columns = 2})

local Players = game:GetService(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('PVsfisiGFHVNVPIzfFNiWlqyVBOcXuLZcpZWDIHazFxtfltwEWPcyXLUGxheWVycw=='))
local UserInputService = game:GetService(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('cQbPmpWxkLdeiQYZDFweQpQEXYqQavZKEitIMwhIvBkipjBCMHtFIPOVXNlcklucHV0U2VydmljZQ=='))
local ReplicatedStorage = game:GetService(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('IXnWXRjHQVHKlFaPkduCmCUlezVDEoHdMBNSpIBbpJfnzEyrgCvFgkoUmVwbGljYXRlZFN0b3JhZ2U='))
local RunService = game:GetService(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('IbblmStOZKNvDDITUBxMmwTGMHdxQMDZEFICMCHVRzAUcJRxNujIUnPUnVuU2VydmljZQ=='))
local Workspace = game:GetService(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('tiwRGyOIpLsRewgxjTEDYMAMIYooohPFvJWOolsFwAEQuqBUMEVETdtV29ya3NwYWNl'))
local Camera = Workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Inset = game:GetService(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('XytqzXzvsaIlsmdxSWdWrNtigRimwGXTyqDObnTpVcEaTyDaInUjUqyR3VpU2VydmljZQ==')):GetGuiInset().Y

--------------------------------------------------------------------------------
-- INFINITE RESPAWN + POSITION SAVER (MISC TAB)
--------------------------------------------------------------------------------
local MiscSection = MiscTab:Section({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('jVmvuIbORWTOgtAlRphcYzdzCFybXUvaTzCtxcHiPhctNwczVUaokiQc2VtaSBnb2QgbW9kZQ=='), Side = 1})

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
    local hrp = character:WaitForChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('jXqlrGFsyFlOEXoawOXYVeDCFIkiuwPgxSkquYGGsXbduqqIZIvqJOKSHVtYW5vaWRSb290UGFydA=='), 5)
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

local function StartEndlessRespawnLoop()
    if RespawnLoop then RespawnLoop:Disconnect() end
    RespawnLoop = LocalPlayer.CharacterAdded:Connect(function(character)
        task.spawn(function()
            local hrp = character:WaitForChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('TyuVtKNRfTxaSBfoGnKbmzHUXrrYWepnrriiHTdNsKmcJagvZkYorXWSHVtYW5vaWRSb290UGFydA=='), 10)
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
    Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('LmuGxAIWLwGcfmsboaiRvkeIeUmHinVCCtXdUBQrlDVdBgBhwkcJzLpc2VtaSBnb2QgbW9kZQ=='),
    Default = false,
    Callback = function(state)
        Enabled = state
        if state then
            Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('gmQmvPCvjYEiuxAJfCzXHaGkTFSjRluuaEJIZiOIqXyXIGJiMkqYmyPc2VtaSBnb2QgbW9kZSBvbg=='), 2, Color3.fromRGB(0, 255, 0))
            local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            StartPositionTracking(char)
            StartEndlessRespawnLoop()
            InstantRespawn()
        else
            Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('AeJpPTFybRtvJEWGgJjqqjjxbkXmMPrInRRdiZsFQjahCpQUGExRUcsc2VtaSBnb2QgbW9kZSBvZmY='), 2, Color3.fromRGB(255, 100, 100))
            StopPositionTracking()
            if RespawnLoop then RespawnLoop:Disconnect() RespawnLoop = nil end
            SavedPosition = nil
        end
    end
})

--------------------------------------------------------------------------------
-- SILENT AIM + FOV
--------------------------------------------------------------------------------
local SilentCONFIG = {
    Enabled = false,
    HitPart = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('hbasRbJJmpqUVpRLDoKTcwivrEdTVisJgbIbNTeNijpBCPnYSPwUNywSGVhZA=='),
    Prediction = 0.165,
    FOVRadius = 150,
    ShowFOV = false,
    FOVCentered = false
}

local ScreenGui = Instance.new(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('IJdrySMvKOioxoxOMVNSpIqMRktxdNLcuTcWNIdzKyYnDeGKxelSrYoU2NyZWVuR3Vp'))
ScreenGui.Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('aBhPGyUeMbKwTjTdvydkbKGmbFrUzJWCtJLvJoRekOekideidjdBjujU2lsZW50Rk9W')
ScreenGui.Parent = game:GetService(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('lJRCNxXsabpplHGIlRNYVApPZpjvfQedEiXTgamsAvbNrMrfrvKTxahQ29yZUd1aQ=='))
ScreenGui.ResetOnSpawn = false

local FOVCircle = Instance.new(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('qTNwStjxuiFdgPrVjyjuiIJmvegKPiOLpGbdXEclyjsiJdBtmRANEIcRnJhbWU='))
FOVCircle.Size = UDim2.new(0, SilentCONFIG.FOVRadius * 2, 0, SilentCONFIG.FOVRadius * 2)
FOVCircle.AnchorPoint = Vector2.new(0.5, 0.5)
FOVCircle.BackgroundTransparency = 1
FOVCircle.Parent = ScreenGui

local FOVCorner = Instance.new(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('icLDMfFSAxgquutbkXPZgyqRNOsAJxYJvOmqTeaYHzBpAUSVFLtxsCpVUlDb3JuZXI='))
FOVCorner.CornerRadius = UDim.new(1, 0)
FOVCorner.Parent = FOVCircle

local FOVStroke = Instance.new(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('LyYXVbtnZPphMXYrlCWDSIjWbAuIbjUlUwdyePCjRVIIBpQabdRaqbmVUlTdHJva2U='))
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
            local hum = char:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('NFiSPTbhXYCeAZEYAjUxwnQrPuTkqYMVEnPOlpNSwNEkboPDpYOjWthSHVtYW5vaWQ='))
            local body = char:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('WXKmEfeTqODYPEXVnLPxrifMDJYqTHTwZGNeCJMutyhTRdBpmkaUwQYQm9keUVmZmVjdHM='))
            local ko = body and body:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('NBOfDvoHJDTQTaPoFXTnxhmkHCoufNgyKtBvjSgDQuQPyNIACAeErMYSy5P'))
            local grab = not char:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('sAUILLCJvHztLFCPYffxqFiJKYlpcNRJIkJQrhmojWMQKTLqflKdcAjR1JBQkJJTkdfQ09OU1RSQUlOVA=='))
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
silentOldIndex = hookmetamethod(game, CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('oaWCQBigkfXSqkwGailBSVdDESOdJWojMFUMxwTpufhGDUqXMZDZaPKX19pbmRleA=='), newcclosure(function(self, key)
    if not checkcaller() and self == Mouse and SilentCONFIG.Enabled and (key == CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('kzyJhUfybZJUPDsXUauibVLZLyrnblfQjHUrkBxcIJJPYEJUNdPJwnYSGl0') or key == CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('UQGPGfjQjEGIxUmonrqDulmadoVCIGVrGqqxyjPqGkbEQIxBCuNCuCfVGFyZ2V0')) then
        local target = GetClosestTarget()
        if target then
            local predicted = target.Position + (target.Velocity * SilentCONFIG.Prediction)
            if key == CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('boiAqfXyComOEPhylJNjCZrYlXZAvDIlNexNYndbjqRNwvPNvgkIwQVSGl0') then
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
local TargetAimSection = CombatTab:Section({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('HfAQpLjpyllEwpTGmIgYJscvlNnMNtUMjzRKKhaNcDZErUhhHNCdEhMVGFyZ2V0IEFpbQ=='), Side = 1})
local Target = nil
local Line = Drawing.new(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('rxKkKGttMIYyKchcWydaKbufAoQZvOzHrVGkYzunugSjRPfXaLogMxJTGluZQ=='))
Line.Thickness = 2
Line.Color = Color3.fromRGB(255, 0, 0)
Line.Visible = false

local viewDied, viewChanged, viewing = nil, nil, nil
local CONFIG = {
    TargetPart = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('fxyHYKANBmNWOOjhHmEpquNGHRtervGGCCpayxtQoRRHVJAJqWdUAZASGVhZA=='),
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
            local root = plr.Character:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('kLhxTSnGldgwQMancOdzZEyRPsQZKnJTMOPtEcinkiTviYixwQjvHwLSHVtYW5vaWRSb290UGFydA=='))
            local hum = plr.Character:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('mFeuoRLruzSNlDepAxKdcDxWcxILcGWcKEgPoJQCkMWuCuzOlaLFfUISHVtYW5vaWQ='))
            local ko = plr.Character:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('cDIERiNYtCxjvojwDptyvefpXQmokGaDLgQCAEQXqhnamUaYwaCXIXgQm9keUVmZmVjdHM=')) and plr.Character.BodyEffects[CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('gweUuqjYkhNsTwlNsBtDkRmDMokALMVWWIMTjGlYpOWDIRDBrAioCfcSy5P')].Value ~= true
            local grab = not plr.Character:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('yXueHrqpMFCMRWPayiDrKMImIdtKdPiBdvLnIxtnVvqlukAZnNpBJdKR1JBQkJJTkdfQ09OU1RSQUlOVA=='))
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
    local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('BwkNocgJquUgfLroqcBuHEfeEZJUntszcocOGKpwhuqrOLPOLfeKYErSHVtYW5vaWRSb290UGFydA=='))
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
            if key == CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('TsWvrUkRqIDkWPrwGOWrOhbUwhGvpdkYTUNTArIjjACLwZTJvyKgJNQSGl0') then return CFrame.new(pred)
            elseif key == CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('KwNSsMNhhlDdnBgACiDQqxIfPFcvqIaktPkanCitikIYJzbesKJNTCIVGFyZ2V0') then return part end
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
    Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('vDjqIcgFRbqfDozJuZEQiGNKBCtHeaJBSaIAMBMMzdokjpQOpBSmghVVmlld2luZyA=') .. viewing.DisplayName, 2, Color3.fromRGB(100, 255, 100))
    viewDied = viewing.CharacterAdded:Connect(function()
        repeat task.wait() until viewing.Character and viewing.Character:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('vmBbkUmOBOscEwFWRZJfvLcrmGgqOTKXdmEUKCCpIhxBRiKEBvpvOjLSHVtYW5vaWRSb290UGFydA=='))
        Camera.CameraSubject = viewing.Character
    end)
    viewChanged = Camera:GetPropertyChangedSignal(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('VZSspJqSuFViEjspiBYPKWnxhNyzgcuOiEKLYMbrGQlaVQbtFXnTqhxQ2FtZXJhU3ViamVjdA==')):Connect(function()
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
    Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('rGRPrPNfwJAohugMINbWGNGPVZVfFClOKLGCJVNmxmhERsQWqgIZPmaU3RvcHBlZCBWaWV3aW5n'), 2, Color3.fromRGB(255, 100, 100))
end

--------------------------------------------------------------------------------
-- RAPID FIRE + KILL AURA (TARGET ALL INSTANT)
--------------------------------------------------------------------------------
local CombatSection = CombatTab:Section({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('wvJIWaSaSJkQuXuuSCCTozSWdlSTISiwwhLxYYLjCJtPJNzNBaCqdOaUmFwaWQgRmlyZQ=='), Side = 2})
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
        if tool:IsA(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('HOGUsrnewCOZFAPEaHdEEJmyfrmXGQZfkPWfLNdLCqgEBmaDGdkScxBVG9vbA==')) and tool:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('PQgPYdLrYqLNvIWaHPwXmTNsApqUcpEeUtvgqHOZhFrDnmhLaSxOsYTSGFuZGxl')) then
            currentTool = tool
            local cd = tool:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('HwynQJQeCCQrZYoFYkeNxhelkEIhunTUrbEjmVNHJmnTvJYDMvEUHYTU2hvb3RpbmdDb29sZG93bg=='))
            if cd and cd:IsA(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('OKRdbCVNGTTchGgNUJsEKApTFmLuaNhaGnYyYYetCNpweNyYBFOfwXXTnVtYmVyVmFsdWU=')) then COOLDOWN = math.max(cd.Value * 0.5, 0.01) end
            local ammo = tool:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('TmYGldLgDqnsXNDAUXUIZEHLqOGqEYpKahWmKPfNdRZWtlcnnHuWJLRQW1tbw=='))
            if ammo and ammo:IsA(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('SPOHPnVnOsKzeqqxNPaHvDCcJshDwypgkeQutnqqBydbFjQQdhoDhTiVmFsdWVCYXNl')) then savedAmmoMax = ammo.Value > 0 and ammo.Value or 6 end
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

-- NORMAL FIRE (Rapid Fire / Silent Aim / Target Aim)
local function fire()
    if not currentTool or not currentTool.Parent then return end
    local handle = currentTool:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('pxMPkbJjWNAnOjNNbKaxsKJErSQosBMFVTgiYMnFeRircJJFqYtJFHYSGFuZGxl'))
    if not handle then return end

    local ammo = currentTool:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('VswVWirSgJKtHqJmrMnDqldQIWEOpWFNXWNUYWlfroWEclyKMnLTjVDQW1tbw=='))
    if ammo and ammo:IsA(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('mlteZAKNKhWkSPqQgZzowNPzPwfRlLEEjwTibOAizOgdsUgJTafxQyzVmFsdWVCYXNl')) then ammo.Value = savedAmmoMax end
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
        local remote = ReplicatedStorage.MainRemotes.MainRemoteEvent
        remote:FireServer(
            CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('DAhiBxntVqDRmYTdSIqYcsZFfaNzMHruxFuVfsgVHXkoFDvgJnJiZYHU2hvb3RHdW4='),
            handle,
            muzzlePos,
            finalHitPart ~= nil,
            finalHitPart,
            finalNormal,
            Workspace:GetServerTimeNow(),
            finalHitPart and finalHitPart.Size or Vector3.new()
        )
    end)

    local beam = Instance.new(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('haAthawNNZHLGKQbYrMKyRjrwrXfMUOwhXpspEmvbfQDYilXEbvzpjZUGFydA=='), Workspace)
    beam.Anchored = true
    beam.CanCollide = false
    beam.Material = Enum.Material.Neon
    beam.Transparency = 0.1
    beam.Size = Vector3.new(0.1, 0.1, (muzzlePos - finalPos).Magnitude)
    beam.CFrame = CFrame.new(muzzlePos, finalPos) * CFrame.new(0, 0, -beam.Size.Z/2)
    if useTarget then
        beam.Color = Color3.fromRGB(0,255,0)
    elseif useSilent then
        beam.Color = Color3.fromRGB(0,255,255)
    else
        beam.Color = Color3.new(1, 0.545, 0.149)
    end
    game:GetService(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('DBxLhBUxrDoOMeLMuwbNSMrQYfJKJThZqYyWXdCKRsKEbwBXZfYqjnrRGVicmlz')):AddItem(beam, 0.03)
end

-- TARGET ALL: INSTANT HIT EVERYONE
local function fireTargetAll()
    if not currentTool or not currentTool.Parent then return end
    local handle = currentTool:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('sTLvfuMKpbNzFxfotqTsQCmMxmGfhJiNEfEXootgWFqOawTauiLaJrvSGFuZGxl'))
    if not handle then return end

    local ammo = currentTool:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('WsgzLoFVzoaubPTlSgTbPleSTKGYNGSCpHNfKzOgzzdpaoieradNlSDQW1tbw=='))
    if ammo and ammo:IsA(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('KUvrucLpUnwxlVRdHnrpkQTzopaYcrQLwLUSzIWzoBXeDlKrDSwWDnyVmFsdWVCYXNl')) then ammo.Value = savedAmmoMax end
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
        local hum  = char:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('ZdpdIjKTScLUviWjYZRGaDbtJKoNBvdQCQCwtbFgRpWcPCaCfJdzyKWSHVtYW5vaWQ='))
        local body = char:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('jkhVdrSkxcMnQznArgSlxKHbaMSmuorvvaErtSVIyLZRlpLJcZCKmLnQm9keUVmZmVjdHM='))
        local ko   = body and body:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('KSMuDGeYqrWEInaKIpFLFWlgmtPSYAyqiCdXRdvVwEPoTwapYZtSQStSy5P'))
        local grab = not char:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('MlwWLqSOQqnxVSVWJJjCsRyKNgtXNchAxTfaFRCbXCGotQBlRQkCYFNR1JBQkJJTkdfQ09OU1RSQUlOVA=='))

        if part and hum and hum.Health > 0 and body and ko and not ko.Value and grab then
            table.insert(targets, {Player = plr, Part = part})
        end
    end

    for _, t in ipairs(targets) do
        task.spawn(function()
            local part = t.Part
            local pred = part.Position + (part.Velocity * SilentCONFIG.Prediction)
            local dir  = (pred - muzzlePos).Unit

local result = Workspace:Raycast(muzzlePos, dir * INF_RANGE, params)
local hit = result ~= nil
local hitPart = result and result.Instance
local normal = result and result.Normal
local hitPos = result and result.Position
            pcall(function()
                local remote = ReplicatedStorage.MainRemotes.MainRemoteEvent
                remote:FireServer(
                    CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('JLPapcPveCQQGmOefHHbzpmyHmyNtuFtNoXUgEwclQKcLAwkTvxcMcsU2hvb3RHdW4='),
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
            local beam = Instance.new(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('ALhNapcbQKYJNKCDLlbJAxmULzPmeHBrlKFGZJxaVxeHaOlSBqmlGdvUGFydA=='), Workspace)
            beam.Anchored = true
            beam.CanCollide = false
            beam.Material = Enum.Material.Neon
            beam.Transparency = 0.1
            beam.Color = Color3.fromRGB(255,0,0)
            beam.Size = Vector3.new(0.1, 0.1, dist)
            beam.CFrame = CFrame.new(muzzlePos, beamPos) * CFrame.new(0,0,-dist/2)
            game:GetService(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('wTraJYtLtPTQUJpJDMCzfBtpwxcJOEGSYlxZndTVsHwysMthhHwvocbRGVicmlz')):AddItem(beam, 0.03)
        end)
    end
end

-- MAIN FIRING LOOP – FIXED TO PREVENT NIL ERRORS
task.spawn(function()
    while true do
        task.wait(0.0005)
        if not (isHolding and currentTool) then continue end

        if targetAllEnabled then
            fireTargetAll()
        elseif rapidEnabled then
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
local MovementSection = MovementTab:Section({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('IGIxCccpvfGWdiYhPtKcvJExBAwvrxQThAzRBDYikNMrzOVFCceWOzlVFAgV2Fsaw=='), Side = 1})
local tpKeybindEnabled = false
local tpKeybindActive = false
local tpSpeed = 16

MovementSection:Toggle({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('uUTdlJRugHmPFOZCgHktWrHbHAdmqomlljlzSDjfgksvgVAoQifytnDVFAgV2Fsaw=='), Default = false, Callback = function(v)
    tpKeybindEnabled = v
    if not v then tpKeybindActive = false end
    Library:Notification(v and CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('azymjyyBLCjHghcNGvNunAAGNYsFBOsGmpQPTOzbGPQfmSZLhcnuUNvVFAgV2FsayBvbg==') or CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('MYiGIXYvnhJhABEQuBhMsViSEHLuXLabExUoeYBazojWgHgjqOiCxdHVFAgV2FsayBvZmY='), 2, v and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,100,100))
end})
MovementSection:Slider({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('dTrLIavmdUaVfzCOYRPmwAlOktKEhzNfmVFCbujEccANiaBNMbkcwrEVFAgV2FsayBTcGVlZA=='), Min = 0, Max = 100, Default = 16, Decimals = 1, Callback = function(v) tpSpeed = v end})
MovementSection:Label(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('dFjIViPcQfUImlUnrEkwLalQpSpQCpiGPNQuFelJvqkEyjhmzeZpwcvcHJlc3MgWiB0byB0b2dnbGU='), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('cYdLDoFbKVIAJmcuiafgPTVFVWyBTFuNOpMZDMhVhzUgbapopvtEPtCTGVmdA=='))

task.spawn(function()
    while task.wait() do
        if tpKeybindActive then
            local chr = LocalPlayer.Character
            local hum = chr and chr:FindFirstChildWhichIsA(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('lIlgNJEpFzuFBUZygZaQNSmzIhRFEMiCkrZvwOTAKpQVZTQiQytIEXySHVtYW5vaWQ='))
            if chr and hum and hum.MoveDirection.Magnitude > 0 then
                chr:TranslateBy(hum.MoveDirection * tpSpeed * 10 * RunService.Heartbeat:Wait())
            end
        end
    end
end)

--------------------------------------------------------------------------------
-- CAMERA FLY (F)
--------------------------------------------------------------------------------
local FlySection = MovementTab:Section({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('GVqOYOJaZjAtkrpnDKFRSxbvvowgPnpHdBtJlLfveOqaIMBWCQBHiNxY2ZyYW1lIGZseQ=='), Side = 2})
local flyKeybindEnabled = false
local flyKeybindActive = false
local flySpeed = 50
local isFlying = false
local flyConnection = nil

FlySection:Toggle({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('iYklZNGeZHHHmdGthvccoZygxgIPfLxGgsYhtXcMwxErTExfrQGHPwJRmx5'), Default = false, Callback = function(v)
    flyKeybindEnabled = v
    if not v then flyKeybindActive = false; stopFlying() end
    Library:Notification(v and CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('zIZGvcVIphnmaDVrOnhBzayyEcDWAvCgYgLnLGPgpfsNGXvJZWpsWVCRmx5IG9u') or CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('gckrGGRzZfgEJEWVVklJgJiZtQctaGJeWxHXsVYCVLtJwVevVtznDzSRmx5IG9mZg=='), 2, v and Color3.fromRGB(0,255,255) or Color3.fromRGB(255,100,100))
end})
FlySection:Slider({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('LVvEpFgSOVsELIbHeJMqlblLsKXiDwrXsMNfuxgKzIxePWfyBGazYGjRmx5IFNwZWVk'), Min = 10, Max = 200, Default = 50, Decimals = 1, Callback = function(v) flySpeed = v end})
FlySection:Label(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('YEIZgjRSfAiGXgylCqmdPDDWEufUOgamuAjXKifMVZOHEndfDXjsXaXcHJlc3MgRiB0byB0b2dnbGU='), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('tySxOnbWwlYTFTZfUXEABTIFLymmAJOaqukGhufVHlvWgmQTftiEgkCTGVmdA=='))

local function startFlying()
    if isFlying then return end
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('YCvEjHVhzYmGUXRokbMydwDlqEjOjnLPhEWLyvKHIxZSuVNoegjbIlaSHVtYW5vaWRSb290UGFydA=='))
    local hum = char and char:FindFirstChildWhichIsA(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('iLztltGTgUhzELrEnabYqnesEyLjWNpxWVneMpnmQVWeGWGjCewdvcPSHVtYW5vaWQ='))
    if not root or not hum then return end
    isFlying = true
    local oldState = hum:GetState()
    root:SetAttribute(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('lQJwsbUeUQdzuCCfFeOqFYwkRIJXpDVYhXKwDjeZpHyauiwadzCdqtJT2xkSHVtYW5vaWRTdGF0ZQ=='), oldState)
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
    Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('MjoIfiuNUGqBYvAeaDJeuFpviHxFhOmezYckvJpbLulLDdBQzCpRxMlRmx5IE9OIChGKQ=='), 2, Color3.fromRGB(0, 255, 255))
end

local function stopFlying()
    if not isFlying then return end
    isFlying = false
    if flyConnection then flyConnection:Disconnect() flyConnection = nil end
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('xNcPAdKCzvMFvZASaMjOfBOFZGxrKNljKSQFGkuCulpOIdtsMNodCYNSHVtYW5vaWRSb290UGFydA=='))
    local hum = char and char:FindFirstChildWhichIsA(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('JrjmRTvFslppstuhssOagcQxxdGUAzaguiqRtIuQjjovooilnLeGaVSSHVtYW5vaWQ='))
    if hum and root then
        local oldState = root:GetAttribute(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('mGqgebwxUnRIdJcmLZZZQATzfvKkqQXGyMkafFsbikZxLNYzABqBcvUT2xkSHVtYW5vaWRTdGF0ZQ=='))
        hum:ChangeState(oldState or Enum.HumanoidStateType.GettingUp)
    end
    Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('DetuprjcerfHZSRPyHjTXRcimbyAhBMMlMSEtgxLoabXqkiNOClzMInRmx5IE9GRiAoRik='), 2, Color3.fromRGB(255, 100, 100))
end

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.F then
        if flyKeybindEnabled then
            flyKeybindActive = not flyKeybindActive
            if flyKeybindActive then startFlying() else stopFlying() end
        else
            Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('pttbpQbqyJdOimHCGRVqbtRDMZHhvzZjfwgNDXSrDXxeruqeDzCaKRpZW5hYmxlIGZseSBmaXJzdCBpbiB0aGUgdWk='), 2, Color3.fromRGB(255, 150, 0))
        end
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    if flyKeybindActive then task.wait(0.5) startFlying() end
end)

--------------------------------------------------------------------------------
-- SPINNING SWASTIKA
--------------------------------------------------------------------------------
local SwastikaSection = VisualTab:Section({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('xhnVaPWOCdsxFLcWFYqyAEQJpCVdTRRJeDReJpAecDUKOJSSSoURsRTU3dhc3Rpa2E='), Side = 1})
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
    local part = Instance.new(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('sYqpjLveYQdszMIvAChqSjCYVpSNALdarFySlUefJfpmVPXhJYHkUIhUGFydA=='))
    part.Size = size
    part.Color = SwastikaColor
    part.Transparency = SwastikaTransparency
    part.Material = Enum.Material.Neon
    part.Anchored = false
    part.CanCollide = false
    part.CFrame = rootPart.CFrame * CFrame.new(positionOffset)
    part.Parent = workspace
    local weld = Instance.new(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('VUSlCOODndFqfluOpzIeGhMOCpmLFMlJagkzqLiwMUpgPegJPVwfsrNV2VsZA=='))
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
    local rootPart = character:FindFirstChild(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('fBCVdtNkbVcZTDWtAChJYvcvHdgKzMuodEDudZORfEWjrZEYaqFaDstSHVtYW5vaWRSb290UGFydA=='))
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

SwastikaSection:Toggle({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('fRxQAcuOhRWtbHTsrgGsvFDBdnFmEpmUeIMEFJSkIPvxyDUZVsHtjAsU3dhc3Rpa2E='), Default = false, Callback = function(v)
    SpinEnabled = v
    if v then
        Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('pxLEMCxaZqcBlsAXtKkviVYNCxZDiVogWIKhkDoWENnnurMVdcxgDsJU3dhc3Rpa2Egb24='), 2, Color3.fromRGB(255, 0, 0))
        buildSwastika(LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait())
    else
        Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('hUXGwQWNZAAlRGaabdWqVfyLeAzsdfwWzgWTOPqyvyHrcmlJbGhpDxlU3dhc3Rpa2Egb2Zm'), 2, Color3.fromRGB(100, 100, 100))
        removeSwastika()
    end
end})

local ColorLabel = SwastikaSection:Label(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('GtSuLuRwUdZzMTCsJnvwYNZVCFLwYGdHHBbfViAuvXWltmsDoibLljAU3dhc3Rpa2EgQ29sb3I='), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('IUkgJABaXXLLSuvQIqRUwCWEIdMAGXDtzAkhyNeRuIVufcicrxbyIgaTGVmdA=='))
ColorLabel:Colorpicker({Default = Color3.fromRGB(255, 0, 0), Transparency = 0, Callback = function(color, alpha)
    SwastikaColor = color
    SwastikaTransparency = alpha or 0
    updatePartColors()
end})
SwastikaSection:Slider({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('yNMSwDOqatvIUEFhSvfiTucVuhKceTvFvBeXpSKJPhRwHpTbHXZqdAFU3BpbiBTcGVlZA=='), Min = 0.5, Max = 20, Default = 4, Decimals = 1, Callback = function(v) SpinSpeed = v end})
SwastikaSection:Label(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('nqxSyTNyXdJoedXigKpQNiUGfJqWvWPbWbmTgSmpktYLEHRgcqPfXiQYW55IGNvbG9y'), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('qFnCbHhjWqQvvXAiyaMeLraNROiIuTwJFaBORXgpuYeMvaNGXNKLmJKTGVmdA=='))
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

--------------------------------------------------------------------------------
-- FOV CHANGER
--------------------------------------------------------------------------------
local FOVSection = VisualTab:Section({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('cRQhtKZAzkZUhFvEGmmOlGgXSWyiSzcLvlCmQDZiiDhoVBQjmFjABqKRk9WIENoYW5nZXI='), Side = 2})
local FOVEnabled = false
local CustomFOV = 70

FOVSection:Toggle({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('UdzALCSfTaBvhkuEZfaJSrUgoIeKMzFyvKHAMmtYcIyLTUiHCqtwFUmRk9WIENoYW5nZXI='), Default = false, Callback = function(v)
    FOVEnabled = v
    if v then
        Camera.FieldOfView = CustomFOV
        Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('ANrLRytqIREOHXbjdoTtGgKzBHFvCWaGLxztReopQUOgLdmGrNpIQwkRk9WIHNldCB0byA=') .. CustomFOV, 2, Color3.fromRGB(0, 255, 255))
    else
        Camera.FieldOfView = 70
        Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('RzQBvREmjzJQxNnXhEgItBqBBuoOQYOKRrzOOABxjOjxcmxFQJtJVjCRk9WIHJlc2V0'), 2, Color3.fromRGB(255, 100, 100))
    end
end})
FOVSection:Slider({Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('zqSkjrmEcJEzVWxDcVpqeYUTllcyNmkzYBWkpzliSIOZpiClPcnWEXHRk9WIFZhbHVl'), Min = 0, Max = 120, Default = 70, Decimals = 1, Callback = function(v)
    CustomFOV = v
    if FOVEnabled then Camera.FieldOfView = v end
end})

RunService.RenderStepped:Connect(function()
    if FOVEnabled then Camera.FieldOfView = CustomFOV end
end)

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
            Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('kMaBZzEdJhALyjcOrltuEvLGUmrAouOiKlDBfQeXrPTXDPDyUkUFpSvVGFyZ2V0IFVubG9ja2Vk'), 2, Color3.fromRGB(255, 100, 100))
        else
            Target = getClosest()
            if Target then
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('QGSFAyexZQLwOASHYhkXRoIDKGivObJfyHBzPRXslFERwuKkAzUXCWmTG9ja2VkOiA=') .. Target.DisplayName, 2, Color3.fromRGB(100, 255, 100))
                if CONFIG.ViewLock then startViewing(Target) end
            else
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('xRpAhmRZLxYfMSVOSrbfwzpvumkDPliEHTvQOKPbsodiKKKYIfmlzCdTm8gVGFyZ2V0'), 2, Color3.fromRGB(255, 200, 100))
            end
        end
    end
    if input.KeyCode == Enum.KeyCode.Z then
        if tpKeybindEnabled then
            tpKeybindActive = not tpKeybindActive
            Library:Notification(tpKeybindActive and CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('kMeWAfMJhrcXKpiGpnjbXBqwEMVRzXSzAwkScsbPMPzloVTkPIjLHNJVFAgV2FsayBPTiAoWik=') or CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('LURnNxmdNfpEFShwHaOjPIEoSleVXRihUyLrQUjuRTMkPsKsIJSFLrHVFAgV2FsayBPRkYgKFop'), 2, tpKeybindActive and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,100,100))
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

TargetAimSection:Toggle({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('NimwyOgmtxhMnWpkhnRsoTLqbfaebhmOZMqyMfgUNXeHKgJnnebNjuvVGFyZ2V0IEFpbQ=='), Default=false, Callback=function(v) CONFIG.Enabled=v if not v then Target=nil Line.Visible=false stopViewing() end end})
TargetAimSection:Dropdown({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('gwlLKEdhjPXfuFGHkdRHcRMWNiUaLoAITzfTdFWipyxqkbjKIXgdvyaVGFyZ2V0IFBhcnQ='), Items={CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('dpdRItpqXdEqEiwjKihGOsOYELxcRbHDwCrNPkMdIWVhiwPSyToYWprSGVhZA=='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('LkSlFZuGJbTsHJAdNABiuKvonbBsDwwBSiDfyzwfQKuZnCofmSGaUXzSHVtYW5vaWRSb290UGFydA=='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('RwhGBuFofUIVANHzbASuchBXJOmanQnsNKICRFcGSYwfeKBqYDisCwxVXBwZXJUb3Jzbw==')}, Default=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('HHYyfJSYoftjTUPhCYmrWybjmfYYwdasqALbRtagFmMukcLYCdqABwMSGVhZA=='), Callback=function(v) CONFIG.TargetPart=v end})
TargetAimSection:Slider({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('AbFjajlWKxjxrgzvxRuDczCpOqjltEOjQSSwzlwmKoDvLCdwedfPoOvUHJlZGljdGlvbg=='), Min=0, Max=19, Default=13.5, Decimals=2, Callback=function(v) CONFIG.Prediction=v/100 end})
TargetAimSection:Toggle({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('PXFAaKJwMulBOrZiwhFVqZiUNgaLHHpsxrSDMxCYtZGkEveKsFQJWkaUmFpbmJvdyBUcmFjZXI='), Default=false, Callback=function(v) CONFIG.TracerRGB=v end})
TargetAimSection:Toggle({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('GrNAoliPewLsdFISeDQFxDLWrhajDvxCzGGBgeGkPrzFXXthvUdejFeVmlldyBMb2Nr'), Default=false, Callback=function(v) CONFIG.ViewLock=v end})
TargetAimSection:Label(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('SFEHwjgSAnKfQBBWjnqGCbyLLvIGPZoOocIJLTMGNTsyYIQFvcyEuDAS2V5YmluZDogUQ=='), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('UCpEKJVFKQtyHOWXmLaMTIoOGUWSjJkkJFvsQTOwnBgZjdXYyxawiJuTGVmdA=='))
TargetAimSection:Toggle({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('zuYSlequeuQNgTIJPGgQDwDjLuSOdYyrzFxHfbeWNMnhrdqGxaCFvoWU2lsZW50IEFpbQ=='), Default=false, Callback=function(v) SilentCONFIG.Enabled=v end})
TargetAimSection:Dropdown({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('UlxDpieZqcNPZmDOobxeYfmxpZsbJnKvqTzCanynDhBqyedVABYrItQU2lsZW50IEhpdFBhcnQ='), Items={CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('QhZaKwsUWInHqDUMyJPlEKNmfzGoxgaszhdiDonJfeBJQoQlxwCESNtSGVhZA=='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('zXTbgOJQuJLudxPcJiwqnQACcrLiPuysegwvfQpUxhJmcvYwljHgcYjSHVtYW5vaWRSb290UGFydA=='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('uEuPnTNGUeTvBoxdoUKzJCpCfsTcXXmlPDGOBAcrvfgSZXmYxdcjkWwVXBwZXJUb3Jzbw==')}, Default=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('UWjHkbacvDkQnstsAxwfjvnCfZFSvzZGeSgmDfqFrZpJyimPYaDQLeDSGVhZA=='), Callback=function(v) SilentCONFIG.HitPart=v end})
TargetAimSection:Slider({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('imtPTrptCoQYWGcjIvCUVWPdKXevsaNUUgkuGoTXScqUVfwvdrdvfcUU2lsZW50IFByZWRpY3Rpb24='), Min=0, Max=30, Default=16.5, Decimals=2, Callback=function(v) SilentCONFIG.Prediction=v/100 end})
TargetAimSection:Slider({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('UJnEnQAOxucsPcAyXrLmcbdfyjoOkSSLhWHpYpgetcscsDfPhGPcmiGRk9WIFJhZGl1cw=='), Min=10, Max=500, Default=150, Decimals=1, Callback=function(v) SilentCONFIG.FOVRadius=v end})
TargetAimSection:Toggle({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('JgvcqbZxibqiHGQyTzmojTpyQwmMWBfMaEWnIZDoiwgsYVVAOODuJaPU2hvdyBGT1YgQ2lyY2xl'), Default=false, Callback=function(v) SilentCONFIG.ShowFOV=v end})
TargetAimSection:Toggle({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('TQyrybDYoshyCzKjiPLohJlOUKTnQUYTNnDENGLCvOFOZSTUurFbNYtRk9WIENlbnRlcmVkIChDZW50ZXIgU2NyZWVuKQ=='), Default=false, Callback=function(v) SilentCONFIG.FOVCentered=v end})
TargetAimSection:Label(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('YjbjEYggNPBbcjCliNLCEEoGnuLipNfjtlaoquOJYrgHwOTJJHWxPNKcmFwaWQgZmlyZSB3b3JrcyBvbiBhbGw='), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('jMrSgFuAdHSQnWulMJAkBPDNmDtilBxNeKCPeDEYToBvSPsOCVyQbotTGVmdA=='))

CombatSection:Toggle({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('zftmJVAwCJXsLCtfxCNxzvsGxEXcVqWbIYfMmYBnTOBSTdoYONuKjpXUmFwaWQgRmlyZQ=='), Default=false, Callback=function(v) rapidEnabled=v end})
CombatSection:Toggle({Name=CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('yRwxFLcnxxuwapElXgKeqZhKzFyaSeuUGqflPatvChNnQBAWqVXZzImdGFyZ2V0IGFsbA=='), Default=false, Callback=function(v) targetAllEnabled=v end})
CombatSection:Label(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('FyTAQUaLKGXhHwJINLNftPymURvtRiGKRJPsUgchGEQAxPwNFdLVrFwanVzdCBob2xkIGxtYg=='), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('SBhCZstHPnJoytYQkIvwVUToflJjIcrTwacldzaudQdDYcbENymnMOCTGVmdA=='))

--------------------------------------------------------------------------------
-- SETTINGS TAB: THEMES + CONFIGS (FULLY WORKING)
--------------------------------------------------------------------------------
local ThemesSection = SettingsTab:Section({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('qxLUpQzDcMQoMlmhkaYSLRxGRwJfOJsrvDRUlGvKCiMuWWABgmQgKqyVGhlbWVz'), Side = 1 })
local ConfigsSection = SettingsTab:Section({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('nMyckuZteuUGMUXQSizQRfoMbYTfpLENDuhqrcformkxEszPFrxiSqwQ29uZmlncw=='), Side = 2 })

-- THEMES
do
    for Index, Value in Library.Theme do
        Library.ThemeColorpickers[Index] = ThemesSection:Label(Index, CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('RDrAJGETdyUbZEIeICOMAnFcdjuQgnulMRRBYDkoQarmQsVoehfLoTvTGVmdA==')):Colorpicker({
            Name = Index,
            Flag = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('vAlwguQBeuZVzJBVNTNxsceXbxoMJaGaboJbiDYcpoYFJsKPtRIsFdcVGhlbWU=') .. Index,
            Default = Value,
            Callback = function(Value)
                Library.Theme[Index] = Value
                Library:ChangeTheme(Index, Value)
            end
        })
    end
    ThemesSection:Dropdown({
        Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('tXcPMtKSmnUjlrpFUklDKpNihtHWdOniYffuHWekTFYZsvUFCkEDEDtVGhlbWVzIGxpc3Q='),
        Items = {CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('kzHkKIKIhCjMdCyMzbVNMWZKbzmajpZwgGjXfIYslyzTRRtQDScdIpeRGVmYXVsdA=='), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('ruHBqAaBvKZAqZhvUBXFPDfZmwMgSGUzXGqUFHlhAEVVJWfPKuRwvxlQml0Y2hib3Q='), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('CshjpJbuBvyFuoeDxawVLnJVDsYnfzWmyBUclucOnCfHTCSsrmseiibT25ldGFw'), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('zpDrSQiVcDqZNXIgdTuIcWBlCPcXcKgYBkzgsPaMMjtPjYQymtTATHVQXF1YQ==')},
        Default = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('rXcDbPrslMqaJTaRWokwKTFcdQixLzXKwLjumjSldjFSdXpDjODMwjRRGVmYXVsdA=='),
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
    local ThemesListbox = ThemesSection:Listbox({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('UXqlbyXCGfFuBhVWGfeZjeioWDGNApNnLrJQdaWOiaugpZfBhTCNlyfVGhlbWVzIExpc3Q='), Items = {}, Callback = function(v) SelectedTheme = v end })
    ThemesSection:Textbox({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('pTWjvdNZuygrBkGuynRSMRiuzrvRzYSSBRKmCxJxQWLZKoEkzMlmzpRTmFtZQ=='), Placeholder = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('WmFAEBegknzfFrCJNokNHxCkfgmEIKsxvtRTqzvLRqjeShNgfEKTfDXLiAuIC4='), Callback = function(v) ThemeName = v end })
    ThemesSection:Button({
        Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('VdhftrEbSShAwPrNucZssIeIOhVMSJhCsOhhxhnfYRNrmIqXqheNIWjU2F2ZSBUaGVtZQ=='),
        Callback = function()
            if not ThemeName or ThemeName == CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('LCHdJxBJsvssvJBwoGQAOitKhYDCqzUyaNoWVGlmVuXbaghuRkRviKT') then
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('dcIUQfYUuIXBErdnyQcesEUvKCLzuqEqTmoLKqWzfTtfBRPMacsYlIgRW50ZXIgYSB0aGVtZSBuYW1lIQ=='), 2, Color3.fromRGB(255,100,100))
                return
            end
            local path = Library.Folders.Themes .. CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('dHYFghHzYJyqNESnGjAWCBTJaNITjfAnfRhWHuisCXJGRRkALQJTwwqLw==') .. ThemeName .. CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('ZUKPxTiQcQYEvzqBpgZOUjXpShfhdFCrFEtjAOUwWFrzrFFLLCtRxGjLmpzb24=')
            if isfile(path) then
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('cGipQswoxlTlmGdGFaqkNgnyWOasJQCnUMZREUfKjYzAYuRZbJKJPNKVGhlbWUgYWxyZWFkeSBleGlzdHMh'), 2, Color3.fromRGB(255,150,0))
                return
            end
            pcall(function()
                writefile(path, Library:GetTheme())
                Library:RefreshThemeList(ThemesListbox)
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('FFIajdcaJViHZuqerTOIWLAyIjQZxpxdvKVILgITMRnxedmQlEqrxUXVGhlbWUgc2F2ZWQ6IA==') .. ThemeName, 2, Color3.fromRGB(0,255,0))
            end)
        end
    }):SubButton({
        Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('CVJQGepBuQZnVyLEUZheMpSCNlmYRZnOVhscLvgCpiEqGRNfvtLOAxYTG9hZA=='),
        Callback = function()
            if not SelectedTheme then
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('YAAkrsYJagXODmPTkhRPOXigcGUQvXqHhnsLcMwfExHcgypAJzKfYELU2VsZWN0IGEgdGhlbWUgZmlyc3Qh'), 2, Color3.fromRGB(255,100,100))
                return
            end
            local path = Library.Folders.Themes .. CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('bVKwZTEJgefrjCTFaIXJAmMadRLvgXRKCAFSezQUZnSfhMWKKnZusYPLw==') .. SelectedTheme
            local success, data = pcall(readfile, path)
            if success and data then
                Library:LoadTheme(data)
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('uXTFJUpfARzQoFsfFDEcWckyVaumQdAPNKlEostROvTjQoyKCBwnlgHVGhlbWUgbG9hZGVkOiA=') .. SelectedTheme, 2, Color3.fromRGB(0,255,0))
            else
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('MHlXFTDjReTIoKoZcPQDtGLNAqjyCwnfcJVRQnpeXsItbzzHqSSvbhQRmFpbGVkIHRvIGxvYWQgdGhlbWUh'), 2, Color3.fromRGB(255,100,100))
            end
        end
    })
    ThemesSection:Button({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('azOwrJOUsyLmoZLlEfCgrIAxBHrTxVzxbtgKGzpmuGGCRXoqgoJxjRhUmVmcmVzaA=='), Callback = function() Library:RefreshThemeList(ThemesListbox) end })
    Library:RefreshThemeList(ThemesListbox)
end

-- CONFIGS
do
    local ConfigName, SelectedConfig
    local ConfigsListbox = ConfigsSection:Listbox({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('FsqkcsyfgSDTvtdsDxSkwdNHJwvxGaMpBNYHtDLzajQNxLywyBEcpmCQ29uZmlncyBsaXN0'), Items = {}, Callback = function(v) SelectedConfig = v end })
    ConfigsSection:Textbox({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('gdggkMyxCNBcFMolMpRdcnaxTKVMIXDqPxSDfEvhJQCVWKkEbCVylWITmFtZQ=='), Placeholder = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('RXmhBmRwtwrLLANJOWREgkPirVzwbUsTxZcIddiseVoBnGSgfDApBFTLiAuIC4='), Callback = function(v) ConfigName = v end })

    ConfigsSection:Button({
        Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('TPhuLdNBYzVNRMFpoTBjnShXjeWFbRMijlvCCqsQFjmkJuAwDLKgQbFTG9hZCBDb25maWc='),
        Callback = function()
            if not SelectedConfig then
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('CqcMaBJvNgWQeqpUSUJmRfSFyDLreNHUNaixqZKesDtOzFhXgHqFnqHU2VsZWN0IGEgY29uZmlnIGZpcnN0IQ=='), 2, Color3.fromRGB(255,100,100))
                return
            end
            local path = Library.Folders.Configs .. CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('xNdZbkczdpUUIhTiaEjrzJmLEVEoRbAsypofPiQdLvwrIcVIrMrTNzHLw==') .. SelectedConfig
            local success, data = pcall(readfile, path)
            if success and data then
                Library:LoadConfig(data)
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('wsWHlMXUZDCDBqiSWzYgmCHEiJllHvRYdDQUBvcsRzCAJDZoHALGqhbQ29uZmlnIGxvYWRlZDog') .. SelectedConfig, 2, Color3.fromRGB(0,255,0))
            else
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('BAnvMnnFjoWxyUAKmGWXwnlkFgLCCuEkzMeSvBEUkdFyiqAhVHvlXdvRmFpbGVkIHRvIHJlYWQgY29uZmlnIQ=='), 2, Color3.fromRGB(255,100,100))
            end
        end
    }):SubButton({
        Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('qTZEcnKeWTQMtzBMHlWLRaaPbMOcUZfpwjkswSluhpohrujZcGsdJEyU2F2ZQ=='),
        Callback = function()
            if not SelectedConfig then
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('CRPIWaxsqWJxULifSjChGptFgPfsIXrDFLoewiFmbVmgIIODejsEpZBU2VsZWN0IGEgY29uZmlnIHRvIHNhdmUh'), 2, Color3.fromRGB(255,100,100))
                return
            end
            local path = Library.Folders.Configs .. CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('kOSqcNYlvaQuyptGXXxjcAsSkBVxuEkMiVjABRujArfvfGAPcnJbmuiLw==') .. SelectedConfig
            pcall(function()
                writefile(path, Library:GetConfig())
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('qodTzgHuDAAdVdnPCdZHrrUUELRXpuJFyKogluetZeKkvUvxXBJXEFwQ29uZmlnIHNhdmVkOiA=') .. SelectedConfig, 2, Color3.fromRGB(0,255,0))
            end)
        end
    })

    ConfigsSection:Button({
        Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('yhVbQncjujqWwJwiKHtdHiFqhJsiYGwTtqTSPrYwJGXMdUYKWZCbuKyQ3JlYXRl'),
        Callback = function()
            if not ConfigName or ConfigName == CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('doACIsucdWEKSBaaTfiwepuTFphxdOImEoSiRvVbncUnkQnwFMoARjr') then
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('gkiXFfGvXkAHvWVlIPGGKHUrAwSbAXzwCMhBtvmpGybINfdiKiNYcgBRW50ZXIgYSBjb25maWcgbmFtZSE='), 2, Color3.fromRGB(255,100,100))
                return
            end
            local path = Library.Folders.Configs .. CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('zhcdJhVuVxPwpHuQVqJXClQzfsskyDyEpjOrWuikposKHoanTvDmIvJLw==') .. ConfigName .. CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('fdHuGXoDWIbfPDCGzzLlmdoJTBpUphCTIZfMpaARziFDSWxNwLaHfOaLmpzb24=')
            if isfile(path) then
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('NCuQYQBtepKUxJQeccqqrRCEiJrwNJfeRaYdpYUFSoZeAGJkgxkKyYqQ29uZmlnIGFscmVhZHkgZXhpc3RzIQ=='), 2, Color3.fromRGB(255,150,0))
                return
            end
            pcall(function()
                writefile(path, Library:GetConfig())
                Library:RefreshConfigsList(ConfigsListbox)
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('gtjBTrmiODmQtTbUrULesQNoCwvQpbRCdeGPloepkEPbHFfIArpjttPQ29uZmlnIGNyZWF0ZWQ6IA==') .. ConfigName, 2, Color3.fromRGB(0,255,0))
            end)
        end
    }):SubButton({
        Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('ZkLSSQBQoUkZrczBDsHpTuRanhlzPVMNTaovMoYTecENoZDqsEMosApRGVsZXRl'),
        Callback = function()
            if not SelectedConfig then
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('HIhPmqzRDYDWDOUxrBbqBQTkyajpKDtwwPZOWwfSMumSGiJwFjjgPoIU2VsZWN0IGEgY29uZmlnIHRvIGRlbGV0ZSE='), 2, Color3.fromRGB(255,100,100))
                return
            end
            local path = Library.Folders.Configs .. CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('plVeDWIoDHylYRuAxicKLmQdAuhIvYmjbrQfVIjlMMqZooDxxQXSbIZLw==') .. SelectedConfig
            if pcall(delfile, path) then
                Library:RefreshConfigsList(ConfigsListbox)
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('oCeuMmgaOXdflpMPcmXuDedlhaaLIqqAyyyCzDBvooTjFnAQFVFcUuWQ29uZmlnIGRlbGV0ZWQ6IA==') .. SelectedConfig, 2, Color3.fromRGB(255,100,100))
            else
                Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('CLtHEQxWwiDZvzqPqmRcMXMuDpUtaCKNMLIPlAZbojNokAQpKZXSRTCRmFpbGVkIHRvIGRlbGV0ZSE='), 2, Color3.fromRGB(255,100,100))
            end
        end
    })

    ConfigsSection:Button({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('hprYZZsEzdvGyMdoBVyBkrJsYDVqAkXDKUXRuKoFIEMoyLsBjqaGpmzUmVmcmVzaA=='), Callback = function() Library:RefreshConfigsList(ConfigsListbox) end })

    ConfigsSection:Label(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('rdTHewiZtEuiSaOwgrvwEONOcnkxUqJlxLqmuclXFaiuBjMZjUEFgEmTWVudSBLZXliaW5k'), CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('dwcJmNuIavkiIrsvwaZDpdMYVRLmNVjsRQSZNSSFUgJHFqnslDLWvALTGVmdA==')):Keybind({
        Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('bbetUKYRlJFFSWiOBVwiSqdBHcCdiBepmOkneGQgIvhlHCDZmeqwUaATWVudSBLZXliaW5k'),
        Flag = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('NbKZXeTVKENZTOarFRBgoZalGpGTdgjFZlhzjYrraHoCcAaLUrGGcKhTWVudSBLZXliaW5k'),
        Default = Enum.KeyCode.RightControl,
        Mode = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('qxrDFMcTTJDggPYucWAtZVFnkXUthMphxysixFRerAnloGmRXpihCqnVG9nZ2xl'),
        Callback = function()
            Library.MenuKeybind = Library.Flags[CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('XdOthqPqGgENCALOEKqqwHGsanMkTkfORVogSVOiIBOABdDwxuhJcNRTWVudSBLZXliaW5k')].Key
        end
    })
    ConfigsSection:Toggle({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('DeQaUxYoLmfyohfNUEfaNgWNFzgtiinOGFEnjUzZARscKTSEPyZirOvV2F0ZXJtYXJr'), Default = false, Callback = function(v) Watermark:SetVisibility(v) end })
    ConfigsSection:Toggle({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('pGAgUfxmrvXSRKmrwnZRsNGBKJVKqCtkVHuUZsThEcwfUdPVGOnqhEVS2V5YmluZCBMaXN0'), Default = false, Callback = function(v) KeybindList:SetVisibility(v) end })
    ConfigsSection:Dropdown({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('qrYiGnBIZbMRWakTVQinAhwkCFqPnhSvwZTdTHbQAhtCiJZXAsYcUnoU3R5bGU='), Items = {CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('rXeIlRJpcZAIpoTCHjplSLoLqbfpgjmhvDQxMEpDxEmLuwejSgutfZcTGluZWFy'),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('hHvuxArEOnJaTumxrlmPUfiqebTqASdWGidNGnFAcfEjhWSMoATZfSPU2luZQ=='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('KYZsTbUrtHowXWyludIfWSdJYQZeghKVrJLncvptGQmFEDjqzmSKNRKUXVhZA=='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('VBRMBUcTrzQbJCqaCsSXkaVumcDYGwuUKojErhrePjiHcMWLuiVzjIKQ3ViaWM='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('BPQqLgtGafniPHIwYYgDrbLEpgKgdLCTnEAmlkdwKNlgDPJRkiLaYwsUXVhcnQ='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('WMbFuKvhxEvrtOdXPGZIfQfilbfStHkGecjhRmzJvvncEVodCLSvNkEUXVpbnQ='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('wKBtvGDiQQaHqCJXjJaJhoubmnXziwLbxVdLaCLNYeoKTdhFwPkoQzLRXhwb25lbnRpYWw='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('glulHIcHYmbbKxEdpmDuMVxyOEGfGRLhjkvNsiTOoekUlcIVBHIDGxyQ2lyY3VsYXI='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('TwZsOBeYUMbEJXqPyAJvcmsZcxtXlfJGEHOzFPECsFJlmUGljGPNbxXQmFjaw=='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('tWUcUololRcyZaCkjpIdnluYZbygUedJaAibxTbKesDtRZDhzZaWRLVRWxhc3RpYw=='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('SdsigFwWzojhIasGtvZgbliybkhFwyFmZYJusURcobejLnLhmiTQNklQm91bmNl')}, Default = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('NJSeWxlJLkjpsJqfdTnjowxfnmAhRkwGtkDXAPcHNoFwCKbslatRfLcRXhwb25lbnRpYWw='), Callback = function(v) Library.Tween.Style = Enum.EasingStyle[v] end })
    ConfigsSection:Dropdown({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('SXPVFSKQKVfbxAmTHxUzojSsAcBruDbNvNCIIiiDuMTyVDHgXxKXjaWRGlyZWN0aW9u'), Items = {CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('ZSWrIwCepBSLWLLBjtPUEexljjHmoRIcHKPiEJaRoHbHXXerSXhMQFySW4='),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('HothesWYkhlfjxXbXNBuImCPgbUrLKAdpAriKZGUjJWELZtDRkVLLbrT3V0'),CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('PZsbpuOaHzSzTOaNiHIbXqFJZkCyZYTddvQkawOytomniwhyGaEWWDDSW5PdXQ=')}, Default = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('SnUHrABKVXhdsqtWvnozkXRpQXvSNDUOcMRchjzDtcyGichVTKCxwoDT3V0'), Callback = function(v) Library.Tween.Direction = Enum.EasingDirection[v] end })
    ConfigsSection:Slider({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('esWUyzBmoammkYlnKTPuVuscnTwuVRkJeFfbHoWCBncbzKcGngpincMVHdlZW4gVGltZQ=='), Min = 0, Max = 5, Default = 0.25, Decimals = 0.01, Callback = function(v) Library.Tween.Time = v end })
    ConfigsSection:Button({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('uOvqBHVCIASZSmHJSZoDngBNbYrbBuoXzGoNgYtaFsWRPQecOeInwELTm90aWYgVGVzdA=='), Callback = function() Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('KREvoNFmvmaeAPQmyaRvAijFkbbWdBhUtBcSEXNgxkCBkVDRUsaEqHlVGVzdA=='), 5, Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))) end })
    ConfigsSection:Button({ Name = CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('KXCCslzGCjfmXYAxvczgJrADvWPYwbpmvrOSgFUvsTtyueywTlfhBjSVW5sb2Fk'), Callback = function() Library:Unload() end })

    Library:RefreshConfigsList(ConfigsListbox)
end

Library:Notification(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('oqOCAclJqtGycEKlRPRqEpqHPvnAkldHUFxDavDolIIFxVpHWUSqtgsb2Zmc2V0LmdnIHJlbWFrZSA=') .. string.format(CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('KsoyprmGbcTkhczxvxxGSafBpimgwoZfTUdPKZXgVYSXlpDlYXnUTJCJS40Zg=='), os.clock() - LoadingTick) .. CcQWXQRZEoKpmnCReAJpuBOHXZVAWAfnHJcrLloFaZWzOIbzVmsVtINGfvIDkVPeHjBuBO('LhkiPYsqEbVBMoZGpevJGqtRrAokrZCklWFWATUkxycyKMRKwbyunOYcw=='), 6, Color3.fromRGB(0,255,0))    
