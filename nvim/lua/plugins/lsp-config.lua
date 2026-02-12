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
				ensure_installed = { "lua_ls", "pyright", "vue_ls", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
            local cfg = vim.lsp.config
			local capabilities = require("cmp_nvim_lsp").default_capabilities()


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

            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
            end,
	},
}
