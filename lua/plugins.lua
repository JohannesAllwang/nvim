vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'windwp/nvim-autopairs'
--  use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  use 'tjdevries/nlua.nvim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion.nvim'
end)
