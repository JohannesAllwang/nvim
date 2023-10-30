vim.g.vimtex_view_method = 'zathura'
vim.g.tex_flavour = 'latex'

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- clear search highlighting
map('n', '<leader>ll', ':VimtexCompile<CR>', default_opts)

-- lualatex
