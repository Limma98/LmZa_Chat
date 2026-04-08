local AUTOCLR_INTERVAL = 30 * 60 * 1000 -- 30 minutes in ms

-- Clear chat for the local player
local function clearChat()
    TriggerEvent('chat:clear')
end

-- /clear command
RegisterCommand('clear', function()
    clearChat()
end, false)

-- Auto-clear every 30 minutes
CreateThread(function()
    while true do
        Wait(AUTOCLR_INTERVAL)
        clearChat()
    end
end)
