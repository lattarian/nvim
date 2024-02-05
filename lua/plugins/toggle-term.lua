return {
	"akinsho/toggleterm.nvim",
	lazy = false,
	config = function()
		local term = require("toggleterm")
		term.setup({
			size = 14,
      -- direction = 'float',
			open_mapping = [[<c-\>]],
			hide_numbers = true, -- hide the number column in toggleterm buffers
			shade_filetypes = {},
			shade_terminals = true,
			start_in_insert = false,
			insert_mappings = true,
			persist_size = true,
			close_on_exit = true, -- close the terminal window when the process exits
			-- Change the default shell. Can be a string or a function returning a string
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})
	end,
}

