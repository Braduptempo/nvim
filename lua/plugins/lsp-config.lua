return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		config = function()
			-- 1. Capabilities correct samenvoegen voor Neovim 0.11
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			local blink_capabilities = require("blink.cmp").get_lsp_capabilities()
			capabilities = vim.tbl_deep_extend("force", capabilities, blink_capabilities)

			-- 2. Configureer lua_ls via het nieuwe framework
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			})

			-- 3. Configureer QML
			vim.lsp.config("qmlls", {
				capabilities = capabilities,
				cmd = { "qml-language-server" },
				filetypes = { "qml" },
				-- In 0.11 gebruiken we root_markers in plaats van root_pattern
				root_markers = { "qmldir", "shell.qml", ".git" },
			})

			-- 4. Activeer de servers
			vim.lsp.enable({ "lua_ls", "qmlls" })

			-- 5. Keymaps (gecorrigeerd zonder de ongedefinieerde 'opts')
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
		end,
	},
}
