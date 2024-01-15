function search_by_filetype()
	local filetype = vim.fn.input("Enter filetype (e.g., txt, py, js): ")

	if filetype ~= "" then
		require("telescope.builtin").live_grep({
			prompt_title = "Live Grep " .. filetype .. " Files",
			additional_args = function(opts)
				return { "--glob", "*." .. filetype }
			end,
		})
	else
		print("Filetype is required")
	end
end
