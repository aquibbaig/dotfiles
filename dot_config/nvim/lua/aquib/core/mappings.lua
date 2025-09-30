-- QoL
vim.keymap.set('n', 'gO', "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")
vim.keymap.set('n', 'go', "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>")

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

-- ── TypeScript Tools ────────────────────────────────────────────────
-- Add missing imports for TypeScript files
vim.keymap.set("n", "<leader>ai", "<Cmd>TSToolsAddMissingImports<CR>", {
  silent = true,
  desc = "TypeScript: Add missing imports",
})

vim.keymap.set("n", "<leader>fal", "<Cmd>TSToolsFixAll<CR>", {
  silent = true,
  desc = "TypeScript: Fix all",
})

-- Organize imports for TypeScript files
vim.keymap.set("n", "<leader>oi", "<Cmd>TSToolsOrganizeImports<CR>", {
  silent = true,
  desc = "TypeScript: Organize imports",
})

-- Snacks terminal
vim.keymap.set("n", "<leader>gt", function() Snacks.terminal() end, {
  silent = true,
  desc = "Open terminal",
})

-- LSP mappings
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true, desc = "Go to definition" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { silent = true, desc = "Go to implementation" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { silent = true, desc = "Hover documentation" })
vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, { silent = true, desc = "Workspace symbols" })
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, { silent = true, desc = "Show diagnostics" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_next, { silent = true, desc = "Next diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { silent = true, desc = "Previous diagnostic" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { silent = true, desc = "Code actions" })
vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, { silent = true, desc = "Find references" })
vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, { silent = true, desc = "Rename symbol" })
vim.keymap.set("n", "<C-h>", vim.lsp.buf.signature_help, { silent = true, desc = "Signature help" })
