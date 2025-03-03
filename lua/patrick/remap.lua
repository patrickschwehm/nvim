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

vim.keymap.set("n", "<leader>p", "<cmd>Pounce<CR>", { desc = "Pounce" })

-- fzf-lua
vim.keymap.set("n", "<leader>f", require("fzf-lua").files, {desc = "fzf-lua"})
vim.keymap.set("n", "<leader>F", require("fzf-lua").live_grep, {desc = "fzf-lua live grep"})
vim.keymap.set("n", "<leader>r", require("fzf-lua").resume, {desc = "fzf-lua resume"})
vim.keymap.set("n", "<leader>b", require("fzf-lua").buffers, {desc = "fzf-lua buffers"})
vim.keymap.set("n", "<leader>gs", require("fzf-lua").git_status, {desc = "fzf-lua git status"})

