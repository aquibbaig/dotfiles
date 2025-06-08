-- ── Treewalker: Node Movement ────────────────────────────────────────────────
-- Move to the syntactic node *above* the current one
vim.keymap.set({ "n", "v" }, "<C-k>", "<cmd>Treewalker Up<cr>", {
	silent = true,
	desc = "Treewalker: Move to parent (Up)",
})

-- Move to the syntactic node *below* the current one
vim.keymap.set({ "n", "v" }, "<C-j>", "<cmd>Treewalker Down<cr>", {
	silent = true,
	desc = "Treewalker: Move to child (Down)",
})

-- Move to the *previous sibling* in the syntax tree
vim.keymap.set({ "n", "v" }, "<C-h>", "<cmd>Treewalker Left<cr>", {
	silent = true,
	desc = "Treewalker: Move to previous sibling (Left)",
})

-- Move to the *next sibling* in the syntax tree
vim.keymap.set({ "n", "v" }, "<C-l>", "<cmd>Treewalker Right<cr>", {
	silent = true,
	desc = "Treewalker: Move to next sibling (Right)",
})

-- ── Treewalker: Node Swapping ────────────────────────────────────────────────
-- Swap current node with the one *above* it in the tree
vim.keymap.set("n", "<C-S-k>", "<cmd>Treewalker SwapUp<cr>", {
	silent = true,
	desc = "Treewalker: Swap with parent (Up)",
})

-- Swap current node with the one *below* it (i.e., its child)
vim.keymap.set("n", "<C-S-j>", "<cmd>Treewalker SwapDown<cr>", {
	silent = true,
	desc = "Treewalker: Swap with child (Down)",
})

-- Swap current node with the *previous sibling*
vim.keymap.set("n", "<C-S-h>", "<cmd>Treewalker SwapLeft<cr>", {
	silent = true,
	desc = "Treewalker: Swap with previous sibling (Left)",
})

-- Swap current node with the *next sibling*
vim.keymap.set("n", "<C-S-l>", "<cmd>Treewalker SwapRight<cr>", {
	silent = true,
	desc = "Treewalker: Swap with next sibling (Right)",
})

-- neotree
vim.keymap.set("n", "<C-b>", "<Cmd>Neotree toggle<CR>")

-- outline
vim.keymap.set("n", "<C-o>", "<Cmd>Outline<CR>")
