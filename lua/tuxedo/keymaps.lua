-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

-- 't' term mode
-- 'c' command mode

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

map('n', 'Y', 'y$', default_opts)
-- QRUM

map('n', '<C-z>', ':!lua print("don t click ctrl-z, you bafoon!")<cr>', default_opts)
-- map('i', '<C-BS>', '<C-W>', default_opts) Ctrl Backspace does not work

-- clear search highlighting
map('n', '<leader>c', ':nohl<CR>', default_opts)
map('n', '<leader>y', '"+y', default_opts)
map('v', '<leader>y', '"+y', default_opts)
map('n', '<leader>Y', '"+y$', default_opts)
map('n', '<leader>p', '"+p', default_opts)
map('n', '<leader>P', '"+P', default_opts)

-- don't use arrow keys
map('', '<up>', '<nop>', { noremap = true })
map('', '<down>', '<nop>', { noremap = true })
map('', '<left>', '<nop>', { noremap = true })
map('', '<right>', '<nop>', { noremap = true })

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", default_opts)
map("n", "<C-Down>", ":resize +2<CR>", default_opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", default_opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", default_opts)

-- navigate buffers
map('n', 'L', ':bnext<CR>', default_opts)
map('n', 'H', ':bprevious<CR>', default_opts)
map('n', '<leader>bd', ':Bdelete<CR>', default_opts)
map('n', '<leader>bl', ':ls<CR>', default_opts)
map('n', '<leader>bb', ':b ', default_opts)

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', ';s', '<C-c>:w<CR>', default_opts)
map('n', '<C-n>', ':!wezterm start --cwd . &<CR><CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- close all windows and exit from neovim
-- map('n', '<leader>q', ':qa!<CR>', default_opts)

-- open files:
map('n', '<leader>ob', ':vs ~/LRZ Sync+Share/master-thesis/references/jabref.bib<CR>', default_opts)
-- map('n', '<leader>ol', ':ls<CR>', default_opts)
-- map('n', '<leader>ob', ':b ', default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- open terminal
map('n', '<C-t>', ':Term<CR>', { noremap = true })

-- nvim-tree
-- map('n', '<C-n>', ':NvimTreeToggle<CR>', default_opts)       -- open/close
-- map('n', '<leader>r', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
-- map('n', '<leader>n', ':NvimTreeFindFile<CR>', default_opts) -- search file

-- Vista tag-viewer
map('n', '<C-m>', ':Vista!!<CR>', default_opts)   -- open/close

-- sync website

-- map('n', '<leader>www', syncsite, default_opts)   -- open/close
-- map('n', '<leader>www', ':!lua print("Hello")', default_opts)   -- open/close

-- q
-- w
-- e
-- r
-- t
-- y
-- u
-- i
-- o
-- p
-- a
-- s
-- d
-- f
-- g
-- h
-- j
-- k
-- l
-- z
-- x
-- c
-- v
-- b
-- n
-- m

