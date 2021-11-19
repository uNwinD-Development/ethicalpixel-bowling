fx_version 'cerulean'
games { 'gta5' }

this_is_a_map "yes"


client_scripts {
  '@unwind-rpc/client/cl_main.lua',
  'client/cl_*.lua',
}

shared_script {
  'sh_config.lua',
}

server_scripts {
  '@unwind-rpc/server/sv_main.lua',
  'server/sv_*.lua',
}

ui_page ('ui/index.html')

files {
  'ui/*'
}

