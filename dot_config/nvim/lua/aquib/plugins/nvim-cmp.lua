return {
	"hrsh7th/nvim-cmp",
	version = false,
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},
	config = function()
		vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			completion = {
				completeopt = "menu,menuone,noinsert",
			},
			preselect = cmp.PreselectMode.Item,
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
				["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<S-CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace }),
				["<C-CR>"] = function(fallback)
					cmp.abort()
					fallback()
				end,
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "path" },
			}, {
				{ name = "buffer" },
			}),
			formatting = {
				format = function(entry, item)
					-- Optional: add icons here or skip entirely
					local kind_icons = {
						Text = " ",
						Method = " ",
						Function = " ",
						Constructor = " ",
						Field = " ",
						Variable = " ",
						Class = " ",
						Interface = " ",
						Module = " ",
						Property = " ",
						Unit = " ",
						Value = " ",
						Enum = " ",
						Keyword = " ",
						Snippet = " ",
						Color = " ",
						File = " ",
						Reference = " ",
						Folder = " ",
						EnumMember = " ",
						Constant = " ",
						Struct = " ",
						Event = " ",
						Operator = " ",
						TypeParameter = " ",
					}

					if kind_icons[item.kind] then
						item.kind = kind_icons[item.kind] .. item.kind
					end

					return item
				end,
			},
			experimental = {
				ghost_text = { hl_group = "CmpGhostText" },
			},
		})
	end,
}
