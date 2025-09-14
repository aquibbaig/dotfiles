return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},

	-- Install formatters/linters and optional LSPs
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"eslint_d",
					"prettierd",
				},
				auto_update = true,
				run_on_start = true,
			})
		end,
	},

	-- Install and configure LSPs
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tailwindcss",
					"ts_ls", -- Only list LSP servers here
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
			local servers = { "lua_ls", "tailwindcss", "ts_ls" }

			local function on_attach(_, bufnr)
				local opts = { buffer = bufnr, remap = false }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
				vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
				vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
				vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "<C-h>", vim.lsp.buf.signature_help, opts)
			end

			for _, server in ipairs(servers) do
				lspconfig[server].setup({ on_attach = on_attach })
			end
		end,
	},
}
