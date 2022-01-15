getgenv().IsOn = true

spawn(function()
    while wait(0.5)do
        if getgenv().IsOn == true then
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
    end
end)