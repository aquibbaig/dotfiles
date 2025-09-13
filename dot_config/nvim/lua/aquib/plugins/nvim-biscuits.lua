return {
	"code-biscuits/nvim-biscuits",
	event = "VeryLazy", -- or use "BufReadPre" to load earlier
	config = function()
		require("nvim-biscuits").setup({
			default_config = {
				max_length = 40,
				min_distance = 5,
				prefix_string = " 󰇘 ",
				enabled = true,
			},
			language_config = {
				markdown = {
					disabled = true,
				},
				lua = {
					prefix_string = "  ",
				},
			},
		})
	end,
}
