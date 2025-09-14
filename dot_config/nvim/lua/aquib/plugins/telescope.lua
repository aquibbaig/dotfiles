return {
	"nvim-telescope/telescope.nvim", tag = '0.1.8', -- or                            , branch = '0.1.x',
	dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim", build = "make"
			},
			"nvim-tree/nvim-web-devicons",
			"nvim-telescope/telescope-ui-select.nvim",
	},
	-- opts = function(_)
	-- 	local telescope = require("telescope")
	-- 	local live_grep_args = require("telescope").extensions.live_grep_args
	--
	-- 	-- set keymap here if not using separate keymap section
	-- 	vim.keymap.set("n", "<leader>fs", live_grep_args.live_grep_args, { noremap = true, desc = "Live Grep Args" })
	--
	-- 	return {
	-- 		defaults = {
	-- 			cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1],
	-- 		}
	-- 	}
	-- end,
	config = function () 
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = function(prompt_bufnr)
							actions.send_selected_to_qflist(prompt_bufnr)
							actions.open_qflist(prompt_bufnr)
						end,
					},
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown {}
				}
			}
		})

		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")


		-- keymaps
		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in a file" })
	end,
}

