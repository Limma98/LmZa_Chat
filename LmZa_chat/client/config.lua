RegisterNUICallback('config', function(_data, cb)
    cb({
        -- Background of each message bubble
        mainColor   = GetConvar('LmZa_chat:mainColor',   'rgba(0, 8, 14, 0.88)'),
        -- Subtle border around bubbles
        borderColor = GetConvar('LmZa_chat:borderColor', 'rgba(0, 255, 255, 0.12)'),
        -- Cyan accent — left border + corner brackets + input border
        accentColor = GetConvar('LmZa_chat:accentColor', 'rgba(0, 255, 255, 0.75)'),
        -- Main text color
        textColor   = GetConvar('LmZa_chat:textColor',   '#00ffff'),
        -- Dimmer color for message body text
        faintColor  = GetConvar('LmZa_chat:faintColor',  'rgba(0, 255, 255, 0.7)'),

        fontFamily           = GetConvar('LmZa_chat:fontFamily',           "'Rajdhani', Arial, sans-serif"),
        consoleFontFamily    = GetConvar('LmZa_chat:consoleFontFamily',    'monospace'),
        suggestionFontFamily = GetConvar('LmZa_chat:suggestionFontFamily', 'monospace'),

        inputIconUrl   = GetConvar('LmZa_chat:inputIconUrl',   'https://cfx-nui-LmZa_chat/theme/icons/duck.png'),
        messageIconUrl = GetConvar('LmZa_chat:messageIconUrl', 'https://cfx-nui-LmZa_chat/theme/icons/message.svg'),
        consoleIconUrl = GetConvar('LmZa_chat:consoleIconUrl', 'https://cfx-nui-LmZa_chat/theme/icons/console.svg'),
        joinIconUrl    = GetConvar('LmZa_chat:joinIconUrl',    'https://cfx-nui-LmZa_chat/theme/icons/join.svg'),
        quitIconUrl    = GetConvar('LmZa_chat:quitIconUrl',    'https://cfx-nui-LmZa_chat/theme/icons/quit.svg'),
        userIconUrl    = GetConvar('LmZa_chat:userIconUrl',    'https://cfx-nui-LmZa_chat/theme/icons/user.svg'),
    })
end)
