
vim.g.mapleader = " "
vim.o.clipboard = "unnamedplus"

local set = vim.opt
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

vim.wo.number = true
-- vim.wo.relativenumber = true
require("config.lazy")
require("config.telescope-remap")
require("mason").setup()
require('mason-lspconfig').setup({})
require("config.treesitter-config")
require("config.remaps")
require("config.cmp-config")

vim.cmd.colorscheme("catppuccin")
