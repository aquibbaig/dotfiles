return {
	"echasnovski/mini.nvim",
	version = false,
	event = "InsertEnter", -- Loads when you start typing
	config = function()
		require("mini.pairs").setup()
	end,
}
