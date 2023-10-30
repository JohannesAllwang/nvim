-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme


local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local status_ok, packer = pcall( require, 'packer' )
if not status_ok then return end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float  { border = "rounded" }
    end,
  },}

cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]

-- Add packages
return packer.startup(function()
  use 'wbthomason/packer.nvim' -- packer can manage itself

  -- file explorer
  -- use { 'nvim-tree/nvim-tree.lua',
  --   requires = {
  --   'nvim-tree/nvim-web-devicons', -- optional, for file icons
  -- } }

  -- indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- autopair
  -- use {
  --   'windwp/nvim-autopairs',
    -- config = function()
    --   require('nvim-autopairs').setup()
    -- end
  -- }

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- tagviewer
  use 'liuchengxu/vista.vim'

  -- treesitter interface
  use 'nvim-treesitter/nvim-treesitter'

  -- colorschemes
  use 'tanvirtin/monokai.nvim'
  use 'morhetz/gruvbox'
  use 'altercation/vim-colors-solarized'
  use 'Mofiqul/dracula.nvim'
  use 'LunarVim/darkplus.nvim'
  use 'LunarVim/onedarker.nvim'
  use 'pineapplegiant/spaceduck'
  use 'ajgrf/parchment'
  use { 'rose-pine/neovim', as = 'rose-pine' }
  use 'folke/tokyonight.nvim'
  use {'srcery-colors/srcery-vim'}
  use {'ray-x/aurora'}
  use {'xiyaowong/nvim-transparent'}
  use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }
  use {'thedenisnikulin/vim-cyberpunk'}

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'tamago324/nlsp-settings.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    }, }
  use 'rafamadriz/friendly-snippets'

  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- dashboard
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.opts)
    end
  }

  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-repeat'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {'lervag/vimtex',
    ft = {'rmd', 'tex'} }
  use {
    'iamcco/markdown-preview.nvim',
    -- run = function() vim.fn['mkdp#util#install']() end,
    ft = {'markdown'},
    run = 'cd app && yarn install',
}
  use 'junegunn/goyo.vim'
  use 'dpelle/vim-LanguageTool'

  use 'akinsho/toggleterm.nvim'
  -- use {
  --   'vimwiki/vimwiki',
  --   config = function ()
  --     require('tuxedo.vimwiki').setup()
  --   end
  -- }
  use 'vimwiki/vimwiki'
  use 'ThePrimeagen/vim-be-good'
  use 'famiu/bufdelete.nvim'
  use {'sotvokun/lftp-sync.nvim'}
  use {'ap/vim-css-color'}
  use {'ivanov/vim-ipython'}
  use {'jpalardy/vim-slime'}
  -- use {'hanschen/vim-ipython-cell'}
  -- use {'larssmit/vim-getafe'}

end)

-- require("transparent").setup({
--   enable = true, -- boolean: enable transparent
--   extra_groups = { -- table/string: additional groups that should be cleared
--     -- In particular, when you set it to 'all', that means all available groups
--     -- example of akinsho/nvim-bufferline.lua
--     "BufferLineTabClose",
--     "BufferlineBufferSelected",
--     "BufferLineFill",
--     "BufferLineBackground",
--     "BufferLineSeparator",
--     "BufferLineIndicatorSelected",
--   },
--   exclude = {}, -- table: groups you don't want to clear
-- })


