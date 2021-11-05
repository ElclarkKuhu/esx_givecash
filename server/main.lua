RegisterCommand('givecash', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local target = ESX.GetPlayerFromId(tonumber(args[1]))
    
    local playerPed = GetPlayerPed(source)
    local targetPed = GetPlayerPed(tonumber(args[1]))

    local playerCoords = GetEntityCoords(playerPed)
    local targetCoords = GetEntityCoords(targetPed)

    if #(playerCoords - targetCoords) < config.range then
        local money = tonumber(args[2])

        xPlayer.removeMoney(money)
        target.addMoney(money)
    end
end, false)