server_script '@wtf_is_this/src/include/server.lua'
client_script '@wtf_is_this/src/include/client.lua'
fx_version 'cerulean'
game 'common'

name 'LmZa_chat'
description 'LmZa bracket-aesthetic theme for qbx_chat'
version '1.0.0'
author 'LmZa'

-- needed so qbx_chat can access this resource's callbacks
nui_callback_strict_mode 'false'

shared_scripts {
    '@ox_lib/init.lua',
}

client_scripts {
    'client/config.lua',
    'client/commands.lua',
}

server_scripts {
    'server/join-messages.lua',
    'server/user.lua',
}

files {
    'theme/**',
}

-- Bracket <i> elements are injected into every template
-- so CSS can position them as corner marks on each bubble
chat_theme 'LmZa_chat' {
    styleSheet = 'theme/app.css',
    script     = 'theme/app.js',
    msgTemplates = {
        default    = '<p class="message-wrapper"><i class="bk bk-tl"></i><i class="bk bk-tr"></i><i class="bk bk-bl"></i><i class="bk bk-br"></i><span class="author alt"><span>{0}</span></span><span><span>{1}</span></span></p>',
        defaultAlt = '<p class="message-wrapper"><i class="bk bk-tl"></i><i class="bk bk-tr"></i><i class="bk bk-bl"></i><i class="bk bk-br"></i><span class="alt"><span>{0}</span></span></p>',
        print      = '<p class="message-wrapper"><i class="bk bk-tl"></i><i class="bk bk-tr"></i><i class="bk bk-bl"></i><i class="bk bk-br"></i><span class="author console">Console</span><span class="print color-7"><span>{0}</span></span></p>',
        join       = '<p class="message-wrapper"><i class="bk bk-tl"></i><i class="bk bk-tr"></i><i class="bk bk-bl"></i><i class="bk bk-br"></i><span class="join"><span>{0}</span></span></p>',
        quit       = '<p class="message-wrapper"><i class="bk bk-tl"></i><i class="bk bk-tr"></i><i class="bk bk-bl"></i><i class="bk bk-br"></i><span class="quit"><span>{0}</span></span></p>',
        user       = '<p class="message-wrapper"><i class="bk bk-tl"></i><i class="bk bk-tr"></i><i class="bk bk-bl"></i><i class="bk bk-br"></i><span class="author user"><span>{0}</span></span><span><span>{1}</span></span></p>',
    },
}
