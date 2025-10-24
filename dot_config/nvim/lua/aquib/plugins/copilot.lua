return {
	"github/copilot.vim",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		-- Disable Tab mapping since nvim-cmp uses it
		vim.g.copilot_no_tab_map = true

		-- Use Ctrl-Y to accept Copilot suggestions (similar to cmp's Ctrl-Y)
		vim.keymap.set('i', '<C-Y>', 'copilot#Accept("\\<CR>")', {
			expr = true,
			replace_keycodes = false,
			silent = true,
			desc = "Accept Copilot suggestion"
		})

		-- Additional useful keymaps
		vim.keymap.set('i', '<M-]>', '<Plug>(copilot-next)', { silent = true, desc = "Next Copilot suggestion" })
		vim.keymap.set('i', '<M-[>', '<Plug>(copilot-previous)', { silent = true, desc = "Previous Copilot suggestion" })
		vim.keymap.set('i', '<C-\\>', '<Plug>(copilot-suggest)', { silent = true, desc = "Trigger Copilot suggestion" })
	end,
}
