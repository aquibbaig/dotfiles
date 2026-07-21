local languages = {
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
}

local filetypes = {
	"lua",
	"python",
	"javascript",
	"javascriptreact",
	"typescript",
	"typescriptreact",
	"go",
	"rust",
	"c",
	"cpp",
	"java",
	"sh",
	"json",
	"html",
	"css",
	"nu",
}

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	init = function()
		local group = vim.api.nvim_create_augroup("aquib-treesitter", { clear = true })

		vim.api.nvim_create_autocmd("FileType", {
			group = group,
			pattern = filetypes,
			callback = function(args)
				local ok = pcall(vim.treesitter.start, args.buf)
				if ok then
					vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
	config = function()
		local treesitter = require("nvim-treesitter")

		treesitter.setup({
			install_dir = vim.fn.stdpath("data") .. "/site",
		})

		local installed = {}
		for _, language in ipairs(treesitter.get_installed("parsers")) do
			installed[language] = true
		end

		local missing = vim.tbl_filter(function(language)
			return not installed[language]
		end, languages)

		if #missing > 0 and #vim.api.nvim_list_uis() > 0 then
			vim.schedule(function()
				treesitter.install(missing)
			end)
		end
	end,
}
