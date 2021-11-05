fx_version 'cerulean'

author 'Elclark'
version '1.0.3'
description 'Givecash to player near you'

game 'gta5'

files {
    'config.lua',
    'client/main.lua',
    'server/main.lua'
}

shared_scripts {
	'@es_extended/imports.lua',
    'config.lua'
}

client_script 'client/main.lua'

server_script 'server/main.lua'

dependency 'es_extended'
