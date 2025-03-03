vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("ellisonleao/gruvbox.nvim")
	use("mbbill/undotree")
	use("terrortylor/nvim-comment")
	use("lewis6991/gitsigns.nvim")
	use("windwp/nvim-autopairs")
	use("gregsexton/MatchTag")
	use("Yggdroot/indentLine")
	use("mattn/emmet-vim")
	use("nvim-lualine/lualine.nvim")
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
  use {
  "ibhagwan/fzf-lua",
  requires = { "nvim-tree/nvim-web-devicons" }, -- Optional for icons
  config = function()
    require("fzf-lua").setup({})
  end
}
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	use("christoomey/vim-tmux-navigator")
	use("preservim/nerdtree")
	use("echasnovski/mini.nvim")
	use({
		"anuvyklack/pretty-fold.nvim",
		config = function()
			require("pretty-fold").setup()
		end,
	})
	use("mtth/scratch.vim")
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use("echasnovski/mini.surround")
	use({
		"folke/noice.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
			{ "rcarriga/nvim-notify" },
		},
	})
	use("APZelos/blamer.nvim")
	use("rlane/pounce.nvim")
  use("ya2s/nvim-cursorline")
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
