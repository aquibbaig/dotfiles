return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"python",
				"javascript",
				"typescript",
				"tsx",
				"go",
				"rust",
				"c",
				"cpp",
				"java",
				"bash",
				"json",
				"html",
				"css",
				"nu",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
		})
	end,
	dependencies = {
		{ "nushell/tree-sitter-nu" },
	},
}
