local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

-- 't' term mode
-- 'c' command mode

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

map('n', '<leader>lr', ':w <cr> :luafile %<cr>', default_opts)
