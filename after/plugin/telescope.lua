local builtin = require("telescope.builtin")
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

require("telescope").setup({
	defaults = {
		-- other settings
		file_ignore_patterns = { "node_modules" },
	},
})

vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>F", builtin.live_grep, {})
vim.keymap.set("n", "<leader>b", builtin.buffers, {})
vim.keymap.set("n", "<leader>ps", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>sh", builtin.search_history, {})
vim.api.nvim_set_keymap("n", "<leader>b", ":lua require('config/telescope').my_buffer()<cr>", { noremap = true })

local M = {}

function M.buffers(opts)
	opts = opts or {}
	-- opts.previewer = false
	-- opts.layout_strategy = "horizontal"
	-- opts.layout_config = {
	-- 	horizontal = { width = 0.8, height = 0.5 },
	-- }

	opts.attach_mappings = function(prompt_bufnr, map)
		local delete_buf = function()
			local current_picker = action_state.get_current_picker(prompt_bufnr)
			local multi_selections = current_picker:get_multi_selection()

			if next(multi_selections) == nil then
				local selection = action_state.get_selected_entry()
				actions.close(prompt_bufnr)
				vim.api.nvim_buf_delete(selection.bufnr, { force = true })
			else
				actions.close(prompt_bufnr)
				for _, selection in ipairs(multi_selections) do
					vim.api.nvim_buf_delete(selection.bufnr, { force = true })
				end
			end
		end

		map("i", "<C-x>", delete_buf)
		return true
	end

	require("telescope.builtin").buffers(require("telescope.themes").get_dropdown(opts))
end

-- Setting keymap for your custom buffer function:
vim.keymap.set("n", "<leader>b", M.buffers, {})

return M
