-- Ensure packer.nvim is loaded
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- === UI Enhancements ===
	use("ellisonleao/gruvbox.nvim") -- Color scheme
	use("nvim-lualine/lualine.nvim") -- Status line
	use("Yggdroot/indentLine") -- Show indentation guides
	use("ya2s/nvim-cursorline") -- Highlights the current line and word
	use({
		"anuvyklack/pretty-fold.nvim", -- Better code folding
		config = function()
			require("pretty-fold").setup()
		end,
	})
	use("gregsexton/MatchTag") -- Highlight matching HTML/XML tags

	-- === Navigation & File Management ===
	use("preservim/nerdtree") -- File tree
	use("christoomey/vim-tmux-navigator") -- Seamless navigation between Tmux and Vim
	use({
		"ThePrimeagen/harpoon", -- Quick navigation between files
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- === Terminal ===
	use({
		"akinsho/toggleterm.nvim", -- Floating terminal inside Neovim
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- === Fuzzy Finder (fzf-lua) ===
	use({
		"ibhagwan/fzf-lua",
		requires = { "nvim-tree/nvim-web-devicons" }, -- Optional for icons
		config = function()
			require("fzf-lua").setup({})
		end,
	})

	-- === Git Integration ===
	use("lewis6991/gitsigns.nvim") -- Git signs in the gutter
	use({
		"kdheepak/lazygit.nvim", -- LazyGit integration
		requires = { "nvim-lua/plenary.nvim" },
	})
	use("APZelos/blamer.nvim") -- Git blame inline annotations

	-- === LSP, Autocompletion, and Snippets ===
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

	-- === Formatting & Linting ===
	use("jose-elias-alvarez/null-ls.nvim") -- Linter/Formatter
	use("jayp0521/mason-null-ls.nvim") -- Mason integration for null-ls

	-- === Productivity & Utilities ===
	use("mbbill/undotree") -- Undo history visualizer
	use("terrortylor/nvim-comment") -- Easy comment toggling
	use("windwp/nvim-autopairs") -- Auto-close brackets and quotes
	use("echasnovski/mini.nvim") -- Lightweight collection of plugins
	use("echasnovski/mini.surround") -- Better surround text editing
	use("mtth/scratch.vim") -- Scratchpad for quick notes

	-- === Search & Navigation ===
	use("rlane/pounce.nvim") -- Jump to words quickly

	-- === Notifications & Messages ===
	use({
		"folke/noice.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
			{ "rcarriga/nvim-notify" },
		},
	})
	use({
		"kdheepak/lazygit.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use("echasnovski/mini.surround") -- Quick surround edits
	use({
		"anuvyklack/pretty-fold.nvim",
		config = function()
			require("pretty-fold").setup()
		end,
	})

	-- === Automatically set up packer after cloning ===
	if packer_bootstrap then
		require("packer").sync()
	end
end)

