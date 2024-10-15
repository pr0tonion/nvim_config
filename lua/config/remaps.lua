local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K', {desc = "Tab vertical to horizontal"}) -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H', {desc = "Tab Horizontal to vertical"}) -- change horizontal to verticai 

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Disable arrow keys
map('n', '<Up>', '<Nop>')
map('n', '<Down>', '<Nop>')
map('n', '<Left>', '<Nop>')
map('n', '<Right>', '<Nop>')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Go Up/Down 10
map('n', 'J', '10j') -- Shift + j to move down 10 lines
map('n', 'K', '10k') -- Shift + k to move up 10 lines

-- NvimTree
--map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
--map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
--map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

--Formatter
