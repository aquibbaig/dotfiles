return 
{
	"neovim/nvim-lspconfig",
	"pmizio/typescript-tools.nvim",
	requires = { "nvim-lua/plenary.nvim" },
	config = function()
		require("typescript-tools").setup {}
	end,
}

