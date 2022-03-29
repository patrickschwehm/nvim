require'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'onsails/lspkind-nvim'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim' --> Find, Filter, Preview, Pick. All lua, all the time.
  use 'akinsho/toggleterm.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'terrortylor/nvim-comment'
  use 'lewis6991/gitsigns.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'jiangmiao/auto-pairs'
  use 'leafOfTree/vim-matchtag'
  use 'Yggdroot/indentLine'
  use 'xiyaowong/nvim-transparent'
  -- use 'f-person/git-blame.nvim'
end)
