print('Hello world!')

require('test')
require('plugins')

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

local map = vim.api.nvim_set_keymap
options = {noremap = true}

local n_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

n_keymap('<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")

-- map('n', '<leader>ff', require('telescope.builtin').find_files()<cr>)
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
-- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
-- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>)
