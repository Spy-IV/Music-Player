RegisterNetEvent('play_music')
AddEventHandler('play_music', function(link)
    id = basename(link)--- converting link to id
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

local function basename(path)
    return path:sub(path:find("/[^/]*$") + 1)
  end