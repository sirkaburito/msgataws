--_G.QGSkyboxLf = "rbxassetid://1417494402" -- SkyboxLf :now->Pink skybox
--_G.QGSkyboxBk = "rbxassetid://1417494030" -- SkyboxBk
--_G.QGSkyboxDn = "rbxassetid://1417494146" -- SkyboxDn
--_G.QGSkyboxFt = "rbxassetid://1417494253" -- SkyboxFt
--_G.QGSkyboxLf = "rbxassetid://1417494402" -- SkyboxLf
--_G.QGSkyboxRt = "rbxassetid://1417494499" -- SkyboxRt
--_G.QGSkyboxUp = "rbxassetid://1417494643" -- SkyboxUp
--_G.QGCashImage = "rbxassetid://6221762983" -- Cash Icon :now->SynapseX Icon (default value -> rbxassetid://5547581690)

--_G.SetCustomAnim = "No"  -- Yes/No     ->    You can change your anim on 'Custom' anim
                                            --(Everyone will be able to see the 'Custom' anim)
--_G.AutoLoadVisual = "Yes"  -- Yes/No     ->      If 'Yes' your config will automatically applied when script executed
                                            -- (This func includes load SkyBox and Cash Icon)
if getgenv().isLoaded == true then
    game:GetService("Players").LocalPlayer:Kick("Dude, why did you execute the script twice? Rejoining.")
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
else

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/sirkaburito/msgataws/main/WallyUILib.lua", true))()
local MainGUI = library.new("MSGAT Hub | Tower Defense Simulator")

local ConfigTable = {
    QGclocktime = 12;
    QGfogstart = 1;
    QGfogend = 500;
    QGfogcolor = game:GetService("Lighting").FogColor;
    QGhpbarcolor = game:GetService("Lighting").FogColor;
    QGwavebackground = game:GetService("Lighting").FogColor;
    QGwaveyesbackground = game:GetService("Lighting").FogColor;
    QGwaveyestext = game:GetService("Lighting").FogColor;
    QGwavenobackground = game:GetService("Lighting").FogColor;
    QGwavenotext = game:GetService("Lighting").FogColor;
    QGhotbarcashtext = game:GetService("Lighting").FogColor;
    QGhotbarcashtextstroke = game:GetService("Lighting").FogColor;
    QGhotbartowersbackground = game:GetService("Lighting").FogColor;
    QGhotbartowertext = game:GetService("Lighting").FogColor;
    QGupgradebackground = game:GetService("Lighting").FogColor;
    QGupgradebuttonbackground = game:GetService("Lighting").FogColor;
    QGupgradebuttontext = game:GetService("Lighting").FogColor;
    QGupgradestatsbackground = game:GetService("Lighting").FogColor;
    QGresultsbackground = game:GetService("Lighting").FogColor;
    QGresultsbuttonbackground = game:GetService("Lighting").FogColor;
    QGresultsbuttontext = game:GetService("Lighting").FogColor;
}
local SavedQGclocktime = "TDS_Config_QGclocktime.msgathub"
local SavedQGfogstart = "TDS_Config_QGfogstart.msgathub"
local SavedQGfogend = "TDS_Config_QGfogend.msgathub"
local SavedQGfogcolor = "TDS_Config_QGfogcolor.msgathub"
local SavedQGhpbarcolor = "TDS_Config_QGhpbarcolor.msgathub"
local SavedQGwavebackground = "TDS_Config_QGwavebackground.msgathub"
local SavedQGwaveyesbackground = "TDS_Config_QGwaveyesbackground.msgathub"
local SavedQGwaveyestext = "TDS_Config_QGwaveyestext.msgathub"
local SavedQGwavenobackground = "TDS_Config_QGwavenobackground.msgathub"
local SavedQGwavenotext = "TDS_Config_QGwavenotext.msgathub"
local SavedQGhotbarcashtext = "TDS_Config_QGhotbarcashtext.msgathub"
local SavedQGhotbarcashtextstroke = "TDS_Config_QGhotbarcashtextstroke.msgathub"
local SavedQGhotbartowersbackground = "TDS_Config_QGhotbartowersbackground.msgathub"
local SavedQGhotbartowertext = "TDS_Config_QGhotbartowertext.msgathub"
local SavedQGupgradebackground = "TDS_Config_QGupgradebackground.msgathub"
local SavedQGupgradebuttonbackground = "TDS_Config_QGupgradebuttonbackground.msgathub"
local SavedQGupgradebuttontext = "TDS_Config_QGupgradebuttontext.msgathub"
local SavedQGupgradestatsbackground = "TDS_Config_QGupgradestatsbackground.msgathub"
local SavedQGresultsbackground = "TDS_Config_QGresultsbackground.msgathub"
local SavedQGresultsbuttonbackground = "TDS_Config_QGresultsbuttonbackground.msgathub"
local SavedQGresultsbuttontext = "TDS_Config_QGresultsbuttontext.msgathub"

function loadconfig()
    local httpService = game:GetService("HttpService");
            if isfile(SavedQGclocktime) then
                ConfigTable.QGclocktime = httpService:JSONDecode(readfile(SavedQGclocktime))
            end
            if isfile(SavedQGfogstart) then
                ConfigTable.QGfogstart = httpService:JSONDecode(readfile(SavedQGfogstart))
            end
            if isfile(SavedQGfogend) then
                ConfigTable.QGfogend = httpService:JSONDecode(readfile(SavedQGfogend))
            end
            if isfile(SavedQGfogcolor) then
                ConfigTable.QGfogcolor = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGfogcolor)))
            end
            if isfile(SavedQGhpbarcolor) then
                ConfigTable.QGhpbarcolor = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGhpbarcolor)))
            end
            if isfile(SavedQGwavebackground) then
                ConfigTable.QGwavebackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGwavebackground)))
            end
            if isfile(SavedQGwaveyesbackground) then
                ConfigTable.QGwaveyesbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGwaveyesbackground)))
            end
            if isfile(SavedQGwaveyestext) then
                ConfigTable.QGwaveyestext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGwaveyestext)))
            end
            if isfile(SavedQGwavenobackground) then
                ConfigTable.QGwavenobackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGwavenobackground)))
            end
            if isfile(SavedQGwavenotext) then
                ConfigTable.QGwavenotext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGwavenotext)))
            end
            if isfile(SavedQGhotbarcashtext) then
                ConfigTable.QGhotbarcashtext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGhotbarcashtext)))
            end
            if isfile(SavedQGhotbarcashtextstroke) then
                ConfigTable.QGhotbarcashtextstroke = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGhotbarcashtextstroke)))
            end
            if isfile(SavedQGhotbartowersbackground) then
                ConfigTable.QGhotbartowersbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGhotbartowersbackground)))
            end
            if isfile(SavedQGhotbartowertext) then
                ConfigTable.QGhotbartowertext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGhotbartowertext)))
            end
            if isfile(SavedQGupgradebackground) then
                ConfigTable.QGupgradebackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGupgradebackground)))
            end
            if isfile(SavedQGupgradebuttonbackground) then
                ConfigTable.QGupgradebuttonbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGupgradebuttonbackground)))
            end
            if isfile(SavedQGupgradebuttontext) then
                ConfigTable.QGupgradebuttontext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGupgradebuttontext)))
            end
            if isfile(SavedQGupgradestatsbackground) then
                ConfigTable.QGupgradestatsbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGupgradestatsbackground)))
            end
            if isfile(SavedQGresultsbackground) then
                ConfigTable.QGresultsbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGresultsbackground)))
            end
            if isfile(SavedQGresultsbuttonbackground) then
                ConfigTable.QGresultsbuttonbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGresultsbuttonbackground)))
            end
            if isfile(SavedQGresultsbuttontext) then
                ConfigTable.QGresultsbuttontext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGresultsbuttontext)))
            end
end
function saveconfigs()
    local httpService = game:GetService("HttpService")
    if ConfigTable.QGclocktime  ~= nil  then
        writefile(SavedQGclocktime,httpService:JSONEncode(ConfigTable.QGclocktime))
    end
    if ConfigTable.QGfogstart  ~= nil  then
        writefile(SavedQGfogstart,httpService:JSONEncode(ConfigTable.QGfogstart))
    end
    if ConfigTable.QGfogend  ~= nil  then
        writefile(SavedQGfogend,httpService:JSONEncode(ConfigTable.QGfogend))
    end
    if ConfigTable.QGfogcolor ~= nil then
        writefile(SavedQGfogcolor,httpService:JSONEncode(ConfigTable.QGfogcolor:ToHex()))
    end
    if ConfigTable.QGhpbarcolor ~= nil then
        writefile(SavedQGhpbarcolor,httpService:JSONEncode(ConfigTable.QGhpbarcolor:ToHex()))
    end
    if ConfigTable.QGwavebackground ~= nil then
        writefile(SavedQGwavebackground,httpService:JSONEncode(ConfigTable.QGwavebackground:ToHex()))
    end
    if ConfigTable.QGwaveyesbackground ~= nil then
        writefile(SavedQGwaveyesbackground,httpService:JSONEncode(ConfigTable.QGwaveyesbackground:ToHex()))
    end
    if ConfigTable.QGwaveyestext ~= nil then
        writefile(SavedQGwaveyestext,httpService:JSONEncode(ConfigTable.QGwaveyestext:ToHex()))
    end
    if ConfigTable.QGwavenobackground ~= nil then
        writefile(SavedQGwavenobackground,httpService:JSONEncode(ConfigTable.QGwavenobackground:ToHex()))
    end
    if ConfigTable.QGwavenotext ~= nil then
        writefile(SavedQGwavenotext,httpService:JSONEncode(ConfigTable.QGwavenotext:ToHex()))
    end
    if ConfigTable.QGhotbarcashtext ~= nil then
        writefile(SavedQGhotbarcashtext,httpService:JSONEncode(ConfigTable.QGhotbarcashtext:ToHex()))
    end
    if ConfigTable.QGhotbarcashtextstroke ~= nil then
        writefile(SavedQGhotbarcashtextstroke,httpService:JSONEncode(ConfigTable.QGhotbarcashtextstroke:ToHex()))
    end
    if ConfigTable.QGhotbartowersbackground ~= nil then
        writefile(SavedQGhotbartowersbackground,httpService:JSONEncode(ConfigTable.QGhotbartowersbackground:ToHex()))
    end
    if ConfigTable.QGhotbartowertext ~= nil then
        writefile(SavedQGhotbartowertext,httpService:JSONEncode(ConfigTable.QGhotbartowertext:ToHex()))
    end
    if ConfigTable.QGupgradebackground ~= nil then
        writefile(SavedQGupgradebackground,httpService:JSONEncode(ConfigTable.QGupgradebackground:ToHex()))
    end
    if ConfigTable.QGupgradebuttonbackground ~= nil then
        writefile(SavedQGupgradebuttonbackground,httpService:JSONEncode(ConfigTable.QGupgradebuttonbackground:ToHex()))
    end
    if ConfigTable.QGupgradebuttontext ~= nil then
        writefile(SavedQGupgradebuttontext,httpService:JSONEncode(ConfigTable.QGupgradebuttontext:ToHex()))
    end
    if ConfigTable.QGupgradestatsbackground ~= nil then
        writefile(SavedQGupgradestatsbackground,httpService:JSONEncode(ConfigTable.QGupgradestatsbackground:ToHex()))
    end
    if ConfigTable.QGresultsbackground ~= nil then
        writefile(SavedQGresultsbackground,httpService:JSONEncode(ConfigTable.QGresultsbackground:ToHex()))
    end
    if ConfigTable.QGresultsbuttonbackground ~= nil then
        writefile(SavedQGresultsbuttonbackground,httpService:JSONEncode(ConfigTable.QGresultsbuttonbackground:ToHex()))
    end
    if ConfigTable.QGresultsbuttontext ~= nil then
        writefile(SavedQGresultsbuttontext,httpService:JSONEncode(ConfigTable.QGresultsbuttontext:ToHex()))
    end
end
    
local plr = game:GetService("Players").LocalPlayer
local pudge = plr.PlayerGui

function RenameFirstCommander()
    for i,v in pairs(game:GetService("Workspace").Towers:GetChildren())do
        if v.Name == "Default" then
            if v.Type.Value == "Commander" then
                v.Name = "Cumm1"
                print("Default->Cumm1")
            else
                print("First Commander is not placed")
            end
        elseif v.Name == "Cumm1" then
            print("Cumm1 already exist")
        end
    end
end
function RenameSecondCommander()
    for i,v in pairs(game:GetService("Workspace").Towers:GetChildren())do
        if v.Name == "Default" then
            if v.Type.Value == "Commander" then
                v.Name = "Cumm2"
                print("Default->Cumm2")
            else
                print("Second Commander is not placed")
            end
        elseif v.Name == "Cumm2" then
            print("Cumm2 already exist")
        end
    end
end
function RenameThirdCommander()
    for i,v in pairs(game:GetService("Workspace").Towers:GetChildren())do
        if v.Name == "Default" then
            if v.Type.Value == "Commander" then
                v.Name = "Cumm3"
                print("Default->Cumm3")
            else
                print("Third Commander is not placed")
            end
        elseif v.Name == "Cumm3" then
            print("Cumm3 already exist")
        end
    end
end
function sss()
    local ohString1 = "Troops"
    local ohString2 = "Abilities"
    local ohString3 = "Activate"
    local ohTable4 = {
    	["Name"] = "Call Of Arms",
    	["Troop"] = workspace.Towers.Cumm1
    }
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(ohString1, ohString2, ohString3, ohTable4)
    wait(10)
    local ohString1 = "Troops"
    local ohString2 = "Abilities"
    local ohString3 = "Activate"
    local ohTable4 = {
    	["Name"] = "Call Of Arms",
    	["Troop"] = workspace.Towers.Cumm2
    }
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(ohString1, ohString2, ohString3, ohTable4)
    wait(10)
    local ohString1 = "Troops"
    local ohString2 = "Abilities"
    local ohString3 = "Activate"
    local ohTable4 = {
    	["Name"] = "Call Of Arms",
    	["Troop"] = workspace.Towers.Cumm3
    }
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(ohString1, ohString2, ohString3, ohTable4)
    wait(10)
end
function prepforvisual()
    pudge.GameGui.Waves.Content.Yes.Move.Image = "SynapseX"
    pudge.GameGui.Waves.Content.No.Move.Image = "SynapseX"
    pudge.GameGui.Waves.Content.Image = "SynapseX"
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Upgrade.Background.Image = "SynapseX"
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Target.Background.Image = "SynapseX"
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Sell.Background.Image = "SynapseX"
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Image = "SynapseX"
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Damage.Image = "SynapseX"
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Cooldown.Image = "SynapseX"
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Range.Image = "SynapseX"
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.SpawnTime.Image = "SynapseX"
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Income.Image = "SynapseX"
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Hidden.Image = "SynapseX"
    pudge.GameGui.Hotbar.Troops["1"].Image = "SynapseX"
    pudge.GameGui.Hotbar.Troops["2"].Image = "SynapseX"
    pudge.GameGui.Hotbar.Troops["3"].Image = "SynapseX"
    pudge.GameGui.Hotbar.Troops["4"].Image = "SynapseX"
    pudge.GameGui.Hotbar.Troops["5"].Image = "SynapseX"
    pudge.GameGui.Menu.Containers.Settings.Content.Image = "SynapseX"
    pudge.GameGui.Results.Content.Lobby.View.Image = "SynapseX"
    pudge.GameGui.Results.Content.Image = "SynapseX"
    pudge.GameGui.Waves.Content.Yes.Move.BackgroundTransparency = 0.5
    pudge.GameGui.Waves.Content.Yes.Move.BorderSizePixel = 0
    pudge.GameGui.Waves.Content.Yes.Move.TextLabel.TextStrokeTransparency = 0.6
    pudge.GameGui.Waves.Content.No.Move.BackgroundTransparency = 0.5
    pudge.GameGui.Waves.Content.No.Move.BorderSizePixel = 0
    pudge.GameGui.Waves.Content.No.Move.TextLabel.TextStrokeTransparency = 0.6
    pudge.GameGui.Waves.Content.BackgroundTransparency = 0.5
    pudge.GameGui.Waves.Content.BorderSizePixel = 0
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Upgrade.Background.BackgroundTransparency = 0.5
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Upgrade.Background.BorderSizePixel = 0
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Upgrade.Label.TextStrokeTransparency = 0.6
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Target.Background.BackgroundTransparency = 0.5
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Target.Background.BorderSizePixel = 0
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Target.Label.TextStrokeTransparency = 0.6
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Sell.Background.BackgroundTransparency = 0.5
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Sell.Background.BorderSizePixel = 0
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Sell.Label.TextStrokeTransparency = 0.6
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.BackgroundTransparency = 0.5
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.BorderSizePixel = 0
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Damage.BackgroundTransparency = 0.5
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Damage.BorderSizePixel = 0
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Cooldown.BackgroundTransparency = 0.5
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Cooldown.BorderSizePixel = 0
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Range.BackgroundTransparency = 0.5
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Range.BorderSizePixel = 0
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.SpawnTime.BackgroundTransparency = 0.5
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.SpawnTime.BorderSizePixel = 0
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Income.BackgroundTransparency = 0.5
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Income.BorderSizePixel = 0
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Hidden.BackgroundTransparency = 0.5
    pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Hidden.BorderSizePixel = 0
    pudge.GameGui.Hotbar.Troops["1"].BackgroundTransparency = 0.5
    pudge.GameGui.Hotbar.Troops["1"].BorderSizePixel = 0
    pudge.GameGui.Hotbar.Troops["1"].Label.TextStrokeTransparency = 0
    pudge.GameGui.Hotbar.Troops["2"].BackgroundTransparency = 0.5
    pudge.GameGui.Hotbar.Troops["2"].BorderSizePixel = 0
    pudge.GameGui.Hotbar.Troops["2"].Label.TextStrokeTransparency = 0
    pudge.GameGui.Hotbar.Troops["3"].BackgroundTransparency = 0.5
    pudge.GameGui.Hotbar.Troops["3"].BorderSizePixel = 0
    pudge.GameGui.Hotbar.Troops["3"].Label.TextStrokeTransparency = 0
    pudge.GameGui.Hotbar.Troops["4"].BackgroundTransparency = 0.5
    pudge.GameGui.Hotbar.Troops["4"].BorderSizePixel = 0
    pudge.GameGui.Hotbar.Troops["4"].Label.TextStrokeTransparency = 0
    pudge.GameGui.Hotbar.Troops["5"].BackgroundTransparency = 0.5
    pudge.GameGui.Hotbar.Troops["5"].BorderSizePixel = 0
    pudge.GameGui.Hotbar.Troops["5"].Label.TextStrokeTransparency = 0
    pudge.GameGui.Health.Survival.Bar.Bg.UIGradient:Destroy()
    pudge.GameGui.Hotbar.Stats.Cash.Amount.UIGradient:Destroy()
    pudge.GameGui.Hotbar.Stats.Cash.Amount.UIStroke:Destroy()
    Instance.new("UIStroke",pudge.GameGui.Hotbar.Stats.Cash.Amount)
    Instance.new("UICorner", pudge.GameGui.Waves.Content.Yes.Move)
    Instance.new("UICorner", pudge.GameGui.Waves.Content.No.Move)
    Instance.new("UICorner", pudge.GameGui.Waves.Content)
    Instance.new("UICorner", pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Upgrade.Background)
    Instance.new("UICorner", pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Target.Background)
    Instance.new("UICorner", pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Sell.Background)
    Instance.new("UICorner", pudge.GameGui.Upgrade.Default.Primary.Container.Content)
    Instance.new("UICorner", pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Damage)
    Instance.new("UICorner", pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Cooldown)
    Instance.new("UICorner", pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Range)
    Instance.new("UICorner", pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.SpawnTime)
    Instance.new("UICorner", pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Income)
    Instance.new("UICorner", pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Hidden)
    Instance.new("UICorner", pudge.GameGui.Hotbar.Troops["1"])
    Instance.new("UICorner", pudge.GameGui.Hotbar.Troops["2"])
    Instance.new("UICorner", pudge.GameGui.Hotbar.Troops["3"])
    Instance.new("UICorner", pudge.GameGui.Hotbar.Troops["4"])
    Instance.new("UICorner", pudge.GameGui.Hotbar.Troops["5"])
    Instance.new("UICorner", pudge.GameGui.Menu.Containers.Settings.Content)
    Instance.new("UICorner", pudge.GameGui.Results.Content.Lobby.View)
    Instance.new("UICorner", pudge.GameGui.Results.Content)
    getgenv().prep = false
end
-- Main TAB
local MainTab = MainGUI:addPage("Main", 5012544693)
local MainSec1 = MainTab:addSection("Wave Skip")
local MainSec2 = MainTab:addSection("Chain Commanders")

MainSec1:addKeybind("Press button to skip", Enum.KeyCode.E, function()
    if game:GetService("ReplicatedStorage").State.Voting.Enabled.Value == true then
        local args = {
        [1] = "Waves",
        [2] = "Skip"
        }
        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
    end
end)
MainSec1:addToggle("Auto Skip", nil, function(v)
    getgenv().autowaveskip = v
    spawn(function()
        while wait()do
            if getgenv().autowaveskip == true then
                if game:GetService("ReplicatedStorage").State.Voting.Enabled.Value == true then
                    local args = {
                    [1] = "Waves",
                    [2] = "Skip"
                    }
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                end
            end
        end
    end)
end)

MainSec2:addToggle("Start Cumbine", nil, function(v)
    getgenv().sss = v
    spawn(function()
        while wait()do
            if getgenv().sss == true then
                sss()
            end
        end
    end)
end)
MainSec2:addButton("Place First Commander and click here", function()
    RenameFirstCommander()
end)
MainSec2:addButton("Place Second Commander and click here", function()
    RenameSecondCommander()
end)
MainSec2:addButton("Place Third Commander and click here", function()
    RenameThirdCommander()
end)

-- Visual TAB
local VisualTab = MainGUI:addPage("Visuals", 5012544693)
local VisualSec0 = VisualTab:addSection("Config management")
local VisualSec1 = VisualTab:addSection("Preparation for editing visuals")
local VisualSec = VisualTab:addSection("Lighting")
local VisualSec2 = VisualTab:addSection("HP Bar")
local VisualSec3 = VisualTab:addSection("Wave Skip")
local VisualSec4 = VisualTab:addSection("Hotbar")
local VisualSec5 = VisualTab:addSection("Upgrades")
local VisualSec6 = VisualTab:addSection("Results")

VisualSec0:addButton("Save Visual Config", function()
    saveconfigs()
    game:GetService("StarterGui"):SetCore("SendNotification", {
    	Title = "Config management";
    	Text = "saved.";
    	Duration = 0.1;
    })
end)
VisualSec0:addButton("Load Visual Config", function()
    loadconfig()
    game:GetService("StarterGui"):SetCore("SendNotification", {
    	Title = "Config management";
    	Text = "loaded.";
    	Duration = 0.1;
    })
end)
VisualSec1:addButton("Click here before editing", function()
    getgenv().prep = true
    if getgenv().prep == true then
        prepforvisual()
        getgenv().prep = false
    end
end)
VisualSec:addSlider("Clock Time", ConfigTable.QGclocktime, 0, 23, function(v)
    ConfigTable.QGclocktime = v
end)
VisualSec:addSlider("Fog Start", ConfigTable.QGfogstart, 0, 5000, function(v)
    ConfigTable.QGfogstart = v
end)
VisualSec:addSlider("Fog End", ConfigTable.QGfogend, 0, 5000, function(v)
    ConfigTable.QGfogend = v
end)
VisualSec:addColorPicker("Fog Color", Color3.fromRGB(ConfigTable.QGfogcolor), function(v)
    ConfigTable.QGfogcolor = v
end)
VisualSec2:addColorPicker("HP Bar", Color3.fromRGB(ConfigTable.QGhpbarcolor), function(v)
    ConfigTable.QGhpbarcolor = v
end)
VisualSec3:addColorPicker("Wave Background", Color3.fromRGB(ConfigTable.QGwavebackground), function(v)
    ConfigTable.QGwavebackground = v
end)
VisualSec3:addColorPicker("Yes Background", Color3.fromRGB(ConfigTable.QGwaveyesbackground), function(v)
    ConfigTable.QGwaveyesbackground = v
end)
VisualSec3:addColorPicker("Yes Text", Color3.fromRGB(ConfigTable.QGwaveyestext), function(v)
    ConfigTable.QGwaveyestext = v
end)
VisualSec3:addColorPicker("No Background", Color3.fromRGB(ConfigTable.QGwavenobackground), function(v)
    ConfigTable.QGwavenobackground = v
end)
VisualSec3:addColorPicker("No Text", Color3.fromRGB(ConfigTable.QGwavenotext), function(v)
    ConfigTable.QGwavenotext = v
end)
VisualSec4:addColorPicker("Cash Text", Color3.fromRGB(ConfigTable.QGhotbarcashtext), function(v)
    ConfigTable.QGhotbarcashtext = v
end)
VisualSec4:addColorPicker("Cash Text Stroke", Color3.fromRGB(ConfigTable.QGhotbarcashtextstroke), function(v)
    ConfigTable.QGhotbarcashtextstroke = v
end)
VisualSec4:addColorPicker("Towers Background", Color3.fromRGB(ConfigTable.QGhotbartowersbackground), function(v)
    ConfigTable.QGhotbartowersbackground = v
end)
VisualSec4:addColorPicker("Tower Text", Color3.fromRGB(ConfigTable.QGhotbartowertext), function(v)
    ConfigTable.QGhotbartowertext = v
end)
VisualSec5:addColorPicker("Upgrade Background", Color3.fromRGB(ConfigTable.QGupgradebackground), function(v)
    ConfigTable.QGupgradebackground = v
end)
VisualSec5:addColorPicker("Buttons Background", Color3.fromRGB(ConfigTable.QGupgradebuttonbackground), function(v)
    ConfigTable.QGupgradebuttonbackground = v
end)
VisualSec5:addColorPicker("Buttons Text", Color3.fromRGB(ConfigTable.QGupgradebuttontext), function(v)
    ConfigTable.QGupgradebuttontext = v
end)
VisualSec5:addColorPicker("Stats Background", Color3.fromRGB(ConfigTable.QGupgradestatsbackground), function(v)
    ConfigTable.QGupgradestatsbackground = v
end)
VisualSec6:addColorPicker("Results Background", Color3.fromRGB(ConfigTable.QGresultsbackground), function(v)
    ConfigTable.QGresultsbackground = v
end)
VisualSec6:addColorPicker("Button Background", Color3.fromRGB(ConfigTable.QGresultsbuttonbackground), function(v)
    ConfigTable.QGresultsbuttonbackground = v
end)
VisualSec6:addColorPicker("Button Text", Color3.fromRGB(ConfigTable.QGresultsbuttontext), function(v)
    ConfigTable.QGresultsbuttontext = v
end)

-- Settings TAB
local SettingsTab = MainGUI:addPage("Settings", 5012544693)
local SettingsSec = SettingsTab:addSection("UI")
local SettingsSec2 = SettingsTab:addSection("Misc")

SettingsSec:addKeybind("Show/Hide UI", Enum.KeyCode.RightShift, function()
    MainGUI:toggle()
end)
SettingsSec:addButton("Destroy UI", function()
    if game.PlaceId == 3260590327 then
        getgenv().isLoaded = false
        game:GetService("CoreGui")["MSGAT Hub | Tower Defense Simulator"]:Destroy()
    else
        print("MSGAT->DestroyUI->Works only in Lobby")
    end
end)
SettingsSec2:addSlider("WalkSpeed", 20, 1, 50, function(v)
    local hum = game.Players.LocalPlayer.Character.Humanoid
    hum.WalkSpeed = v
end)
SettingsSec2:addButton("ReJoin", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

-- Credits TAB
local CreditsTab = MainGUI:addPage("Credits", 5012544693)
local DiscordSec = CreditsTab:addSection("Discord -> https://discord.gg/A2SNUjxeNz")

DiscordSec:addButton("Click to copy invite", function()
    setclipboard("https://discord.gg/A2SNUjxeNz")
end)

spawn(function()
    print("MSGAT->Checker->IsLobby?")
    if _G.SetCustomAnim == "Yes" then
        local Animate = game.Players.LocalPlayer.Character.Animate
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
        print("MSGAT->CustomAnim->Loaded")
    end
    if game.PlaceId ~= 3260590327 then
        print("MSGAT->Checker->NotLobby-Launch->UV")
        print("MSGAT->UpdateVisual->Enabled")
        if _G.AutoLoadVisual == "Yes" then
            prepforvisual()
            Instance.new("Sky", workspace)
            local sky = game:GetService("Workspace"):WaitForChild("Sky"):Clone()
            sky.Name = "MsgatSky"
            sky.Parent = game:GetService("Lighting")
            sky.SkyboxLf = _G.QGSkyboxLf
            sky.SkyboxBk = _G.QGSkyboxBk
            sky.SkyboxDn = _G.QGSkyboxDn
            sky.SkyboxFt = _G.QGSkyboxFt
            sky.SkyboxLf = _G.QGSkyboxLf
            sky.SkyboxRt = _G.QGSkyboxRt
            sky.SkyboxUp = _G.QGSkyboxUp
            game.Players.LocalPlayer.PlayerGui.GameGui.Hotbar.Stats.Cash.Icon.ImageLabel.Image = _G.QGCashImage
            if isfile(SavedQGclocktime) then
                ConfigTable.QGclocktime = httpService:JSONDecode(readfile(SavedQGclocktime))
            end
            if isfile(SavedQGfogstart) then
                ConfigTable.QGfogstart = httpService:JSONDecode(readfile(SavedQGfogstart))
            end
            if isfile(SavedQGfogend) then
                ConfigTable.QGfogend = httpService:JSONDecode(readfile(SavedQGfogend))
            end
            if isfile(SavedQGfogcolor) then
                ConfigTable.QGfogcolor = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGfogcolor)))
            end
            if isfile(SavedQGhpbarcolor) then
                ConfigTable.QGhpbarcolor = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGhpbarcolor)))
            end
            if isfile(SavedQGwavebackground) then
                ConfigTable.QGwavebackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGwavebackground)))
            end
            if isfile(SavedQGwaveyesbackground) then
                ConfigTable.QGwaveyesbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGwaveyesbackground)))
            end
            if isfile(SavedQGwaveyestext) then
                ConfigTable.QGwaveyestext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGwaveyestext)))
            end
            if isfile(SavedQGwavenobackground) then
                ConfigTable.QGwavenobackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGwavenobackground)))
            end
            if isfile(SavedQGwavenotext) then
                ConfigTable.QGwavenotext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGwavenotext)))
            end
            if isfile(SavedQGhotbarcashtext) then
                ConfigTable.QGhotbarcashtext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGhotbarcashtext)))
            end
            if isfile(SavedQGhotbarcashtextstroke) then
                ConfigTable.QGhotbarcashtextstroke = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGhotbarcashtextstroke)))
            end
            if isfile(SavedQGhotbartowersbackground) then
                ConfigTable.QGhotbartowersbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGhotbartowersbackground)))
            end
            if isfile(SavedQGhotbartowertext) then
                ConfigTable.QGhotbartowertext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGhotbartowertext)))
            end
            if isfile(SavedQGupgradebackground) then
                ConfigTable.QGupgradebackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGupgradebackground)))
            end
            if isfile(SavedQGupgradebuttonbackground) then
                ConfigTable.QGupgradebuttonbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGupgradebuttonbackground)))
            end
            if isfile(SavedQGupgradebuttontext) then
                ConfigTable.QGupgradebuttontext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGupgradebuttontext)))
            end
            if isfile(SavedQGupgradestatsbackground) then
                ConfigTable.QGupgradestatsbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGupgradestatsbackground)))
            end
            if isfile(SavedQGresultsbackground) then
                ConfigTable.QGresultsbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGresultsbackground)))
            end
            if isfile(SavedQGresultsbuttonbackground) then
                ConfigTable.QGresultsbuttonbackground = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGresultsbuttonbackground)))
            end
            if isfile(SavedQGresultsbuttontext) then
                ConfigTable.QGresultsbuttontext = Color3.fromHex(httpService:JSONDecode(readfile(SavedQGresultsbuttontext)))
            end
            print("MSGAT->CfgVisual->Loaded")
        end
        print("MSGAT->UpdateVisual->Enabled")
        while wait(0.1)do
            game:GetService("Lighting").ClockTime = ConfigTable.QGclocktime
            game:GetService("Lighting").FogStart = ConfigTable.QGfogstart
            game:GetService("Lighting").FogEnd = ConfigTable.QGfogend
            game:GetService("Lighting").FogColor = ConfigTable.QGfogcolor
            pudge.GameGui.Health.Survival.Bar.Bg.ImageColor3 = ConfigTable.QGhpbarcolor
            pudge.GameGui.Health.Survival.Bar.Bg.BackgroundColor3 = ConfigTable.QGhpbarcolor
            pudge.GameGui.Waves.Content.BackgroundColor3 = ConfigTable.QGwavebackground
            pudge.GameGui.Waves.Content.Yes.Move.BackgroundColor3 = ConfigTable.QGwaveyesbackground
            pudge.GameGui.Waves.Content.Yes.Move.TextLabel.TextColor3 = ConfigTable.QGwaveyestext
            pudge.GameGui.Waves.Content.No.Move.BackgroundColor3 = ConfigTable.QGwavenobackground
            pudge.GameGui.Waves.Content.No.Move.TextLabel.TextColor3 = ConfigTable.QGwavenotext
            pudge.GameGui.Hotbar.Stats.Cash.Amount.TextColor3 = ConfigTable.QGhotbarcashtext
            pudge.GameGui.Hotbar.Stats.Cash.Amount.TextStrokeColor3 = ConfigTable.QGhotbarcashtextstroke
            pudge.GameGui.Hotbar.Troops["1"].BackgroundColor3 = ConfigTable.QGhotbartowersbackground
            pudge.GameGui.Hotbar.Troops["2"].BackgroundColor3 = ConfigTable.QGhotbartowersbackground
            pudge.GameGui.Hotbar.Troops["3"].BackgroundColor3 = ConfigTable.QGhotbartowersbackground
            pudge.GameGui.Hotbar.Troops["4"].BackgroundColor3 = ConfigTable.QGhotbartowersbackground
            pudge.GameGui.Hotbar.Troops["5"].BackgroundColor3 = ConfigTable.QGhotbartowersbackground
            pudge.GameGui.Hotbar.Troops["1"].Label.TextColor3 = ConfigTable.QGhotbartowertext
            pudge.GameGui.Hotbar.Troops["2"].Label.TextColor3 = ConfigTable.QGhotbartowertext
            pudge.GameGui.Hotbar.Troops["3"].Label.TextColor3 = ConfigTable.QGhotbartowertext
            pudge.GameGui.Hotbar.Troops["4"].Label.TextColor3 = ConfigTable.QGhotbartowertext
            pudge.GameGui.Hotbar.Troops["5"].Label.TextColor3 = ConfigTable.QGhotbartowertext
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.BackgroundColor3 = ConfigTable.QGupgradebackground
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Upgrade.Background.BackgroundColor3 = ConfigTable.QGupgradebuttonbackground
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Target.Background.BackgroundColor3 = ConfigTable.QGupgradebuttonbackground
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Sell.Background.BackgroundColor3 = ConfigTable.QGupgradebuttonbackground
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Upgrade.Label.TextColor3 = ConfigTable.QGupgradebuttontext
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Target.Label.TextColor3 = ConfigTable.QGupgradebuttontext
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Primary.Sell.Label.TextColor3 = ConfigTable.QGupgradebuttontext
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Damage.BackgroundColor3 = ConfigTable.QGupgradestatsbackground
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Cooldown.BackgroundColor3 = ConfigTable.QGupgradestatsbackground
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Range.BackgroundColor3 = ConfigTable.QGupgradestatsbackground
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.SpawnTime.BackgroundColor3 = ConfigTable.QGupgradestatsbackground
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Income.BackgroundColor3 = ConfigTable.QGupgradestatsbackground
            pudge.GameGui.Upgrade.Default.Primary.Container.Content.Stats.Hidden.BackgroundColor3 = ConfigTable.QGupgradestatsbackground
            pudge.GameGui.Results.Content.BackgroundColor3 = ConfigTable.QGresultsbackground
            pudge.GameGui.Results.Content.Lobby.View.BackgroundColor3 = ConfigTable.QGresultsbuttonbackground
            pudge.GameGui.Results.Content.Lobby.View.Text.TextColor3 = ConfigTable.QGresultsbuttontext
        end
    else
        print("MSGAT->Checker->ItsLobby->Bye")
        print("MSGAT->UpdateVisual->Disabled")
    end
end)

MainGUI:SelectPage(MainGUI.pages[1], true)
getgenv().isLoaded = true
end