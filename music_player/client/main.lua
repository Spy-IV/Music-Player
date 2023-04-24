RegisterNetEvent('play_music')
AddEventHandler('play_music', function(id)
    SendNUIMessage({
        transactionType = 'playSound',
        transactionData = id
    })
end)

RegisterNetEvent('stop_music')
AddEventHandler('stop_music', function()
    SendNUIMessage({
        transactionType = 'stopSound'
    })
end)

RegisterNetEvent('setVolume')
AddEventHandler('setVolume', function(volume)
    SendNUIMessage({
        transactionType = 'volume',
        transactionData = volume
    })
end)

