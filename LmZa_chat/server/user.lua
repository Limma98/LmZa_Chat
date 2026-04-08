-- Remap player messages to the 'user' template for bracket styling
AddEventHandler('chatMessage', function(source, author, text)
    CancelEvent()
    TriggerClientEvent('chat:addMessage', -1, {
        templateId = 'user',
        args = { author, text },
    })
end)
