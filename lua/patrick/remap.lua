-- Set the leader key to space
vim.g.mapleader = " "

-- General options table
local opts = {}

-- File explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })

-- Terminal escape to normal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)

-- Window navigation
vim.keymap.set("n", "<leader>h", "<C-w>h", opts) -- Move to left window
vim.keymap.set("n", "<leader>l", "<C-w>l", opts) -- Move to right window
vim.keymap.set("n", "<leader>j", "<C-w>j", opts) -- Move to below window
vim.keymap.set("n", "<leader>k", "<C-w>k", opts) -- Move to above window
vim.keymap.set("n", "<leader>w", "<C-w><C-w>", opts) -- Cycle through windows

-- Splitting windows
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", opts) -- Vertical split
vim.keymap.set("n", "<leader>hs", ":split<CR>", opts) -- Horizontal split

-- Resize splits
vim.keymap.set("n", "<leader>*", "<cmd>vertical resize +5<CR>", opts) -- Increase width
vim.keymap.set("n", "<leader>_", "<cmd>vertical resize -5<CR>", opts) -- Decrease width
vim.keymap.set("n", "<leader>+", "<cmd>resize +5<CR>", opts) -- Increase height
vim.keymap.set("n", "<leader>-", "<cmd>resize -5<CR>", opts) -- Decrease height

-- Equalize vertical splits
vim.keymap.set("n", "<leader>=", ":lua Equalize_vertical_splits()<CR>", { noremap = true, silent = true, desc = "Equalize vertical splits" })

-- Reload current Lua config file
vim.keymap.set("n", "<leader><CR>", ":luafile %<CR>", opts)

-- Clipboard integration (yank to system clipboard)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard" })

-- Toggle NERDTree file explorer
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>", { desc = "Toggle NERDTree" })

-- Searching by filetype
vim.keymap.set("n", "<leader>t", ":lua search_by_filetype()<CR>", { noremap = true, silent = true, desc = "Search by filetype" })

-- Clear search highlighting
vim.keymap.set("n", "<leader>n", ":nohls<CR><Esc>", { noremap = true, silent = true, desc = "Clear search highlight" })

-- Git integrations
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true, desc = "Open LazyGit" })
vim.keymap.set("n", "<leader>gs", require("fzf-lua").git_status, { desc = "fzf-lua git status" })

-- Noice message dismiss
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

-- Pounce (fuzzy search)
vim.keymap.set("n", "<leader>p", "<cmd>Pounce<CR>", { desc = "Pounce fuzzy search" })

-- fzf-lua key mappings
vim.keymap.set("n", "<leader>f", require("fzf-lua").files, { desc = "fzf-lua find files" })
vim.keymap.set("n", "<leader>F", require("fzf-lua").live_grep, { desc = "fzf-lua live grep" })
vim.keymap.set("n", "<leader>r", require("fzf-lua").resume, { desc = "fzf-lua resume search" })
vim.keymap.set("n", "<leader>b", require("fzf-lua").buffers, { desc = "fzf-lua buffers" })
