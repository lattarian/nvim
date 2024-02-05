return {
	"catppuccin/nvim",
	name = "theme",
	lazy = false,
	priority = 999,
	config = function()
		vim.cmd("colorscheme catppuccin-frappe")
		require("catppuccin").setup({})
	end,
}
