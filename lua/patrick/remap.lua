vim.g.mapleader = " "
local opts = {}
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)

-- splits
vim.keymap.set("n", "<leader>w", "<C-w><C-w>", opts)
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", opts)
vim.keymap.set("n", "<leader>hs", ":split<CR>", opts)
vim.keymap.set("n", "<leader>+", ':exe "resize " . (winheight(0) * 3/2)<CR>', opts)
vim.keymap.set("n", "<leader>-", ':exe "resize " . (winheight(0) * 2/3)<CR>', opts)

vim.keymap.set("n", "<leader>*", ':exe "vertical resize " . (winwidth(0) * 3/2)<CR>', opts)
vim.keymap.set("n", "<leader>_", ':exe "vertical resize " . (winwidth(0) * 2/3)<CR>', opts)

vim.keymap.set("n", "<leader><CR>", ":luafile %<CR>", opts)

vim.keymap.set("n", "<leader>l", "<C-w>l", opts)
vim.keymap.set("n", "<leader>h", "<C-w>h", opts)
vim.keymap.set("n", "<leader>j", "<C-w>j", opts)
vim.keymap.set("n", "<leader>k", "<C-w>k", opts)

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>")

vim.keymap.set("n", "<leader>t", ":lua search_by_filetype()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>=", ":lua Equalize_vertical_splits()<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>n", ":nohls<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })
