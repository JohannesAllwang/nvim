local cmd = vim.cmd     				-- execute Vim commands
local exec = vim.api.nvim_exec 	-- execute Vimscript
local fn = vim.fn       				-- call Vim functions
local g = vim.g         				-- global variables
local opt = vim.opt         		-- global/buffer/windows-scoped options
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- 't' term mode
-- 'c' command mode


vim.g.vimwiki_list = {
  {
    path = '~/vimwikis/private/',
    syntax = 'markdown',
    ext = '.md',
  },
  {
    path = '~/vimwikis/bio-encaps/',
    syntax = 'markdown',
    ext = '.md',
  },
  {
    path = '~/vimwikis/roleplay/',
    syntax = 'markdown',
    ext = '.md',
  },
  {
    path = '~/vimwikis/chinese/',
    syntax = 'markdown',
    ext = '.md',
  }
}

-- map('n', '<leader>jwr', ":!cp % ~/LRZ\\ Sync+Share/master-thesis/reports/tryscan/<cr>", default_opts)
-- map('n', '<leader>jj', 'itest', default_opts)
