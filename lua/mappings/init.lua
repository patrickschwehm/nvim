local map = vim.api.nvim_set_keymap
local opts =  { noremap = true, silent = true }

vim.g.mapleader = " "
--> splits <--
map("n", "<leader>w", "<C-w><C-w>", opts)
map("n", "<leader>vs", ":vsplit<CR>", opts)
map("n", "<leader>hs", ":split<CR>", opts)
map("n", "<leader>+", ":exe \"resize \" . (winheight(0) * 3/2)<CR>", opts)
map("n", "<leader>-", ":exe \"resize \" . (winheight(0) * 2/3)<CR>", opts)
map("n", "<leader><CR>", ":luafile %<CR>", opts)

--> nvim tree <--
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
--> telescope <--
map("n", "<leader>f", ":Telescope find_files<cr>", opts)
map("n", "<leader>F", ":Telescope live_grep<cr>", opts)

