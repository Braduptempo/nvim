return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				-- fallback: als er geen custom formatter is, probeer dan alsnog de LSP
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Je kunt dit lijstje in de toekomst makkelijk uitbreiden:
			-- python = { "isort", "black" },
			-- qml = { "qmlformat" },
			-- cs = { "csharpier" },
		},
	},
}
