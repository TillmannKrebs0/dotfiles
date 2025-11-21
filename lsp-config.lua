return {
	{
		"hrsh7th/nvim-cmp", -- Completion plugin
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- LSP completion source
		},
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.pyright.setup({
				capabilities = capabilities,
			})

			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
				settings = {
				  ["rust-analyzer"] = {
					cargo = {
					  allFeatures = true,
					},
					checkOnSave = {
					  command = "clippy",
					},
				  },
				},
			  })
			  

			-- Lua Language Server setup
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			})

            vim.diagnostic.config({
              virtual_text = {
                spacing = 4,
                format = function(diagnostic)
                  return diagnostic.message:gsub("\n.*", " …") -- shortens multi-line messages
                end,
              },
              float = {
                border = "rounded",
                source = "always",
              },
            })
                -- General keymaps for LSP
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP Go to Definition" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostics" })
            end,
	},
}
