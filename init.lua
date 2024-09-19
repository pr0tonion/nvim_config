
vim.g.mapleader = " "
vim.o.clipboard = "unnamedplus"

local set = vim.opt
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
vim.lsp.set_log_level("debug")

vim.wo.number = true
-- vim.wo.relativenumber = true
require("config.lazy")
require("config.telescope-remap")
require("mason").setup()
require("config.treesitter-config")
require("config.remaps")
require("config.cmp-config")
require("config.lsp-config")
require("config.luasnip-config")
require("luasnip.loaders.from_vscode").lazy_load()
vim.cmd.colorscheme("catppuccin")
