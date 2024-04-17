local QBCore = exports['qb-core']:GetCoreObject()







local function loaded(hash)
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Wait(0)
    end
end

-- TriggerServerEvent("script:start")




CreateThread(function()
    local coord = Config.postionbot
    local hash = 's_m_m_fiboffice_01'
    loaded(hash)
    ped = CreatePed(4, hash, coord.x, coord.y, coord.z, coord.w, true, false)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_CLIPBOARD_FACILITY", 0, 1)
    local blip = AddBlipForCoord(coord.x, coord.y, coord.z)
    SetBlipSprite(blip, Config.spritemap)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, 0.8)
    SetBlipColour(blip, 71)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("<FONT>".. Config.namehotel .."</FONT>")
    EndTextCommandSetBlipName(blip)

    exports['qb-target']:AddTargetEntity(ped, { -- The specified entity number
        options = {
            {
                type = "client",
                event = "pr:hotel:menu",
                icon = "fas fa-hotel",
                label = Config.targetlabel,
                job = "all",
            },
        },
        distance = 2.5
    })
end)


RegisterNetEvent("pr:hotel:menu", function()
    exports['qb-menu']:openMenu({
        {
            header = Config.namehotel,
            icon = 'fas fa-hotel',
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = 'Open Room List',
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'pr:hotel:buy',

            }
        },
        {
            header = 'Cancel',
            txt = '',
            icon = 'fas fa-x',
            params = {
                event = '',

            }
        },

    })
end)

RegisterNetEvent("pr:hotel:buy", function()
    exports['qb-menu']:openMenu({
        {
            header = Config.namehotel,
            icon = 'fas fa-hotel',
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 101" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "101"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 102" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "102"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 103" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "103"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 104" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "104"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 105" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "105"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 201" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "201"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 202" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "202"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 203" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "203"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 204" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "204"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 205" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "205"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 301" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "301"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 302" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "302"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 303" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "303"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 304" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "304"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 305" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "305"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 401" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "401"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 402" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "402"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 403" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "403"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 404" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "404"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 405" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "405"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 501" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "501"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 502" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "502"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 503" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "503"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 504" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "504"
                }
            }
        },
        {
            header = "<center><p><img src=" ..
            tostring(
            "https://cdn.discordapp.com/attachments/1220533001436270652/1223832781059264642/image.png?ex=661b4a18&is=6608d518&hm=3b572934ceae8f3193f5a0c24cae984e6db27f10ac655161f2f496638b7bd949&") ..
            " width=200px></img></p>" .. "Room 505" .. "",
            txt = '',
            icon = 'fas fa-key',
            params = {
                event = 'prx:hotel:client:buy',
                args = {
                    numroom = "505"
                }
            }
        },
        {
            header = 'Back',
            txt = '',
            icon = 'fas fa-arrow-left',
            params = {
                event = 'pr:hotel:menu',

            }
        },
    })
end)
RegisterNetEvent("prx:hotel:client:buy", function(data)
    local itemname = data.numroom
    local alert = lib.alertDialog({
        header = 'Confirmation',
        content = 'Are you sure you want to buy this Room #' .. data.numroom .. ' Cost ' .. Config.priceroom .. "$" .. '',
        centered = true,
        cancel = true
    })
    if alert then
        if alert == 'confirm' then
            -- TriggerServerEvent("prx:hotel:server:buy", itemname)

            QBCore.Functions.TriggerCallback("buyserver", function(data)

            end, itemname)
        end
    end
end)


CreateThread(function ()
    
exports['qb-target']:AddBoxZone("ele1", vector3(-659.41, -1111.37, 15.06), 1, 1, {
    name = "name",
    heading = 335.0,
    debugPoly = false,
    minZ = 11.86,
    maxZ = 15.86,
}, {
    options = {
        {
            type = "client",
            event = "prx:hotel:ele:main",
            icon = 'fas fa-elevator',
            label = 'المصعد',
        }
    },
    distance = 2.5,
})

exports['qb-target']:AddBoxZone("ele2", vector3(-655.69, -1111.35, 21.83), 1, 1, {
    name = "ele2",
    heading = 335.0,
    debugPoly = false,
    minZ = 18.83,
    maxZ = 22.83
}, {
    options = {
        {
            type = "client",
            event = "prx:hotel:ele:main",
            icon = 'fas fa-elevator',
            label = 'المصعد',
        }
    },
    distance = 2.5,
})

exports['qb-target']:AddBoxZone("ele3", vector3(-655.89, -1111.37, 26.6), 1, 1, {
    name = "ele3",
    heading = 335.0,
    debugPoly = false,
    minZ = 23.4,
    maxZ = 27.4
}, {
    options = {
        {
            type = "client",
            event = "prx:hotel:ele:main",
            icon = 'fas fa-elevator',
            label = 'المصعد',
        }
    },
    distance = 2.5,
})
exports['qb-target']:AddBoxZone("ele4", vector3(-655.92, -1111.55, 31.37), 1, 1, {
    name = "ele4",
    heading = 335.0,
    debugPoly = false,
    minZ = 28.17,
    maxZ = 32.17

}, {
    options = {
        {
            type = "client",
            event = "prx:hotel:ele:main",
            icon = 'fas fa-elevator',
            label = 'المصعد',
        }
    },
    distance = 2.5,
})

exports['qb-target']:AddBoxZone("ele5", vector3(-656.01, -1111.6, 36.14), 1, 1, {
    name = "ele5",
    heading = 335.0,
    debugPoly = false,
    minZ = 32.94,
    maxZ = 36.94

}, {
    options = {
        {
            type = "client",
            event = "prx:hotel:ele:main",
            icon = 'fas fa-elevator',
            label = 'المصعد',
        }
    },
    distance = 2.5,
})

exports['qb-target']:AddBoxZone("ele6", vector3(-655.95, -1111.57, 40.91), 1, 1, {
    name = "ele6",
    heading = 335.0,
    debugPoly = false,
    minZ = 37.71,
    maxZ = 41.71


}, {
    options = {
        {
            type = "client",
            event = "prx:hotel:ele:main",
            icon = 'fas fa-elevator',
            label = 'المصعد',
        }
    },
    distance = 2.5,
})

end)

CreateThread(function ()
    
RegisterNetEvent("prx:hotel:ele:main", function(args)
    local dialog = exports['qb-input']:ShowInput({
        header = "Floor",
        submitText = "Sumbit",
        inputs = {
            {
                text = "Set Floor 0 to 5",
                name = "floor",
                type = "number",
                isRequired = true,
            },
        },
    })

    if dialog ~= nil then
        for k, v in pairs(dialog) do
            TriggerEvent("prx:hotel:ele:floor", v)
        end
    end
end)


RegisterNetEvent("prx:hotel:ele:floor", function(args)
    local player = PlayerPedId()
    if args == "0" then
        DoScreenFadeOut(1000)
        Citizen.Wait(1000)
        SetEntityCoords(player, Config.elevtor[1].pos.x, Config.elevtor[1].pos.y, Config.elevtor[1].pos.z)
        SetEntityHeading(player, Config.elevtor[1].pos.w)
        DoScreenFadeIn(1000)
    end
    if args == "1" then
        DoScreenFadeOut(1000)
        Citizen.Wait(1000)
        SetEntityCoords(player, Config.elevtor[2].pos.x, Config.elevtor[2].pos.y, Config.elevtor[2].pos.z)
        SetEntityHeading(player, Config.elevtor[2].pos.w)
        DoScreenFadeIn(1000)
    end
    if args == "2" then
        DoScreenFadeOut(2000)
        Citizen.Wait(1000)
        SetEntityCoords(player, Config.elevtor[3].pos.x, Config.elevtor[3].pos.y, Config.elevtor[3].pos.z)
        SetEntityHeading(player, Config.elevtor[3].pos.w)
        DoScreenFadeIn(2000)
    end
    if args == "3" then
        DoScreenFadeOut(2000)
        Citizen.Wait(1000)
        SetEntityCoords(player, Config.elevtor[4].pos.x, Config.elevtor[4].pos.y, Config.elevtor[4].pos.z)
        SetEntityHeading(player, Config.elevtor[4].pos.w)
        DoScreenFadeIn(2000)
    end
    if args == "4" then
        DoScreenFadeOut(2000)
        Citizen.Wait(1000)
        SetEntityCoords(player, Config.elevtor[5].pos.x, Config.elevtor[5].pos.y, Config.elevtor[5].pos.z)
        SetEntityHeading(player, Config.elevtor[5].pos.w)
        DoScreenFadeIn(2000)
    end
    if args == "5" then
        DoScreenFadeOut(2000)
        Citizen.Wait(1000)
        SetEntityCoords(player, Config.elevtor[6].pos.x, Config.elevtor[6].pos.y, Config.elevtor[6].pos.z)
        SetEntityHeading(player, Config.elevtor[6].pos.w)
        DoScreenFadeIn(2000)
    end
end)
end)


-- Rooms

RegisterNetEvent("prx:menu:room", function(data)
   
    exports['qb-menu']:openMenu({
        {
            header = Config.namehotel,
            icon = 'fas fa-hotel',
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = 'Stash',
            txt = 'Stash All Can View',
            icon = 'fas fa-boxes-stacked',
            params = {
                event = 'prx:stash:client',
            },
        },
        {
            header = 'Outfit',
            txt = 'You Can Change Outfit',
            icon = 'fas fa-shirt',
            params = {
                event = 'qb-clothing:client:openOutfitMenu',
            },
        },
        {
            header = 'Details',
            txt = 'You Can Check Out And get Info ',
            icon = 'fas fa-list-check',
            params = {
                event = 'info:prx',
            },
        },
        {
            header = 'Cancel',
            txt = '',
            icon = 'fas fa-x',
            params = {
                event = '',
            },
        },
    })
end)

RegisterNetEvent("prx:stash:client",function() 
    TriggerServerEvent("prx:stash:server")
end)

RegisterNetEvent("prx:stash:open",function(args) 
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Stash" .. args)
    TriggerEvent("inventory:client:SetCurrentStash", "Stash" .. args)
end)


RegisterNetEvent("info:prx", function()
    QBCore.Functions.TriggerCallback("info", function(data)
        exports['qb-menu']:openMenu({
            {
                header = Config.namehotel,
                icon = 'fas fa-hotel',
                isMenuHeader = true, -- Set to true to make a nonclickable title
            },
            
            {
                header = '',
                txt = '<h3>Name :' .. ' ' .. data[1] .. '<br> Room : ' .. data[2] ..
                ' <br> Phone : ' .. data[3] .. ' </h3>',
                icon = 'fas fa-circle-info',
                params = {
                    event = '',
                },
            },
            {
                header = 'Res Key',
                txt = 'Reset Key With Money',
                icon = 'fas fa-key',
                params = {
                    event = 'prx:hotel:res',
                },
            },
            -- {
            --     header = 'Check Out',
            --     txt = 'Exit The Room',
            --     icon = 'fas fa-outdent',
            --     params = {
            --         event = 'prx:checkout:client',
            --     },
            -- },
            {
                header = 'Back',
                txt = '',
                icon = 'fas fa-arrow-left',
                params = {
                    event = 'prx:menu:room',
                },
            },
        })
    end, QBCore.Functions.GetPlayerData())
    

end)

RegisterNetEvent("prx:checkout:client",function() 
   

    local alert = lib.alertDialog({
        header = 'Confirmation',
        content = 'Check Out IN th Room',
        centered = true,
        cancel = true
    })
    if alert then
        if alert == 'confirm' then

            QBCore.Functions.TriggerCallback("checkout",function(data)
            
                if data == true then
                    QBCore.Functions.Notify("Thank you for gonig", "info", 5000)
                end
            end)
        end
    end 
end)


RegisterNetEvent("prx:hotel:res",function()
    local alert = lib.alertDialog({
        header = 'Confirmation',
        content = 'Ace price for the key '.. Config.reskey.. '' .. "$"..'',
        centered = true,
        cancel = true
    })
    if alert then
        if alert == 'confirm' then

            QBCore.Functions.TriggerCallback("reskey",function(data)
            
                if data == true then
                    QBCore.Functions.Notify("Thank you for your purchase", "info", 5000)
                else
                    QBCore.Functions.Notify("Don't Can", "error", 5000)

                end
            end)
        end
    end 
   
end)





CreateThread(function ()
    
for k, v in pairs(Config.rooms) do
    exports['qb-target']:AddBoxZone(v.name, vector3(v.target.coords.x, v.target.coords.y, v.target.coords.z), 1, 1, {
        name = v.name,
        heading = 335.0,
        debugPoly = false,
        minZ = v.target.minZ,
        maxZ = v.target.maxZ

    }, {
        options = {
            {
                type = "client",
                event = "prx:menu:room",
                icon = 'fas fa-boxes-stacked',
                label = Config.roomlabel,
                name = v.name
            },
        },
        distance = 2.5,
    })
end
end)



