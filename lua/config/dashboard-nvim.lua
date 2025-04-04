local db = require('dashboard')
local utils = require('utils') -- Assuming you have a utils file for common functions like finding the home directory

db.setup({
  theme = 'hyper', -- or 'doom', 'default'
  config = {
    header = {
      '',
      '',
      ' ██████╗ ███████╗ ██████╗ ███████╗███████╗██╗   ██╗███████╗███████╗',
      '██╔════╝ ██╔════╝██╔════╝ ██╔════╝██╔════╝██║   ██║██╔════╝██╔════╝',
      '██║  ███╗███████╗██║  ███╗███████╗███████╗██║   ██║███████╗███████╗',
      '██║   ██║╚════██║██║   ██║╚════██║╚════██║██║   ██║╚════██║╚════██║',
      '╚██████╔╝███████║╚██████╔╝███████║███████║╚██████╔╝███████║███████║',
      ' ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝╚══════╝ ╚═════╝ ╚══════╝╚══════╝',
      '',
      '',
    },
    center = {
      { action = 'Telescope find_files', desc = ' Find file', icon = ' ', key = 'f' },
      { action = 'ene | startinsert', desc = ' New file', icon = ' ', key = 'n' },
      { action = 'Telescope oldfiles', desc = ' Recent files', icon = ' ', key = 'r' },
      { action = 'Telescope live_grep', desc = ' Find text', icon = ' ', key = 'g' },
      { action = 'Lazy', desc = ' Lazy', icon = '󰒲 ', key = 'l' },
      { action = 'qa', desc = ' Quit', icon = ' ', key = 'q' },
    },
    footer = {},
  },
})
