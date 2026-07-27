return {
	"max397574/better-escape.nvim",
	config = function()
		require("better_escape").setup()
		vim.keymap.del("t", "j")
		vim.keymap.del("t", "k")
	end,
}
