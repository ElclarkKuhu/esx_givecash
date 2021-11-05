RegisterCommand('givecash', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local target = ESX.GetPlayerFromId(tonumber(args[1]))
    
    if target ~= nil then
        local amount = tonumber(args[2])
        if amount ~= nil then
            local playerPed = GetPlayerPed(source)
            local targetPed = GetPlayerPed(tonumber(args[1]))

            local playerCoords = GetEntityCoords(playerPed)
            local targetCoords = GetEntityCoords(targetPed)

            if #(playerCoords - targetCoords) < config.range then
                local money = tonumber(args[2])

                xPlayer.removeMoney(amount)
                TriggerClientEvent('esx:showNotification', source, 'You gave $' .. amount .. ' to ' .. GetPlayerName(target.source))
                target.addMoney(amount)
                TriggerClientEvent('esx:showNotification', target.source, 'You received $' .. amount .. ' from ' .. GetPlayerName(source))
            end
        else
            TriggerClientEvent('esx:showNotification', source, 'Invalid amount')
        end
    else
        TriggerClientEvent('esx:showNotification', source, 'Invalid player id')
    end
end, false)