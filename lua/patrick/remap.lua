vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)

-- splits
vim.keymap.set("n", "<leader>w", "<C-w><C-w>", opts)
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", opts)
vim.keymap.set("n", "<leader>hs", ":split<CR>", opts)
vim.keymap.set("n", "<leader>+", ":exe \"resize \" . (winheight(0) * 3/2)<CR>", opts)
vim.keymap.set("n", "<leader>-", ":exe \"resize \" . (winheight(0) * 2/3)<CR>", opts)
vim.keymap.set("n", "<leader><CR>", ":luafile %<CR>", opts)

vim.keymap.set("n", "<leader>l", "<C-w>l", opts)
vim.keymap.set("n", "<leader>h", "<C-w>h", opts)
vim.keymap.set("n", "<leader>j", "<C-w>j", opts)
vim.keymap.set("n", "<leader>k", "<C-w>k", opts)
