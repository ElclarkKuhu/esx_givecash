RegisterCommand('givecash', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local target = ESX.GetPlayerFromId(tonumber(args[1]))
    
    if target ~= nil then
        local amount = tonumber(args[2])
        if amount ~= nil then
            xPlayer.removeMoney(amount)
            target.addMoney(amount)
        end
    end
end, false)