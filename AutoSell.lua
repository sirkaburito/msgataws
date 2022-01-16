getgenv().IsOn = false
getgenv().IsOn2 = true

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
                    [1] = "49"
                },
                [2] = {
                    [1] = "50"
                },
                [3] = {
                    [1] = "52"
                },
                [4] = {
                    [1] = "53"
                },
                [5] = {
                    [1] = "A5"
                }
            }
        }
        game:GetService("ReplicatedStorage").Events.inventory:FireServer(unpack(args)) 
end

function AutoOpen()
    local args = {
        [1] = "Open",
        [2] = "666"
    }
    game:GetService("ReplicatedStorage").Events.inventory:FireServer(unpack(args))

    local args = {
        [1] = "Equip",
        [2] = "02"
    }
    game:GetService("ReplicatedStorage").Events.inventory:FireServer(unpack(args))

    local args = {
        [1] = "Equip",
        [2] = "03"
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
