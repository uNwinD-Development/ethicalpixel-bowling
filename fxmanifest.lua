fx_version 'cerulean'
games { 'gta5' }

client_scripts {
  'client/cl_*.lua',
}

shared_script {
  'sh_config.lua',
}

server_scripts {
  'server/sv_*.lua',
}

ui_page ('ui/index.html')

files {
  'ui/*'
}

dependencies {
  'bt-polyzone',
  'nh-context',
  'bt-target',
  ''
}

