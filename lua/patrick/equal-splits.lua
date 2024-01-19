function Equalize_vertical_splits()
	local total_width = 0
	local win_count = 0

	-- Iterate over all windows to calculate total width and count
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_get_config(win).relative == "" then -- Only consider normal windows
			total_width = total_width + vim.api.nvim_win_get_width(win)
			win_count = win_count + 1
		end
	end

	-- Avoid division by zero
	if win_count == 0 then
		return
	end

	-- Calculate average width
	local avg_width = math.floor(total_width / win_count)

	-- Resize each window
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_get_config(win).relative == "" then
			vim.api.nvim_win_set_width(win, avg_width)
		end
	end
end
