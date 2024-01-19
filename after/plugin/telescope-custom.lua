function search_by_filetype()
	local filetype = vim.fn.input("Enter filetype (e.g., ts (spec.ts), scss, html,...): ")

	if filetype ~= "" then
		require("telescope.builtin").live_grep({
			prompt_title = "Live Grep " .. filetype .. " Files",
			additional_args = function(opts)
				if filetype == "spec.ts" then
					return { "--glob", "*.spec.ts" }
				else
					return { "--glob", "*." .. filetype }
				end
			end,
		})
	else
		print("Filetype is required")
	end
end
