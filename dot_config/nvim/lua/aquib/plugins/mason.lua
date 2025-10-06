return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    config = function()
      require("mason").setup()
    end,
  },

  -- Install and configure LSPs
  -- {
  -- 	"williamboman/mason-lspconfig.nvim",
  -- 	dependencies = { "williamboman/mason.nvim" },
  -- 	event = { "BufReadPre", "BufNewFile" },
  -- 	config = function()
  -- 		require("mason-lspconfig").setup({
  -- 			ensure_installed = {
  -- 				"lua_ls",
  -- 				"tailwindcss",
  -- 			},
  -- 			handlers = {
  -- 				function(server_name)
  -- 					-- Skip servers managed by other plugins
  -- 					if server_name == "ts_ls" or server_name == "rust_analyzer" then
  -- 						return
  -- 					end
  -- 					vim.lsp.config[server_name] = {}
  -- 					vim.lsp.enable(server_name)
  -- 				end,
  -- 			},
  -- 		})
  -- 	end,
  -- },
}
