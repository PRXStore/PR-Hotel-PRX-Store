local QBCore = exports['qb-core']:GetCoreObject()




RegisterNetEvent("prx:stash:server", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Cid = Player.PlayerData.citizenid


    local res = MySQL.query.await('SELECT * FROM `hotelprx` WHERE cid = ?', { Cid })

    TriggerClientEvent("prx:stash:open", src, res[1].roomnum)
end)


QBCore.Functions.CreateCallback("buyserver", function(source, cb, args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Cid = Player.PlayerData.citizenid

    local res = MySQL.query.await('SELECT * FROM `hotelprx` WHERE roomnum = ?', { args })

    if res[1].cid == Cid then
        QBCore.Functions.Notify(src, "The Appartment Is Taken By Someone", "error", 5000)
    else
        if Player.Functions.RemoveMoney("cash", Config.priceroom) or Player.Functions.RemoveMoney("bank", Config.priceroom) then
            local item = args .. "hotelkey"
            Player.Functions.AddItem(item, 1)
            
            local update = MySQL.update.await("UPDATE hotelprx SET cid = ? WHERE roomnum = ?", {
                Cid, args
            })
        else
            QBCore.Functions.Notify(src, "You Don't Have Enough Money", "error", 5000)
        end
    end
end)


QBCore.Functions.CreateCallback("info", function(source, cb, args)
    local PlayerCit = args.citizenid
    local Playername = args.charinfo.firstname .. ' ' .. args.charinfo.lastname
    local res = MySQL.query.await('SELECT * FROM `hotelprx` WHERE cid = ?', { PlayerCit })

    if res[1].cid == PlayerCit then
        cb({ Playername, res[1].roomnum, args.charinfo.phone })
    else
        QBCore.Functions.Notify(src, "You Don't Have The Roomm", "error", 5000)
    end
end)




QBCore.Functions.CreateCallback("reskey", function(source, cb, args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Cid = Player.PlayerData.citizenid
    local res = MySQL.query.await('SELECT * FROM `hotelprx` WHERE cid = ?', { Cid })
    local item = res[1].roomnum

    if Player.Functions.RemoveMoney("cash", Config.reskey) or Player.Functions.RemoveMoney("bank", Config.reskey) then
        Player.Functions.AddItem(item .. "hotelkey", 1)
        cb(true)
    else
        QBCore.Functions.Notify(src, "You Don't Can", "error", 5000)
        cb(false)
    end
end)

-- QBCore.Functions.CreateCallback("checkout",function(source,cb,args)
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     local Cid = Player.PlayerData.citizenid
--     local res = MySQL.query.await('SELECT * FROM `hotelprx` WHERE cid = ?', { Cid })
--     local item = res[1].roomnum


--     if Player.Functions.RemoveItem(item .. "hotelkey", 1) then
--         local update = MySQL.update.await("UPDATE hotelprx SET cid = ? WHERE roomnum = ?", {
--             '', res[1].roomnum
--         })
--         cb(true)
--     end
-- end)




