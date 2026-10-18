-- Leader must be set before lazy.nvim loads so plugin mappings use it
-- Ctrl+F (tmux prefix moved to Ctrl+A so it doesn't swallow this)
vim.g.mapleader = vim.keycode("<C-f>")
vim.g.maplocalleader = vim.keycode("<C-f>")

require("config.options")
require("config.keymaps")
require("config.lazy")
