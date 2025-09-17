return {
	{
		"williamboman/mason.nvim",
		cmd = "Mason",
		config = function()
			require("mason").setup()
		end,
	},

	-- Install and configure LSPs
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tailwindcss",
					"ts_ls",
					"rust_analyzer",
				},
			})
		end,
	},

	-- Configure how LSPs behave
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			local servers = { "lua_ls", "tailwindcss", "ts_ls", "rust_analyzer" }

			for _, server in ipairs(servers) do
				lspconfig[server].setup({})
			end
		end,
	},
}
