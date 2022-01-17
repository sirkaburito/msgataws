getgenv().IsOn = true
getgenv().IsOn2 = false

function AutoQuest()
        local args = {
            [1] = "11"
        }
        game:GetService("ReplicatedStorage").Events.zoneQuest:FireServer(unpack(args))
end

function AutoSell()
        local args = {
            [1] = "Sell",
            [2] = {
                [1] = {
                    [1] = "88"
                },
                [2] = {
                    [1] = "95"
                },
                [3] = {
                    [1] = "96"
                }
            }
        }
        game:GetService("ReplicatedStorage").Events.inventory:FireServer(unpack(args))
end

function AutoOpen()
        game:GetService("ReplicatedStorage").Events.drink:FireServer()
        local args = {
            [1] = "Open",
            [2] = "6666"
        }
        game:GetService("ReplicatedStorage").Events.inventory:FireServer(unpack(args))
end

spawn(function()
    while wait(0.5)do
        if getgenv().IsOn == true then
            AutoSell()
            AutoOpen()
        end
        if getgenv().IsOn2 == true then
            AutoQuest()
        end
    end
end)
